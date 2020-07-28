/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50724
 Source Host           : localhost:3306
 Source Schema         : aktif

 Target Server Type    : MySQL
 Target Server Version : 50724
 File Encoding         : 65001

 Date: 29/07/2020 06:25:44
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for activity_log
-- ----------------------------
DROP TABLE IF EXISTS `activity_log`;
CREATE TABLE `activity_log`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `log_name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `description` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `subject_id` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `subject_type` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `causer_id` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `causer_type` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `properties` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `activity_log_log_name_index`(`log_name`) USING BTREE,
  INDEX `subject`(`subject_id`, `subject_type`) USING BTREE,
  INDEX `causer`(`causer_id`, `causer_type`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 124 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of activity_log
-- ----------------------------
INSERT INTO `activity_log` VALUES (1, 'default', 'created', 'tes', 'App\\Pengguna', 'admin', 'App\\Pengguna', '[]', '2020-06-19 15:11:40', '2020-06-19 15:11:40');
INSERT INTO `activity_log` VALUES (2, 'default', 'created', 'asdf', 'App\\Pengguna', 'admin', 'App\\Pengguna', '[]', '2020-06-19 15:45:07', '2020-06-19 15:45:07');
INSERT INTO `activity_log` VALUES (3, 'default', 'created', '1', 'App\\Bendungan', 'admin', 'App\\Pengguna', '[]', '2020-06-22 14:26:34', '2020-06-22 14:26:34');
INSERT INTO `activity_log` VALUES (4, 'default', 'updated', '1', 'App\\Bendungan', 'admin', 'App\\Pengguna', '[]', '2020-06-22 14:57:26', '2020-06-22 14:57:26');
INSERT INTO `activity_log` VALUES (5, 'default', 'updated', '1', 'App\\Bendungan', 'admin', 'App\\Pengguna', '[]', '2020-06-22 14:57:35', '2020-06-22 14:57:35');
INSERT INTO `activity_log` VALUES (6, 'default', 'updated', '1', 'App\\Bendungan', 'admin', 'App\\Pengguna', '[]', '2020-06-22 14:58:05', '2020-06-22 14:58:05');
INSERT INTO `activity_log` VALUES (7, 'default', 'deleted', '1', 'App\\Bendungan', 'admin', 'App\\Pengguna', '[]', '2020-06-22 14:58:26', '2020-06-22 14:58:26');
INSERT INTO `activity_log` VALUES (8, 'default', 'created', '2', 'App\\Bendungan', 'admin', 'App\\Pengguna', '[]', '2020-06-22 15:02:11', '2020-06-22 15:02:11');
INSERT INTO `activity_log` VALUES (9, 'default', 'updated', '2', 'App\\Bendungan', 'admin', 'App\\Pengguna', '[]', '2020-06-22 15:03:25', '2020-06-22 15:03:25');
INSERT INTO `activity_log` VALUES (10, 'default', 'updated', '2', 'App\\Bendungan', 'admin', 'App\\Pengguna', '[]', '2020-06-22 15:10:31', '2020-06-22 15:10:31');
INSERT INTO `activity_log` VALUES (11, 'default', 'created', '1', 'App\\Embung', 'admin', 'App\\Pengguna', '[]', '2020-06-22 16:36:53', '2020-06-22 16:36:53');
INSERT INTO `activity_log` VALUES (12, 'default', 'created', '1', 'App\\Sumur', 'admin', 'App\\Pengguna', '[]', '2020-06-22 16:45:09', '2020-06-22 16:45:09');
INSERT INTO `activity_log` VALUES (13, 'default', 'updated', 'admin', 'App\\Pengguna', 'admin', 'App\\Pengguna', '[]', '2020-06-22 16:51:55', '2020-06-22 16:51:55');
INSERT INTO `activity_log` VALUES (14, 'default', 'updated', 'admin', 'App\\Pengguna', 'admin', 'App\\Pengguna', '[]', '2020-06-22 16:53:31', '2020-06-22 16:53:31');
INSERT INTO `activity_log` VALUES (15, 'default', 'updated', 'admin', 'App\\Pengguna', 'admin', 'App\\Pengguna', '[]', '2020-06-22 17:04:45', '2020-06-22 17:04:45');
INSERT INTO `activity_log` VALUES (16, 'default', 'updated', 'admin', 'App\\Pengguna', 'admin', 'App\\Pengguna', '[]', '2020-07-01 10:03:27', '2020-07-01 10:03:27');
INSERT INTO `activity_log` VALUES (17, 'default', 'updated', '85', 'App\\Jalan', 'admin', 'App\\Pengguna', '[]', '2020-07-11 12:21:23', '2020-07-11 12:21:23');
INSERT INTO `activity_log` VALUES (18, 'default', 'updated', '12', 'App\\Jalan', 'admin', 'App\\Pengguna', '[]', '2020-07-11 12:21:32', '2020-07-11 12:21:32');
INSERT INTO `activity_log` VALUES (19, 'default', 'updated', '12', 'App\\Jalan', 'admin', 'App\\Pengguna', '[]', '2020-07-11 12:21:40', '2020-07-11 12:21:40');
INSERT INTO `activity_log` VALUES (20, 'default', 'updated', '103', 'App\\Jalan', 'admin', 'App\\Pengguna', '[]', '2020-07-11 12:22:36', '2020-07-11 12:22:36');
INSERT INTO `activity_log` VALUES (21, 'default', 'updated', 'admin', 'App\\Pengguna', 'admin', 'App\\Pengguna', '[]', '2020-07-14 08:28:43', '2020-07-14 08:28:43');
INSERT INTO `activity_log` VALUES (22, 'default', 'created', '111', 'App\\Jalan', 'admin', 'App\\Pengguna', '[]', '2020-07-14 09:12:39', '2020-07-14 09:12:39');
INSERT INTO `activity_log` VALUES (23, 'default', 'deleted', '111', 'App\\Jalan', 'admin', 'App\\Pengguna', '[]', '2020-07-14 09:12:51', '2020-07-14 09:12:51');
INSERT INTO `activity_log` VALUES (24, 'default', 'created', '112', 'App\\Jalan', 'admin', 'App\\Pengguna', '[]', '2020-07-14 09:12:57', '2020-07-14 09:12:57');
INSERT INTO `activity_log` VALUES (25, 'default', 'deleted', '112', 'App\\Jalan', 'admin', 'App\\Pengguna', '[]', '2020-07-14 09:13:01', '2020-07-14 09:13:01');
INSERT INTO `activity_log` VALUES (26, 'default', 'created', '113', 'App\\Jalan', 'admin', 'App\\Pengguna', '[]', '2020-07-14 09:15:05', '2020-07-14 09:15:05');
INSERT INTO `activity_log` VALUES (27, 'default', 'deleted', '113', 'App\\Jalan', 'admin', 'App\\Pengguna', '[]', '2020-07-14 09:15:22', '2020-07-14 09:15:22');
INSERT INTO `activity_log` VALUES (28, 'default', 'created', '111', 'App\\Jalan', 'admin', 'App\\Pengguna', '[]', '2020-07-14 09:35:50', '2020-07-14 09:35:50');
INSERT INTO `activity_log` VALUES (29, 'default', 'created', '112', 'App\\Jalan', 'admin', 'App\\Pengguna', '[]', '2020-07-14 09:37:26', '2020-07-14 09:37:26');
INSERT INTO `activity_log` VALUES (30, 'default', 'deleted', '112', 'App\\Jalan', 'admin', 'App\\Pengguna', '[]', '2020-07-14 09:37:38', '2020-07-14 09:37:38');
INSERT INTO `activity_log` VALUES (31, 'default', 'deleted', '111', 'App\\Jalan', 'admin', 'App\\Pengguna', '[]', '2020-07-14 09:37:40', '2020-07-14 09:37:40');
INSERT INTO `activity_log` VALUES (32, 'default', 'updated', '1', 'App\\Jembatan', 'admin', 'App\\Pengguna', '[]', '2020-07-14 11:34:34', '2020-07-14 11:34:34');
INSERT INTO `activity_log` VALUES (33, 'default', 'updated', '1', 'App\\Jembatan', 'admin', 'App\\Pengguna', '[]', '2020-07-14 11:34:40', '2020-07-14 11:34:40');
INSERT INTO `activity_log` VALUES (34, 'default', 'updated', '1', 'App\\Jembatan', 'admin', 'App\\Pengguna', '[]', '2020-07-14 11:34:45', '2020-07-14 11:34:45');
INSERT INTO `activity_log` VALUES (35, 'default', 'updated', '880', 'App\\DaerahIrigasi', 'admin', 'App\\Pengguna', '[]', '2020-07-14 11:45:37', '2020-07-14 11:45:37');
INSERT INTO `activity_log` VALUES (36, 'default', 'updated', '9', 'App\\Embung', 'admin', 'App\\Pengguna', '[]', '2020-07-14 12:22:39', '2020-07-14 12:22:39');
INSERT INTO `activity_log` VALUES (37, 'default', 'created', '1', 'App\\Infrastruktur', 'admin', 'App\\Pengguna', '[]', '2020-07-14 20:54:00', '2020-07-14 20:54:00');
INSERT INTO `activity_log` VALUES (38, 'default', 'updated', '1', 'App\\Infrastruktur', 'admin', 'App\\Pengguna', '[]', '2020-07-14 20:55:50', '2020-07-14 20:55:50');
INSERT INTO `activity_log` VALUES (39, 'default', 'updated', '1', 'App\\Infrastruktur', 'admin', 'App\\Pengguna', '[]', '2020-07-14 20:55:55', '2020-07-14 20:55:55');
INSERT INTO `activity_log` VALUES (40, 'default', 'deleted', '1', 'App\\Infrastruktur', 'admin', 'App\\Pengguna', '[]', '2020-07-14 20:56:00', '2020-07-14 20:56:00');
INSERT INTO `activity_log` VALUES (41, 'default', 'created', '2', 'App\\Infrastruktur', 'admin', 'App\\Pengguna', '[]', '2020-07-14 20:56:06', '2020-07-14 20:56:06');
INSERT INTO `activity_log` VALUES (42, 'default', 'created', '1', 'App\\SumberDana', 'admin', 'App\\Pengguna', '[]', '2020-07-14 21:01:31', '2020-07-14 21:01:31');
INSERT INTO `activity_log` VALUES (43, 'default', 'updated', '1', 'App\\SumberDana', 'admin', 'App\\Pengguna', '[]', '2020-07-14 21:01:35', '2020-07-14 21:01:35');
INSERT INTO `activity_log` VALUES (44, 'default', 'deleted', '1', 'App\\SumberDana', 'admin', 'App\\Pengguna', '[]', '2020-07-14 21:01:52', '2020-07-14 21:01:52');
INSERT INTO `activity_log` VALUES (45, 'default', 'created', '2', 'App\\SumberDana', 'admin', 'App\\Pengguna', '[]', '2020-07-14 21:02:36', '2020-07-14 21:02:36');
INSERT INTO `activity_log` VALUES (46, 'default', 'created', '3', 'App\\SumberDana', 'admin', 'App\\Pengguna', '[]', '2020-07-14 21:02:41', '2020-07-14 21:02:41');
INSERT INTO `activity_log` VALUES (47, 'default', 'created', '4', 'App\\SumberDana', 'admin', 'App\\Pengguna', '[]', '2020-07-14 21:02:47', '2020-07-14 21:02:47');
INSERT INTO `activity_log` VALUES (48, 'default', 'created', '3', 'App\\Infrastruktur', 'admin', 'App\\Pengguna', '[]', '2020-07-14 21:02:53', '2020-07-14 21:02:53');
INSERT INTO `activity_log` VALUES (49, 'default', 'deleted', '2', 'App\\Infrastruktur', 'admin', 'App\\Pengguna', '[]', '2020-07-14 21:02:56', '2020-07-14 21:02:56');
INSERT INTO `activity_log` VALUES (50, 'default', 'created', '4', 'App\\Infrastruktur', 'admin', 'App\\Pengguna', '[]', '2020-07-14 21:03:04', '2020-07-14 21:03:04');
INSERT INTO `activity_log` VALUES (51, 'default', 'deleted', '4', 'App\\Infrastruktur', 'admin', 'App\\Pengguna', '[]', '2020-07-14 21:03:07', '2020-07-14 21:03:07');
INSERT INTO `activity_log` VALUES (52, 'default', 'deleted', '3', 'App\\Infrastruktur', 'admin', 'App\\Pengguna', '[]', '2020-07-14 21:03:10', '2020-07-14 21:03:10');
INSERT INTO `activity_log` VALUES (53, 'default', 'created', '1', 'App\\AspirasiMasyarakat', 'admin', 'App\\Pengguna', '[]', '2020-07-14 21:45:52', '2020-07-14 21:45:52');
INSERT INTO `activity_log` VALUES (54, 'default', 'updated', '1', 'App\\AspirasiMasyarakat', 'admin', 'App\\Pengguna', '[]', '2020-07-14 21:57:14', '2020-07-14 21:57:14');
INSERT INTO `activity_log` VALUES (55, 'default', 'updated', '1', 'App\\AspirasiMasyarakat', 'admin', 'App\\Pengguna', '[]', '2020-07-14 21:57:19', '2020-07-14 21:57:19');
INSERT INTO `activity_log` VALUES (56, 'default', 'updated', '1', 'App\\AspirasiMasyarakat', 'admin', 'App\\Pengguna', '[]', '2020-07-14 21:58:17', '2020-07-14 21:58:17');
INSERT INTO `activity_log` VALUES (57, 'default', 'created', '1', 'App\\KewenanganProvinsi', 'admin', 'App\\Pengguna', '[]', '2020-07-15 09:05:23', '2020-07-15 09:05:23');
INSERT INTO `activity_log` VALUES (58, 'default', 'updated', '1', 'App\\KewenanganProvinsi', 'admin', 'App\\Pengguna', '[]', '2020-07-15 09:07:00', '2020-07-15 09:07:00');
INSERT INTO `activity_log` VALUES (59, 'default', 'updated', '1', 'App\\KewenanganProvinsi', 'admin', 'App\\Pengguna', '[]', '2020-07-15 09:07:11', '2020-07-15 09:07:11');
INSERT INTO `activity_log` VALUES (60, 'default', 'updated', '1', 'App\\KewenanganProvinsi', 'admin', 'App\\Pengguna', '[]', '2020-07-15 09:07:16', '2020-07-15 09:07:16');
INSERT INTO `activity_log` VALUES (61, 'default', 'deleted', '1', 'App\\AspirasiMasyarakat', 'admin', 'App\\Pengguna', '[]', '2020-07-15 09:07:58', '2020-07-15 09:07:58');
INSERT INTO `activity_log` VALUES (62, 'default', 'deleted', '1', 'App\\KewenanganProvinsi', 'admin', 'App\\Pengguna', '[]', '2020-07-15 09:08:04', '2020-07-15 09:08:04');
INSERT INTO `activity_log` VALUES (63, 'default', 'updated', '1', 'App\\Bendungan', 'admin', 'App\\Pengguna', '[]', '2020-07-25 11:37:42', '2020-07-25 11:37:42');
INSERT INTO `activity_log` VALUES (64, 'default', 'updated', '1', 'App\\Bendungan', 'admin', 'App\\Pengguna', '[]', '2020-07-25 11:38:01', '2020-07-25 11:38:01');
INSERT INTO `activity_log` VALUES (65, 'default', 'updated', '1', 'App\\Bendungan', 'admin', 'App\\Pengguna', '[]', '2020-07-25 11:39:04', '2020-07-25 11:39:04');
INSERT INTO `activity_log` VALUES (66, 'default', 'updated', '1', 'App\\Bendungan', 'admin', 'App\\Pengguna', '[]', '2020-07-25 11:39:11', '2020-07-25 11:39:11');
INSERT INTO `activity_log` VALUES (67, 'default', 'created', '35', 'App\\Bendungan', 'admin', 'App\\Pengguna', '[]', '2020-07-25 12:08:12', '2020-07-25 12:08:12');
INSERT INTO `activity_log` VALUES (68, 'default', 'deleted', '35', 'App\\Bendungan', 'admin', 'App\\Pengguna', '[]', '2020-07-25 12:08:23', '2020-07-25 12:08:23');
INSERT INTO `activity_log` VALUES (69, 'default', 'updated', '1', 'App\\Das', 'admin', 'App\\Pengguna', '[]', '2020-07-25 12:28:53', '2020-07-25 12:28:53');
INSERT INTO `activity_log` VALUES (70, 'default', 'updated', '1', 'App\\Das', 'admin', 'App\\Pengguna', '[]', '2020-07-25 12:28:57', '2020-07-25 12:28:57');
INSERT INTO `activity_log` VALUES (71, 'default', 'created', '198', 'App\\Das', 'admin', 'App\\Pengguna', '[]', '2020-07-25 12:29:48', '2020-07-25 12:29:48');
INSERT INTO `activity_log` VALUES (72, 'default', 'created', '199', 'App\\Das', 'admin', 'App\\Pengguna', '[]', '2020-07-25 12:29:48', '2020-07-25 12:29:48');
INSERT INTO `activity_log` VALUES (73, 'default', 'deleted', '199', 'App\\Das', 'admin', 'App\\Pengguna', '[]', '2020-07-25 12:29:59', '2020-07-25 12:29:59');
INSERT INTO `activity_log` VALUES (74, 'default', 'deleted', '198', 'App\\Das', 'admin', 'App\\Pengguna', '[]', '2020-07-25 12:30:02', '2020-07-25 12:30:02');
INSERT INTO `activity_log` VALUES (75, 'default', 'updated', '1', 'App\\MataAir', 'admin', 'App\\Pengguna', '[]', '2020-07-27 10:13:53', '2020-07-27 10:13:53');
INSERT INTO `activity_log` VALUES (76, 'default', 'updated', '1', 'App\\MataAir', 'admin', 'App\\Pengguna', '[]', '2020-07-27 10:13:58', '2020-07-27 10:13:58');
INSERT INTO `activity_log` VALUES (77, 'default', 'created', '1', 'App\\DesaMiskin', 'admin', 'App\\Pengguna', '[]', '2020-07-27 11:56:11', '2020-07-27 11:56:11');
INSERT INTO `activity_log` VALUES (78, 'default', 'updated', '1', 'App\\DesaMiskin', 'admin', 'App\\Pengguna', '[]', '2020-07-27 11:56:41', '2020-07-27 11:56:41');
INSERT INTO `activity_log` VALUES (79, 'default', 'created', '1', 'App\\Spam', 'admin', 'App\\Pengguna', '[]', '2020-07-27 13:45:36', '2020-07-27 13:45:36');
INSERT INTO `activity_log` VALUES (80, 'default', 'updated', '1', 'App\\Spam', 'admin', 'App\\Pengguna', '[]', '2020-07-27 13:45:42', '2020-07-27 13:45:42');
INSERT INTO `activity_log` VALUES (81, 'default', 'created', '1', 'App\\Drainase', 'admin', 'App\\Pengguna', '[]', '2020-07-27 14:26:32', '2020-07-27 14:26:32');
INSERT INTO `activity_log` VALUES (82, 'default', 'updated', '1', 'App\\Drainase', 'admin', 'App\\Pengguna', '[]', '2020-07-27 14:26:38', '2020-07-27 14:26:38');
INSERT INTO `activity_log` VALUES (83, 'default', 'deleted', '1', 'App\\Drainase', 'admin', 'App\\Pengguna', '[]', '2020-07-27 14:26:43', '2020-07-27 14:26:43');
INSERT INTO `activity_log` VALUES (84, 'default', 'created', '2', 'App\\Drainase', 'admin', 'App\\Pengguna', '[]', '2020-07-27 14:27:09', '2020-07-27 14:27:09');
INSERT INTO `activity_log` VALUES (85, 'default', 'deleted', '2', 'App\\Drainase', 'admin', 'App\\Pengguna', '[]', '2020-07-27 14:27:13', '2020-07-27 14:27:13');
INSERT INTO `activity_log` VALUES (86, 'default', 'updated', '3', 'App\\Jalan', 'admin', 'App\\Pengguna', '[]', '2020-07-27 15:04:13', '2020-07-27 15:04:13');
INSERT INTO `activity_log` VALUES (87, 'default', 'updated', '3', 'App\\Jalan', 'admin', 'App\\Pengguna', '[]', '2020-07-27 15:04:20', '2020-07-27 15:04:20');
INSERT INTO `activity_log` VALUES (88, 'default', 'updated', '3', 'App\\Jalan', 'admin', 'App\\Pengguna', '[]', '2020-07-27 15:04:27', '2020-07-27 15:04:27');
INSERT INTO `activity_log` VALUES (89, 'default', 'created', '111', 'App\\Jalan', 'admin', 'App\\Pengguna', '[]', '2020-07-28 15:14:02', '2020-07-28 15:14:02');
INSERT INTO `activity_log` VALUES (90, 'default', 'updated', '111', 'App\\Jalan', 'admin', 'App\\Pengguna', '[]', '2020-07-28 15:14:15', '2020-07-28 15:14:15');
INSERT INTO `activity_log` VALUES (91, 'default', 'deleted', '111', 'App\\Jalan', 'admin', 'App\\Pengguna', '[]', '2020-07-28 15:14:18', '2020-07-28 15:14:18');
INSERT INTO `activity_log` VALUES (92, 'default', 'updated', '1', 'App\\Jembatan', 'admin', 'App\\Pengguna', '[]', '2020-07-28 15:18:27', '2020-07-28 15:18:27');
INSERT INTO `activity_log` VALUES (93, 'default', 'updated', '1', 'App\\Jembatan', 'admin', 'App\\Pengguna', '[]', '2020-07-28 15:18:34', '2020-07-28 15:18:34');
INSERT INTO `activity_log` VALUES (94, 'default', 'updated', '9', 'App\\Embung', 'admin', 'App\\Pengguna', '[]', '2020-07-28 15:28:29', '2020-07-28 15:28:29');
INSERT INTO `activity_log` VALUES (95, 'default', 'created', '112', 'App\\Jalan', 'admin', 'App\\Pengguna', '[]', '2020-07-28 17:40:08', '2020-07-28 17:40:08');
INSERT INTO `activity_log` VALUES (96, 'default', 'created', '113', 'App\\Jalan', 'admin', 'App\\Pengguna', '[]', '2020-07-28 17:43:51', '2020-07-28 17:43:51');
INSERT INTO `activity_log` VALUES (97, 'default', 'created', '1', 'App\\Pembangunan', 'admin', 'App\\Pengguna', '[]', '2020-07-28 17:43:51', '2020-07-28 17:43:51');
INSERT INTO `activity_log` VALUES (98, 'default', 'deleted', '1', 'App\\Pembangunan', 'admin', 'App\\Pengguna', '[]', '2020-07-28 17:48:25', '2020-07-28 17:48:25');
INSERT INTO `activity_log` VALUES (99, 'default', 'created', '114', 'App\\Jalan', 'admin', 'App\\Pengguna', '[]', '2020-07-28 17:52:31', '2020-07-28 17:52:31');
INSERT INTO `activity_log` VALUES (100, 'default', 'created', '2', 'App\\Pembangunan', 'admin', 'App\\Pengguna', '[]', '2020-07-28 17:52:31', '2020-07-28 17:52:31');
INSERT INTO `activity_log` VALUES (101, 'default', 'deleted', '114', 'App\\Jalan', 'admin', 'App\\Pengguna', '[]', '2020-07-28 17:53:25', '2020-07-28 17:53:25');
INSERT INTO `activity_log` VALUES (102, 'default', 'deleted', '2', 'App\\Pembangunan', 'admin', 'App\\Pengguna', '[]', '2020-07-28 17:53:25', '2020-07-28 17:53:25');
INSERT INTO `activity_log` VALUES (103, 'default', 'created', '115', 'App\\Jalan', 'admin', 'App\\Pengguna', '[]', '2020-07-28 17:54:11', '2020-07-28 17:54:11');
INSERT INTO `activity_log` VALUES (104, 'default', 'created', '3', 'App\\Pembangunan', 'admin', 'App\\Pengguna', '[]', '2020-07-28 17:54:11', '2020-07-28 17:54:11');
INSERT INTO `activity_log` VALUES (105, 'default', 'created', '762', 'App\\Jembatan', 'admin', 'App\\Pengguna', '[]', '2020-07-28 19:00:54', '2020-07-28 19:00:54');
INSERT INTO `activity_log` VALUES (106, 'default', 'created', '4', 'App\\Pembangunan', 'admin', 'App\\Pengguna', '[]', '2020-07-28 19:00:54', '2020-07-28 19:00:54');
INSERT INTO `activity_log` VALUES (107, 'default', 'created', '198', 'App\\Das', 'admin', 'App\\Pengguna', '[]', '2020-07-28 19:01:59', '2020-07-28 19:01:59');
INSERT INTO `activity_log` VALUES (108, 'default', 'created', '5', 'App\\Pembangunan', 'admin', 'App\\Pengguna', '[]', '2020-07-28 19:01:59', '2020-07-28 19:01:59');
INSERT INTO `activity_log` VALUES (109, 'default', 'created', '1', 'App\\Drainase', 'admin', 'App\\Pengguna', '[]', '2020-07-28 19:06:06', '2020-07-28 19:06:06');
INSERT INTO `activity_log` VALUES (110, 'default', 'created', '6', 'App\\Pembangunan', 'admin', 'App\\Pengguna', '[]', '2020-07-28 19:06:06', '2020-07-28 19:06:06');
INSERT INTO `activity_log` VALUES (111, 'default', 'created', '1', 'App\\Spam', 'admin', 'App\\Pengguna', '[]', '2020-07-28 19:09:46', '2020-07-28 19:09:46');
INSERT INTO `activity_log` VALUES (112, 'default', 'created', '7', 'App\\Pembangunan', 'admin', 'App\\Pengguna', '[]', '2020-07-28 19:09:46', '2020-07-28 19:09:46');
INSERT INTO `activity_log` VALUES (113, 'default', 'created', '116', 'App\\Jalan', 'admin', 'App\\Pengguna', '[]', '2020-07-28 19:24:06', '2020-07-28 19:24:06');
INSERT INTO `activity_log` VALUES (114, 'default', 'created', '1', 'App\\Pembangunan', 'admin', 'App\\Pengguna', '[]', '2020-07-28 19:24:06', '2020-07-28 19:24:06');
INSERT INTO `activity_log` VALUES (115, 'default', 'created', '763', 'App\\Jembatan', 'admin', 'App\\Pengguna', '[]', '2020-07-28 19:26:23', '2020-07-28 19:26:23');
INSERT INTO `activity_log` VALUES (116, 'default', 'created', '2', 'App\\Pembangunan', 'admin', 'App\\Pengguna', '[]', '2020-07-28 19:26:23', '2020-07-28 19:26:23');
INSERT INTO `activity_log` VALUES (117, 'default', 'created', '199', 'App\\Das', 'admin', 'App\\Pengguna', '[]', '2020-07-28 19:27:34', '2020-07-28 19:27:34');
INSERT INTO `activity_log` VALUES (118, 'default', 'created', '3', 'App\\Pembangunan', 'admin', 'App\\Pengguna', '[]', '2020-07-28 19:27:34', '2020-07-28 19:27:34');
INSERT INTO `activity_log` VALUES (119, 'default', 'created', '2', 'App\\Drainase', 'admin', 'App\\Pengguna', '[]', '2020-07-28 19:28:16', '2020-07-28 19:28:16');
INSERT INTO `activity_log` VALUES (120, 'default', 'created', '4', 'App\\Pembangunan', 'admin', 'App\\Pengguna', '[]', '2020-07-28 19:28:16', '2020-07-28 19:28:16');
INSERT INTO `activity_log` VALUES (121, 'default', 'created', '2', 'App\\Spam', 'admin', 'App\\Pengguna', '[]', '2020-07-28 19:29:18', '2020-07-28 19:29:18');
INSERT INTO `activity_log` VALUES (122, 'default', 'created', '5', 'App\\Pembangunan', 'admin', 'App\\Pengguna', '[]', '2020-07-28 19:29:18', '2020-07-28 19:29:18');
INSERT INTO `activity_log` VALUES (123, 'default', 'updated', 'admin', 'App\\Pengguna', 'admin', 'App\\Pengguna', '[]', '2020-07-28 20:50:50', '2020-07-28 20:50:50');

-- ----------------------------
-- Table structure for bendungan
-- ----------------------------
DROP TABLE IF EXISTS `bendungan`;
CREATE TABLE `bendungan`  (
  `bendungan_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `bendungan_nama` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `bendungan_tahun_pembuatan` int(11) NULL DEFAULT NULL,
  `bendungan_data_teknik_tinggi` decimal(15, 2) NULL DEFAULT 0.00,
  `bendungan_data_teknik_volume` decimal(15, 2) NULL DEFAULT 0.00,
  `bendungan_data_teknik_bathimetri` decimal(15, 2) NULL DEFAULT NULL,
  `bendungan_manfaat_air_baku` decimal(15, 2) NULL DEFAULT 0.00,
  `bendungan_manfaat_irigasi` decimal(15, 2) NULL DEFAULT 0.00,
  `bendungan_manfaat_plta` decimal(15, 2) NULL DEFAULT 0.00,
  `bendungan_manfaat_lainnya` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `bendungan_kelembagaan_upb` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `bendungan_kelembagaan_petugas` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `kabupaten_kota_id` bigint(20) UNSIGNED NULL DEFAULT NULL,
  `kecamatan_id` bigint(20) UNSIGNED NULL DEFAULT NULL,
  `kelurahan_desa_id` bigint(20) UNSIGNED NULL DEFAULT NULL,
  `marker` point NULL,
  `polyline` linestring NULL,
  `polygon` polygon NULL,
  `pengguna_id` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `kewenangan_provinsi` tinyint(4) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`bendungan_id`) USING BTREE,
  INDEX `bendungan_pengguna_id_foreign`(`pengguna_id`) USING BTREE,
  INDEX `bendungan_kabupaten_kota_id_foreign`(`kabupaten_kota_id`) USING BTREE,
  INDEX `bendungan_kecamatan_id_foreign`(`kecamatan_id`) USING BTREE,
  INDEX `bendungan_kelurahan_desa_id_foreign`(`kelurahan_desa_id`) USING BTREE,
  CONSTRAINT `bendungan_kabupaten_kota_id_foreign` FOREIGN KEY (`kabupaten_kota_id`) REFERENCES `kabupaten_kota` (`kabupaten_kota_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `bendungan_kecamatan_id_foreign` FOREIGN KEY (`kecamatan_id`) REFERENCES `kecamatan` (`kecamatan_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `bendungan_kelurahan_desa_id_foreign` FOREIGN KEY (`kelurahan_desa_id`) REFERENCES `kelurahan_desa` (`kelurahan_desa_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `bendungan_pengguna_id_foreign` FOREIGN KEY (`pengguna_id`) REFERENCES `pengguna` (`pengguna_id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 35 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bendungan
-- ----------------------------
INSERT INTO `bendungan` VALUES (1, 'Mamak', 1990, 41.50, 27700000.00, 0.00, 10.42, 5428.00, 500.00, NULL, 'Ada', '8', 8, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, '2020-07-25 11:39:11');
INSERT INTO `bendungan` VALUES (2, 'Pengga', 1991, 33.00, 27000000.00, NULL, 10.42, 3589.00, 1862.00, 'Sawah baru 520 Ha ', 'Ada', '20', 5, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `bendungan` VALUES (3, 'Tiu Kulit', 1991, 29.40, 10250000.00, NULL, 10.21, 1800.00, NULL, 'Pengendali banjir ', 'Ada', '5', 8, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `bendungan` VALUES (4, 'Pemasar', 1997, 20.00, 2000000.00, NULL, 1.25, 620.00, NULL, 'Air ternak 1,000 ekor  ', 'Ada', '1', 8, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `bendungan` VALUES (5, 'Olat Rawa', 1997, 18.00, 1920344.00, NULL, 1.04, 500.00, NULL, 'Air ternak 200 ekor  ', 'Ada', '1', 8, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `bendungan` VALUES (6, 'Ncera', 1995, 15.60, 425000.00, NULL, 1.56, 138.00, NULL, 'Air ternak 200 ekor  ', 'Ada', '1', 10, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `bendungan` VALUES (7, 'Pelaperado', 1999, 61.50, 18000000.00, NULL, 5.00, 3895.00, 250.00, 'Tambak 350 Ha', 'Ada', '7', 10, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `bendungan` VALUES (8, 'Sumi', 1996, 45.00, 19400000.00, NULL, 5.21, 2272.00, 150.00, 'Air ternak 1,000 ekor ', 'Ada', '6', 10, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `bendungan` VALUES (9, 'Batu Bulan ', 1997, 31.50, 48600000.00, NULL, 2.08, 1300.00, 214.00, 'Air ternak 2,000 ekor ', 'Ada', '16', 8, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `bendungan` VALUES (10, 'Gapit', 1996, 29.00, 10300000.00, NULL, 6.77, 1300.00, 48.00, 'Air ternak 2,000 ekor ', 'Ada', '5', 8, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `bendungan` VALUES (11, 'Telaga Lebur', 2008, 23.50, 1376000.00, NULL, 1.30, 210.00, NULL, ' Air ternak 100 ekor', 'Ada', '1', 4, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `bendungan` VALUES (12, 'Laju', 2007, 16.00, 485000.00, NULL, 1.04, 200.00, NULL, 'Air ternak 100 ekor ', 'Ada', '1', 10, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `bendungan` VALUES (13, 'Labangka', 1992, 25.00, 183000.00, NULL, 2.08, 200.00, NULL, 'Air ternak 100 ekor', 'Ada', '1', 8, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `bendungan` VALUES (14, 'Batu Bokah', 1993, 23.50, 1560000.00, NULL, 1.06, 306.00, NULL, 'Air ternak 36 ekor ', 'Ada', '1', 5, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `bendungan` VALUES (15, 'Surabaya', 1973, 27.00, 300000.00, NULL, 4.15, 1125.00, NULL, 'Air ternak 160 ekor  ', 'Ada', '1', 6, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `bendungan` VALUES (16, 'Tolotangga', 2008, 15.00, 320000.00, NULL, 1.04, 200.00, NULL, 'Air ternak 1,000 ekor ', 'Ada', '1', 10, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `bendungan` VALUES (17, 'Pernek', 2006, 17.00, 590000.00, NULL, 2.08, 220.00, NULL, 'Air ternak 150 ekor  ', 'Ada', '1', 8, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `bendungan` VALUES (18, 'Brangkolong', 1998, 21.00, 1000000.00, NULL, 1.04, 764.00, NULL, 'Air ternak 50 ekor ', 'Ada', '1', 8, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `bendungan` VALUES (19, 'Bringe', 1983, 20.50, 190000.00, NULL, 0.43, 350.00, NULL, 'Air ternak 63 ekor ', 'Ada', '1', 5, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `bendungan` VALUES (20, 'Soncolopi', 1998, 15.00, 118000.00, NULL, 0.78, 150.00, NULL, 'Air ternak 100 ekor ', 'Ada', '1', 3, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `bendungan` VALUES (21, 'Batunampar', 1994, 18.00, 292029.00, NULL, 0.36, 300.00, NULL, 'Air ternak 18 ekor', 'Ada', '1', 6, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `bendungan` VALUES (22, 'Oi Toi', 1999, 20.00, 458000.00, NULL, 2.60, 300.00, NULL, 'Air ternak 200 ekor ', 'Ada', '-', 10, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `bendungan` VALUES (23, 'Tibu Kuning', 2007, 24.00, 1249000.00, NULL, 1.56, 235.00, NULL, ' Air ternak 150 ekor', 'Ada', '1', 4, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `bendungan` VALUES (24, 'Tonda Selatan', 1997, 20.00, 660000.00, NULL, 1.04, 460.00, NULL, 'Air ternak 100 ekor ', 'Ada', '1', 3, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `bendungan` VALUES (25, 'Sejari I', 1996, 20.00, 699000.00, NULL, 0.52, 500.00, NULL, 'Air ternak 300 ekor  ', 'Ada', '1', 8, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `bendungan` VALUES (26, 'Roi Roka', 1986, 19.00, 1700000.00, NULL, 1.04, 800.00, NULL, 'Air ternak 200 ekor  ', 'Ada', '1', 10, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `bendungan` VALUES (27, 'Selante', 1985, 19.00, 524134.00, NULL, 1.04, 612.00, NULL, 'Air ternak 250 ekor  ', 'Ada', '1', 8, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `bendungan` VALUES (28, 'Kaswangi', 1999, 19.00, 940000.00, NULL, 1.56, 543.00, NULL, 'Air ternak 250 ekor ', 'Ada', '1', 8, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `bendungan` VALUES (29, 'Kesi', 1998, 15.00, 624600.00, NULL, 1.04, 220.00, NULL, 'Air ternak 200 ekor ', 'Ada', '1', 3, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `bendungan` VALUES (30, 'Senang', 1995, 18.50, 262876.00, NULL, 1.26, 200.00, NULL, 'Air ternak 146 ekor  ', 'Ada', '1', 6, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `bendungan` VALUES (31, 'Jangkih Jawe', 1997, 17.50, 896000.00, NULL, 1.04, 350.00, NULL, 'Air ternak 50  ekor ', 'Ada', '1', 5, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `bendungan` VALUES (32, 'Parado Kanca', 2006, 16.50, 718000.00, NULL, 1.56, 350.00, NULL, 'Air ternak 200 ekor ', 'Ada', '1', 10, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `bendungan` VALUES (33, 'Sanggupasante', 1985, 10.00, 650000.00, NULL, 1.04, 391.00, NULL, 'Air ternak 100 ekor ', 'Ada', '1', 3, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `bendungan` VALUES (34, 'Woro', 1998, 17.50, 1000000.00, NULL, 1.04, 200.00, NULL, 'Air ternak 100 ekor ', 'Ada', '1', 10, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);

-- ----------------------------
-- Table structure for daerah_irigasi
-- ----------------------------
DROP TABLE IF EXISTS `daerah_irigasi`;
CREATE TABLE `daerah_irigasi`  (
  `daerah_irigasi_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `daerah_irigasi_nama` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `daerah_irigasi_tahun_pembuatan` int(11) NULL DEFAULT NULL,
  `daerah_irigasi_luas_area_potensial` decimal(15, 2) NULL DEFAULT 0.00,
  `daerah_irigasi_sawah_irigasi` decimal(15, 2) NULL DEFAULT 0.00,
  `daerah_irigasi_belum_irigasi` decimal(15, 2) NULL DEFAULT 0.00,
  `daerah_irigasi_belum_sawah` decimal(15, 2) NULL DEFAULT 0.00,
  `daerah_irigasi_alih_fungsi` decimal(15, 2) NULL DEFAULT 0.00,
  `daerah_irigasi_keterangan` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `kabupaten_kota_id` bigint(20) UNSIGNED NULL DEFAULT NULL,
  `kecamatan_id` bigint(20) UNSIGNED NULL DEFAULT NULL,
  `kelurahan_desa_id` bigint(20) UNSIGNED NULL DEFAULT NULL,
  `marker` point NULL,
  `polyline` linestring NULL,
  `polygon` polygon NULL,
  `pengguna_id` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `kewenangan_provinsi` tinyint(4) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`daerah_irigasi_id`) USING BTREE,
  INDEX `daerah_irigasi_pengguna_id_foreign`(`pengguna_id`) USING BTREE,
  INDEX `daerah_irigasi_kabupaten_kota_id_foreign`(`kabupaten_kota_id`) USING BTREE,
  INDEX `daerah_irigasi_kecamatan_id_foreign`(`kecamatan_id`) USING BTREE,
  INDEX `daerah_irigasi_kelurahan_desa_id_foreign`(`kelurahan_desa_id`) USING BTREE,
  CONSTRAINT `daerah_irigasi_kabupaten_kota_id_foreign` FOREIGN KEY (`kabupaten_kota_id`) REFERENCES `kabupaten_kota` (`kabupaten_kota_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `daerah_irigasi_kecamatan_id_foreign` FOREIGN KEY (`kecamatan_id`) REFERENCES `kecamatan` (`kecamatan_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `daerah_irigasi_kelurahan_desa_id_foreign` FOREIGN KEY (`kelurahan_desa_id`) REFERENCES `kelurahan_desa` (`kelurahan_desa_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `daerah_irigasi_pengguna_id_foreign` FOREIGN KEY (`pengguna_id`) REFERENCES `pengguna` (`pengguna_id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 1252 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of daerah_irigasi
-- ----------------------------
INSERT INTO `daerah_irigasi` VALUES (880, 'Mataram', 1927, 697.00, 465.00, 0.00, 0.00, 232.00, '<1000', 11, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, '2020-07-14 11:45:37');
INSERT INTO `daerah_irigasi` VALUES (881, 'Pamotan', 1969, 295.00, 206.00, 0.00, 0.00, 89.00, '<1000', 11, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (882, 'Unus', 1969, 596.00, 358.00, 0.00, 0.00, 238.00, '<1000', 11, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (883, 'Pesongoran', 1969, 282.00, 241.00, 0.00, 0.00, 41.00, '<1000', 11, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (884, 'Tembelok', 1972, 225.00, 203.00, 0.00, 0.00, 22.00, '<1000', 11, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (885, 'Bertais', 1927, 189.00, 108.00, 0.00, 0.00, 81.00, '<1000', 11, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (886, 'Sindang Gila', 0, 855.00, 496.00, 0.00, 0.00, 359.00, '<1000', 4, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (887, 'Sopak', 0, 515.00, 407.00, 0.00, 0.00, 108.00, '<1000', 4, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (888, 'Loloan', 0, 717.00, 500.00, 0.00, 0.00, 217.00, '<1000', 4, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (889, 'Batu Rakit', 1975, 480.00, 190.00, 0.00, 0.00, 290.00, '<1000', 4, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (890, 'Sambik Jengkel', 1959, 500.00, 245.00, 86.00, 0.00, 169.00, '<1000', 4, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (891, 'Pawang Kates', 1982, 346.00, 210.00, 0.00, 0.00, 136.00, '<1000', 4, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (892, 'Teres Genit', 1974, 673.00, 516.00, 157.00, 0.00, 0.00, '<1000', 4, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (893, 'E. Bayan', 1967, 200.00, 0.00, 0.00, 200.00, 0.00, '<1000', 4, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (894, 'E. Lokok Tawah', 1974, 300.00, 0.00, 0.00, 300.00, 0.00, '<1000', 4, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (895, 'Lendang Jurang', 1994, 181.00, 146.00, 0.00, 0.00, 35.00, '<1000', 4, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (896, 'Rempek', 1994, 358.00, 104.00, 0.00, 0.00, 254.00, '<1000', 4, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (897, 'Pekatan', 1998, 853.00, 821.00, 0.00, 0.00, 32.00, '<1000', 4, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (898, 'Prawira', 1973, 159.00, 117.00, 0.00, 0.00, 42.00, '<1000', 4, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (899, 'Menggala', 1977, 153.00, 121.00, 0.00, 0.00, 32.00, '<1000', 4, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (900, 'Bentek', 1963, 14.00, 11.00, 0.00, 0.00, 3.00, '<1000', 4, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (901, 'Sandik', 1926, 417.00, 331.00, 0.00, 0.00, 86.00, '<1000', 4, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (902, 'Medas', 1965, 103.00, 75.00, 0.00, 0.00, 28.00, '<1000', 4, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (903, 'Ireng Daya', 1977, 288.00, 270.00, 0.00, 0.00, 18.00, '<1000', 4, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (904, 'Gegutu', 1974, 209.00, 163.00, 0.00, 0.00, 46.00, '<1000', 4, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (905, 'Penimbung', 1927, 485.00, 454.00, 0.00, 0.00, 31.00, '<1000', 4, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (906, 'Menjeli', 1976, 203.00, 107.00, 0.00, 0.00, 96.00, '<1000', 4, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (907, 'Repok Pancor', 1956, 306.00, 285.00, 0.00, 0.00, 21.00, '<1000', 4, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (908, 'Mencongah', 1977, 301.00, 245.00, 0.00, 0.00, 56.00, '<1000', 4, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (909, 'Nyurbaya', 1921, 555.00, 443.00, 0.00, 0.00, 112.00, '<1000', 4, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (910, 'Montang', 1976, 680.00, 176.00, 0.00, 0.00, 504.00, '<1000', 4, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (911, 'Keru', 1979, 870.00, 841.00, 0.00, 0.00, 29.00, '<1000', 4, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (912, 'Buntopeng', 1926, 225.00, 191.00, 0.00, 0.00, 34.00, '<1000', 4, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (913, 'Pesongoran Kuripan', 1975, 86.00, 84.00, 0.00, 0.00, 2.00, '<1000', 4, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (914, 'Pelangan', 1926, 333.00, 108.00, 225.00, 0.00, 0.00, '<1000', 4, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (915, 'E. Kengkang', 1976, 177.00, 177.00, 0.00, 0.00, 0.00, '<1000', 4, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (916, 'E. Telekong I', 1965, 30.00, 30.00, 0.00, 0.00, 0.00, '<1000', 4, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (917, 'E. Telekong II', 1984, 28.00, 28.00, 0.00, 0.00, 0.00, '<1000', 4, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (918, 'E. Kb. Kuning', 1994, 300.00, 0.00, 0.00, 300.00, 0.00, '<1000', 4, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (919, 'Bile Kere', 1996, 383.00, 381.00, 0.00, 0.00, 2.00, '<1000', 5, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (920, 'Sidemen', 1996, 688.00, 538.00, 0.00, 0.00, 150.00, '<1000', 5, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (921, 'Simbe', 2002, 116.00, 115.00, 0.00, 0.00, 1.00, '<1000', 5, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (922, 'Benjor', 0, 233.00, 233.00, 0.00, 0.00, 0.00, '<1000', 5, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (923, 'Brambang', 0, 268.00, 268.00, 0.00, 0.00, 0.00, '<1000', 5, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (924, 'Mesone Wareng', 0, 285.00, 268.00, 0.00, 0.00, 17.00, '<1000', 5, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (925, 'Mertak Paok', 1979, 115.00, 115.00, 0.00, 0.00, 0.00, '<1000', 5, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (926, 'E. Dao', 1979, 400.00, 400.00, 0.00, 0.00, 0.00, '<1000', 5, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (927, 'Jengguar', 1990, 116.00, 115.00, 0.00, 0.00, 1.00, '<1000', 5, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (928, 'Nyeredep', 1990, 222.00, 222.00, 0.00, 0.00, 0.00, '<1000', 5, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (929, 'Telaga', 1977, 316.00, 315.00, 0.00, 0.00, 1.00, '<1000', 5, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (930, 'Paok Rengga', 1964, 416.00, 415.00, 0.00, 0.00, 1.00, '<1000', 5, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (931, 'Otak Desa', 1956, 299.00, 294.00, 0.00, 0.00, 5.00, '<1000', 5, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (932, 'Paok Dengkol', 1970, 300.00, 300.00, 0.00, 0.00, 0.00, '<1000', 5, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (933, 'Gule liat', 1978, 210.00, 203.00, 0.00, 0.00, 7.00, '<1000', 5, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (934, 'Tain Petuk', 1976, 364.00, 353.00, 0.00, 0.00, 11.00, '<1000', 5, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (935, 'Muncan', 1988, 318.00, 318.00, 0.00, 0.00, 0.00, '<1000', 5, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (936, 'E. Bengak', 1942, 157.00, 157.00, 0.00, 0.00, 0.00, '<1000', 5, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (937, 'E. Dana Sari', 1979, 210.00, 210.00, 0.00, 0.00, 0.00, '<1000', 5, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (938, 'E. Pendem', 1982, 138.00, 138.00, 0.00, 0.00, 0.00, '<1000', 5, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (939, 'E, Kuang Sampi', 1984, 91.00, 91.00, 0.00, 0.00, 0.00, '<1000', 5, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (940, 'E. Ld. Telaga', 1970, 136.00, 136.00, 0.00, 0.00, 0.00, '<1000', 5, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (941, 'E. Jebak', 1979, 99.00, 98.00, 0.00, 0.00, 1.00, '<1000', 5, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (942, 'E. Gusi', 1981, 45.00, 45.00, 0.00, 0.00, 0.00, '<1000', 5, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (943, 'E. Penyabuk', 1981, 94.00, 94.00, 0.00, 0.00, 0.00, '<1000', 5, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (944, 'E. Brenge', 1981, 350.00, 350.00, 0.00, 0.00, 0.00, '<1000', 5, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (945, 'E. Jongkor', 1981, 15.00, 15.00, 0.00, 0.00, 0.00, '<1000', 5, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (946, 'E. Pejeruk', 1982, 63.00, 63.00, 0.00, 0.00, 0.00, '<1000', 5, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (947, 'E. Paskar', 1981, 96.00, 96.00, 0.00, 0.00, 0.00, '<1000', 5, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (948, 'E. Melat I', 1981, 35.00, 35.00, 0.00, 0.00, 0.00, '<1000', 5, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (949, 'E. Melat II', 1981, 25.00, 25.00, 0.00, 0.00, 0.00, '<1000', 5, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (950, 'E. Tasik Asik', 1983, 25.00, 25.00, 0.00, 0.00, 0.00, '<1000', 5, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (951, 'E. Perok', 1981, 35.00, 35.00, 0.00, 0.00, 0.00, '<1000', 5, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (952, 'E. Loang Make', 1982, 100.00, 100.00, 0.00, 0.00, 0.00, '<1000', 5, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (953, 'Pelapak', 1981, 621.00, 621.00, 0.00, 0.00, 0.00, '<1000', 5, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (954, 'E. Pengkemit', 1981, 300.00, 300.00, 0.00, 0.00, 0.00, '<1000', 5, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (955, 'E. Gabak', 1982, 250.00, 249.00, 0.00, 0.00, 1.00, '<1000', 5, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (956, 'E. Tantih', 1984, 200.00, 200.00, 0.00, 0.00, 0.00, '<1000', 5, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (957, 'E. Goa', 1984, 82.00, 82.00, 0.00, 0.00, 0.00, '<1000', 5, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (958, 'E. Sepit', 1984, 175.00, 175.00, 0.00, 0.00, 0.00, '<1000', 5, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (959, 'E. Pejanggik', 1936, 135.00, 135.00, 0.00, 0.00, 0.00, '<1000', 5, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (960, 'E. Orong Gendang', 1940, 132.00, 132.00, 0.00, 0.00, 0.00, '<1000', 5, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (961, 'E. Bombas', 1981, 206.00, 206.00, 0.00, 0.00, 0.00, '<1000', 5, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (962, 'E. Batu Bokah', 1981, 305.00, 305.00, 0.00, 0.00, 0.00, '<1000', 5, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (963, 'E. Pancor', 1982, 120.00, 119.00, 0.00, 0.00, 1.00, '<1000', 5, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (964, 'E. Jangkih Jawa', 1984, 320.00, 220.00, 0.00, 100.00, 0.00, '<1000', 5, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (965, 'E. Bonder', 1983, 0.00, 0.00, 0.00, 0.00, 0.00, '<1000', 5, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (966, 'E. Batu Jangkih', 1982, 100.00, 0.00, 100.00, 0.00, 0.00, '<1000', 5, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (967, 'Gege I', 1982, 67.00, 67.00, 0.00, 0.00, 0.00, '<1000', 6, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (968, 'Gege II', 1993, 159.00, 157.00, 0.00, 0.00, 2.00, '<1000', 6, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (969, 'Gege III', 1993, 146.00, 145.00, 0.00, 0.00, 1.00, '<1000', 6, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (970, 'E. Gunung Paok', 1997, 51.00, 49.00, 0.00, 0.00, 2.00, '<1000', 6, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (971, 'Selak Eat', 1996, 145.00, 144.00, 0.00, 0.00, 1.00, '<1000', 6, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (972, 'Tete Kopong', 1996, 305.00, 302.00, 0.00, 0.00, 3.00, '<1000', 6, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (973, 'Lekak', 0, 80.00, 79.00, 0.00, 0.00, 1.00, '<1000', 6, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (974, 'Temusik', 0, 654.00, 648.00, 0.00, 2.00, 4.00, '<1000', 6, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (975, 'Bangle', 0, 45.00, 43.00, 0.00, 0.00, 2.00, '<1000', 6, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (976, 'Camik', 1943, 313.00, 309.00, 0.00, 0.00, 4.00, '<1000', 6, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (977, 'Solong', 1943, 150.00, 150.00, 0.00, 0.00, 0.00, '<1000', 6, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (978, 'Sundi', 1943, 50.00, 35.00, 0.00, 0.00, 15.00, '<1000', 6, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (979, 'Terara', 1981, 271.00, 264.00, 0.00, 0.00, 7.00, '<1000', 6, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (980, 'Mare', 1943, 471.00, 471.00, 0.00, 0.00, 0.00, '<1000', 6, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (981, 'Tridaya', 1943, 138.00, 135.00, 0.00, 0.00, 3.00, '<1000', 6, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (982, 'E. Penggek', 1949, 75.00, 72.00, 0.00, 0.00, 3.00, '<1000', 6, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (983, 'E. Banok', 1943, 12.00, 12.00, 0.00, 0.00, 0.00, '<1000', 6, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (984, 'E. Kandong', 1978, 389.00, 385.00, 0.00, 0.00, 4.00, '<1000', 6, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (985, 'Pancor Dewa', 1975, 125.00, 84.00, 0.00, 0.00, 41.00, '<1000', 6, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (986, 'Pelolat', 1976, 297.00, 281.00, 0.00, 0.00, 16.00, '<1000', 6, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (987, 'Temiling', 1975, 233.00, 226.00, 0.00, 3.00, 4.00, '<1000', 6, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (988, 'Jogok', 1943, 597.00, 547.00, 0.00, 2.00, 48.00, '<1000', 6, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (989, 'Pungkang', 1963, 289.00, 289.00, 0.00, 0.00, 0.00, '<1000', 6, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (990, 'Tundak', 1962, 625.00, 615.00, 0.00, 0.00, 10.00, '<1000', 6, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (991, 'Penendem', NULL, 868.00, 837.00, 0.00, 0.00, 31.00, '<1000', 6, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (992, 'Pelambik', NULL, 467.00, 342.00, 3.00, 0.00, 122.00, '<1000', 6, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (993, 'Para', 1983, 300.00, 206.00, 0.00, 0.00, 94.00, '<1000', 6, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (994, 'Penyonggok', 1970, 193.00, 182.00, 0.00, 0.00, 11.00, '<1000', 6, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (995, 'Bangka', 1969, 265.00, 256.00, 0.00, 0.00, 9.00, '<1000', 6, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (996, 'Borok Lelet', 1969, 576.00, 576.00, 0.00, 0.00, 0.00, '<1000', 6, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (997, 'Jimse', 1967, 111.00, 111.00, 0.00, 0.00, 0.00, '<1000', 6, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (998, 'Kangkek Lepang', 1974, 233.00, 230.00, 0.00, 0.00, 3.00, '<1000', 6, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (999, 'Reban Talat', 1941, 213.00, 213.00, 0.00, 0.00, 0.00, '<1000', 6, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1000, 'Rungkang', 1940, 686.00, 641.00, 0.00, 0.00, 45.00, '<1000', 6, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1001, 'Sikur', 1942, 800.00, 758.00, 0.00, 0.00, 42.00, '<1000', 6, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1002, 'Endut', 1966, 230.00, 178.00, 0.00, 0.00, 52.00, '<1000', 6, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1003, 'Sadar', 1975, 281.00, 279.00, 0.00, 0.00, 2.00, '<1000', 6, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1004, 'Pondol', 1971, 117.00, 114.00, 0.00, 0.00, 3.00, '<1000', 6, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1005, 'Presak Siren', 1970, 167.00, 155.00, 3.00, 0.00, 9.00, '<1000', 6, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1006, 'Lenting', 1973, 220.00, 214.00, 0.00, 0.00, 6.00, '<1000', 6, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1007, 'Prako', 1955, 128.00, 121.00, 0.00, 0.00, 7.00, '<1000', 6, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1008, 'Kwang Derek', 1960, 254.00, 242.00, 0.00, 0.00, 12.00, '<1000', 6, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1009, 'Kuang Berora', 1936, 108.00, 106.00, 0.00, 0.00, 2.00, '<1000', 6, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1010, 'Montong Tangi', 1947, 305.00, 295.00, 0.00, 0.00, 10.00, '<1000', 6, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1011, 'Kondak', 1971, 508.00, 506.00, 0.00, 0.00, 2.00, '<1000', 6, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1012, 'Juwet', 1966, 123.00, 123.00, 0.00, 0.00, 0.00, '<1000', 6, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1013, 'Reban Waru', 1972, 204.00, 204.00, 0.00, 0.00, 0.00, '<1000', 6, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1014, 'Surabaya Lepak', 1965, 199.00, 199.00, 0.00, 0.00, 0.00, '<1000', 6, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1015, 'Burung', 1983, 125.00, 125.00, 0.00, 0.00, 0.00, '<1000', 6, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1016, 'Ladon', 1980, 125.00, 110.00, 0.00, 15.00, 0.00, '<1000', 6, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1017, 'Tojang', 1980, 136.00, 123.00, 13.00, 0.00, 0.00, '<1000', 6, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1018, 'Keruak', 1958, 195.00, 126.00, 0.00, 0.00, 69.00, '<1000', 6, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1019, 'Rugah', 1976, 216.00, 196.00, 0.00, 0.00, 20.00, '<1000', 6, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1020, 'Aik Anyar', 1939, 270.00, 212.00, 0.00, 48.00, 10.00, '<1000', 6, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1021, 'Berembun', 1962, 169.00, 151.00, 0.00, 0.00, 18.00, '<1000', 6, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1022, 'Pancor Barong', 1965, 100.00, 84.00, 0.00, 0.00, 16.00, '<1000', 6, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1023, 'Simbe', 1939, 410.00, 341.00, 0.00, 2.00, 67.00, '<1000', 6, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1024, 'Dasan Lekong', 1972, 350.00, 198.00, 0.00, 142.00, 10.00, '<1000', 6, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1025, 'Sangkon', 1973, 258.00, 35.00, 0.00, 0.00, 223.00, '<1000', 6, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1026, 'Reban Tebu', 1976, 285.00, 114.00, 0.00, 161.00, 10.00, '<1000', 6, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1027, 'Jenjek', 1969, 101.00, 74.00, 27.00, 0.00, 0.00, '<1000', 6, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1028, 'Beleong', 1960, 375.00, 286.00, 0.00, 89.00, 0.00, '<1000', 6, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1029, 'Denggen', 1946, 111.00, 80.00, 0.00, 14.00, 17.00, '<1000', 6, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1030, 'Ledang', 1950, 412.00, 295.00, 0.00, 114.00, 3.00, '<1000', 6, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1031, 'Pancor Manis', 1975, 128.00, 103.00, 0.00, 0.00, 25.00, '<1000', 6, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1032, 'Bagek Longgek', 1964, 234.00, 214.00, 0.00, 20.00, 0.00, '<1000', 6, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1033, 'Kuang Manget', 1930, 148.00, 134.00, 0.00, 0.00, 14.00, '<1000', 6, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1034, 'E s  o t', 1966, 293.00, 208.00, 0.00, 85.00, 0.00, '<1000', 6, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1035, 'Penede  I', 1953, 321.00, 269.00, 0.00, 49.00, 3.00, '<1000', 6, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1036, 'Penede  II', 1967, 224.00, 183.00, 0.00, 38.00, 3.00, '<1000', 6, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1037, 'Damar Jengkang', 1950, 315.00, 42.00, 268.00, 0.00, 5.00, '<1000', 6, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1038, 'Ambung', 1965, 300.00, 95.00, 0.00, 205.00, 0.00, '<1000', 6, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1039, 'Jantuk', 1936, 224.00, 210.00, 0.00, 0.00, 14.00, '<1000', 6, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1040, 'Pengadangan', 1926, 664.00, 662.00, 0.00, 0.00, 2.00, '<1000', 6, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1041, 'Tempasan', 1960, 500.00, 500.00, 0.00, 0.00, 0.00, '<1000', 6, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1042, 'Pringgasele', 1912, 640.00, 512.00, 0.00, 0.00, 128.00, '<1000', 6, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1043, 'Tebaban', 1933, 270.00, 263.00, 7.00, 0.00, 0.00, '<1000', 6, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1044, 'Paok Pondong', 1960, 129.00, 121.00, 0.00, 0.00, 8.00, '<1000', 6, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1045, 'Bagik Tungka', 1958, 250.00, 248.00, 0.00, 0.00, 2.00, '<1000', 6, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1046, 'Petung', 1967, 100.00, 98.00, 0.00, 0.00, 2.00, '<1000', 6, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1047, 'Reban Bila', 1973, 65.00, 64.00, 0.00, 0.00, 1.00, '<1000', 6, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1048, 'Loang Gali', 1981, 170.00, 166.00, 0.00, 0.00, 4.00, '<1000', 6, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1049, 'Batu Malang', 1981, 514.00, 514.00, 0.00, 0.00, 0.00, '<1000', 6, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1050, 'As Malang', 1970, 254.00, 246.00, 0.00, 0.00, 8.00, '<1000', 6, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1051, 'Pelemeng', 1941, 350.00, 255.00, 0.00, 95.00, 0.00, '<1000', 6, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1052, 'Orong Atas', 1975, 140.00, 139.00, 0.00, 0.00, 1.00, '<1000', 6, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1053, 'Ijo Balit', 1972, 754.00, 754.00, 0.00, 0.00, 0.00, '<1000', 6, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1054, 'Anjani', 1972, 315.00, 315.00, 0.00, 0.00, 0.00, '<1000', 6, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1055, 'Kerongkong', 1968, 669.00, 669.00, 0.00, 0.00, 0.00, '<1000', 6, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1056, 'Gapuk', 1974, 458.00, 404.00, 50.00, 0.00, 4.00, '<1000', 6, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1057, 'Meloang', 1970, 170.00, 169.00, 0.00, 0.00, 1.00, '<1000', 6, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1058, 'Renga', 1954, 305.00, 279.00, 0.00, 0.00, 26.00, '<1000', 6, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1059, 'Paok  Dangka', 1953, 259.00, 257.00, 0.00, 0.00, 2.00, '<1000', 6, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1060, 'Bebidas', 1966, 588.00, 580.00, 0.00, 8.00, 0.00, '<1000', 6, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1061, 'Lokak Bau', 1960, 752.00, 687.00, 0.00, 65.00, 0.00, '<1000', 6, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1062, 'Suntalangu', 1969, 240.00, 240.00, 0.00, 0.00, 0.00, '<1000', 6, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1063, 'Senang', 1949, 178.00, 178.00, 0.00, 0.00, 0.00, '<1000', 6, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1064, 'Waduk Kembar', 1953, 367.00, 360.00, 0.00, 0.00, 7.00, '<1000', 6, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1065, 'Songgen', 1973, 328.00, 287.00, 0.00, 0.00, 41.00, '<1000', 6, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1066, 'Lemor', 1972, 150.00, 136.00, 0.00, 0.00, 14.00, '<1000', 6, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1067, 'Kulur', 1983, 117.00, 113.00, 0.00, 0.00, 4.00, '<1000', 6, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1068, 'Aik Lomak', 1973, 115.00, 115.00, 0.00, 0.00, 0.00, '<1000', 6, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1069, 'Kedatuk', 1971, 466.00, 466.00, 0.00, 0.00, 0.00, '<1000', 6, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1070, 'Belanting', 1984, 886.00, 515.00, 225.00, 0.00, 146.00, '<1000', 6, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1071, 'Lendang Tinggi', 1975, 740.00, 265.00, 475.00, 0.00, 0.00, '<1000', 6, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1072, 'Lendang Guar', 1972, 483.00, 243.00, 240.00, 0.00, 0.00, '<1000', 6, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1073, 'Timbe Gading', 1950, 415.00, 415.00, 0.00, 0.00, 0.00, '<1000', 6, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1074, 'Obel - obel', 1950, 364.00, 50.00, 0.00, 81.00, 233.00, '<1000', 6, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1075, 'E. Batu Nampar (Supl)', 1950, 0.00, 0.00, 0.00, 0.00, 0.00, '<1000', 6, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1076, 'Padamara', 1969, 163.00, 160.00, 0.00, 0.00, 3.00, '<1000', 6, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1077, 'Lembak', 1976, 290.00, 290.00, 0.00, 0.00, 0.00, '<1000', 6, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1078, 'Tibu Pandan', 1968, 300.00, 300.00, 0.00, 0.00, 0.00, '<1000', 6, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1079, 'Larung', 1977, 607.00, 532.00, 0.00, 0.00, 75.00, '<1000', 6, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1080, 'Bande', 1976, 87.00, 87.00, 0.00, 0.00, 0.00, '<1000', 6, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1081, 'Tiwu Kawa', 1978, 703.00, 643.00, 0.00, 53.00, 7.00, '<1000', 9, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1082, 'Reban Batu', 1978, 404.00, 365.00, 39.00, 0.00, 0.00, '<1000', 9, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1083, 'E. Mantar', 1985, 300.00, 0.00, 0.00, 300.00, 0.00, '<1000', 9, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1084, 'Aik Putik', 1994, 403.00, 228.00, 175.00, 0.00, 0.00, '<1000', 8, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1085, 'Tarusan', 1981, 648.00, 342.00, 0.00, 306.00, 0.00, '<1000', 8, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1086, 'Juru Mapin', 1976, 700.00, 286.00, 0.00, 414.00, 0.00, '<1000', 8, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1087, 'Tarusan I', 1979, 375.00, 240.00, 135.00, 0.00, 0.00, '<1000', 8, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1088, 'Marenteh', 1994, 333.00, 333.00, 0.00, 0.00, 0.00, '<1000', 8, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1089, 'Penrengganis', 1979, 725.00, 600.00, 0.00, 125.00, 0.00, '<1000', 8, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1090, 'Lekong', 0, 456.00, 389.00, 0.00, 29.00, 38.00, '<1000', 8, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1091, 'Tiwu Bulu', 0, 998.00, 612.00, 386.00, 0.00, 0.00, '<1000', 8, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1092, 'Pungka', 0, 185.00, 125.00, 0.00, 0.00, 60.00, '<1000', 8, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1093, 'A j i', 1970, 715.00, 694.00, 0.00, 0.00, 21.00, '<1000', 8, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1094, 'M o y o', 1973, 827.00, 620.00, 0.00, 207.00, 0.00, '<1000', 8, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1095, 'Pemasar', 1998, 660.00, 660.00, 0.00, 0.00, 0.00, '<1000', 8, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1096, 'Brang Kolong', 0, 600.00, 465.00, 120.00, 15.00, 0.00, '<1000', 8, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1097, 'E. Muer', 0, 287.00, 286.00, 0.00, 0.00, 1.00, '<1000', 8, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1098, 'E. Selante', 0, 612.00, 470.00, 142.00, 0.00, 0.00, '<1000', 8, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1099, 'Sejari', 1985, 500.00, 380.00, 0.00, 120.00, 0.00, '<1000', 8, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1100, 'Usar', 1976, 800.00, 204.00, 0.00, 596.00, 0.00, '<1000', 8, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1101, 'Paria', 1973, 648.00, 272.00, 0.00, 376.00, 0.00, '<1000', 8, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1102, 'Semangi', 1977, 851.00, 578.00, 0.00, 273.00, 0.00, '<1000', 8, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1103, 'E. Penyaring', 1976, 216.00, 216.00, 0.00, 0.00, 0.00, '<1000', 8, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1104, 'E. Sepayung Dalam', 1981, 603.00, 350.00, 253.00, 0.00, 0.00, '<1000', 8, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1105, 'E. Olat Rawa', 1978, 500.00, 350.00, 0.00, 150.00, 0.00, '<1000', 8, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1106, 'E. Mengkoang', 1994, 110.00, 110.00, 0.00, 0.00, 0.00, '<1000', 8, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1107, 'E. Kaswangi', 1978, 600.00, 600.00, 0.00, 0.00, 0.00, '<1000', 8, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1108, 'Kuang Rako', 1975, 273.00, 50.00, 0.00, 223.00, 0.00, '<1000', 8, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1109, 'E. Lamenta', 1942, 200.00, 200.00, 0.00, 0.00, 0.00, '<1000', 8, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1110, 'E. Jompong', 1979, 150.00, 100.00, 0.00, 50.00, 0.00, '<1000', 8, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1111, 'E. Serading', 1979, 200.00, 150.00, 0.00, 50.00, 0.00, '<1000', 8, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1112, 'Sakalo', 1984, 330.00, 189.00, 0.00, 0.00, 141.00, '<1000', 3, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1113, 'Nae Kempo', 1984, 510.00, 310.00, 0.00, 200.00, 0.00, '<1000', 3, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1114, 'Patula', 1975, 356.00, 215.00, 0.00, 0.00, 141.00, '<1000', 3, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1115, 'Sanggo Pasante', 1975, 400.00, 85.00, 0.00, 315.00, 0.00, '<1000', 3, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1116, 'Lae Ranggo', 1975, 630.00, 523.00, 0.00, 0.00, 107.00, '<1000', 3, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1117, 'E. Jambu', 1912, 700.00, 600.00, 100.00, 0.00, 0.00, '<1000', 3, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1118, 'Sambana', 1997, 441.00, 396.00, 0.00, 45.00, 0.00, '<1000', 3, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1119, 'Ta\'a', 1994, 125.00, 100.00, 0.00, 25.00, 0.00, '<1000', 3, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1120, 'Roju', 1996, 70.00, 70.00, 0.00, 0.00, 0.00, '<1000', 3, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1121, 'E. Tonda Selatan', 1999, 460.00, 460.00, 0.00, 0.00, 0.00, '<1000', 3, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1122, 'E. Kempo', 1999, 200.00, 200.00, 0.00, 0.00, 0.00, '<1000', 3, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1123, 'E. Soneo', 1984, 300.00, 250.00, 0.00, 50.00, 0.00, '<1000', 3, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1124, 'Monggolenggo', 1995, 800.00, 660.00, 140.00, 0.00, 0.00, '<1000', 3, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1125, 'E. Lanangga', 1997, 705.00, 460.00, 0.00, 245.00, 0.00, '<1000', 3, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1126, 'Kuangko', 1999, 400.00, 274.00, 0.00, 126.00, 0.00, '<1000', 3, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1127, 'E. Soncolopi', 0, 600.00, 460.00, 0.00, 140.00, 0.00, '<1000', 3, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1128, 'E. Kesi', 0, 318.00, 125.00, 0.00, 193.00, 0.00, '<1000', 3, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1129, 'Rora Kecil', 0, 601.00, 531.00, 0.00, 70.00, 0.00, '<1000', 2, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1130, 'Mada Pangga', 1981, 459.00, 400.00, 0.00, 0.00, 59.00, '<1000', 2, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1131, 'Mori Rade', 1973, 307.00, 305.00, 0.00, 0.00, 2.00, '<1000', 2, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1132, 'L e b o', 1989, 623.00, 330.00, 0.00, 293.00, 0.00, '<1000', 2, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1133, 'Ncoha', 1984, 522.00, 336.00, 0.00, 186.00, 0.00, '<1000', 2, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1134, 'Ndano Rangga', 1965, 520.00, 275.00, 0.00, 245.00, 0.00, '<1000', 2, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1135, 'Diwu Tangiri', 1993, 500.00, 0.00, 0.00, 500.00, 0.00, '<1000', 2, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1136, 'Oi Kawa', 1985, 300.00, 42.00, 0.00, 258.00, 0.00, '<1000', 2, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1137, 'Bontokape', 1995, 505.00, 505.00, 0.00, 0.00, 0.00, '<1000', 2, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1138, 'Sori Monca', 1979, 300.00, 150.00, 0.00, 150.00, 0.00, '<1000', 2, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1139, 'Taloko', 1997, 341.00, 341.00, 0.00, 0.00, 0.00, '<1000', 2, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1140, 'Tonggondoangali', 1995, 750.00, 339.00, 0.00, 411.00, 0.00, '<1000', 2, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1141, 'L e k a', 1995, 350.00, 350.00, 0.00, 0.00, 0.00, '<1000', 2, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1142, 'Karanu Ntonggu', 0, 566.00, 566.00, 0.00, 0.00, 0.00, '<1000', 2, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1143, 'E. Roi', 0, 803.00, 803.00, 0.00, 0.00, 0.00, '<1000', 2, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1144, 'Rontu', 0, 500.00, 266.00, 0.00, 0.00, 234.00, '<1000', 2, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1145, 'Nungga', 0, 241.00, 241.00, 0.00, 0.00, 0.00, '<1000', 2, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1146, 'Salo', 0, 212.00, 53.00, 0.00, 0.00, 159.00, '<1000', 2, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1147, 'Satampa', 0, 50.00, 33.00, 0.00, 0.00, 17.00, '<1000', 2, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1148, 'Dadi', 0, 99.00, 78.00, 0.00, 0.00, 21.00, '<1000', 2, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1149, 'Kecintobo', 0, 160.00, 160.00, 0.00, 0.00, 0.00, '<1000', 2, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1150, 'Sangga', 1975, 50.00, 50.00, 0.00, 0.00, 0.00, '<1000', 2, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1151, 'Nggaro Rangga', 1980, 150.00, 150.00, 0.00, 0.00, 0.00, '<1000', 2, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1152, 'Raba ponda', 1969, 130.00, 130.00, 0.00, 0.00, 0.00, '<1000', 2, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1153, 'D o d u', 1975, 225.00, 225.00, 0.00, 0.00, 0.00, '<1000', 2, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1154, 'Na\'e Wera', 1976, 600.00, 450.00, 0.00, 150.00, 0.00, '<1000', 2, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1155, 'S a r i', 1970, 622.00, 622.00, 0.00, 0.00, 0.00, '<1000', 2, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1156, 'S a p e', 1974, 686.00, 683.00, 0.00, 0.00, 3.00, '<1000', 2, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1157, 'W u w u', 1974, 346.00, 346.00, 0.00, 0.00, 0.00, '<1000', 2, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1158, 'Sambu', 1987, 100.00, 5.00, 0.00, 95.00, 0.00, '<1000', 2, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1159, 'Diwu Sadundu', 1973, 900.00, 650.00, 0.00, 250.00, 0.00, '<1000', 2, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1160, 'E. Ncera', 1985, 329.00, 329.00, 0.00, 0.00, 0.00, '<1000', 2, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1161, 'E. Kowo', 1974, 220.00, 220.00, 0.00, 0.00, 0.00, '<1000', 2, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1162, 'Tolotangga', 1979, 485.00, 400.00, 0.00, 85.00, 0.00, '<1000', 2, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1163, 'Woro', 1969, 250.00, 250.00, 0.00, 0.00, 0.00, '<1000', 2, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1164, 'E. Woro', 1985, 452.00, 452.00, 0.00, 0.00, 0.00, '<1000', 2, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1165, 'E. Wera I', 1965, 75.00, 5.00, 0.00, 70.00, 0.00, '<1000', 2, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1166, 'E. Wera II', 1976, 200.00, 150.00, 0.00, 50.00, 0.00, '<1000', 2, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1167, 'E. Kore', 1972, 125.00, 125.00, 0.00, 0.00, 0.00, '<1000', 2, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1168, 'E. Oi Toi', 1973, 228.00, 228.00, 0.00, 0.00, 0.00, '<1000', 2, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1169, 'E. Waworada', 1973, 125.00, 125.00, 0.00, 0.00, 0.00, '<1000', 2, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1170, 'E. Nggira I', 1973, 25.00, 5.00, 0.00, 20.00, 0.00, '<1000', 2, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1171, 'E. Nggira II', 1972, 35.00, 0.00, 0.00, 35.00, 0.00, '<1000', 2, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1172, 'Santong', 1953, 1807.00, 1471.00, 0.00, 0.00, 336.00, '1000-3000', 4, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1173, 'Bagik Kembar', 1968, 1305.00, 405.00, 0.00, 0.00, 900.00, '1000-3000', 4, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1174, 'Sesaot', 1926, 1678.00, 1212.00, 0.00, 0.00, 466.00, '1000-3000', 4, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1175, 'Gebong', 1928, 2161.00, 1814.00, 0.00, 0.00, 347.00, '1000-3000', 4, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1176, 'Gde Bongoh', 1934, 2644.00, 2644.00, 0.00, 0.00, 0.00, '1000-3000', 5, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1177, 'Bisok Bokah', 1939, 1255.00, 1240.00, 0.00, 0.00, 15.00, '1000-3000', 5, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1178, 'Renggung', 1936, 1717.00, 1653.00, 0.00, 0.00, 64.00, '1000-3000', 5, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1179, 'Parung', 1971, 1270.00, 1262.00, 0.00, 0.00, 8.00, '1000-3000', 5, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1180, 'Rutus', 1937, 1743.00, 1743.00, 0.00, 0.00, 0.00, '1000-3000', 5, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1181, 'Rutus', 1962, 1040.00, 1040.00, 0.00, 0.00, 0.00, '1000-3000', 6, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1182, 'Pelapak', 1941, 1424.00, 1356.00, 0.00, 0.00, 68.00, '1000-3000', 6, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1183, 'Sakra', 1927, 1859.00, 1855.00, 0.00, 0.00, 4.00, '1000-3000', 6, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1184, 'Sambelia', 1973, 1666.00, 1229.00, 0.00, 431.00, 6.00, '1000-3000', 6, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1185, 'Kalimantong I', 1952, 1550.00, 1430.00, 49.00, 0.00, 71.00, '1000-3000', 9, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1186, 'Tepas/Kalimantong II', 1984, 2500.00, 2186.00, 314.00, 0.00, 0.00, '1000-3000', 9, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1187, 'Elang Desa', 1968, 1300.00, 800.00, 494.00, 0.00, 6.00, '1000-3000', 9, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1188, 'Plampo\'o ', 1975, 1060.00, 121.00, 0.00, 939.00, 0.00, '1000-3000', 9, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1189, 'Beringin Sila', 1975, 2400.00, 2395.00, 0.00, 0.00, 5.00, '1000-3000', 8, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1190, 'Pungkit', 1982, 1340.00, 1300.00, 0.00, 40.00, 0.00, '1000-3000', 8, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1191, 'Maronge/Tiu Kulit', 1977, 1877.00, 1860.00, 0.00, 17.00, 0.00, '1000-3000', 8, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1192, 'E. Gapit', 1996, 1300.00, 1170.00, 130.00, 0.00, 0.00, '1000-3000', 8, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1193, 'Plara', 1998, 2743.00, 2335.00, 383.00, 25.00, 0.00, '1000-3000', 8, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1194, 'Kadindi', 1986, 1200.00, 848.00, 0.00, 352.00, 0.00, '1000-3000', 3, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1195, 'Latonda Pekat', 1985, 1217.00, 643.00, 0.00, 574.00, 0.00, '1000-3000', 3, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1196, 'Daha  I, II.', 1975, 1273.00, 1144.00, 120.00, 9.00, 0.00, '1000-3000', 3, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1197, 'Mada Pangga II', 0, 2000.00, 1000.00, 0.00, 1000.00, 0.00, '1000-3000', 2, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1198, 'Ncangakae', 1940, 1063.00, 725.00, 0.00, 338.00, 0.00, '1000-3000', 2, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1199, 'Sumi', 1938, 1977.00, 1977.00, 0.00, 0.00, 0.00, '1000-3000', 2, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1200, 'Pengga', 1995, 3589.00, 3188.00, 0.00, 0.00, 401.00, '>3000', 4, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1201, 'Remening Kompleks', NULL, 3293.00, 3022.00, 0.00, 0.00, 271.00, '', 4, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1202, 'Keluncing', 1969, 548.00, 513.00, 0.00, 0.00, 35.00, '>3000', 4, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1203, 'Bengkel', 1974, 83.00, 83.00, 0.00, 0.00, 0.00, '>3000', 4, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1204, 'Juwet', 1979, 476.00, 476.00, 0.00, 0.00, 0.00, '>3000', 4, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1205, 'Dasan Tereng', 1927, 238.00, 220.00, 0.00, 0.00, 18.00, '>3000', 4, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1206, 'Datar', 1967, 834.00, 675.00, 0.00, 0.00, 159.00, '>3000', 4, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1207, 'Batu Riti', 1963, 619.00, 560.00, 0.00, 0.00, 59.00, '>3000', 4, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1208, '10 Irigasi Desa', NULL, 495.00, 495.00, 0.00, 0.00, 0.00, '>3000', 4, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1209, 'Jurang Sate Hulu', 1935, 4229.00, 3811.00, 0.00, 0.00, 418.00, '>3000', 5, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1210, 'Jurang Sate Hilir', 1935, 6439.00, 6439.00, 0.00, 0.00, 0.00, '>3000', 5, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1211, 'Mujur II', 1938, 3506.00, 3229.00, 0.00, 0.00, 277.00, '>3000', 5, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1212, 'Batujai', 1981, 3580.00, 3080.00, 0.00, 0.00, 500.00, '>3000', 5, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1213, 'Surabaya', 1937, 3258.00, 3239.00, 0.00, 0.00, 19.00, '>3000', 5, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1214, 'Jurang Batu', 1993, 3500.00, 3467.00, 0.00, 0.00, 33.00, '>3000', 5, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1215, 'Katon Kompleks', NULL, 7495.00, 7355.00, 128.00, 0.00, 12.00, '', 5, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1216, 'Katon', 1937, 1885.00, 1875.00, 0.00, 0.00, 10.00, '>3000', 5, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1217, 'Tibu Nangka', 1939, 2284.00, 2284.00, 0.00, 0.00, 0.00, '>3000', 5, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1218, 'Kulem', 1991, 1135.00, 1135.00, 0.00, 0.00, 0.00, '>3000', 5, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1219, 'Mujur I', 1938, 708.00, 708.00, 0.00, 0.00, 0.00, '>3000', 5, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1220, 'E. Pare', 1983, 600.00, 600.00, 0.00, 0.00, 0.00, '>3000', 5, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1221, 'E. Batu Ngapah', 1992, 583.00, 583.00, 0.00, 0.00, 0.00, '>3000', 5, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1222, 'Bile Remong', 1965, 300.00, 170.00, 128.00, 0.00, 2.00, '>3000', 5, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1223, 'Pandanduri Swangi ', NULL, 5168.00, 4612.00, 0.00, 556.00, 0.00, '', 6, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1224, 'Pandanduri', 1942, 2511.00, 2026.00, 0.00, 485.00, 0.00, '>3000', 6, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1225, 'Swangi', 1916, 2657.00, 2586.00, 0.00, 71.00, 0.00, '>3000', 6, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1226, 'Tanggik Kompleks', NULL, 3424.00, 3161.00, 0.00, 0.00, 263.00, '', 6, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1227, 'Kukusan', 1974, 2864.00, 2605.00, 0.00, 0.00, 259.00, '>3000', 6, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1228, 'Mamben', 1975, 560.00, 556.00, 0.00, 0.00, 4.00, '>3000', 6, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1229, 'Mamak - Kakiang ', NULL, 5416.00, 4713.00, 0.00, 703.00, 0.00, '', 8, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1230, 'Mamak', 1969, 3884.00, 3424.00, 0.00, 460.00, 0.00, '>3000', 8, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1231, 'Kakiang', 1976, 1532.00, 1289.00, 0.00, 243.00, 0.00, '>3000', 8, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1232, 'Batu Bulan', 2003, 5782.00, 4955.00, 0.00, 753.00, 0.00, '>3000', 8, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1233, 'Katua Kompleks', NULL, 3330.00, 3206.00, 0.00, 76.00, 48.00, '', 3, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1234, 'Katua', 1979, 1403.00, 1327.00, 0.00, 76.00, 0.00, '>3000', 3, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1235, 'Laju', 1935, 1050.00, 1002.00, 0.00, 0.00, 48.00, '>3000', 3, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1236, 'Rahalayu', 1982, 441.00, 441.00, 0.00, 0.00, 0.00, '>3000', 3, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1237, 'Mada Seli', 0, 75.00, 75.00, 0.00, 0.00, 0.00, '>3000', 3, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1238, 'Tua', 0, 60.00, 60.00, 0.00, 0.00, 0.00, '>3000', 3, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1239, 'Lamango', 0, 41.00, 41.00, 0.00, 0.00, 0.00, '>3000', 3, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1240, 'Lore', 0, 75.00, 75.00, 0.00, 0.00, 0.00, '>3000', 3, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1241, 'Saka', 0, 85.00, 85.00, 0.00, 0.00, 0.00, '>3000', 3, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1242, 'Manggekalo', 0, 100.00, 100.00, 0.00, 0.00, 0.00, '>3000', 3, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1243, 'Rababaka Kompleks', NULL, 4050.00, 3940.00, 0.00, 110.00, 0.00, '', 3, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1244, 'Baka', 1937, 1700.00, 1590.00, 0.00, 110.00, 0.00, '>3000', 3, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1245, 'Tanju', 0, 2350.00, 2350.00, 0.00, 0.00, 0.00, '>3000', 3, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1246, 'Pelaparado', NULL, 4815.00, 4372.00, 0.00, 443.00, 0.00, '', 2, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1247, 'Parado', 1984, 1388.00, 1140.00, 0.00, 248.00, 0.00, '>3000', 2, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1248, 'Pela Cempaka', 1958, 532.00, 337.00, 0.00, 195.00, 0.00, '>3000', 2, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1249, 'Sie', 1973, 182.00, 182.00, 0.00, 0.00, 0.00, '>3000', 2, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1250, 'Kalate', 1972, 968.00, 968.00, 0.00, 0.00, 0.00, '>3000', 2, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1251, '3 Irigasi Desa', 0, 1745.00, 1745.00, 0.00, 0.00, 0.00, '>3000', 2, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);

-- ----------------------------
-- Table structure for das
-- ----------------------------
DROP TABLE IF EXISTS `das`;
CREATE TABLE `das`  (
  `das_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `das_kode_ws` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `das_pola_aliran` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `das_nama` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `das_luas` decimal(15, 2) NULL DEFAULT 0.00,
  `das_jumlah_orde_sungai` int(11) NULL DEFAULT NULL,
  `das_jumlah_desa` int(11) NULL DEFAULT NULL,
  `das_keterangan` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `kabupaten_kota_id` bigint(20) UNSIGNED NULL DEFAULT NULL,
  `kecamatan_id` bigint(20) UNSIGNED NULL DEFAULT NULL,
  `kelurahan_desa_id` bigint(20) UNSIGNED NULL DEFAULT NULL,
  `marker` point NULL,
  `polyline` linestring NULL,
  `polygon` polygon NULL,
  `pengguna_id` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `kewenangan_provinsi` tinyint(4) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`das_id`) USING BTREE,
  INDEX `das_pengguna_id_foreign`(`pengguna_id`) USING BTREE,
  INDEX `das_kabupaten_kota_id_foreign`(`kabupaten_kota_id`) USING BTREE,
  INDEX `das_kecamatan_id_foreign`(`kecamatan_id`) USING BTREE,
  INDEX `das_kelurahan_desa_id_foreign`(`kelurahan_desa_id`) USING BTREE,
  CONSTRAINT `das_kabupaten_kota_id_foreign` FOREIGN KEY (`kabupaten_kota_id`) REFERENCES `kabupaten_kota` (`kabupaten_kota_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `das_kecamatan_id_foreign` FOREIGN KEY (`kecamatan_id`) REFERENCES `kecamatan` (`kecamatan_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `das_kelurahan_desa_id_foreign` FOREIGN KEY (`kelurahan_desa_id`) REFERENCES `kelurahan_desa` (`kelurahan_desa_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `das_pengguna_id_foreign` FOREIGN KEY (`pengguna_id`) REFERENCES `pengguna` (`pengguna_id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 200 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of das
-- ----------------------------
INSERT INTO `das` VALUES (1, '03.02.A3', 'Dendritik & Kisi-kisi sejajar/Pararel', 'DAS Bentek', 31.92, 5, 4, 'Utilitas Tinggi', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, '2020-07-25 12:28:57');
INSERT INTO `das` VALUES (2, '03.02.A3', 'Dendritik & Kisi-kisi sejajar/Pararel', 'DAS Buruan', 21.37, 5, 4, '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `das` VALUES (3, '03.02.A3', 'Dendritik & Kisi-kisi sjajar/Pararel', 'DAS Rangsot', 8.82, 3, 2, 'Utilitas', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `das` VALUES (4, '03.02.A3', 'Dendritik & Kisi-kisi sejajar/Pararel', 'DAS Gol', 5.02, 2, 2, 'Utilitas', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `das` VALUES (5, '03.02.A3', 'Dendritik & Kisi-kisi sejajar/Pararel', 'DAS Bengkak', 6.33, 2, 1, 'Utilitas', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `das` VALUES (6, '03.02.A3', 'Dendritik & Kisi-kisi sejajar/Pararel', 'DAS Sokong', 43.32, 5, 5, 'Utilitas', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `das` VALUES (7, '03.02.A3', 'Dendritik & Kisi-kisi sejajar/Pararel', 'DAS Segara', 127.62, 5, 11, '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `das` VALUES (8, '03.02.A3', 'Dendritik & Kisi-kisi sejajar/Pararel', 'DAS Tiupupus', 52.31, 5, 4, '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `das` VALUES (9, '03.02.A3', 'Dendritik & Kisi-kisi sejajar/Pararel', 'DAS Lendangkoa', 3.32, 2, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `das` VALUES (10, '03.02.A3', 'Dendritik & Kisi-kisi sejajar/Pararel', 'DAS Lempenge', 24.94, 4, 3, '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `das` VALUES (11, '03.02.A3', 'Dendritik & Kisi-kisi sejajar/Pararel', 'DAS Luk', 43.80, 5, 2, 'Utilitas', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `das` VALUES (12, '03.02.A3', 'Dendritik & Kisi-kisi sejajar/Pararel', 'DAS Penggolong', 5.53, 3, 1, 'Utilitas Tinggi', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `das` VALUES (13, '03.02.A3', 'Dendritik & Kisi-kisi sejajar/Pararel', 'DAS Piko', 4.45, 4, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `das` VALUES (14, '03.02.A3', 'Dendritik & Kisi-kisi sejajar/Pararel', 'DAS Sidutan', 48.93, 5, 11, 'Utilitas Tinggi', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `das` VALUES (15, '03.02.A3', 'Dendritik & Kisi-kisi sejajar/Pararel', 'DAS Braringan', 11.59, 5, 4, 'Utilitas Tinggi', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `das` VALUES (16, '03.02.A3', 'Dendritik & Kisi-kisi sejajar/Pararel', 'DAS Lebahpebali', 13.23, 5, 3, 'Utilitas', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `das` VALUES (17, '03.02.A3', 'Dendritik & Kisi-kisi sejajar/Pararel', 'DAS Lendang Bahagia', 1.58, 3, 3, 'Utilitas', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `das` VALUES (18, '03.02.A3', 'Dendritik & Kisi-kisi sejajar/Pararel', 'DAS Airberi', 1.82, 3, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `das` VALUES (19, '03.02.A3', 'Dendritik & Kisi-kisi sejajar/Pararel', 'DAS Amoramor', 60.58, 5, 7, 'Utilitas', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `das` VALUES (20, '03.02.A3', 'Dendritik & Kisi-kisi sejajar/Pararel', 'DAS Tampes', 6.78, 5, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `das` VALUES (21, '03.02.A3', 'Dendritik & Kisi-kisi sejajar/Pararel', 'DAS Jorong', 8.74, 2, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `das` VALUES (22, '03.02.A3', 'Dendritik & Kisi-kisi sejajar/Pararel', 'DAS Padek', 3.52, 3, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `das` VALUES (23, '03.02.A3', 'Dendritik & Kisi-kisi sejajar/Pararel', 'DAS Peria', 7.59, 2, 2, '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `das` VALUES (24, '03.02.A3', 'Dendritik & Kisi-kisi sejajar/Pararel', 'DAS Rembat', 3.41, 2, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `das` VALUES (25, '03.02.A3', 'Dendritik & Kisi-kisi sejajar/Pararel', 'DAS Mumbul', 7.01, 3, 2, '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `das` VALUES (26, '03.02.A3', 'Dendritik & Kisi-kisi sejajar/Pararel', 'DAS Lebak', 3.74, 2, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `das` VALUES (27, '03.02.A3', 'Dendritik & Kisi-kisi sejajar/Pararel', 'DAS Menangen', 4.18, 4, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `das` VALUES (28, '03.02.A3', 'Dendritik & Kisi-kisi sejajar/Pararel', 'DAS Lengkulun', 9.08, 3, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `das` VALUES (29, '03.02.A3', 'Dendritik & Kisi-kisi sejajar/Pararel', 'DAS Embarembar', 37.92, 4, 3, '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `das` VALUES (30, '03.02.A3', 'Dendritik & Kisi-kisi sejajar/Pararel', 'DAS Sintelik', 0.77, 1, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `das` VALUES (31, '03.02.A3', 'Dendritik & Kisi-kisi sejajar/Pararel', 'DAS Sependok', 1.13, 2, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `das` VALUES (32, '03.02.A3', 'Dendritik & Kisi-kisi sejajar/Pararel', 'DAS Tantang', 1.94, 2, 2, '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `das` VALUES (33, '03.02.A3', 'Dendritik & Kisi-kisi sejajar/Pararel', 'DAS Persani', 8.67, 3, 2, '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `das` VALUES (34, '03.02.A3', 'Dendritik & Kisi-kisi sejajar/Pararel', 'DAS Kengkang', 1.26, 2, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `das` VALUES (35, '03.02.A3', 'Dendritik & Kisi-kisi sejajar/Pararel', 'DAS Kandang', 4.17, 4, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `das` VALUES (36, '03.02.A3', 'Dendritik & Kisi-kisi sejajar/Pararel', 'DAS Bagekrarit', 1.39, 2, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `das` VALUES (37, '03.02.A3', 'Dendritik & Kisi-kisi sejajar/Pararel', 'DAS Koangan', 33.39, 5, 3, 'Utilitas', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `das` VALUES (38, '03.02.A3', 'Dendritik & Kisi-kisi sejajar/Pararel', 'DAS Telagabanyak', 2.51, 3, 2, '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `das` VALUES (39, '03.02.A3', 'Dendritik & Kisi-kisi sejajar/Pararel', 'DAS Dasankopang', 3.39, 5, 2, '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `das` VALUES (40, '03.02.A3', 'Dendritik & Kisi-kisi sejajar/Pararel', 'DAS Bat', 2.28, 3, 2, '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `das` VALUES (41, '03.02.A3', 'Dendritik & Kisi-kisi sejajar/Pararel', 'DAS Reak', 38.03, 5, 3, 'Utilitas Tinggi', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `das` VALUES (42, '03.02.A3', 'Dendritik & Kisi-kisi sejajar/Pararel', 'DAS Segoar', 3.23, 5, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `das` VALUES (43, '03.02.A3', 'Dendritik & Kisi-kisi sejajar/Pararel', 'DAS Gereneng', 28.34, 4, 2, '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `das` VALUES (44, '03.02.A3', 'Dendritik & Kisi-kisi sejajar/Pararel', 'DAS Akar', 3.65, 3, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `das` VALUES (45, '03.02.A3', 'Dendritik & Kisi-kisi sejajar/Pararel', 'DAS Bebanan', 3.96, 1, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `das` VALUES (46, '03.02.A3', 'Dendritik & Kisi-kisi sejajar/Pararel', 'DAS Nawan', 6.86, 3, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `das` VALUES (47, '03.02.A3', 'Dendritik & Kisi-kisi sejajar/Pararel', 'DAS Tebi', 3.54, 3, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `das` VALUES (48, '03.02.A3', 'Dendritik & Kisi-kisi sejajar/Pararel', 'DASTanjungkates', 2.22, 1, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `das` VALUES (49, '03.02.A3', 'Dendritik & Kisi-kisi sejajar/Pararel', 'DAS Putih', 76.64, 5, 12, '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `das` VALUES (50, '03.02.A3', 'Dendritik & Kisi-kisi sejajar/Pararel', 'DAS Kemangi', 3.91, 2, 2, '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `das` VALUES (51, '03.02.A3', 'Dendritik & Kisi-kisi sejajar/Pararel', 'DAS Kuang', 9.88, 4, 3, '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `das` VALUES (52, '03.02.A3', 'Dendritik & Kisi-kisi sejajar/Pararel', 'DAS Bosang', 4.32, 1, 3, '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `das` VALUES (53, '03.02.A3', 'Dendritik & Kisi-kisi sejajar/Pararel', 'DAS Beburung', 104.20, 5, 9, 'Utilitas Tinggi', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `das` VALUES (54, '03.02.A3', 'Dendritik & Kisi-kisi sejajar/Pararel', 'DAS Paok', 18.06, 3, 4, '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `das` VALUES (55, '03.02.A3', 'Dendritik & Kisi-kisi sejajar/Pararel', 'DAS Runggang', 15.62, 3, 2, 'Utilitas', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `das` VALUES (56, '03.02.A3', 'Dendritik & Kisi-kisi sejajar/Pararel', 'DAS Belik', 7.97, 4, 1, 'Utilitas', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `das` VALUES (57, '03.02.A3', 'Dendritik & Kisi-kisi sejajar/Pararel', 'DAS Mentareng', 9.27, 2, 2, 'Utilitas', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `das` VALUES (58, '03.02.A3', 'Dendritik & Kisi-kisi sejajar/Pararel', 'DAS Tenung', 3.17, 2, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `das` VALUES (59, '03.02.A3', 'Dendritik & Kisi-kisi sejajar/Pararel', 'DAS Melempo', 4.37, 2, 2, '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `das` VALUES (60, '03.02.A3', 'Dendritik & Kisi-kisi sejajar/Pararel', 'DAS Airsintu', 2.65, 1, 2, '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `das` VALUES (61, '03.02.A3', 'Dendritik & Kisi-kisi sejajar/Pararel', 'DAS Pengembulan', 3.40, 2, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `das` VALUES (62, '03.02.A3', 'Dendritik & Kisi-kisi sejajar/Pararel', 'DAS Pekendangan', 23.58, 5, 3, '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `das` VALUES (63, '03.02.A3', 'Dendritik & Kisi-kisi sejajar/Pararel', 'DAS Sacut', 4.58, 4, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `das` VALUES (64, '03.02.A3', 'Dendritik & Kisi-kisi sejajar/Pararel', 'DAS Nangka', 32.72, 5, 5, 'Utilitas Tinggi', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `das` VALUES (65, '03.02.A3', 'Dendritik & Kisi-kisi sejajar/Pararel', 'DAS Sepang', 10.30, 4, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `das` VALUES (66, '03.02.A3', 'Dendritik & Kisi-kisi sejajar/Pararel', 'DAS Pesiran', 12.69, 1, 2, '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `das` VALUES (67, '03.02.A3', 'Dendritik & Kisi-kisi sejajar/Pararel', 'DAS Pancor', 9.31, 3, 2, '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `das` VALUES (68, '03.02.A3', 'Dendritik & Kisi-kisi sejajar/Pararel', 'DAS Hangat', 7.84, 1, 1, 'Utilitas Tinggi', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `das` VALUES (69, '03.02.A3', 'Dendritik & Kisi-kisi sejajar/Pararel', 'DAS Tibulele', 9.03, 3, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `das` VALUES (70, '03.02.A3', 'Dendritik & Kisi-kisi sejajar/Pararel', 'DAS Rajak', 17.19, 2, 1, 'Utilitas', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `das` VALUES (71, '03.02.A3', 'Dendritik & Kisi-kisi sejajar/Pararel', 'DAS Sambelia', 58.15, 5, 4, 'Utilitas Tinggi', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `das` VALUES (72, '03.02.A3', 'Dendritik & Kisi-kisi sejajar/Pararel', 'DAS Tibuborok', 7.80, 3, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `das` VALUES (73, '03.02.A3', 'Dendritik & Kisi-kisi sejajar/Pararel', 'DAS Sengkurik', 9.90, 3, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `das` VALUES (74, '03.02.A3', 'Dendritik & Kisi-kisi sejajar/Pararel', 'DAS Rambanperia', 4.93, 2, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `das` VALUES (75, '03.02.A3', 'Dendritik & Kisi-kisi sejajar/Pararel', 'DAS Kurbian', 25.25, 5, 2, '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `das` VALUES (76, '03.02.A3', 'Dendritik & Kisi-kisi sejajar/Pararel', 'DAS Leper', 8.90, 3, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `das` VALUES (77, '03.02.A3', 'Dendritik & Kisi-kisi sejajar/Pararel', 'DAS Legundi', 16.16, 3, 5, '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `das` VALUES (78, '03.02.A3', 'Dendritik & Kisi-kisi sejajar/Pararel', 'DAS Sesager', 6.30, 2, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `das` VALUES (79, '03.02.A3', 'Dendritik & Kisi-kisi sejajar/Pararel', 'DAS Menangabaris', 4.07, 2, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `das` VALUES (80, '03.02.A3', 'Dendritik & Kisi-kisi sejajar/Pararel', 'DAS Pesugulan', 9.37, 2, 2, '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `das` VALUES (81, '03.02.A3', 'Dendritik & Kisi-kisi sejajar/Pararel', 'DAS Cereme', 3.88, 3, 2, '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `das` VALUES (82, '03.02.A3', 'Dendritik & Kisi-kisi sejajar/Pararel', 'DAS Buangpaok', 9.58, 3, 2, '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `das` VALUES (83, '03.02.A3', 'Dendritik & Kisi-kisi sejajar/Pararel', 'DAS Tibubunut', 44.89, 5, 3, '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `das` VALUES (84, '03.02.A3', 'Dendritik & Kisi-kisi sejajar/Pararel', 'DAS Brangbantun', 24.35, 5, 7, '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `das` VALUES (85, '03.02.A3', 'Dendritik & Kisi-kisi sejajar/Pararel', 'DAS Desa', 73.34, 5, 12, 'Utilitas Tinggi', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `das` VALUES (86, '03.02.A3', 'Dendritik & Kisi-kisi sejajar/Pararel', 'DAS Tanggek', 68.03, 8, 19, 'Utilitas Tinggi', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `das` VALUES (87, '03.02.A3', 'Dendritik & Kisi-kisi sejajar/Pararel', 'DAS Kukusan', 118.46, 8, 14, 'Utilitas Tinggi', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `das` VALUES (88, '03.02.A3', 'Dendritik & Kisi-kisi sejajar/Pararel', 'DAS Tojang', 39.07, 4, 7, 'Utilitas Tinggi', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `das` VALUES (89, '03.02.A3', 'Dendritik & Kisi-kisi sejajar/Pararel', 'DAS Geres Serodang', 60.94, 6, 13, 'Utilitas Tinggi', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `das` VALUES (90, '03.02.A3', 'Dendritik & Kisi-kisi sejajar/Pararel', 'DAS Blimbing', 91.47, 7, 28, 'Utilitas Tinggi', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `das` VALUES (91, '03.02.A3', 'Dendritik & Kisi-kisi sejajar/Pararel', 'DAS Aikampat', 82.82, 7, 27, 'Utilitas Tinggi', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `das` VALUES (92, '03.02.A3', 'Dendritik & Kisi-kisi sejajar/Pararel', 'DAS Menangapaok', 78.11, 3, 6, 'Utilitas Tinggi', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `das` VALUES (93, '03.02.A3', 'Dendritik & Kisi-kisi sejajar/Pararel', 'DAS Moyot', 25.08, 4, 9, 'Utilitas Tinggi', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `das` VALUES (94, '03.02.A3', 'Dendritik & Kisi-kisi sejajar/Pararel', 'DAS Palung', 120.60, 7, 32, 'Utilitas Tinggi', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `das` VALUES (95, '03.02.A3', 'Dendritik & Kisi-kisi sejajar/Pararel', 'DAS Kedome', 31.19, 4, 10, 'Utilitas Tinggi', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `das` VALUES (96, '03.02.A3', 'Dendritik & Kisi-kisi sejajar/Pararel', 'DAS Rere Penembem', 58.00, 4, 13, 'Utilitas Tinggi', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `das` VALUES (97, '03.02.A3', 'Dendritik & Kisi-kisi sejajar/Pararel', 'DAS Pemokong', 27.45, 3, 2, '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `das` VALUES (98, '03.02.A3', 'Dendritik & Kisi-kisi sejajar/Pararel', 'DAS Kenyaru', 10.00, 3, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `das` VALUES (99, '03.02.A3', 'Dendritik & Kisi-kisi sejajar/Pararel', 'DAS Aruina', 5.24, 3, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `das` VALUES (100, '03.02.A3', 'Dendritik & Kisi-kisi sejajar/Pararel', 'DAS Ujunggol', 7.46, 4, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `das` VALUES (101, '03.02.A3', 'Dendritik & Kisi-kisi sejajar/Pararel', 'DAS Lendang Lombok', 33.42, 3, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `das` VALUES (102, '03.02.A3', 'Dendritik & Kisi-kisi sejajar/Pararel', 'DAS Temodo', 28.48, 4, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `das` VALUES (103, '03.02.A3', 'Dendritik & Kisi-kisi sejajar/Pararel', 'DAS Kuang Bulu', 2.42, 3, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `das` VALUES (104, '03.02.A3', 'Dendritik & Kisi-kisi sejajar/Pararel', 'DAS Peak', 34.87, 4, 7, '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `das` VALUES (105, '03.02.A3', 'Dendritik & Kisi-kisi sejajar/Pararel', 'DAS Pare Ganti', 34.29, 4, 11, '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `das` VALUES (106, '03.02.A3', 'Dendritik & Kisi-kisi sejajar/Pararel', 'DAS Supak', 9.82, 3, 4, '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `das` VALUES (107, '03.02.A3', 'Dendritik & Kisi-kisi sejajar/Pararel', 'DAS Renggung Perempung', 256.73, 7, 34, 'Utilitas Tinggi', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `das` VALUES (108, '03.02.A3', 'Dendritik & Kisi-kisi sejajar/Pararel', 'DAS Bumbang', 19.51, 3, 2, '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `das` VALUES (109, '03.02.A3', 'Dendritik & Kisi-kisi sejajar/Pararel', 'DAS Asin', 4.63, 3, 2, '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `das` VALUES (110, '03.02.A3', 'Dendritik & Kisi-kisi sejajar/Pararel', 'DAS Bangketlamin', 9.79, 3, 2, '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `das` VALUES (111, '03.02.A3', 'Dendritik & Kisi-kisi sejajar/Pararel', 'DAS Balak', 26.84, 5, 4, '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `das` VALUES (112, '03.02.A3', 'Dendritik & Kisi-kisi sejajar/Pararel', 'DAS Ngolang', 15.07, 4, 4, '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `das` VALUES (113, '03.02.A3', 'Dendritik & Kisi-kisi sejajar/Pararel', 'DAS Tebelo', 8.40, 3, 5, '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `das` VALUES (114, '03.02.A3', 'Dendritik & Kisi-kisi sejajar/Pararel', 'DAS Uluan', 8.40, 3, 4, '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `das` VALUES (115, '03.02.A3', 'Dendritik & Kisi-kisi sejajar/Pararel', 'DAS Mawun', 8.74, 4, 3, '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `das` VALUES (116, '03.02.A3', 'Dendritik & Kisi-kisi sejajar/Pararel', 'DAS Tampah', 15.34, 3, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `das` VALUES (117, '03.02.A3', 'Dendritik & Kisi-kisi sejajar/Pararel', 'DAS Luncing', 5.45, 4, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `das` VALUES (118, '03.02.A3', 'Dendritik & Kisi-kisi sejajar/Pararel', 'DAS Trawas', 9.88, 4, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `das` VALUES (119, '03.02.A3', 'Dendritik & Kisi-kisi sejajar/Pararel', 'DAS Rowok', 3.97, 3, 2, '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `das` VALUES (120, '03.02.A3', 'Dendritik & Kisi-kisi sejajar/Pararel', 'DAS Selongblanak', 1.99, 4, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `das` VALUES (121, '03.02.A3', 'Dendritik & Kisi-kisi sejajar/Pararel', 'DAS Rujakpraya', 9.16, 4, 2, '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `das` VALUES (122, '03.02.A3', 'Dendritik & Kisi-kisi sejajar/Pararel', 'DAS Terake', 6.35, 2, 2, '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `das` VALUES (123, '03.02.A3', 'Dendritik & Kisi-kisi sejajar/Pararel', 'DAS Tomangomang', 3.39, 3, 2, '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `das` VALUES (124, '03.02.A3', 'Dendritik & Kisi-kisi sejajar/Pararel', 'DAS Selain', 2.80, 1, 2, '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `das` VALUES (125, '03.02.A3', 'Dendritik & Kisi-kisi sejajar/Pararel', 'DAS Tongker', 2.87, 3, 2, '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `das` VALUES (126, '03.02.A3', 'Dendritik & Kisi-kisi sejajar/Pararel', 'DAS Serangan', 1.72, 3, 2, '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `das` VALUES (127, '03.02.A3', 'Dendritik & Kisi-kisi sejajar/Pararel', 'DAS Torokaikbelik', 2.98, 2, 2, '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `das` VALUES (128, '03.02.A3', 'Dendritik & Kisi-kisi sejajar/Pararel', 'DAS Pengantap', 2.92, 2, 2, '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `das` VALUES (129, '03.02.A3', 'Dendritik & Kisi-kisi sejajar/Pararel', 'DAS Meang', 6.31, 2, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `das` VALUES (130, '03.02.A3', 'Dendritik & Kisi-kisi sejajar/Pararel', 'DAS Bengkang', 10.98, 4, 3, '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `das` VALUES (131, '03.02.A3', 'Dendritik & Kisi-kisi sejajar/Pararel', 'DAS Jerengkang', 1.23, 2, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `das` VALUES (132, '03.02.A3', 'Dendritik & Kisi-kisi sejajar/Pararel', 'DAS Sepi', 2.93, 3, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `das` VALUES (133, '03.02.A3', 'Dendritik & Kisi-kisi sejajar/Pararel', 'DAS Kombang', 1.50, 2, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `das` VALUES (134, '03.02.A3', 'Dendritik & Kisi-kisi sejajar/Pararel', 'DAS Teba', 3.60, 3, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `das` VALUES (135, '03.02.A3', 'Dendritik & Kisi-kisi sejajar/Pararel', 'DAS Blongas', 10.12, 4, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `das` VALUES (136, '03.02.A3', 'Dendritik & Kisi-kisi sejajar/Pararel', 'DAS Selodong', 5.41, 5, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `das` VALUES (137, '03.02.A3', 'Dendritik & Kisi-kisi sejajar/Pararel', 'DAS Sauh', 12.21, 5, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `das` VALUES (138, '03.02.A3', 'Dendritik & Kisi-kisi sejajar/Pararel', 'DAS Teluk Mekaki', 14.73, 2, 2, '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `das` VALUES (139, '03.02.A3', 'Dendritik & Kisi-kisi sejajar/Pararel', 'DAS Puramalikan', 11.17, 3, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `das` VALUES (140, '03.02.A3', 'Dendritik & Kisi-kisi sejajar/Pararel', 'DAS Peretan', 10.26, 2, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `das` VALUES (141, '03.02.A3', 'Dendritik & Kisi-kisi sejajar/Pararel', 'DAS Batubuton', 1.67, 2, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `das` VALUES (142, '03.02.A3', 'Dendritik & Kisi-kisi sejajar/Pararel', 'DAS Belangpaku', 2.45, 1, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `das` VALUES (143, '03.02.A3', 'Dendritik & Kisi-kisi sejajar/Pararel', 'DAS Labuankuwe', 5.89, 1, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `das` VALUES (144, '03.02.A3', 'Dendritik & Kisi-kisi sejajar/Pararel', 'DAS Pemalikanalit', 3.47, 2, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `das` VALUES (145, '03.02.A3', 'Dendritik & Kisi-kisi sejajar/Pararel', 'DAS Pemalikanagung', 4.32, 2, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `das` VALUES (146, '03.02.A3', 'Dendritik & Kisi-kisi sejajar/Pararel', 'DAS Bangkobangko', 3.81, 2, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `das` VALUES (147, '03.02.A3', 'Dendritik & Kisi-kisi sejajar/Pararel', 'DAS Orongudang', 6.82, 3, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `das` VALUES (148, '03.02.A3', 'Dendritik & Kisi-kisi sejajar/Pararel', 'DAS Labuanpoh', 15.01, 3, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `das` VALUES (149, '03.02.A3', 'Dendritik & Kisi-kisi sejajar/Pararel', 'DAS Ketapang', 7.29, 2, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `das` VALUES (150, '03.02.A3', 'Dendritik & Kisi-kisi sejajar/Pararel', 'DAS Siung', 12.98, 3, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `das` VALUES (151, '03.02.A3', 'Dendritik & Kisi-kisi sejajar/Pararel', 'DAS Selinggahan', 2.40, 2, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `das` VALUES (152, '03.02.A3', 'Dendritik & Kisi-kisi sejajar/Pararel', 'DAS Pewaringan', 1.48, 3, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `das` VALUES (153, '03.02.A3', 'Dendritik & Kisi-kisi sejajar/Pararel', 'DAS Selindungan', 1.12, 1, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `das` VALUES (154, '03.02.A3', 'Dendritik & Kisi-kisi sejajar/Pararel', 'DAS Pelangan', 67.28, 7, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `das` VALUES (155, '03.02.A3', 'Dendritik & Kisi-kisi sejajar/Pararel', 'DASTembowong', 4.26, 4, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `das` VALUES (156, '03.02.A3', '', 'DAS Gawahpadak', 4.77, 0, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `das` VALUES (157, '03.02.A3', 'Dendritik & Kisi-kisi sejajar/Pararel', 'DAS Temeran', 4.04, 3, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `das` VALUES (158, '03.02.A3', 'Dendritik & Kisi-kisi sejajar/Pararel', 'DAS Lebuanbetung', 2.83, 4, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `das` VALUES (159, '03.02.A3', 'Dendritik & Kisi-kisi sejajar/Pararel', 'DAS Leong', 3.92, 4, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `das` VALUES (160, '03.02.A3', 'Dendritik & Kisi-kisi sejajar/Pararel', 'DAS Padanan', 5.10, 1, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `das` VALUES (161, '03.02.A3', 'Dendritik & Kisi-kisi sejajar/Pararel', 'DAS Kelapa', 0.57, 2, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `das` VALUES (162, '03.02.A3', 'Dendritik & Kisi-kisi sejajar/Pararel', 'DAS Labu', 1.23, 2, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `das` VALUES (163, '03.02.A3', 'Dendritik & Kisi-kisi sejajar/Pararel', 'DAS Batuleong', 2.43, 3, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `das` VALUES (164, '03.02.A3', 'Dendritik & Kisi-kisi sejajar/Pararel', 'DAS Tawun', 1.68, 1, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `das` VALUES (165, '03.02.A3', 'Dendritik & Kisi-kisi sejajar/Pararel', 'DAS Jerenjeng', 3.85, 2, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `das` VALUES (166, '03.02.A3', '', 'DAS Kumbu', 2.65, 0, 2, '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `das` VALUES (167, '03.02.A3', 'Dendritik & Kisi-kisi sejajar/Pararel', 'DAS Medang', 2.51, 2, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `das` VALUES (168, '03.02.A3', 'Dendritik & Kisi-kisi sejajar/Pararel', 'DAS Lendangre', 1.90, 3, 2, '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `das` VALUES (169, '03.02.A3', 'Dendritik & Kisi-kisi sejajar/Pararel', 'DAS Kelep', 109.27, 7, 5, '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `das` VALUES (170, '03.02.A3', 'Dendritik & Kisi-kisi sejajar/Pararel', 'DAS Jelateng', 38.67, 3, 4, 'Utilitas', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `das` VALUES (171, '03.02.A3', '', 'DAS Tibu', 4.01, 0, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `das` VALUES (172, '03.02.A3', 'Dendritik & Kisi-kisi sejajar/Pararel', 'DAS Tibuli', 3.73, 3, 3, 'Utilitas', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `das` VALUES (173, '03.02.A3', 'Dendritik & Kisi-kisi sejajar/Pararel', 'DAS Dodokan', 574.79, 8, 80, 'Utilitas Tinggi', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `das` VALUES (174, '03.02.A3', 'Dendritik & Kisi-kisi sejajar/Pararel', 'DAS Babak', 258.41, 6, 41, 'Utilitas Tinggi', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `das` VALUES (175, '03.02.A3', 'Dendritik & Kisi-kisi sejajar/Pararel', 'DAS Kelongkong', 33.20, 5, 14, 'Utilitas Tinggi', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `das` VALUES (176, '03.02.A3', 'Dendritik & Kisi-kisi sejajar/Pararel', 'DAS Berenyok', 25.66, 5, 16, 'Utilitas Tinggi', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `das` VALUES (177, '03.02.A3', 'Dendritik & Kisi-kisi sejajar/Pararel', 'DAS Ancar', 22.85, 4, 16, 'Utilitas Tinggi', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `das` VALUES (178, '03.02.A3', 'Dendritik & Kisi-kisi sejajar/Pararel', 'DAS Jangkok', 168.73, 5, 26, 'Utilitas Tinggi', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `das` VALUES (179, '03.02.A3', 'Dendritik & Kisi-kisi sejajar/Pararel', 'DAS Midang', 33.23, 5, 10, 'Utilitas Tinggi', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `das` VALUES (180, '03.02.A3', 'Dendritik & Kisi-kisi sejajar/Pararel', 'DAS Meninting', 114.92, 6, 19, 'Utilitas Tinggi', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `das` VALUES (181, '03.02.A3', 'Dendritik & Kisi-kisi sejajar/Pararel', 'DAS Batulayar', 3.26, 1, 2, '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `das` VALUES (182, '03.02.A3', 'Dendritik & Kisi-kisi sejajar/Pararel', 'DAS Duduk', 2.37, 1, 2, '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `das` VALUES (183, '03.02.A3', 'Dendritik & Kisi-kisi sejajar/Pararel', 'DAS Batubolong', 5.18, 2, 3, '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `das` VALUES (184, '03.02.A3', 'Dendritik & Kisi-kisi sejajar/Pararel', 'DAS Senggigi', 4.28, 2, 2, '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `das` VALUES (185, '03.02.A3', 'Dendritik & Kisi-kisi sejajar/Pararel', 'DAS Krandangan', 5.01, 2, 3, '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `das` VALUES (186, '03.02.A3', 'Dendritik & Kisi-kisi sejajar/Pararel', 'DAS Mansit', 1.97, 2, 2, '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `das` VALUES (187, '03.02.A3', 'Dendritik & Kisi-kisi sejajar/Pararel', 'DAS Kelui', 1.27, 1, 2, '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `das` VALUES (188, '03.02.A3', 'Dendritik & Kisi-kisi sejajar/Pararel', 'DAS Lendangluar', 4.02, 2, 2, '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `das` VALUES (189, '03.02.A3', 'Dendritik & Kisi-kisi sejajar/Pararel', 'DAS Malimbu', 5.71, 4, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `das` VALUES (190, '03.02.A3', 'Dendritik & Kisi-kisi sejajar/Pararel', 'DAS Nipah', 3.67, 2, 2, '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `das` VALUES (191, '03.02.A3', 'Dendritik & Kisi-kisi sejajar/Pararel', 'DAS Pandanan', 3.90, 3, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `das` VALUES (192, '03.02.A3', 'Dendritik & Kisi-kisi sejajar/Pararel', 'DAS Teluknara', 6.07, 2, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `das` VALUES (193, '03.02.A3', 'Dendritik & Kisi-kisi sejajar/Pararel', 'DAS Gili Trawangan', 3.50, 0, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `das` VALUES (194, '03.02.A3', 'Dendritik & Kisi-kisi sejajar/Pararel', 'DAS Gili Meno', 1.87, 1, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `das` VALUES (195, '03.02.A3', 'Dendritik & Kisi-kisi sejajar/Pararel', 'DAS Gili Air', 1.81, 0, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `das` VALUES (196, '03.02.A3', 'Dendritik & Kisi-kisi sejajar/Pararel', 'DAS Gili Lawang', 4.41, 0, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `das` VALUES (197, '03.02.A3', 'Dendritik & Kisi-kisi sejajar/Pararel', 'DAS Gili Salut', 6.98, 0, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `das` VALUES (198, '123123', 'asdfasdf', 'asdfasdf', 21.00, 12312, 22, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-28 19:01:59', '2020-07-28 19:01:59');
INSERT INTO `das` VALUES (199, '123', 'asdf', '123', 112323.00, 123, 13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-28 19:27:34', '2020-07-28 19:27:34');

-- ----------------------------
-- Table structure for desa_miskin
-- ----------------------------
DROP TABLE IF EXISTS `desa_miskin`;
CREATE TABLE `desa_miskin`  (
  `desa_miskin_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `desa_miskin_tahun` int(11) NOT NULL,
  `kelurahan_desa_id` bigint(20) UNSIGNED NOT NULL,
  `pengguna_id` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`desa_miskin_id`) USING BTREE,
  INDEX `desa_miskin_pengguna_id_foreign`(`pengguna_id`) USING BTREE,
  INDEX `desa_miskin_kelurahan_desa_id_foreign`(`kelurahan_desa_id`) USING BTREE,
  CONSTRAINT `desa_miskin_kelurahan_desa_id_foreign` FOREIGN KEY (`kelurahan_desa_id`) REFERENCES `kelurahan_desa` (`kelurahan_desa_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `desa_miskin_pengguna_id_foreign` FOREIGN KEY (`pengguna_id`) REFERENCES `pengguna` (`pengguna_id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of desa_miskin
-- ----------------------------
INSERT INTO `desa_miskin` VALUES (1, 2020, 1127, 'admin', '2020-07-27 11:56:11', '2020-07-27 11:56:41');

-- ----------------------------
-- Table structure for drainase
-- ----------------------------
DROP TABLE IF EXISTS `drainase`;
CREATE TABLE `drainase`  (
  `drainase_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `drainase_nama` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `drainase_panjang` decimal(15, 2) NOT NULL DEFAULT 0.00,
  `kabupaten_kota_id` bigint(20) UNSIGNED NULL DEFAULT NULL,
  `kecamatan_id` bigint(20) UNSIGNED NULL DEFAULT NULL,
  `kelurahan_desa_id` bigint(20) UNSIGNED NULL DEFAULT NULL,
  `marker` point NULL,
  `polyline` linestring NULL,
  `polygon` polygon NULL,
  `pengguna_id` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `kewenangan_provinsi` tinyint(4) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`drainase_id`) USING BTREE,
  INDEX `drainase_pengguna_id_foreign`(`pengguna_id`) USING BTREE,
  INDEX `drainase_kabupaten_kota_id_foreign`(`kabupaten_kota_id`) USING BTREE,
  INDEX `drainase_kecamatan_id_foreign`(`kecamatan_id`) USING BTREE,
  INDEX `drainase_kelurahan_desa_id_foreign`(`kelurahan_desa_id`) USING BTREE,
  CONSTRAINT `drainase_kabupaten_kota_id_foreign` FOREIGN KEY (`kabupaten_kota_id`) REFERENCES `kabupaten_kota` (`kabupaten_kota_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `drainase_kecamatan_id_foreign` FOREIGN KEY (`kecamatan_id`) REFERENCES `kecamatan` (`kecamatan_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `drainase_kelurahan_desa_id_foreign` FOREIGN KEY (`kelurahan_desa_id`) REFERENCES `kelurahan_desa` (`kelurahan_desa_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `drainase_pengguna_id_foreign` FOREIGN KEY (`pengguna_id`) REFERENCES `pengguna` (`pengguna_id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of drainase
-- ----------------------------
INSERT INTO `drainase` VALUES (1, 'asdf1', 123123.00, 9, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-28 19:06:06', '2020-07-28 19:06:06');
INSERT INTO `drainase` VALUES (2, '12asdf', 12123.00, 9, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-28 19:28:16', '2020-07-28 19:28:16');

-- ----------------------------
-- Table structure for embung
-- ----------------------------
DROP TABLE IF EXISTS `embung`;
CREATE TABLE `embung`  (
  `embung_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `embung_nama` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `embung_tahun_pembuatan` int(11) NULL DEFAULT NULL,
  `embung_biaya_pembuatan` decimal(15, 2) NULL DEFAULT 0.00,
  `embung_data_teknik_ca_km` decimal(15, 2) NULL DEFAULT 0.00,
  `embung_data_teknik_luasan_genangan` decimal(15, 2) NULL DEFAULT 0.00,
  `embung_data_teknik_tipe_konstruksi` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `embung_data_teknik_volume` decimal(15, 2) NULL DEFAULT 0.00,
  `embung_data_teknik_l` decimal(15, 2) NULL DEFAULT 0.00,
  `embung_data_teknik_h` decimal(15, 2) NULL DEFAULT 0.00,
  `embung_data_teknik_lebar_spillway` decimal(15, 2) NULL DEFAULT 0.00,
  `embung_fungsi_irigasi` decimal(15, 2) NULL DEFAULT 0.00,
  `embung_fungsi_ternak` decimal(15, 2) NULL DEFAULT 0.00,
  `embung_fungsi_air_baku` decimal(15, 2) NULL DEFAULT 0.00,
  `embung_fungsi_pltm` decimal(15, 2) NULL DEFAULT 0.00,
  `embung_keterangan` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `kabupaten_kota_id` bigint(20) UNSIGNED NULL DEFAULT NULL,
  `kecamatan_id` bigint(20) UNSIGNED NULL DEFAULT NULL,
  `kelurahan_desa_id` bigint(20) UNSIGNED NULL DEFAULT NULL,
  `marker` point NULL,
  `polyline` linestring NULL,
  `polygon` polygon NULL,
  `pengguna_id` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `kewenangan_provinsi` tinyint(4) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`embung_id`) USING BTREE,
  INDEX `embung_pengguna_id_foreign`(`pengguna_id`) USING BTREE,
  INDEX `embung_kelurahan_desa_id_foreign`(`kelurahan_desa_id`) USING BTREE,
  INDEX `embung_kabupaten_kota_id_foreign`(`kabupaten_kota_id`) USING BTREE,
  INDEX `embung_kecamatan_id_foreign`(`kecamatan_id`) USING BTREE,
  CONSTRAINT `embung_kabupaten_kota_id_foreign` FOREIGN KEY (`kabupaten_kota_id`) REFERENCES `kabupaten_kota` (`kabupaten_kota_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `embung_kecamatan_id_foreign` FOREIGN KEY (`kecamatan_id`) REFERENCES `kecamatan` (`kecamatan_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `embung_kelurahan_desa_id_foreign` FOREIGN KEY (`kelurahan_desa_id`) REFERENCES `kelurahan_desa` (`kelurahan_desa_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `embung_pengguna_id_foreign` FOREIGN KEY (`pengguna_id`) REFERENCES `pengguna` (`pengguna_id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 188 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of embung
-- ----------------------------
INSERT INTO `embung` VALUES (9, 'Embung Telekong I', 1996, 0.00, 0.75, 2.50, 'Timb Tanah', 45000.00, 97.00, 10.00, 10.00, 0.00, 0.00, 0.00, 0.00, 'tidak ada saluran', NULL, NULL, 438, NULL, NULL, NULL, 'admin', 0, '2020-07-07 08:00:00', '2020-07-28 15:28:29');
INSERT INTO `embung` VALUES (10, 'Embung Telekong II', 1996, 345590515.00, 0.50, 2.00, 'Pas Bt Kali ', 55000.00, 47.00, 6.50, 7.00, 75.00, 74.00, 100.00, 0.00, '', NULL, NULL, 438, NULL, NULL, NULL, 'admin', 0, '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (11, 'Embung Bantir', 1980, 0.00, 0.50, 1.20, 'Timb Tanah ', 50000.00, 60.00, 5.00, 4.00, 65.00, 25.00, 25.00, 0.00, '', NULL, NULL, 397, NULL, NULL, NULL, 'admin', 0, '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (12, 'Embung Bentenu', 1980, 0.00, 0.50, 1.70, 'Timb Tanah ', 55000.00, 60.00, 5.00, 3.00, 60.00, 25.00, 25.00, 0.00, '', NULL, NULL, 397, NULL, NULL, NULL, 'admin', 0, '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (13, 'Embung Mareje', 2009, 370000000.00, 3.00, 3.75, 'Pas Bt Kali ', 5625.00, 40.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '', NULL, NULL, 490, NULL, NULL, NULL, 'admin', 0, '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (14, 'Embung Teloke', 2014, 4000000000.00, 1.56, 0.00, 'Pas Bt Kali ', 16900.00, 52.35, 6.50, 15.00, 0.00, 0.00, 0.00, 0.00, '', NULL, NULL, 493, NULL, NULL, NULL, 'admin', 0, '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (15, 'Embung Bayan', 1991, 367207320.00, 7.20, 2.50, 'Pas Bt Kali ', 75000.00, 170.00, 8.00, 20.00, 0.00, 20.00, 100.00, 0.00, 'Sal blm ada', NULL, NULL, 906, NULL, NULL, NULL, 'admin', 0, '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (16, 'Embung Lokok Tawah', 1997, 1103190000.00, 1.20, 1.65, 'Timb Tanah ', 37367.00, 125.00, 13.00, 8.65, 163.00, 47.00, 100.00, 0.00, '', NULL, NULL, 901, NULL, NULL, NULL, 'admin', 0, '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (17, 'Embung Tanggor', 1981, 527157250.00, 0.90, 2.15, 'Timb Tanah ', 175000.00, 75.00, 8.00, 6.00, 228.00, 50.00, 52.00, 0.00, '', NULL, NULL, 599, NULL, NULL, NULL, 'admin', 0, '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (18, 'Embung Dakung', 1980, 21316000.00, 2.36, 2.00, 'Timb Tanah ', 80000.00, 71.00, 8.00, 10.00, 250.00, 72.00, 64.00, 0.00, '', NULL, NULL, 599, NULL, NULL, NULL, 'admin', 0, '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (19, 'Embung Bodak', 1996, 352719850.00, 4.60, 8.50, 'Timb Tanah ', 130000.00, 105.58, 9.00, 25.00, 200.00, 81.00, 350.00, 0.00, '', NULL, NULL, 567, NULL, NULL, NULL, 'admin', 0, '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (20, 'Embung Perandap', 2004, 450000000.00, 2.50, 0.65, 'Pas Bt Kali ', 18000.00, 35.00, 8.00, 10.00, 35.00, 50.00, 0.00, 0.00, '', NULL, NULL, 563, NULL, NULL, NULL, 'admin', 0, '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (21, 'Embung Gerantung', 2006, 1053420000.00, 1.07, 1.50, 'Pas Bt Kali ', 22691.00, 46.00, 10.00, 7.00, 75.00, 50.00, 75.00, 0.00, '', NULL, NULL, 607, NULL, NULL, NULL, 'admin', 0, '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (22, 'Embung Jurang Jaler', 1980, 34120000.00, 4.62, 1.20, 'Pas. batukali ', 38400.00, 40.00, 13.00, 6.00, 200.00, 0.00, 123.00, 0.00, '', NULL, NULL, 601, NULL, NULL, NULL, 'admin', 0, '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (23, 'Embung Pengadang', 1980, 9618000.00, 0.85, 2.00, 'Pas. batukali ', 80000.00, 71.00, 8.00, 5.00, 300.00, 70.00, 28.00, 0.00, '', NULL, NULL, 605, NULL, NULL, NULL, 'admin', 0, '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (24, 'Embung Bubuk', 1981, 28605000.00, 0.44, 1.00, 'Timb Tanah ', 21000.00, 60.00, 5.00, 3.50, 100.00, 28.00, 22.00, 0.00, '', NULL, NULL, 567, NULL, NULL, NULL, 'admin', 0, '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (25, 'Embung Bebie', 1997, 287531000.00, 4.18, 0.80, 'Pas Bt Kali ', 56200.00, 72.26, 9.00, 10.00, 50.00, 43.00, 36.00, 0.00, '', NULL, NULL, 562, NULL, NULL, NULL, 'admin', 0, '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (26, 'Embung Bage', 2007, 524505000.00, 3.50, 0.80, 'Timb Tanah ', 160000.00, 135.00, 9.00, 6.00, 150.00, 50.00, 100.00, 0.00, '', NULL, NULL, 562, NULL, NULL, NULL, 'admin', 0, '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (27, 'Embung Kepok', 2007, 524505000.00, 4.00, 0.75, 'Timb Tanah ', 150000.00, 95.00, 11.00, 6.00, 160.00, 25.00, 100.00, 0.00, '', NULL, NULL, 562, NULL, NULL, NULL, 'admin', 0, '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (28, 'Embung Lendang Batah', 1984, 0.00, 0.67, 1.50, 'Timb Tanah ', 60000.00, 60.00, 5.70, 4.00, 60.00, 15.00, 50.00, 0.00, '', NULL, NULL, 562, NULL, NULL, NULL, 'admin', 0, '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (29, 'Embung Orogendang', 1982, 262940000.00, 0.75, 3.50, 'Timb Tanah ', 157500.00, 110.00, 11.50, 10.00, 123.00, 163.00, 52.00, 0.00, '', NULL, NULL, 581, NULL, NULL, NULL, 'admin', 0, '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (30, 'Embung Juwet', 1983, 0.00, 0.60, 2.00, 'Timb Tanah ', 100000.00, 70.00, 7.00, 3.00, 50.00, 20.00, 25.00, 0.00, '', NULL, NULL, 581, NULL, NULL, NULL, 'admin', 0, '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (31, 'Embung Patra 1', 1980, 0.00, 0.60, 1.20, 'Timb Tanah ', 40000.00, 60.00, 6.00, 3.00, 40.00, 10.00, 10.00, 0.00, '', NULL, NULL, 581, NULL, NULL, NULL, 'admin', 0, '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (32, 'Embung patra 2', 1982, 0.00, 0.70, 1.25, 'Timb Tanah ', 38000.00, 65.00, 6.00, 3.00, 42.00, 10.00, 10.00, 0.00, '', NULL, NULL, 581, NULL, NULL, NULL, 'admin', 0, '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (33, 'Embung Bonder', 1996, 316827549.00, 8.67, 3.75, 'Timb Tanah ', 300000.00, 133.00, 8.00, 10.00, 5.00, 74.00, 75.00, 0.00, 'tidak ada jaringan', NULL, NULL, 579, NULL, NULL, NULL, 'admin', 0, '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (34, 'Embung Bombas', 1982, 370270000.00, 1.60, 4.85, 'Timb Tanah ', 289100.00, 122.30, 11.50, 20.00, 206.00, 100.00, 100.00, 0.00, '', NULL, NULL, 580, NULL, NULL, NULL, 'admin', 0, '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (35, 'Embung Ngabok', 1982, 0.00, 0.60, 1.00, 'Timb Tanah ', 39000.00, 50.00, 5.00, 4.00, 25.00, 30.00, 15.00, 0.00, '', NULL, NULL, 593, NULL, NULL, NULL, 'admin', 0, '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (36, 'Embung Rurut', 1980, 0.00, 0.60, 1.20, 'Timb Tanah ', 40000.00, 50.00, 6.00, 3.00, 30.00, 15.00, 5.00, 0.00, '', NULL, NULL, 593, NULL, NULL, NULL, 'admin', 0, '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (37, 'Embung Batu Jangkih', 1996, 257779660.00, 0.75, 3.50, 'Timb Tanah ', 130000.00, 124.40, 11.00, 3.00, 100.00, 46.00, 41.00, 0.00, '', NULL, NULL, 591, NULL, NULL, NULL, 'admin', 0, '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (38, 'Embung Aik Mual/Torok aik beleq', 2000, 283975000.00, 0.50, 0.86, 'Pas Bt Kali ', 60000.00, 28.40, 7.00, 3.00, 25.00, 50.50, 10.00, 0.00, '', NULL, NULL, 591, NULL, NULL, NULL, 'admin', 0, '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (39, 'Embung Sware', 1983, 0.00, 0.70, 2.00, 'Timb Tanah ', 100000.00, 60.00, 7.00, 4.00, 100.00, 50.00, 30.00, 0.00, '', NULL, NULL, 591, NULL, NULL, NULL, 'admin', 0, '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (40, 'Embung Montong Azan', 1983, 0.00, 0.50, 1.20, 'Timb Tanah ', 56000.00, 88.00, 6.00, 3.00, 70.00, 25.00, 20.00, 0.00, '', NULL, NULL, 591, NULL, NULL, NULL, 'admin', 0, '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (41, 'Embung Sombeng  II', 1983, 0.00, 0.80, 0.80, 'Timb Tanah ', 76000.00, 72.00, 7.00, 3.00, 50.00, 30.00, 20.00, 0.00, '', NULL, NULL, 591, NULL, NULL, NULL, 'admin', 0, '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (42, 'Embung Sombeng I', 1983, 0.00, 0.70, 0.75, 'Timb Tanah ', 60000.00, 70.00, 6.00, 3.00, 70.00, 35.00, 20.00, 0.00, '', NULL, NULL, 591, NULL, NULL, NULL, 'admin', 0, '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (43, 'Embung Masjid', 1982, 0.00, 1.20, 2.00, 'Timb Tanah ', 75000.00, 60.00, 8.00, 4.00, 100.00, 25.00, 25.00, 0.00, '', NULL, NULL, 591, NULL, NULL, NULL, 'admin', 0, '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (44, 'Embung Darak', 1980, 0.00, 0.70, 1.50, 'Timb Tanah ', 55000.00, 70.00, 6.00, 4.00, 70.00, 25.00, 5.00, 0.00, '', NULL, NULL, 591, NULL, NULL, NULL, 'admin', 0, '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (45, 'Embung Lamben', 1982, 0.00, 0.85, 1.00, 'Timb Tanah ', 32000.00, 70.00, 5.00, 2.00, 60.00, 10.00, 10.00, 0.00, '', NULL, NULL, 591, NULL, NULL, NULL, 'admin', 0, '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (46, 'Embung Montong Sapah 1', 1982, 0.00, 0.75, 1.00, 'Timb Tanah ', 45000.00, 50.00, 5.00, 4.00, 50.00, 25.00, 10.00, 0.00, '', NULL, NULL, 591, NULL, NULL, NULL, 'admin', 0, '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (47, 'Embung Leman', 1985, 0.00, 0.65, 1.00, 'Timb Tanah ', 42000.00, 50.00, 5.00, 4.00, 50.00, 10.00, 12.00, 0.00, '', NULL, NULL, 589, NULL, NULL, NULL, 'admin', 0, '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (48, 'Embung Preak', 1980, 0.00, 0.60, 1.50, 'Timb Tanah ', 36000.00, 60.00, 5.00, 4.00, 45.00, 15.00, 0.00, 0.00, '', NULL, NULL, 589, NULL, NULL, NULL, 'admin', 0, '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (49, 'Embung Tabaer', 1982, 0.00, 0.70, 0.75, 'Timb Tanah ', 35000.00, 60.00, 6.00, 3.00, 35.00, 15.00, 10.00, 0.00, '', NULL, NULL, 589, NULL, NULL, NULL, 'admin', 0, '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (50, 'Embung Goa', 1982, 172804000.00, 1.37, 1.37, 'Timb Tanah ', 157700.00, 200.00, 13.50, 5.00, 82.00, 174.00, 41.00, 0.00, '', NULL, NULL, 603, NULL, NULL, NULL, 'admin', 0, '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (51, 'Embung Bual Pancor', 2008, 2000000000.00, 4.91, 1.50, 'Pas. Batukali ', 40000.00, 80.62, 9.50, 9.70, 100.00, 25.00, 100.00, 0.00, '', NULL, NULL, 608, NULL, NULL, NULL, 'admin', 0, '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (52, 'Embung Batu Nyale', 1982, 0.00, 1.10, 1.20, 'Timb Tanah ', 50000.00, 55.00, 6.00, 4.00, 48.00, 10.00, 5.00, 0.00, '', NULL, NULL, 598, NULL, NULL, NULL, 'admin', 0, '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (53, 'Embung Jerujuk', 1982, 0.00, 0.70, 1.00, 'Timb Tanah ', 45000.00, 60.00, 5.70, 3.50, 50.00, 10.00, 15.00, 0.00, '', NULL, NULL, 602, NULL, NULL, NULL, 'admin', 0, '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (54, 'Embung Jongkor', 1981, 168710000.00, 0.75, 0.96, 'Timb Tanah ', 21000.00, 96.00, 9.00, 6.00, 15.00, 42.00, 30.00, 0.00, '', NULL, NULL, 532, NULL, NULL, NULL, 'admin', 0, '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (55, 'Embung Melat I', 1981, 97060000.00, 0.50, 1.25, 'Timb Tanah ', 30600.00, 100.00, 8.50, 4.00, 35.00, 78.00, 56.00, 0.00, '', NULL, NULL, 532, NULL, NULL, NULL, 'admin', 0, '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (56, 'Embung Melat II', 1983, 80979000.00, 0.80, 1.13, 'Timb Tanah ', 42873.00, 92.00, 8.50, 5.00, 25.00, 35.00, 25.00, 0.00, '', NULL, NULL, 532, NULL, NULL, NULL, 'admin', 0, '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (57, 'Embung Inan Ratu', 1995, 434650000.00, 2.20, 1.65, 'Pas Bt Kali ', 91200.00, 87.00, 9.50, 5.00, 100.00, 58.00, 28.00, 0.00, '', NULL, NULL, 532, NULL, NULL, NULL, 'admin', 0, '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (58, 'Embung Pendem', 1981, 66670000.00, 1.60, 2.75, 'Timb Tanah ', 72785.00, 85.00, 7.00, 3.00, 138.00, 89.00, 22.00, 0.00, '', NULL, NULL, 534, NULL, NULL, NULL, 'admin', 0, '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (59, 'Embung Kuangsampi', 1981, 42570000.00, 1.60, 2.50, 'Timb Tanah ', 71785.00, 134.00, 6.00, 6.00, 91.00, 36.00, 28.00, 0.00, '', NULL, NULL, 534, NULL, NULL, NULL, 'admin', 0, '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (60, 'Embung Loang Make', 1984, 175459000.00, 1.40, 2.10, 'Timb Tanah ', 58800.00, 86.00, 6.00, 5.00, 100.00, 78.00, 56.00, 0.00, '', NULL, NULL, 533, NULL, NULL, NULL, 'admin', 0, '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (61, 'Embung Monjong 1', 1980, 0.00, 0.70, 1.20, 'Timb Tanah ', 42000.00, 55.00, 5.00, 3.00, 50.00, 15.00, 5.00, 0.00, '', NULL, NULL, 533, NULL, NULL, NULL, 'admin', 0, '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (62, 'Embung Monjong 2', 1982, 0.00, 0.80, 1.00, 'Timb Tanah ', 37000.00, 50.00, 5.00, 3.00, 60.00, 15.00, 0.00, 0.00, '', NULL, NULL, 533, NULL, NULL, NULL, 'admin', 0, '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (63, 'Embung Pasekar', 1981, 198865863.00, 0.75, 1.40, 'Timb Tanah ', 225500.00, 108.00, 8.00, 5.00, 96.00, 38.00, 25.00, 0.00, '', NULL, NULL, 528, NULL, NULL, NULL, 'admin', 0, '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (64, 'Embung Monggas', 1982, 150000000.00, 4.50, 2.00, 'Timb Tanah ', 65000.00, 100.00, 6.00, 4.00, 100.00, 50.00, 50.00, 0.00, '', NULL, NULL, 528, NULL, NULL, NULL, 'admin', 0, '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (65, 'Embung Tibu Reban', 1980, 50000000.00, 3.00, 0.65, 'Timb Tanah ', 13230.00, 95.00, 4.00, 4.00, 100.00, 50.00, 75.00, 0.00, '', NULL, NULL, 528, NULL, NULL, NULL, 'admin', 0, '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (66, 'Embung Gusi', 1981, 33718000.00, 0.68, 3.00, 'Timb Tanah ', 100000.00, 70.75, 7.00, 3.00, 45.00, 22.00, 18.00, 0.00, '', NULL, NULL, 528, NULL, NULL, NULL, 'admin', 0, '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (67, 'Embung Jebak', 1981, 23130000.00, 0.78, 2.51, 'Timb Tanah ', 71785.00, 134.00, 6.50, 7.40, 98.00, 34.00, 27.00, 0.00, '', NULL, NULL, 528, NULL, NULL, NULL, 'admin', 0, '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (68, 'Embung Lendang Telage', 1982, 3410000.00, 0.78, 5.75, 'Timb Tanah ', 13125.00, 130.00, 5.00, 16.00, 136.00, 36.00, 24.00, 0.00, '', NULL, NULL, 528, NULL, NULL, NULL, 'admin', 0, '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (69, 'Embung Pejeruk', 1982, 48460000.00, 0.81, 0.75, 'Timb Tanah ', 81820.00, 177.55, 6.00, 1.60, 63.00, 26.00, 32.00, 0.00, '', NULL, NULL, 528, NULL, NULL, NULL, 'admin', 0, '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (70, 'Embung Perok', 1984, 38859000.00, 0.46, 0.85, 'Timb Tanah ', 268250.00, 88.00, 6.00, 4.00, 35.00, 12.00, 26.00, 0.00, '', NULL, NULL, 528, NULL, NULL, NULL, 'admin', 0, '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (71, 'Embung Tasik-asik', 1984, 43207000.00, 0.42, 3.20, 'Timb Tanah ', 297250.00, 95.85, 8.50, 4.00, 25.00, 12.00, 18.00, 0.00, '', NULL, NULL, 528, NULL, NULL, NULL, 'admin', 0, '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (72, 'Embung Bengak', 1981, 1122000.00, 0.60, 2.50, 'Timb Tanah ', 82500.00, 80.00, 9.00, 15.00, 157.00, 24.00, 12.00, 0.00, '', NULL, NULL, 527, NULL, NULL, NULL, 'admin', 0, '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (73, 'Embung Dasan Sari', 1983, 0.00, 0.50, 1.00, 'Timb Tanah ', 50000.00, 60.00, 6.00, 4.00, 60.00, 0.00, 15.00, 0.00, '', NULL, NULL, 527, NULL, NULL, NULL, 'admin', 0, '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (74, 'Embung Beleq', 1983, 0.00, 0.60, 1.30, 'Timb Tanah ', 50000.00, 50.00, 5.50, 3.00, 56.00, 20.00, 5.00, 0.00, '', NULL, NULL, 527, NULL, NULL, NULL, 'admin', 0, '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (75, 'Embung Juring', 1982, 0.00, 0.80, 1.00, 'Timb Tanah ', 42000.00, 65.00, 5.00, 3.00, 67.00, 15.00, 14.00, 0.00, '', NULL, NULL, 527, NULL, NULL, NULL, 'admin', 0, '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (76, 'Embung Nuru', 1981, 0.00, 0.70, 1.30, 'Timb Tanah ', 47000.00, 60.00, 5.00, 3.50, 26.00, 20.00, 0.00, 0.00, '', NULL, NULL, 527, NULL, NULL, NULL, 'admin', 0, '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (77, 'Embung Danasari', 1981, 0.00, 3.50, 3.00, 'Timb Tanah ', 145000.00, 75.00, 6.60, 15.00, 210.00, 0.00, 0.00, 0.00, '', NULL, NULL, 527, NULL, NULL, NULL, 'admin', 0, '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (78, 'Embung Topor', 2003, 400000000.00, 1.50, 1.00, 'Pas Bt Kali ', 17500.00, 48.00, 8.00, 3.00, 25.00, 50.00, 0.00, 0.00, '', NULL, NULL, 535, NULL, NULL, NULL, 'admin', 0, '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (79, 'Embung Batu Jaran', 1988, 0.00, 0.75, 1.00, 'Timb Tanah ', 57000.00, 70.00, 6.00, 4.00, 70.00, 25.00, 10.00, 0.00, '', NULL, NULL, 535, NULL, NULL, NULL, 'admin', 0, '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (80, 'Embung Kenyalu 1', 1982, 0.00, 1.50, 1.20, 'Timb Tanah ', 43000.00, 60.00, 5.00, 3.00, 76.00, 15.00, 15.00, 0.00, '', NULL, NULL, 535, NULL, NULL, NULL, 'admin', 0, '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (81, 'Embung Kenyalu 2', 1982, 0.00, 1.30, 1.20, 'Timb Tanah ', 40000.00, 60.00, 4.00, 3.00, 70.00, 15.00, 15.00, 0.00, '', NULL, NULL, 535, NULL, NULL, NULL, 'admin', 0, '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (82, 'Embung Bumbang', 2003, 783021000.00, 1.50, 4.00, 'Timb Tanah ', 156500.00, 135.00, 12.00, 10.00, 150.00, 30.00, 50.00, 0.00, '', NULL, NULL, 636, NULL, NULL, NULL, 'admin', 0, '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (83, 'Embung Goa Dakang', 2009, 109748000.00, 0.85, 4.00, 'Timb Tanah ', 160697.00, 155.00, 12.50, 15.00, 150.00, 100.00, 175.00, 0.00, '', NULL, NULL, 637, NULL, NULL, NULL, 'admin', 0, '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (84, 'Embung Mengkene', 1982, 0.00, 0.80, 1.00, 'Timb Tanah ', 40000.00, 60.00, 6.00, 4.00, 80.00, 25.00, 5.00, 0.00, '', NULL, NULL, 640, NULL, NULL, NULL, 'admin', 0, '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (85, 'Embung Monggel', 1982, 0.00, 0.90, 1.20, 'Timb Tanah ', 50000.00, 55.00, 5.00, 3.00, 64.00, 10.00, 0.00, 0.00, '', NULL, NULL, 640, NULL, NULL, NULL, 'admin', 0, '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (86, 'Embung Ruje', 1982, 0.00, 0.50, 1.25, 'Timb Tanah ', 55000.00, 56.00, 6.00, 4.00, 40.00, 10.00, 0.00, 0.00, '', NULL, NULL, 640, NULL, NULL, NULL, 'admin', 0, '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (87, 'Embung Tantih', 1981, 33511000.00, 1.47, 7.50, 'Timb Tanah ', 196800.00, 106.50, 7.00, 5.00, 200.00, 26.00, 41.00, 0.00, '', NULL, NULL, 640, NULL, NULL, NULL, 'admin', 0, '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (88, 'Embung Pengkemit', 1982, 67670000.00, 1.17, 5.20, 'Timb Tanah ', 310000.00, 242.50, 9.50, 10.00, 300.00, 28.00, 116.00, 0.00, '', NULL, NULL, 645, NULL, NULL, NULL, 'admin', 0, '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (89, 'Embung Gabak', 1981, 93867000.00, 1.05, 4.50, 'Timb Tanah ', 198500.00, 106.25, 8.50, 5.00, 249.00, 127.00, 116.00, 0.00, '', NULL, NULL, 642, NULL, NULL, NULL, 'admin', 0, '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (90, 'Embung Tajuk', 1986, 0.00, 0.60, 1.00, 'Timb Tanah ', 38000.00, 65.00, 6.00, 3.00, 45.00, 15.00, 15.00, 0.00, '', NULL, NULL, 642, NULL, NULL, NULL, 'admin', 0, '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (91, 'Embung Tereng Borek', 1982, 0.00, 0.80, 0.80, 'Timb Tanah ', 39000.00, 56.00, 5.00, 3.00, 25.00, 10.00, 10.00, 0.00, '', NULL, NULL, 642, NULL, NULL, NULL, 'admin', 0, '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (92, 'Embung Babi', 2009, 3200852000.00, 6.43, 3.34, 'Pas. Batukali ', 110000.00, 120.00, 12.50, 12.00, 150.00, 125.00, 100.00, 0.00, 'Suplesi ke Bd Babi', NULL, NULL, 542, NULL, NULL, NULL, 'admin', 0, '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (93, 'Embung Macut', 2005, 500000000.00, 2.50, 0.50, 'Pas Bt Kali ', 22500.00, 35.00, 8.00, 9.50, 120.00, 0.00, 0.00, 0.00, '', NULL, NULL, 557, NULL, NULL, NULL, 'admin', 0, '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (94, 'Embung Tokan', 1980, 11360000.00, 0.36, 1.00, 'Timb Tanah ', 67375.00, 57.00, 5.00, 2.00, 57.00, 0.00, 0.00, 0.00, '', NULL, NULL, 554, NULL, NULL, NULL, 'admin', 0, '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (95, 'Embung Karung', 1980, 100000000.00, 2.50, 1.20, 'Timb Tanah ', 32500.00, 130.00, 5.00, 3.00, 120.00, 25.00, 50.00, 0.00, '', NULL, NULL, 558, NULL, NULL, NULL, 'admin', 0, '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (96, 'Embung Bingkok', 1981, 237800000.00, 0.78, 2.48, 'Timb Tanah ', 61875.00, 140.00, 6.00, 5.00, 100.00, 28.00, 78.00, 0.00, '', NULL, NULL, 558, NULL, NULL, NULL, 'admin', 0, '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (97, 'Embung Muncan', 1981, 61989000.00, 1.32, 4.50, 'Timb Tanah ', 400000.00, 108.90, 9.00, 5.00, 318.00, 18.00, 1246.00, 0.00, '', NULL, NULL, 559, NULL, NULL, NULL, 'admin', 0, '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (98, 'Embung Bual', 1981, 13316000.00, 3.24, 0.63, 'Timb Tanah ', 15830.00, 70.00, 5.00, 6.00, 100.00, 76.00, 112.00, 0.00, '', NULL, NULL, 561, NULL, NULL, NULL, 'admin', 0, '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (99, 'Embung Rindik', 1982, 39220000.00, 0.62, 1.75, 'Timb Tanah ', 10672.00, 81.00, 4.00, 2.00, 50.00, 61.00, 43.00, 0.00, '', NULL, NULL, 554, NULL, NULL, NULL, 'admin', 0, '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (100, 'Embung Menteang', 2006, 2000000000.00, 3.40, 0.93, 'Pas Bt Kali ', 96416.00, 72.30, 13.00, 16.00, 150.00, 0.00, 0.00, 0.00, '', NULL, NULL, 567, NULL, NULL, NULL, 'admin', 0, '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (101, 'Embung Sade', 1987, 0.00, 0.60, 1.20, 'Timb Tanah ', 60000.00, 70.00, 5.00, 2.00, 80.00, 0.00, 50.00, 0.00, '', NULL, NULL, 509, NULL, NULL, NULL, 'admin', 0, '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (102, 'Embung Petikus', 2008, 500000000.00, 0.86, 1.15, 'Pas Bt Kali ', 27731.00, 140.00, 7.00, 6.60, 50.00, 0.00, 50.00, 0.00, '', NULL, NULL, 519, NULL, NULL, NULL, 'admin', 0, '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (103, 'Embung Gule Liat', 1980, 105550000.00, 8.00, 1.40, 'Timb Tanah ', 35015.00, 70.50, 8.00, 3.00, 203.00, 0.00, 100.00, 0.00, '', NULL, NULL, 519, NULL, NULL, NULL, 'admin', 0, '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (104, 'Embung Aik Bukak', 1983, 0.00, 0.50, 1.20, 'Timb Tanah ', 60000.00, 100.00, 6.00, 4.00, 75.00, 10.00, 50.00, 0.00, '', NULL, NULL, 519, NULL, NULL, NULL, 'admin', 0, '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (105, 'Embung Aik Leneng', 1982, 75000000.00, 6.50, 0.45, 'Timb Tanah ', 13500.00, 75.00, 5.00, 2.50, 100.00, 0.00, 80.00, 0.00, '', NULL, NULL, 523, NULL, NULL, NULL, 'admin', 0, '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (106, 'Embung Skedek', 1982, 65750000.00, 4.00, 0.85, 'Timb Tanah ', 30000.00, 65.50, 6.00, 5.00, 120.00, 0.00, 50.00, 0.00, '', NULL, NULL, 523, NULL, NULL, NULL, 'admin', 0, '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (107, 'Embung Pengkores', 1980, 0.00, 0.70, 1.50, 'Timb Tanah ', 38000.00, 72.00, 5.50, 4.00, 50.00, 0.00, 10.00, 0.00, '', NULL, NULL, 561, NULL, NULL, NULL, 'admin', 0, '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (108, 'Embung Tibu Bara', 1982, 0.00, 0.70, 1.00, 'Timb Tanah ', 37000.00, 65.00, 6.50, 3.00, 50.00, 10.00, 10.00, 0.00, '', NULL, NULL, 561, NULL, NULL, NULL, 'admin', 0, '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (109, 'Embung Enem', 1, 0.00, 10.75, 0.70, 'Pas Bt Kali ', 31863.00, 37.95, 7.00, 15.00, 50.00, 0.00, 0.00, 0.00, '', NULL, NULL, 598, NULL, NULL, NULL, 'admin', 0, '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (110, 'Embung Uwung', 1998, 0.00, 0.80, 1.00, 'Timb Tanah ', 40000.00, 60.00, 6.00, 4.00, 80.00, 25.00, 5.00, 0.00, '', NULL, NULL, 636, NULL, NULL, NULL, 'admin', 0, '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (111, 'Embung Bagek Rupe', 1983, 0.00, 0.67, 1.00, 'Timb. Tanah ', 40000.00, 60.00, 5.00, 3.00, 35.00, 0.00, 0.00, 0.00, '', NULL, NULL, 697, NULL, NULL, NULL, 'admin', 0, '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (112, 'Embung Pondok Raden', 1981, 319499569.00, 4.30, 0.47, 'Timb Tanah ', 130000.00, 250.00, 7.00, 5.00, 100.00, 30.00, 28.00, 0.00, '', NULL, NULL, 166, NULL, NULL, NULL, 'admin', 0, '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (113, 'Embung Rungkang', 1992, 712128000.00, 6.80, 7.40, 'Pas Bt Kali ', 345000.00, 181.00, 11.00, 30.00, 220.00, 112.00, 76.00, 0.00, '', NULL, NULL, 166, NULL, NULL, NULL, 'admin', 0, '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (114, 'Embung Tembeng', 1993, 17043520.00, 0.60, 4.44, 'Timb Tanah ', 82380.00, 323.00, 6.50, 4.00, 80.00, 10.00, 38.00, 0.00, '', NULL, NULL, 166, NULL, NULL, NULL, 'admin', 0, '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (115, 'Embung Seliat/Paok gading', 2008, 1999933000.00, 0.70, 1.00, 'Pas. Batukali ', 50000.00, 107.40, 8.50, 7.00, 100.00, 200.00, 0.00, 0.00, '', NULL, NULL, 691, NULL, NULL, NULL, 'admin', 0, '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (116, 'Embung Mertak', 1987, 500000000.00, 1.45, 1.50, 'Pas Bt Kali ', 37790.00, 50.00, 6.50, 5.00, 50.00, 0.00, 50.00, 0.00, '', NULL, NULL, 691, NULL, NULL, NULL, 'admin', 0, '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (117, 'Embung Barparigi', 1987, 0.00, 0.50, 0.70, 'Timb. Tanah ', 30000.00, 56.00, 5.50, 3.00, 60.00, 0.00, 0.00, 0.00, '', NULL, NULL, 691, NULL, NULL, NULL, 'admin', 0, '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (118, 'Embung Repok sampi', 1983, 0.00, 0.80, 0.70, 'Timb. Tanah ', 45000.00, 60.00, 6.00, 4.00, 45.00, 20.00, 5.00, 0.00, '', NULL, NULL, 698, NULL, NULL, NULL, 'admin', 0, '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (119, 'Embung Mangan', 1983, 0.00, 0.50, 1.00, 'Timb Tanah ', 20000.00, 50.00, 5.00, 3.00, 37.00, 0.00, 0.00, 0.00, '', NULL, NULL, 698, NULL, NULL, NULL, 'admin', 0, '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (120, 'Embung Pejaik', 2003, 1249330000.00, 4.00, 2.00, 'Pas Bt Kali ', 120000.00, 120.00, 6.50, 8.00, 85.00, 100.00, 150.00, 0.00, '', NULL, NULL, 166, NULL, NULL, NULL, 'admin', 0, '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (121, 'Embung Temodo', 1995, 723400000.00, 2.20, 11.53, 'Timb Tanah ', 285160.00, 280.00, 9.00, 20.00, 5.00, 50.00, 200.00, 0.00, 'Saluran buntu', NULL, NULL, 678, NULL, NULL, NULL, 'admin', 0, '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (122, 'Embung Ujung Gol', 2007, 1319400000.00, 1.50, 5.50, 'Timb Tanah ', 66907.00, 115.00, 9.50, 12.00, 100.00, 50.00, 50.00, 0.00, '', NULL, NULL, 678, NULL, NULL, NULL, 'admin', 0, '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (123, 'Embung Mare', 1981, 23302000.00, 1.42, 5.10, 'Timb Tanah ', 412335.00, 72.00, 12.50, 3.00, 471.00, 43.00, 76.00, 0.00, '', NULL, NULL, 723, NULL, NULL, NULL, 'admin', 0, '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (124, 'Embung Solong', 2009, 0.00, 1.00, 0.40, 'Pas Bt Kali ', 13440.00, 30.00, 5.00, 2.00, 80.00, 0.00, 0.00, 0.00, '', NULL, NULL, 726, NULL, NULL, NULL, 'admin', 0, '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (125, 'Embung Kembar I', 1980, 14126000.00, 0.78, 1.00, 'Timb Tanah ', 36000.00, 60.00, 6.00, 14.00, 360.00, 18.00, 76.00, 0.00, 'tidak ada saluran', NULL, NULL, 869, NULL, NULL, NULL, 'admin', 0, '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (126, 'Embung Sapit', 2009, 1200000000.00, 12.00, 0.50, 'Pas Batukali ', 98000.00, 42.00, 9.00, 10.00, 200.00, 100.00, 400.00, 0.00, '', NULL, NULL, 869, NULL, NULL, NULL, 'admin', 0, '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (127, 'Embung Kokok Koak', 2006, 932673000.00, 1.10, 0.40, 'Pas Batukali ', 20787.00, 35.00, 12.50, 11.00, 100.00, 0.00, 0.00, 0.00, '', NULL, NULL, 865, NULL, NULL, NULL, 'admin', 0, '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (128, 'Embung Seruni', 2000, 252485327.00, 3.13, 0.50, 'Timb. Tanah ', 36000.00, 65.00, 5.00, 10.00, 0.00, 0.00, 20.00, 0.00, 'Embung gagal', NULL, NULL, 737, NULL, NULL, NULL, 'admin', 0, '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (129, 'Embung Bt Lawang', 1982, 96435000.00, 1.38, 3.97, 'Timb Tanah ', 26507.00, 72.00, 5.00, 6.00, 100.00, 75.00, 112.00, 0.00, '', NULL, NULL, 768, NULL, NULL, NULL, 'admin', 0, '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (130, 'Embung Jero Poto', 1980, 0.00, 0.60, 1.00, 'Timb. Tanah ', 50000.00, 50.00, 6.00, 3.00, 50.00, 0.00, 10.00, 0.00, '', NULL, NULL, 794, NULL, NULL, NULL, 'admin', 0, '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (131, 'Embung Bengak Jeropoto', 1982, 0.00, 0.50, 0.90, 'Timb. Tanah ', 35000.00, 67.00, 5.00, 3.00, 25.00, 0.00, 12.00, 0.00, '', NULL, NULL, 794, NULL, NULL, NULL, 'admin', 0, '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (132, 'Embung Pelepok', 1985, 0.00, 0.70, 1.00, 'Timb. Tanah ', 35000.00, 55.00, 6.00, 3.00, 50.00, 0.00, 10.00, 0.00, '', NULL, NULL, 794, NULL, NULL, NULL, 'admin', 0, '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (133, 'Embung Penye', 1983, 36425000.00, 0.80, 0.50, 'Timb Tanah ', 110250.00, 155.00, 5.00, 4.00, 23.00, 14.00, 37.00, 0.00, '', NULL, NULL, 766, NULL, NULL, NULL, 'admin', 0, '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (134, 'Embung Toyang', 1980, 36361000.00, 0.80, 0.80, 'Timb Tanah ', 14500.00, 100.00, 5.00, 3.00, 86.00, 29.00, 47.00, 0.00, '', NULL, NULL, 780, NULL, NULL, NULL, 'admin', 0, '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (135, 'Embung Lingkok kolo', 1980, 59999000.00, 0.75, 1.50, 'Timb Tanah ', 20125.00, 130.00, 4.00, 3.00, 105.00, 28.00, 68.00, 0.00, '', NULL, NULL, 780, NULL, NULL, NULL, 'admin', 0, '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (136, 'Embung Kondok', 1980, 47344000.00, 0.64, 1.00, 'Timb Tanah ', 24500.00, 75.00, 5.50, 4.00, 67.00, 0.00, 56.00, 0.00, '', NULL, NULL, 780, NULL, NULL, NULL, 'admin', 0, '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (137, 'Embung Tibu Kulit', 2009, 0.00, 0.75, 0.50, 'Timb Tanah ', 60000.00, 60.00, 5.00, 3.00, 60.00, 0.00, 0.00, 0.00, '', NULL, NULL, 780, NULL, NULL, NULL, 'admin', 0, '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (138, 'Embung Dambrug', 1980, 7229000.00, 0.70, 1.50, 'Pas Bt Kali ', 36700.00, 85.00, 13.50, 85.00, 130.00, 0.00, 0.00, 0.00, '', NULL, NULL, 772, NULL, NULL, NULL, 'admin', 0, '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (139, 'Embung Pengoros', 1980, 96435000.00, 0.72, 0.80, 'Timb Tanah ', 12800.00, 185.00, 3.50, 3.00, 50.00, 20.00, 34.00, 0.00, '', NULL, NULL, 769, NULL, NULL, NULL, 'admin', 0, '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (140, 'Embung Munte', 1995, 17776000.00, 0.95, 1.50, 'Timb Tanah ', 40000.00, 110.00, 7.00, 6.00, 180.00, 18.00, 52.00, 0.00, '', NULL, NULL, 772, NULL, NULL, NULL, 'admin', 0, '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (141, 'Embung Peroa/Plan Sakra', 1985, 255000000.00, 2.00, 0.75, 'Timb. Tanah ', 80000.00, 93.00, 6.00, 6.50, 100.00, 25.00, 100.00, 0.00, '', NULL, NULL, 769, NULL, NULL, NULL, 'admin', 0, '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (142, 'Embung Montong Belo', 1983, 0.00, 0.70, 1.00, 'Timb Tanah ', 40000.00, 70.00, 5.00, 3.00, 45.00, 0.00, 0.00, 0.00, '', NULL, NULL, 768, NULL, NULL, NULL, 'admin', 0, '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (143, 'Embung Tridaye', 1980, 11819000.00, 0.64, 2.25, 'Timb Tanah ', 44920.00, 115.00, 7.00, 9.00, 50.00, 26.00, 212.00, 0.00, '', NULL, NULL, 873, NULL, NULL, NULL, 'admin', 0, '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (144, 'Embung Kandong', 1982, 222918880.00, 0.72, 8.85, 'Pas Bt Kali ', 35000.00, 350.00, 9.00, 3.50, 200.00, 125.00, 56.00, 0.00, '', NULL, NULL, 885, NULL, NULL, NULL, 'admin', 0, '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (145, 'Embung Penyampek/Baloq', 1983, 27028000.00, 0.54, 0.40, 'Timb Tanah ', 37632.00, 159.50, 5.00, 3.00, 12.00, 12.00, 32.00, 0.00, '', NULL, NULL, 878, NULL, NULL, NULL, 'admin', 0, '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (146, 'Embung Batu bangka', 1982, 15192000.00, 0.50, 0.75, 'Timb Tanah ', 37630.00, 65.50, 3.00, 3.00, 60.00, 12.00, 28.00, 0.00, '', NULL, NULL, 1013, NULL, NULL, NULL, 'admin', 0, '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (147, 'Embung Raja', 1982, 25570000.00, 2.40, 5.25, 'Timb Tanah ', 158310.00, 62.00, 8.00, 3.00, 95.00, 20.00, 49.00, 0.00, '', NULL, NULL, 882, NULL, NULL, NULL, 'admin', 0, '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (148, 'Embung Loncek/Kenyait', 1983, 48301000.00, 0.42, 0.75, 'Timb Tanah ', 14250.00, 90.00, 7.50, 5.00, 30.00, 12.00, 26.00, 0.00, '', NULL, NULL, 882, NULL, NULL, NULL, 'admin', 0, '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (149, 'Embung Penggek', 1983, 250000000.00, 2.50, 0.85, 'Timb. Tanah ', 35000.00, 140.00, 3.50, 2.00, 75.00, 0.00, 0.00, 0.00, '', NULL, NULL, 878, NULL, NULL, NULL, 'admin', 0, '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (150, 'Embung Lendang Jogang', 1986, 0.00, 0.80, 1.00, 'Timb. Tanah ', 25000.00, 60.00, 4.50, 4.00, 35.00, 0.00, 10.00, 0.00, '', NULL, NULL, 873, NULL, NULL, NULL, 'admin', 0, '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (151, 'Embung Semat', 1980, 40984000.00, 0.44, 1.00, 'Timb Tanah ', 14000.00, 50.00, 4.50, 3.00, 42.00, 42.00, 167.00, 0.00, '', NULL, NULL, 719, NULL, NULL, NULL, 'admin', 0, '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (152, 'Embung Gunung Sepang', 1981, 42572000.00, 0.46, 1.25, 'Timb Tanah ', 125700.00, 175.00, 5.00, 3.00, 35.00, 64.00, 47.00, 0.00, '', NULL, NULL, 808, NULL, NULL, NULL, 'admin', 0, '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (153, 'Embung Montong Atas', 2007, 1500000000.00, 3.30, 1.00, 'Pas Bt Kali ', 100000.00, 73.50, 9.00, 8.00, 100.00, 60.00, 100.00, 0.00, '', NULL, NULL, 831, NULL, NULL, NULL, 'admin', 0, '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (154, 'Embung Pusuk', 2009, 500000000.00, 7.50, 0.40, 'Pas Bt Kali ', 52000.00, 36.00, 5.00, 10.00, 67.00, 0.00, 0.00, 0.00, '', NULL, NULL, 822, NULL, NULL, NULL, 'admin', 0, '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (155, 'Embung Penede I', 2009, 250000000.00, 1.00, 0.40, 'Timb. Tanah ', 78000.00, 40.00, 4.00, 3.00, 50.00, 0.00, 100.00, 0.00, '', NULL, NULL, 651, NULL, NULL, NULL, 'admin', 0, '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (156, 'Embung Penede II', 2009, 280000000.00, 1.00, 0.50, 'Timb. Tanah ', 85000.00, 25.00, 6.00, 3.00, 75.00, 0.00, 100.00, 0.00, '', NULL, NULL, 651, NULL, NULL, NULL, 'admin', 0, '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (157, 'Embung Awing', 2006, 932673000.00, 1.10, 0.40, 'Pas Batukali ', 20787.00, 35.00, 12.50, 11.00, 100.00, 0.00, 0.00, 0.00, '', NULL, NULL, 865, NULL, NULL, NULL, 'admin', 0, '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (158, 'Embung Tolo Oi ', 1997, 136258944.98, 2.50, 2.00, 'pas.batu ', 275000.00, 60.00, 9.00, 10.00, 20.00, 100.00, 75.00, 0.00, '', NULL, NULL, 1097, NULL, NULL, NULL, 'admin', 0, '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (159, 'Embung Jompong ', 1997, 906102884.15, 1.40, 8.00, 'Timbunan ', 225000.00, 240.00, 12.25, 10.00, 100.00, 250.00, 50.00, 0.00, '', NULL, NULL, 1046, NULL, NULL, NULL, 'admin', 0, '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (160, 'Embung Mantar ', 1998, 844230000.00, 1.50, 2.40, 'Timbunan ', 143080.00, 167.00, 14.00, 15.00, 125.00, 100.00, 100.00, 0.00, '', NULL, NULL, 1145, NULL, NULL, NULL, 'admin', 0, '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (161, 'Embung Ai Buak ', 2007, 1724991653.00, 5.00, 6.50, 'Pas. Batu ', 140000.00, 105.00, 0.00, 10.50, 125.00, 150.00, 50.00, 0.00, '', NULL, NULL, 988, NULL, NULL, NULL, 'admin', 0, '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (162, 'Embung Pompong ', 2007, 5379300000.00, 3.70, 0.53, 'Pas. Batu  ', 170000.00, 50.00, 0.00, 8.50, 125.00, 75.00, 50.00, 0.00, '', NULL, NULL, 1033, NULL, NULL, NULL, 'admin', 0, '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (163, 'Embung Mamak ', 1994, 300000000.00, 0.86, 2.00, 'timbunan ', 42910.00, 155.00, 0.00, 6.00, 50.00, 1000.00, 50.00, 0.00, '', NULL, NULL, 1005, NULL, NULL, NULL, 'admin', 0, '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (164, 'Embung PATM Beringin Sila ', 2000, 0.00, 0.00, 0.00, '', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '', NULL, NULL, 1089, NULL, NULL, NULL, 'admin', 0, '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (165, 'Embung Jeruk Lone ', 2008, 1199964650.00, 1.04, 0.45, 'Pas. Batu ', 58240.00, 75.00, 0.00, 10.00, 250.00, 125.00, 50.00, 0.00, '', NULL, NULL, 1156, NULL, NULL, NULL, 'admin', 0, '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (166, 'Embung Tiu Rantok ', 0, 0.00, 0.00, 0.00, 'Timbunan ', 120000.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '', NULL, NULL, 1101, NULL, NULL, NULL, 'admin', 0, '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (167, 'Embung Tiu Nisung ', 0, 0.00, 0.00, 0.00, 'Timbunan ', 152500.00, 0.00, 0.00, 0.00, 50.00, 250.00, 20.00, 0.00, '', NULL, NULL, 1108, NULL, NULL, NULL, 'admin', 0, '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (168, 'Embung Ai Galih ', 0, 0.00, 0.00, 0.00, 'Timbunan ', 150.00, 13679.00, 10.00, 10.00, 200.00, 0.00, 0.00, 0.00, '', NULL, NULL, 1004, NULL, NULL, NULL, 'admin', 0, '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (169, 'Embung Sangur Maja ', 2013, 3500000000.00, 1.04, 1.37, 'Pas batu ', 34254.00, 13597.00, 9.50, 0.00, 40.00, 0.00, 0.00, 0.00, '', NULL, NULL, 1009, NULL, NULL, NULL, 'admin', 0, '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (170, 'Embung Kokar Pekok ', NULL, 5300000000.00, 2.50, 3.75, 'Timbunan ', 154000.00, 16186.00, 15.00, 15.00, 250.00, 0.00, 0.00, 0.00, '', NULL, NULL, 970, NULL, NULL, NULL, 'admin', 0, '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (171, 'Embung Kuris ', 0, 0.00, 0.67, 0.29, 'Pas Bt ', 6284.00, 35.00, 9.00, 6.00, 50.00, 0.00, 0.00, 0.00, '', NULL, NULL, 990, NULL, NULL, NULL, 'admin', 0, '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (172, 'Embung Ngeru ', 1993, 150000000.00, 1.90, 3.50, 'Timbunan ', 35000.00, 125.00, 0.00, 6.00, 120.00, 500.00, 50.00, 0.00, '', NULL, NULL, 1019, NULL, NULL, NULL, 'admin', 0, '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (173, 'Embung Songkar ', 1994, 300000000.00, 1.19, 2.50, 'timbunan ', 130000.00, 112.00, 0.00, 5.00, 120.00, 800.00, 20.00, 0.00, '', NULL, NULL, 1040, NULL, NULL, NULL, 'admin', 0, '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (174, 'Embung Batu Bangka ', 1994, 375000000.00, 1.20, 5.00, 'timbunan ', 146490.00, 261.00, 0.00, 10.00, 120.00, 700.00, 15.00, 0.00, '', NULL, NULL, 873, NULL, NULL, NULL, 'admin', 0, '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (175, 'Embung Sebeta  ', 1996, 223569916.00, 1.00, 4.00, 'Pas. Batu ', 65000.00, 55.00, 0.00, 4.25, 50.00, 200.00, 20.00, 0.00, '', NULL, NULL, 1021, NULL, NULL, NULL, 'admin', 0, '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (176, 'Embung Batu Lante ', 1996, 223569916.00, 1.30, 4.50, 'timbunan ', 75000.00, 150.00, 0.00, 10.00, 50.00, 100.00, 25.00, 0.00, '', NULL, NULL, 1091, NULL, NULL, NULL, 'admin', 0, '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (177, 'Embung Mata ', 1996, 85000000.00, 1.50, 2.00, 'timbunan ', 100000.00, 40.00, 0.00, 5.00, 50.00, 200.00, 50.00, 0.00, '', NULL, NULL, 1096, NULL, NULL, NULL, 'admin', 0, '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (178, 'Embung Batu Razak ', 1997, 118269546.18, 10.60, 1.50, 'Pas. batu ', 53000.00, 48.00, 0.00, 10.00, 50.00, 200.00, 15.00, 0.00, '', NULL, NULL, 1047, NULL, NULL, NULL, 'admin', 0, '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (179, 'Embung Petara ', NULL, 0.00, 0.00, 0.00, '', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '', NULL, NULL, 1155, NULL, NULL, NULL, 'admin', 0, '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (180, 'Embung Panijara ', 2011, NULL, 0.50, 1.50, 'Pas.batu ', 400000.00, 68.00, 11.00, 12.00, 150.00, 50.00, 50.00, 0.00, '', NULL, NULL, 334, NULL, NULL, NULL, 'admin', 0, '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (181, 'Embung Madawa ', NULL, 0.00, 0.00, 0.00, '', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '', NULL, NULL, 483, NULL, NULL, NULL, 'admin', 0, '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (182, 'Embung Wora ', 1993, 700000000.00, 3.52, 5.10, 'Timbunan ', 300000.00, 166.80, 12.00, 8.00, 200.00, 100.00, 100.00, 0.00, '', NULL, NULL, 288, NULL, NULL, NULL, 'admin', 0, '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (183, 'Embung Waworada ', 1998, 762070000.00, 6.70, 7.50, 'Pas. Batu ', 315000.00, 80.00, 14.50, 15.00, 250.00, 100.00, 100.00, 0.00, '', NULL, NULL, 177, NULL, NULL, NULL, 'admin', 0, '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (184, 'Embung Kore ', 1998, 528498000.00, 8.25, 3.50, 'Timbunan ', 328000.00, 127.50, 13.00, 10.00, 120.00, 200.00, 100.00, 0.00, '', NULL, NULL, 230, NULL, NULL, NULL, 'admin', 0, '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (185, 'Embung Kolo ', NULL, NULL, 7.38, 4.98, 'Timbunan ', 116322.00, 233.00, 14.85, 20.00, 0.00, 0.00, 0.00, 0.00, '', NULL, NULL, 1164, NULL, NULL, NULL, 'admin', 0, '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (186, 'Embung Ngirah I ', 1996, 85000000.00, 1.20, 1.00, 'Timbunan ', 50000.00, 50.00, 0.00, 0.00, 0.00, 5.00, 85.00, 250.00, '', NULL, NULL, 163, NULL, NULL, NULL, 'admin', 0, '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (187, 'Embung Ngirah II ', 1997, 82006000.00, 1.35, 2.30, 'Timbunan ', 10000.00, 60.00, 0.00, 0.00, 0.00, 5.00, 35.00, 300.00, '', NULL, NULL, 163, NULL, NULL, NULL, 'admin', 0, '2020-07-07 08:00:00', '2020-07-07 08:00:00');

-- ----------------------------
-- Table structure for jalan
-- ----------------------------
DROP TABLE IF EXISTS `jalan`;
CREATE TABLE `jalan`  (
  `jalan_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `jalan_ruas` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `jalan_subruas` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `jalan_nama` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `jalan_panjang` decimal(15, 2) NULL DEFAULT 0.00,
  `jalan_fungsi_kp_2` decimal(15, 2) NULL DEFAULT 0.00,
  `jalan_fungsi_kp_3` decimal(15, 2) NULL DEFAULT NULL,
  `jalan_lebar` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `jalan_aspal_penetrasi_makadam` decimal(15, 2) NULL DEFAULT 0.00,
  `jalan_perkerasan_beton` decimal(15, 2) NULL DEFAULT 0.00,
  `jalan_telford_kerikil` decimal(15, 2) NULL DEFAULT 0.00,
  `jalan_tanah_belum_tembus` decimal(15, 2) NULL DEFAULT 0.00,
  `jalan_baik_km` decimal(15, 2) NULL DEFAULT 0.00,
  `jalan_baik_persen` decimal(15, 2) NULL DEFAULT 0.00,
  `jalan_sedang_km` decimal(15, 2) NULL DEFAULT 0.00,
  `jalan_sedang_persen` decimal(15, 2) NULL DEFAULT 0.00,
  `jalan_rusak_ringan_km` decimal(15, 2) NULL DEFAULT 0.00,
  `jalan_rusak_ringan_persen` decimal(15, 2) NULL DEFAULT 0.00,
  `jalan_rusak_berat_km` decimal(15, 2) NULL DEFAULT 0.00,
  `jalan_rusak_berat_persen` decimal(15, 2) NULL DEFAULT 0.00,
  `jalan_lhr` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `jalan_akses_ke_npk` char(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `jalan_keterangan` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `kabupaten_kota_id` bigint(20) UNSIGNED NULL DEFAULT NULL,
  `kecamatan_id` bigint(20) UNSIGNED NULL DEFAULT NULL,
  `kelurahan_desa_id` bigint(20) UNSIGNED NULL DEFAULT NULL,
  `marker` point NULL,
  `polyline` linestring NULL,
  `polygon` polygon NULL,
  `pengguna_id` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `kewenangan_provinsi` tinyint(4) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`jalan_id`) USING BTREE,
  INDEX `jalan_pengguna_id_foreign`(`pengguna_id`) USING BTREE,
  INDEX `jalan_kelurahan_desa_id_foreign`(`kelurahan_desa_id`) USING BTREE,
  INDEX `jalan_kabupaten_kota_id_foreign`(`kabupaten_kota_id`) USING BTREE,
  INDEX `jalan_kecamatan_id_foreign`(`kecamatan_id`) USING BTREE,
  CONSTRAINT `jalan_kabupaten_kota_id_foreign` FOREIGN KEY (`kabupaten_kota_id`) REFERENCES `kabupaten_kota` (`kabupaten_kota_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `jalan_kecamatan_id_foreign` FOREIGN KEY (`kecamatan_id`) REFERENCES `kecamatan` (`kecamatan_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `jalan_kelurahan_desa_id_foreign` FOREIGN KEY (`kelurahan_desa_id`) REFERENCES `kelurahan_desa` (`kelurahan_desa_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `jalan_pengguna_id_foreign` FOREIGN KEY (`pengguna_id`) REFERENCES `pengguna` (`pengguna_id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 117 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of jalan
-- ----------------------------
INSERT INTO `jalan` VALUES (3, '050', NULL, 'Jln. Terminal Mandalika (Bertais - Sweta)', 1.70, 1.70, 0.00, NULL, 1.70, 0.00, 0.00, 0.00, 1.35, 79.41, 0.15, 8.82, 0.10, 5.88, 0.10, 5.88, NULL, 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 1, '2020-07-08 08:00:00', '2020-07-27 15:04:27');
INSERT INTO `jalan` VALUES (4, '051', '11.K', 'Jln. DR. Sutomo/Mataram - Rembiga', 2.39, NULL, 2.39, '6', 2.39, NULL, 0.00, 0.00, 2.39, 100.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, 'N', '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (5, '052', '11.K', 'Jln. DR. Wahidin (Bts. Kota)', 0.70, 0.70, NULL, '6', 0.70, NULL, 0.00, 0.00, 0.70, 100.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, 'N', '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (6, '053', '11.K', 'Jln. Yos Sudarso', 0.85, NULL, 0.85, '9', 0.85, NULL, 0.00, 0.00, 0.05, 5.88, 0.80, 94.12, 0.00, 0.00, 0.00, 0.00, NULL, 'N', '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (7, '053', '12.K', 'Jln. Langko', 2.30, NULL, 2.30, '9', 2.30, NULL, 0.00, 0.00, 0.22, 9.57, 2.08, 90.43, 0.00, 0.00, 0.00, 0.00, NULL, 'N', '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (8, '054', '11.K', 'Jln. Pejanggik', 3.15, NULL, 3.15, '9', 3.15, NULL, 0.00, 0.00, 2.65, 84.13, 0.50, 15.87, 0.00, 0.00, 0.00, 0.00, NULL, 'N', '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (9, '055', '11.K', 'Jln. Selaparang', 2.25, NULL, 2.25, '9', 2.25, NULL, 0.00, 0.00, 2.25, 100.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, 'N', '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (10, '056', '11.K', 'Jln. Udayana / Junction - Selaparang', 1.95, NULL, 1.95, '2 X 6 ', 1.95, NULL, 0.00, 0.00, 0.00, 0.00, 1.95, 100.00, 0.00, 0.00, 0.00, 0.00, NULL, 'N', '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (11, '057', '11.K', 'Jln. Erlangga', 1.58, NULL, 1.58, '2 X 6 ', 1.58, NULL, 0.00, 0.00, 1.58, 100.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, 'N', '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (12, '058', NULL, 'Jln. Gajah Mada', 3.55, 0.00, 3.55, '2 X 6', 3.55, 0.00, 0.00, 0.00, 3.55, 100.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-08 08:00:00', '2020-07-11 12:21:40');
INSERT INTO `jalan` VALUES (13, '059', '11.K', 'Jln. WR. Supratman', 0.65, NULL, 0.65, '6', 0.65, NULL, 0.00, 0.00, 0.65, 100.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, 'N', '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (14, '059', '12.K', 'Jln. A. Rahman Hakim', 1.14, NULL, 1.14, '5.5', 1.14, NULL, 0.00, 0.00, 1.14, 100.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, 'N', '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (15, '060', '11.K', 'Jln. RA. Kartini', 1.05, NULL, 1.05, '4.5', 1.05, NULL, 0.00, 0.00, 1.05, 100.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, 'N', '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (16, '061', '11.K', 'Jln. Ade Irma Suryani', 3.00, NULL, 3.00, '4.5', 3.00, NULL, 0.00, 0.00, 0.03, 1.00, 2.97, 99.00, 0.00, 0.00, 0.00, 0.00, NULL, 'N', '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (17, '062', '11.K', 'Jln. Bung Hatta', 2.90, NULL, 2.90, '9 / 2 X 6', 2.90, NULL, 0.00, 0.00, 2.90, 100.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, 'N', '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (18, '063', '11.K', 'Jln. Bung Karno', 4.35, NULL, 4.35, '2 X 6 ', 4.35, NULL, 0.00, 0.00, 4.35, 100.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, 'N', '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (19, '064', '11.K', 'Jln. AA. Gede Ngurah', 0.85, NULL, 0.85, '9', 0.85, NULL, 0.00, 0.00, 0.85, 100.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, 'N', '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (20, '065', '11.K', 'Jln. Prabu Rangka Sari', 2.00, NULL, 2.00, '9', 2.00, NULL, 0.00, 0.00, 1.40, 70.00, 0.20, 10.00, 0.40, 20.00, 0.00, 0.00, NULL, 'N', '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (21, '066', '11.K', 'Jln. Sultan Hasanudin', 0.65, NULL, 0.65, '7', 0.65, NULL, 0.00, 0.00, 0.65, 100.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, 'N', '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (22, '067', '11.K', 'Jln. Imam Bonjol', 1.00, NULL, 1.00, '4.5', 1.00, NULL, 0.00, 0.00, 1.00, 100.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, 'N', '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (23, '068', '11.K', 'Jln. Diponegoro (Bts. Kota)', 0.72, NULL, 0.72, '4.5', 0.72, NULL, 0.00, 0.00, 0.72, 100.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, 'N', '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (24, '069', '11.K', 'Jln. Majapahit', 3.05, NULL, 3.05, '2 X 6 ', 3.05, NULL, 0.00, 0.00, 3.05, 100.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, 'N', '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (25, '070', '11.K', 'Jln. Sriwijaya', 3.13, NULL, 3.13, '2 X 6 ', 3.13, NULL, 0.00, 0.00, 3.13, 100.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, 'N', '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (26, '071', '11.K', 'Jln. Brawijaya', 1.93, NULL, 1.93, '9', 1.93, NULL, 0.00, 0.00, 1.93, 100.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, 'N', '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (27, '072', '11.K', 'Jln. R. Suprapto', 0.75, NULL, 0.75, '6', 0.75, NULL, 0.00, 0.00, 0.00, 0.00, 0.05, 6.67, 0.70, 93.33, 0.00, 0.00, NULL, 'N', '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (28, '072', '12.K', 'Jln. Panji Tilar Negara', 1.91, NULL, 1.91, '2 X 6 ', 1.91, NULL, 0.00, 0.00, 0.00, 0.00, 1.91, 100.00, 0.00, 0.00, 0.00, 0.00, NULL, 'N', '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (29, '073', '11.K', 'Jln. Pendidikan', 1.57, NULL, 1.57, '6', 1.57, NULL, 0.00, 0.00, 0.00, 0.00, 1.57, 100.00, 0.00, 0.00, 0.00, 0.00, NULL, 'N', '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (30, '074', '11.K', 'Jln. Caturwarga', 1.90, NULL, 1.90, '6', 1.90, NULL, 0.00, 0.00, 0.00, 0.00, 1.90, 100.00, 0.00, 0.00, 0.00, 0.00, NULL, 'N', '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (31, '075', '11.K', 'Jln. Panca Usaha', 1.35, NULL, 1.35, '9', 1.35, NULL, 0.00, 0.00, 1.35, 100.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, 'N', '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (32, '076', '11.K', 'Jln. Tumpangsari', 1.20, NULL, 1.20, '4.5', 1.20, NULL, 0.00, 0.00, 0.00, 0.00, 0.30, 25.00, 0.00, 0.00, 0.90, 75.00, NULL, 'N', '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (33, '077', '11.K', 'Jln. Sultan Salahudin', 1.10, NULL, 1.10, '4.5', 1.10, NULL, 0.00, 0.00, 1.10, 100.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, 'N', '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (34, '077', '12.K', 'Jln. Sultan Kaharudin', 1.85, NULL, 1.85, '4.5', 1.85, NULL, 0.00, 0.00, 1.85, 100.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, 'N', '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (35, '078', '11.K', 'Jln. TGH. Bangkol', 1.72, NULL, 1.72, '4.5', 1.72, NULL, 0.00, 0.00, 1.72, 100.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, 'N', '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (36, '079', '11.K', 'Jln. I Gusti Ketut Jelantik Gosa', 1.70, NULL, 1.70, '4.5', 1.70, NULL, 0.00, 0.00, 1.70, 100.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, 'N', '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (37, '052', '', 'Jln. Rembiga (Bts. Kota) - Pemenang', 21.64, 21.64, NULL, '4.5', 21.64, NULL, 0.00, 0.00, 5.36, 24.77, 14.78, 68.30, 1.50, 6.93, 0.00, 0.00, NULL, 'N', '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (38, '080', '', 'Jln. Bengkel - Kediri', 2.56, 2.56, NULL, '4.5', 2.56, NULL, 0.00, 0.00, 0.00, 0.00, 1.82, 71.09, 0.30, 11.72, 0.44, 17.19, NULL, 'N', '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (39, '081', '', 'Jln. Kediri - Rumak', 3.00, 3.00, NULL, '6', 3.00, NULL, 0.00, 0.00, 3.00, 100.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, 'N', '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (40, '082', '', 'Jln. Kediri - Praya', 14.46, 14.46, NULL, '6', 14.46, NULL, 0.00, 0.00, 12.06, 83.40, 1.80, 12.45, 0.60, 4.15, 0.00, 0.00, NULL, 'N', '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (41, '086', '1', 'Jln. Mapak - Parampuan', 0.80, NULL, 0.80, '4.5', 0.80, NULL, 0.00, 0.00, 0.80, 100.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, 'N', '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (42, '086', '2', 'Jln. Parampuan - Kebun Ayu - Lembar', 14.68, NULL, 14.68, '4.5', 14.68, NULL, 0.00, 0.00, 13.28, 90.46, 1.10, 7.49, 0.30, 2.04, 0.00, 0.00, NULL, 'N', '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (43, '087', '', 'Jln. Lembar - Sekotong - Pelangan', 41.00, NULL, 41.00, '6 / 3.5', 41.00, NULL, 0.00, 0.00, 23.09, 56.32, 17.51, 42.71, 0.40, 0.98, 0.00, 0.00, NULL, 'N', '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (44, '088', '', 'Jln. Pelangan - Sp. Pengantap', 36.38, NULL, 36.38, '4.5', 22.57, NULL, 0.00, 13.81, 6.20, 17.04, 13.57, 37.30, 2.80, 7.70, 13.81, 37.96, NULL, 'N', '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (45, '095', '', 'Jln. Kediri - Kuripan', 5.30, 5.30, NULL, '4.5', 5.30, NULL, 0.00, 0.00, 3.80, 71.70, 1.00, 18.87, 0.50, 9.43, 0.00, 0.00, NULL, 'N', '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (46, '096', '', 'Jln. Kuripan - Giri Menang', 2.80, 2.80, NULL, '4.5', 2.80, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 2.80, 100.00, NULL, 'N', '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (47, '096', '11.K', 'Jln. Soekarno Hatta (Gerung)', 1.80, 1.80, NULL, '2 X 6', 1.80, NULL, 0.00, 0.00, 0.00, 0.00, 1.80, 100.00, 0.00, 0.00, 0.00, 0.00, NULL, 'N', '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (48, '082', '11.K', 'Jln. Gajah Mada', 2.95, 2.95, NULL, '6', 2.95, NULL, 0.00, 0.00, 1.35, 45.76, 1.60, 54.24, 0.00, 0.00, 0.00, 0.00, NULL, 'N', '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (49, '083', '', 'Jln. Praya - Kruak ', 21.50, 21.50, NULL, '6', 21.50, NULL, 0.00, 0.00, 16.70, 77.67, 4.80, 22.33, 0.00, 0.00, 0.00, 0.00, NULL, 'N', '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (50, '089', '', 'Jln. Sp. Pengantap - Mt. Ajan - Kuta', 36.44, NULL, 36.44, '4.5', 36.44, NULL, 0.00, 0.00, 20.84, 57.19, 15.60, 42.81, 0.00, 0.00, 0.00, 0.00, NULL, 'N', '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (51, '090', '', 'Jln. Kuta - Kruak', 37.95, NULL, 37.95, '4.5', 37.95, NULL, 0.00, 0.00, 37.95, 100.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, 'N', '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (52, '097', '', 'Jln. Mantang - Praya', 11.27, NULL, 11.27, '6', 11.27, NULL, 0.00, 0.00, 10.77, 95.56, 0.50, 4.44, 0.00, 0.00, 0.00, 0.00, NULL, 'N', '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (53, '097', '11.K', 'Jln. Basuki Rahmat', 1.00, NULL, 1.00, '6', 1.00, NULL, 0.00, 0.00, 1.00, 100.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, 'N', '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (54, '098', '11.K', 'Jln. Wakul - Ketejer', 3.53, NULL, 3.53, '6', 3.53, NULL, 0.00, 0.00, 3.53, 100.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, 'P', '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (55, '098', '12.K', 'Jln. Ketejer - Jontlak', 2.93, NULL, 2.93, '4.5', 2.93, NULL, 0.00, 0.00, 2.63, 89.76, 0.30, 10.24, 0.00, 0.00, 0.00, 0.00, NULL, 'P', '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (56, '099', '', 'Jln. Sp. Penujak - Tanah Awu', 4.46, NULL, 4.46, '4.5', 4.46, NULL, 0.00, 0.00, 1.86, 41.70, 1.10, 24.66, 0.10, 2.24, 1.40, 31.39, NULL, 'P', '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (57, '100', '', 'Jln. Penujak - Mt. Ajan', 23.00, NULL, 23.00, '4.5', 23.00, NULL, 0.00, 0.00, 16.00, 69.57, 7.00, 30.43, 0.00, 0.00, 0.00, 0.00, NULL, 'N', '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (58, '127', '', 'Jln. Batunyala - Sengkol', 9.20, NULL, 9.20, '3.5', 9.20, NULL, 0.00, 0.00, 9.20, 100.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, 'N', '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (59, '084', '', 'Jln. Kruak - Lb. Haji', 15.05, 15.05, NULL, '4.5', 15.05, NULL, 0.00, 0.00, 15.05, 100.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, 'N', '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (60, '085', '', 'Jln. Tanjung Geres - Pohgading - Pringgabaya', 15.23, 15.23, NULL, '4.5', 15.23, NULL, 0.00, 0.00, 14.33, 94.09, 0.90, 5.91, 0.00, 0.00, 0.00, 0.00, NULL, 'N', '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (61, '091', '', 'Jln. Kruak - Pancor', 22.77, NULL, 22.77, '4.5', 22.77, NULL, 0.00, 0.00, 20.37, 89.46, 1.20, 5.27, 1.20, 5.27, 0.00, 0.00, NULL, 'N', '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (62, '092', '', 'Jln. Masbagik - Pancor', 6.30, 6.30, NULL, '6', 6.30, NULL, 0.00, 0.00, 6.30, 100.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, 'N', '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (63, '092', '12.K', 'Jln. TGH. Zainudin Abd. Majid (Pancor-Selong)', 3.45, 3.45, NULL, '2 X 6', 3.45, NULL, 0.00, 0.00, 3.45, 100.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, 'N', '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (64, '092', '13.K', 'Jln. Cokroaminoto', 1.92, 1.92, NULL, '6', 1.92, NULL, 0.00, 0.00, 1.92, 100.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, 'N', '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (65, '093', '', 'Jln. Selong - Lb. Haji', 5.45, 5.45, NULL, '6', 5.45, NULL, 0.00, 0.00, 0.00, 0.00, 5.45, 100.00, 0.00, 0.00, 0.00, 0.00, NULL, 'N', '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (66, '094', '', 'Jln. Pancor - Rempung', 4.41, NULL, 4.41, '4.5', 4.41, NULL, 0.00, 0.00, 4.41, 100.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, 'N', '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (67, '101', '1', 'Jln. Lb.Lombok - Sambalia', 29.73, 29.73, NULL, '4.5', 29.73, NULL, 0.00, 0.00, 3.31, 11.13, 26.42, 88.87, 0.00, 0.00, 0.00, 0.00, NULL, 'N', '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (68, '101', '2', 'Jln. Sambalia - Ds. Biluk', 23.52, 23.52, NULL, '4.5', 23.52, NULL, 0.00, 0.00, 0.00, 0.00, 23.52, 100.00, 0.00, 0.00, 0.00, 0.00, NULL, 'N', '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (69, '102', '', 'Jln. Aikmal - Swela', 8.40, NULL, 8.40, '4.5', 8.40, NULL, 0.00, 0.00, 0.00, 0.00, 7.10, 84.52, 1.30, 15.48, 0.00, 0.00, NULL, 'N', '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (70, '103', '', 'Jln. Pringgabaya - Sembalun Bumbung', 26.90, NULL, 26.90, '4.5', 26.90, NULL, 0.00, 0.00, 6.10, 22.68, 20.80, 77.32, 0.00, 0.00, 0.00, 0.00, NULL, 'N', '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (71, '104', '11.K', 'Jln. RA. Kartini', 0.95, NULL, 0.95, '4.5', 0.95, NULL, 0.00, 0.00, 0.95, 100.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, 'P', '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (72, '105', '11.K', 'Jln. Diponegoro', 2.80, NULL, 2.80, '4.5', 2.80, NULL, 0.00, 0.00, 1.82, 65.00, 0.00, 0.00, 0.00, 0.00, 0.98, 35.00, NULL, 'P', '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (73, '105', '12.K', 'Jln. Hasanudin 1', 0.43, NULL, 0.43, '4.5', 0.43, NULL, 0.00, 0.00, 0.43, 100.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, 'P', '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (74, '105', '13.K', 'Jln. Abdullah', 0.31, NULL, 0.31, '4.5', 0.31, NULL, 0.00, 0.00, 0.31, 100.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, 'P', '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (75, '106', '', 'Jln. Simpang Tano - Simpang Seteluk', 3.85, 3.85, NULL, '6', 3.85, NULL, 0.00, 0.00, 3.35, 87.01, 0.00, 0.00, 0.00, 0.00, 0.50, 12.99, NULL, 'N', '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (76, '107', '1', 'Jln. Benete - Sejorong', 30.44, 30.44, NULL, '4.5 / 6', 30.44, NULL, 0.00, 0.00, 26.84, 88.17, 3.30, 10.84, 0.00, 0.00, 0.30, 0.99, NULL, 'N', '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (77, '107', '2', 'Jln. Sejorong Tetar - Bts. KSB', 42.10, 42.10, NULL, '4.5 / 6', 32.89, NULL, 3.10, 6.11, 31.99, 75.99, 0.90, 2.14, 0.00, 0.00, 9.21, 21.88, NULL, 'N', '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (78, '108', '', 'Jln. Tetar (Bts. KSB) - Lunyuk', 32.40, 32.40, NULL, '4.5 / 6', 25.10, NULL, 7.30, 0.00, 0.30, 0.93, 23.50, 72.53, 1.30, 4.01, 7.30, 22.53, NULL, 'N', '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (79, '109', '', 'Jln. Sumbawa Besar - Semongkat - Batu Dulang', 24.90, NULL, 24.90, '4.5', 24.90, NULL, 0.00, 0.00, 13.50, 54.22, 11.40, 45.78, 0.00, 0.00, 0.00, 0.00, NULL, 'N', '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (80, '109', '11.K', 'Jln. Sultan Kaharudin', 1.75, NULL, 1.75, '4.5', 1.75, NULL, 0.00, 0.00, 1.36, 77.66, 0.26, 14.86, 0.13, 7.49, 0.00, 0.00, NULL, 'N', '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (81, '110', '', 'Jln. Sumbawa - Sebewe - Lua Air', 20.70, 20.70, NULL, '4.5', 17.00, NULL, 3.70, 0.00, 16.70, 80.68, 0.00, 0.00, 0.30, 1.45, 3.70, 17.87, NULL, 'N', '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (82, '110', '11.K', 'Jln. Sudirman', 1.00, NULL, 1.00, '4.5', 1.00, NULL, 0.00, 0.00, 1.00, 100.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, 'N', '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (83, '111', '', 'Jln. Sp. Negara - Moyo - Lua Air', 25.86, 25.86, NULL, '4.5', 23.36, NULL, 0.00, 2.50, 17.66, 68.29, 5.00, 19.33, 0.70, 2.71, 2.50, 9.67, NULL, 'N', '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (84, '112', '1', 'Jln. Pal IV - Lenangguar', 35.37, 35.37, NULL, '4.5', 35.37, NULL, 0.00, 0.00, 14.72, 41.62, 19.35, 54.71, 0.90, 2.54, 0.40, 1.13, NULL, 'N', '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (85, '112', '2', 'Jln. Lenangguar - Lunyuk', 56.20, 56.20, 0.00, '4.5', 54.95, 0.00, 1.25, 0.00, 27.35, 48.67, 20.20, 35.94, 3.30, 5.87, 5.35, 9.52, NULL, 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-08 08:00:00', '2020-07-11 12:21:23');
INSERT INTO `jalan` VALUES (86, '113', '1', 'Jln. Lunyuk - Ropang', 45.00, NULL, 45.00, '', 0.00, NULL, 0.00, 45.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 45.00, 100.00, NULL, 'N', '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (87, '113', '2', 'Jln. Ropang - Sekokat', 59.40, NULL, 59.40, '4.5', 12.40, NULL, 0.00, 47.00, 10.10, 17.00, 2.30, 3.87, 0.00, 0.00, 47.00, 79.12, NULL, 'N', '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (88, '114', '', 'Jln. Sekokat - Bawi', 91.00, NULL, 91.00, '4.5', 6.00, NULL, 0.00, 85.00, 6.00, 6.59, 0.00, 0.00, 0.00, 0.00, 85.00, 93.41, NULL, 'N', '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (89, '115', '', 'Jln. Plampang - Sekokat', 13.60, NULL, 13.60, '4.5', 13.60, NULL, 0.00, 0.00, 8.70, 63.97, 1.90, 13.97, 3.00, 22.06, 0.00, 0.00, NULL, 'N', '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (90, '117', '', 'Jln. Simpang Kempo - Simpang Kore', 18.19, NULL, 18.19, '4.5', 18.19, NULL, 0.00, 0.00, 13.21, 72.62, 4.88, 26.83, 0.10, 0.55, 0.00, 0.00, NULL, 'N', '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (91, '118', '1', 'Jln. Simpang Kore - Kiwu', 29.05, 29.05, NULL, '4.5', 23.65, NULL, 5.40, 0.00, 20.35, 70.05, 3.30, 11.36, 0.00, 0.00, 5.40, 18.59, NULL, 'N', '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (92, '120', '', 'Jln. H u\' u - Parado', 40.24, 40.24, NULL, '4.5', 27.60, NULL, 6.54, 6.10, 16.00, 39.76, 0.00, 0.00, 0.00, 0.00, 24.24, 60.24, NULL, 'N', '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (93, '116', '1', 'Jln. Lb. Kenanga (Bts. Dompu) - Kawinda To\'i', 41.26, 41.26, NULL, '4.5', 41.26, NULL, 0.00, 0.00, 5.80, 14.06, 11.22, 27.19, 0.00, 0.00, 24.24, 58.75, NULL, 'N', '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (94, '116', '2', 'Jln. Kawinda Toi - Piong', 35.57, 35.57, NULL, '4.5', 21.37, NULL, 14.20, 0.00, 18.20, 51.17, 2.70, 7.59, 0.00, 0.00, 14.67, 41.24, NULL, 'N', '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (95, '116', '3', 'Jln. Piong - Sp. Kore', 14.75, 14.75, NULL, '4.5', 14.75, NULL, 0.00, 0.00, 0.00, 0.00, 6.58, 44.61, 2.30, 15.59, 5.87, 39.80, NULL, 'N', '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (96, '118', '2', 'Jln. Kiwu - Sampungu', 16.22, 16.22, NULL, '4.5', 0.00, NULL, 0.00, 16.22, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 16.22, 100.00, NULL, 'N', '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (97, '118', '3', 'Jln. Sampungu - Bajo', 41.60, 41.60, NULL, '4.5', 27.80, NULL, 0.00, 13.80, 5.60, 13.46, 20.40, 49.04, 1.80, 4.33, 13.80, 33.17, NULL, 'N', '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (98, '119', '', 'Jln. Sila - Bajo', 10.00, 10.00, NULL, '4.5', 10.00, NULL, 0.00, 0.00, 0.00, 0.00, 10.00, 100.00, 0.00, 0.00, 0.00, 0.00, NULL, 'N', '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (99, '121', '1', 'Jln. Bima - Tawali', 42.32, 42.32, NULL, '4.5', 42.32, NULL, 0.00, 0.00, 28.06, 66.30, 10.46, 24.72, 3.60, 8.51, 0.20, 0.47, NULL, 'N', '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (100, '121', '2', 'Jln. Tawali - Sape', 46.71, 46.71, NULL, '4.5', 46.71, NULL, 0.00, 0.00, 14.22, 30.43, 5.90, 12.63, 0.30, 0.64, 26.30, 56.29, NULL, 'N', '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (101, '122', '1', 'Jln. Talabiu - Simpasai', 16.50, NULL, 16.50, '4.5', 16.50, NULL, 0.00, 0.00, 12.10, 73.33, 4.30, 26.06, 0.00, 0.00, 0.10, 0.61, NULL, 'N', '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (102, '122', '2', 'Jln. Simpasai - Parado', 17.60, 17.60, NULL, '4.5', 17.60, NULL, 0.00, 0.00, 11.00, 62.50, 6.10, 34.66, 0.50, 2.84, 0.00, 0.00, NULL, 'N', '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (103, '123', '1', 'Jln. Simpasai - Wilamaci', 4.70, 4.70, 0.00, '4.5', 4.70, 0.00, 0.00, 0.00, 1.74, 37.02, 2.86, 60.85, 0.10, 2.13, 0.00, 0.00, NULL, 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-08 08:00:00', '2020-07-11 12:22:36');
INSERT INTO `jalan` VALUES (104, '123', '2', 'Jln. Wilamaci - Karumbu', 24.50, 24.50, NULL, '4.5', 24.50, NULL, 0.00, 0.00, 15.97, 65.18, 8.53, 34.82, 0.00, 0.00, 0.00, 0.00, NULL, 'N', '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (105, '123', '3', 'Jln. Karumbu - Sape', 37.00, 37.00, NULL, '4.5', 37.00, NULL, 0.00, 0.00, 8.30, 22.43, 17.10, 46.22, 0.40, 1.08, 11.20, 30.27, NULL, 'N', '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (106, '123', '4', 'Jln. Wilamaci - Parado', 16.30, NULL, 16.30, '4.5', 8.57, NULL, 0.00, 7.73, 8.37, 51.35, 0.20, 1.23, 0.00, 0.00, 7.73, 47.42, NULL, 'P', '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (107, '121', '11.K', 'Jln. Datuk Dibanta - Bts. Kota', 11.90, 11.90, NULL, '4.5', 11.90, NULL, 0.00, 0.00, 0.30, 2.52, 5.50, 46.22, 5.80, 48.74, 0.30, 2.52, NULL, 'N', '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (108, '124', '11.K', 'Jln. Hasanudin', 1.09, 1.09, NULL, '9', 1.09, NULL, 0.00, 0.00, 1.09, 100.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, 'N', '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (109, '125', '11.K', 'Jln. Gajah Mada', 4.70, 4.70, NULL, '4.5', 4.70, NULL, 0.00, 0.00, 3.01, 64.04, 1.69, 35.96, 0.00, 0.00, 0.00, 0.00, NULL, 'N', '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (110, '126', '11.K', 'Jln. Gatot Subroto', 2.50, NULL, 2.50, '2 X 6', 2.50, NULL, 0.00, 0.00, 0.00, 0.00, 0.03, 1.20, 1.97, 78.80, 0.50, 20.00, NULL, 'N', '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (115, '214', '35', 'asdfa', 13211.00, 0.00, 0.00, '1,124,124.00', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-28 17:54:11', '2020-07-28 17:54:11');
INSERT INTO `jalan` VALUES (116, '12', '123', 'asdfasdf', 123.00, 0.00, 0.00, '1,231.00', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-28 19:24:06', '2020-07-28 19:24:06');

-- ----------------------------
-- Table structure for jembatan
-- ----------------------------
DROP TABLE IF EXISTS `jembatan`;
CREATE TABLE `jembatan`  (
  `jembatan_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `jembatan_nomor` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `jembatan_nama` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `jembatan_dimensi_panjang` decimal(15, 2) NULL DEFAULT 0.00,
  `jembatan_dimensi_lebar` decimal(15, 2) NULL DEFAULT 0.00,
  `jembatan_dimensi_bentang` decimal(15, 2) NULL DEFAULT 0.00,
  `jembatan_bangunan_atas_tipe` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `jembatan_bangunan_atas_kondisi` decimal(15, 2) NULL DEFAULT 0.00,
  `jembatan_bangunan_bawah_tipe` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `jembatan_bangunan_bawah_kondisi` decimal(15, 2) NULL DEFAULT 0.00,
  `jembatan_bangunan_pondasi_tipe` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `jembatan_bangunan_pondasi_kondisi` decimal(15, 2) NULL DEFAULT 0.00,
  `jembatan_bangunan_lantai_tipe` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `jembatan_bangunan_lantai_kondisi` decimal(15, 2) NULL DEFAULT 0.00,
  `jembatan_keterangan` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `jalan_id` bigint(20) UNSIGNED NULL DEFAULT NULL,
  `kabupaten_kota_id` bigint(20) UNSIGNED NULL DEFAULT NULL,
  `kecamatan_id` bigint(20) UNSIGNED NULL DEFAULT NULL,
  `kelurahan_desa_id` bigint(20) UNSIGNED NULL DEFAULT NULL,
  `marker` point NULL,
  `polyline` linestring NULL,
  `polygon` polygon NULL,
  `pengguna_id` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `kewenangan_provinsi` tinyint(4) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`jembatan_id`) USING BTREE,
  INDEX `jembatan_pengguna_id_foreign`(`pengguna_id`) USING BTREE,
  INDEX `jembatan_kabupaten_kota_id_foreign`(`kabupaten_kota_id`) USING BTREE,
  INDEX `jembatan_jalan_id_foreign`(`jalan_id`) USING BTREE,
  INDEX `jembatan_kecamatan_id_foreign`(`kecamatan_id`) USING BTREE,
  INDEX `jembatan_kelurahan_desa_id_foreign`(`kelurahan_desa_id`) USING BTREE,
  CONSTRAINT `jembatan_jalan_id_foreign` FOREIGN KEY (`jalan_id`) REFERENCES `jalan` (`jalan_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `jembatan_kabupaten_kota_id_foreign` FOREIGN KEY (`kabupaten_kota_id`) REFERENCES `kabupaten_kota` (`kabupaten_kota_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `jembatan_kecamatan_id_foreign` FOREIGN KEY (`kecamatan_id`) REFERENCES `kecamatan` (`kecamatan_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `jembatan_kelurahan_desa_id_foreign` FOREIGN KEY (`kelurahan_desa_id`) REFERENCES `kelurahan_desa` (`kelurahan_desa_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `jembatan_pengguna_id_foreign` FOREIGN KEY (`pengguna_id`) REFERENCES `pengguna` (`pengguna_id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 764 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of jembatan
-- ----------------------------
INSERT INTO `jembatan` VALUES (1, '42.101.010.0', 'PENENDEM IV', 2.00, 6.20, 2.00, '0', 0.00, '0', 0.00, '0', 0.00, '0', 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-28 15:18:34');
INSERT INTO `jembatan` VALUES (2, ' 42.052.004.1.1 ', 'TL. SIDEMEN ', 3.00, 8.40, 2.00, 'ATI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (3, ' 42.092.005.0.12 ', 'TELABAH SANGKON ', 3.60, 7.70, 3.00, 'ATI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (4, ' 42.092.004.0.2 ', 'TELABAH KETUJUR ', 2.00, 7.90, 1.00, 'ETI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (5, ' 42.119.001.7 ', 'RADA ', 2.00, 5.80, 1.00, 'ETI', 2.00, 'B', 2.00, 'LS', 2.00, 'TA', 2.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (6, ' 42.112.006.0.2 ', 'LEDANG VI ', 2.20, 3.50, 1.00, 'ETI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 2.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (7, ' 42.091.008.4 ', 'TELABAH SEPIT ', 2.30, 5.30, 1.00, 'ETI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (8, ' 42.099.005.0 ', 'GOBANG ', 3.00, 4.30, 1.00, 'ETI', 1.00, 'B', 1.00, 'LS', 1.00, 'A', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (9, ' 42.083.006.8 ', 'TL. SWANGI ', 3.00, 7.00, 1.00, 'ETI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (10, ' 42.109.004.0 ', 'SEMONGKAT III ', 3.00, 7.00, 1.00, 'ETI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (11, ' 42.052.001.6.1 ', 'TL. BELENCONG ', 3.80, 6.70, 1.00, 'ETI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (12, ' 42.122.002.6.1 ', 'SORI LEU ', 3.80, 6.40, 1.00, 'ETI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (13, ' 42.052.004.2.1 ', 'TL. BATU PENYU ', 4.00, 5.90, 1.00, 'ETI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (14, ' 42.112.060.0.2 ', 'SAMPARAU I ', 4.00, 3.90, 1.00, 'ETI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (15, ' 42.052.003.4.1 ', 'TL. WADON ', 4.20, 5.90, 1.00, 'ETI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (16, ' 42.087.006.6 ', 'LABU PETUNG II ', 4.20, 6.80, 1.00, 'ETI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (17, ' 42.112.003.0.2 ', 'LEDANG III ', 4.80, 6.30, 2.00, 'ETI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (18, ' 42.052.004.8.1 ', 'TL. SEKEPAT ', 5.00, 6.20, 1.00, 'ETI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (19, ' 42.121.003.2.11 ', 'DESA II ', 5.00, 6.20, 1.00, 'ETI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (20, ' 42.091.013.0 ', 'BATU BELEK/NGETAP ', 5.10, 7.00, 1.00, 'ETI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (21, ' 42.126.001.0.11 ', 'SANTI ', 5.10, 11.60, 1.00, 'ETI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (22, ' 42.112.005.0.2 ', 'LEDANG V ', 5.30, 7.30, 1.00, 'ETI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (23, ' 42.121.002.3 ', 'SORI LUMBA ', 5.40, 3.30, 1.00, 'ETI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (24, ' 42.125.003.0.11 ', 'DANA MBARI ', 5.50, 7.20, 1.00, 'ETI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (25, ' 42.122.002.8.1 ', 'SORI RIDA ', 5.90, 6.20, 1.00, 'ETI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (26, ' 42.101.003.1 ', 'MENANGA BARIS III/RAREP ', 6.00, 6.00, 1.00, 'ETI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (27, ' 42.085.002.B ', 'LENEK BARA B ', 6.00, 5.00, 1.00, 'ETI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (28, ' 42.103.001.0 ', 'KEDONDONG ', 6.00, 4.40, 1.00, 'ETI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (29, ' 42.112.005.0.1 ', 'KOKAR ALING ', 6.00, 8.30, 1.00, 'ETI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (30, ' 42.112.014.0.1 ', 'LANAK II ', 6.00, 5.80, 1.00, 'ETI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (31, ' 42.112.004.0.2 ', 'LEDANG IV ', 2.00, 3.50, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (32, ' 42.112.045.0.2 ', 'LIAN II ', 2.00, 4.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (33, ' 42.112.075.0.2 ', 'BERINGIN ', 2.00, 3.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (34, ' 42.112.038.0.2 ', 'KOMAS VI ', 2.70, 4.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (35, ' 42.112.053.0.2 ', 'SAMPANG II ', 3.00, 6.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (36, ' 42.112.012.5.2 ', 'AIK LEDANG ', 4.00, 6.70, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (37, ' 42.112.065.0.2 ', 'PLARA II ', 4.50, 7.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (38, ' 42.112.001.0.2 ', 'LEDANG I (AI NANGKA) ', 4.60, 6.60, 2.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (39, ' 42.112.066.0.2 ', 'SEKAMANG I ', 4.70, 7.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (40, ' 42.112.011.0.2 ', 'LEDANG IX ', 5.00, 5.50, 1.00, 'GTI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (41, ' 42.112.062.0.2 ', 'RONTONG I ', 5.00, 6.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (42, ' 42.112.074.0.2 ', 'BRORA ', 5.50, 6.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (43, ' 42.088.006.0 ', 'SEPI II ', 6.00, 6.00, 1.00, 'GTI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (44, ' 42.101.004.2 ', 'PANDAK GUAR ', 6.00, 6.10, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (45, ' 42.101.012.0 ', 'DAMB. KL. PASIRAN II ', 6.00, 6.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (46, ' 42.107.013.0 ', 'SINYUR II ', 6.00, 5.50, 1.00, 'GTI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (47, ' 42.107.015.0 ', 'SINYUR IV ', 6.00, 5.50, 1.00, 'GTI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (48, ' 42.107.016.0 ', 'SINYUR V ', 6.00, 5.50, 1.00, 'GTI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (49, ' 42.107.018.0 ', 'SINYUR VII ', 6.00, 5.50, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TR', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (50, ' 42.109.007.0 ', 'BATU LATEH I ', 6.00, 6.60, 1.00, 'GTI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (51, ' 42.109.008.0 ', 'BATU LATEH II ', 6.00, 7.00, 1.00, 'GTI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (52, ' 42.112.033.0.2 ', 'KOMAS I ', 6.00, 6.60, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 2.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (53, ' 42.112.049.0.2 ', 'KENANGAS II ', 6.00, 6.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (54, ' 42.112.054.0.2 ', 'BATU NAMPAR ', 6.00, 6.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (55, ' 42.121.006.1 ', 'LALUNE ', 6.00, 4.00, 1.00, 'GTI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (56, ' 42.123.009.0.2 ', 'SORI NGONCO ', 6.00, 6.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (57, ' 42.099.004.0 ', 'TELABAH PENGKANG ', 2.00, 5.00, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (58, ' 42.112.040.0.2 ', 'KOMAS VIII ', 2.00, 4.00, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (59, ' 42.112.041.0.2 ', 'KOMAS IX ', 2.00, 4.00, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (60, ' 42.121.012.9 ', 'RO\'O MALI ', 2.00, 5.30, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (61, ' 42.082.001.1 ', 'TELABAH BAWAH ', 2.40, 7.00, 1.00, 'PTI', 0.00, 'B', 0.00, 'LS', 0.00, 'TA', 0.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (62, ' 42.118.023.0.3 ', 'LAPA MORI ', 2.50, 5.30, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (63, ' 42.112.070.0.2 ', 'KUKIN ', 2.70, 4.00, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (64, ' 42.052.004.4.1 ', 'TL. LINGKOK MAS ', 2.80, 5.10, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (65, ' 42.052.004.6.1 ', 'EYAT PUNTIK ', 2.80, 6.90, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (66, ' 42.054.002.0.11 ', 'KARANG JANGKONG ', 3.00, 10.00, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (67, ' 42.065.002.0.11 ', 'Tl. Waker ', 3.00, 8.00, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (68, ' 42.052.004.7.1 ', 'TL. PUSUK ', 3.00, 7.50, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (69, ' 42.052.004.9.1 ', 'TL. EMBULAN ', 3.00, 7.30, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (70, ' 42.088.007.1 ', 'KEMANUK II ', 3.00, 4.00, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (71, ' 42.090.001.0 ', 'KUTA ', 3.00, 5.00, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (72, ' 42.101.025.0 ', 'JURANG BEBAI ', 3.00, 6.40, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (73, ' 42.107.019.0 ', 'SINYUR VIII ', 3.00, 7.40, 1.00, 'PTI', 3.00, 'B', 1.00, 'LS', 1.00, 'TR', 2.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (74, ' 42.112.012.0.1 ', 'LITOK III ', 3.00, 3.50, 1.00, 'PTI', 0.00, 'B', 0.00, 'LS', 0.00, 'TA', 0.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (75, ' 42.112.019.0.2 ', 'LEDANG XVIII ', 3.00, 4.00, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (76, ' 42.121.001.2.11 ', 'RANGGO  II ', 3.00, 5.20, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (77, ' 42.121.022.0 ', 'SORI LIA ', 3.00, 4.00, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (78, ' 42.122.002.9.1 ', 'WADU LAWA ', 3.00, 7.90, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (79, ' 42.052.005.3.1 ', 'EYAT RATNAGA ', 3.10, 7.20, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (80, ' 42.118.005.0.1 ', 'ENCA II ', 3.10, 3.80, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (81, ' 42.121.009.4 ', 'OI MPONU I ', 3.20, 4.40, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (82, ' 42.121.009.7 ', 'DINDI TELI ', 3.20, 5.20, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (83, ' 42.121.019.0 ', 'KAPILO II ', 3.20, 4.20, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (84, ' 42.052.001.1.1 ', 'TL. MIDANG ', 3.30, 9.00, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (85, ' 42.082.002.1 ', 'LAPAN ELEK ', 3.30, 7.00, 1.00, 'PTI', 0.00, 'B', 0.00, 'LS', 0.00, 'TA', 0.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (86, ' 42.082.003.7 ', 'AIK AMPAT ', 3.30, 7.00, 1.00, 'PTI', 0.00, 'B', 0.00, 'LS', 0.00, 'TA', 0.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (87, ' 42.121.011.1 ', 'MENTAU/MASA ', 3.30, 5.50, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (88, ' 42.080.001.9 ', 'BAGINDA ', 3.40, 7.50, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (89, ' 42.082.004.3 ', 'MONTONG LUMUT ', 3.40, 8.60, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (90, ' 42.101.019.0 ', 'KALI SUKUN ', 3.40, 3.50, 1.00, 'PTI', 2.00, 'B', 1.00, 'LS', 0.00, 'AT', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (91, ' 42.121.013.1 ', 'OI JEKE ', 3.40, 5.30, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (92, ' 42.121.013.2 ', 'MANGGO MAWU ', 3.40, 5.40, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (93, ' 42.052.004.5.1 ', 'TL. BATU TEPONG ', 3.50, 7.50, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (94, ' 42.122.002.7.1 ', 'WADU LECO ', 3.50, 5.20, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (95, ' 42.051.003.0.11 ', 'TELABAH BAWAK ', 3.60, 6.00, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (96, ' 42.052.000.2.11 ', 'Tl. Rembige ', 3.60, 6.80, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (97, ' 42.082.007.7.11 ', 'BATU BUI ', 3.60, 11.00, 1.00, 'PTI', 0.00, 'B', 0.00, 'LS', 0.00, 'TA', 0.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (98, ' 42.093.000.3 ', 'TELABAH SELONG ', 3.60, 6.50, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (99, ' 42.065.000.4.11 ', 'Abian Tubuh I ', 3.70, 13.00, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (100, ' 42.093.000.4 ', 'TELABAH KELAYU ', 3.70, 5.40, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (101, ' 42.052.004.3.1 ', 'TL. KEDONDONG ', 3.80, 6.60, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (102, ' 42.122.002.4.1 ', 'TANGGA ', 3.80, 7.40, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (103, ' 42.053.000.2.12 ', 'TL. NING ', 4.00, 7.50, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (104, ' 42.082.003.1 ', 'JURANG TEBANGO ', 4.00, 7.00, 1.00, 'PTI', 0.00, 'B', 0.00, 'LS', 0.00, 'TA', 0.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (105, ' 42.082.005.6 ', 'NYEROT ', 4.00, 7.00, 1.00, 'PTI', 0.00, 'B', 0.00, 'LS', 0.00, 'TA', 0.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (106, ' 42.099.003.0 ', 'SEMBAWI ', 4.00, 3.50, 2.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (107, ' 42.083.003.5 ', 'REMPUNG PUNTIK ', 4.00, 7.00, 1.00, 'PTI', 0.00, 'B', 0.00, 'LS', 0.00, 'TA', 0.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (108, ' 42.090.001.4 ', 'BALAK ', 4.00, 6.40, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (109, ' 42.101.007.0 ', 'PENENDEM I ', 4.00, 5.40, 1.00, 'PTI', 2.00, 'B', 1.00, 'LS', 1.00, 'AT', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (110, ' 42.118.017.0.3 ', 'SORI KOMBA I ', 4.00, 4.60, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (111, ' 42.118.017.2.3 ', 'SORI KOMBA II ', 4.00, 4.60, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (112, ' 42.121.007.4 ', 'AMA TETO ', 4.00, 5.40, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (113, ' 42.121.016.0 ', 'KALAMPA ', 4.00, 4.20, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (114, ' 42.121.009.0 ', 'OI MORO ', 4.00, 4.00, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (115, ' 42.121.018.0 ', 'KAPILO I ', 4.00, 4.50, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (116, ' 42.121.021.0 ', 'POJA ', 4.00, 4.30, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (117, ' 42.123.016.0.3 ', 'DUMU I ', 4.00, 4.90, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (118, ' 42.123.016.4.3 ', 'SORI DUMU III ', 4.00, 6.00, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (119, ' 42.123.018.0.3 ', 'MANGGE I ', 4.00, 5.20, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (120, ' 42.123.019.0.3 ', 'MANGGE II ', 4.00, 5.00, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (121, ' 42.123.020.0.3 ', 'MANGGE III ', 4.00, 5.00, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (122, ' 42.123.021.0.3 ', 'MANGGE IV ', 4.00, 4.70, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (123, ' 42.125.004.0.11 ', 'NA\'E ', 4.00, 6.00, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (124, ' 42.121.016.0 ', 'KAMBOI ', 4.10, 4.10, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (125, ' 42.112.069.0.2 ', 'SEKAMANG IV ', 4.30, 4.00, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (126, ' 42.121.005.5 ', 'SANOSO ', 4.30, 7.00, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (127, ' 42.121.008.6 ', 'LAWESI ', 4.30, 5.20, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (128, ' 42.112.037.0.2 ', 'KOMAS V ', 4.40, 4.00, 1.00, 'PTI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (129, ' 42.121.011.8 ', 'RAJU  ', 4.40, 5.30, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (130, ' 42.082.004.2 ', 'JELANTIK I ', 4.50, 7.00, 1.00, 'PTI', 0.00, 'B', 0.00, 'LS', 0.00, 'TA', 0.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (131, ' 42.083.000.4 ', 'EYAT SURAK ', 4.50, 7.00, 1.00, 'PTI', 0.00, 'B', 0.00, 'LS', 0.00, 'TA', 0.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (132, ' 42.083.002.6 ', 'MUJUR I ', 4.50, 5.00, 1.00, 'PTI', 0.00, 'B', 0.00, 'LS', 0.00, 'TA', 0.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (133, ' 42.112.011.6.1 ', 'LITOK I ', 4.50, 6.00, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (134, ' 42.121.012.3 ', 'SORI PATO ', 4.50, 4.80, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (135, ' 42.123.024.0.3 ', 'MANGGE VII ', 4.50, 6.50, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (136, ' 42.082.003.6 ', 'AIK ARE ', 4.60, 7.00, 1.00, 'PTI', 0.00, 'B', 0.00, 'LS', 0.00, 'TA', 0.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (137, ' 42.121.005.6 ', 'DUNDU HEA ', 4.60, 7.00, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (138, ' 42.082.001.7 ', 'KROYA ', 4.70, 6.00, 1.00, 'PTI', 0.00, 'B', 0.00, 'LS', 0.00, 'TA', 0.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (139, ' 42.112.012.0.2 ', 'LEDANG X ', 4.70, 9.10, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (140, ' 42.082.001.4 ', 'CENIDING ', 4.80, 7.00, 1.00, 'PTI', 0.00, 'B', 0.00, 'LS', 0.00, 'TA', 0.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (141, ' 42.100.005.0 ', 'SETANGGOR II ', 4.80, 3.50, 2.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (142, ' 42.117.002.0 ', 'LANCI ', 4.80, 4.70, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (143, ' 42.090.001.5 ', 'SERNENG ', 5.00, 6.40, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (144, ' 42.090.001.6 ', 'PAKO ', 5.00, 4.60, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (145, ' 42.101.009.0 ', 'PENENDEM III ', 5.00, 3.20, 1.00, 'PTI', 2.00, 'B', 1.00, 'LS', 1.00, 'AT', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (146, ' 42.112.026.0.2 ', 'SOGA I ', 5.00, 4.00, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (147, ' 42.112.027.0.2 ', 'SOGA II ', 5.00, 4.00, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (148, ' 42.112.072.0.2 ', 'PLAS II ', 5.00, 6.00, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (149, ' 42.120.000.2 ', 'OI TOSI ', 5.00, 4.90, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (150, ' 42.118.019.0.3 ', 'NOTI I ', 5.00, 4.30, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (151, ' 42.121.003.0 ', 'MALI ', 5.00, 4.10, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TR', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (152, ' 42.121.011.0 ', 'SAMIA ', 5.00, 4.70, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (153, ' 42.121.020.0 ', 'NCIRI ', 5.00, 4.50, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (154, ' 42.121.024.0 ', 'SORI NTIMU ', 5.00, 4.30, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (155, ' 42.120.021.0 ', 'LERE II ', 5.00, 4.80, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (156, ' 42.123.003.0.2 ', 'DORO O\'O I ', 5.00, 8.80, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (157, ' 42.123.022.0.3 ', 'MANGGE V ', 5.00, 6.20, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (158, ' 42.118.013.0.3 ', 'LAPA BAJO ', 5.10, 5.20, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (159, ' 42.118.006.0.1 ', 'ENCA III ', 5.20, 6.00, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (160, ' 42.121.023.0 ', 'SORI NDAO ', 5.20, 4.30, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (161, ' 42.122.007.5.2 ', 'PO\'O TANDANDA ', 5.20, 5.20, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (162, ' 42.101.016.0 ', 'MENANGA BAWI ', 5.30, 3.10, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (163, ' 42.112.029.3.2 ', 'TAWAR I ', 5.30, 6.90, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (164, ' 42.115.001.0 ', 'SELANTE I ', 5.30, 6.00, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (165, ' 42.123.014.0.3 ', 'SAMBANE ', 5.30, 6.20, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (166, ' 42.087.001.0 ', 'KEBON TALO ', 5.40, 5.50, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (167, ' 42.101.014.0 ', 'LENDANG RE ', 5.40, 4.30, 1.00, 'PTI', 2.00, 'B', 1.00, 'LS', 0.00, 'AT', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (168, ' 42.112.068.0.2 ', 'SEKAMANG III ', 5.40, 4.00, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (169, ' 42.123.007.0.2 ', 'NAWA LAPA ', 5.50, 4.50, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (170, ' 42.123.013.0.3 ', 'RUPE ', 5.50, 5.50, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (171, ' 42.123.017.0.3 ', 'DUMU II ', 5.50, 5.00, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 0.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (172, ' 42.112.010.5.1 ', 'AI LAGI ', 5.60, 6.00, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (173, ' 42.112.023.0.2 ', 'BINONG II ', 5.60, 6.50, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (174, ' 42.085.002.A ', 'LENEK BARA A ', 5.70, 5.50, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (175, ' 42.121.003.1.11 ', 'DESA I ', 5.70, 6.70, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (176, ' 42.083.006.9 ', 'TUNDAK ', 5.80, 6.20, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (177, ' 42.101.008.0 ', 'PENENDEM II ', 5.80, 3.20, 1.00, 'PTI', 2.00, 'B', 1.00, 'LS', 1.00, 'AT', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (178, ' 42.112.028.0.2 ', 'PANAN ', 5.80, 6.30, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (179, ' 42.088.005.0 ', 'SEPI I ', 6.00, 4.00, 1.00, 'PTI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (180, ' 42.088.007.0 ', 'KEMANUK I ', 6.00, 4.00, 1.00, 'PTI', 3.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (181, ' 42.099.001.0 ', 'PENUJAK I ', 6.00, 6.10, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (182, ' 42.083.004.0 ', 'PAMONDAH ', 6.00, 6.50, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (183, ' 42.100.001.0 ', 'PENUJAK I ', 6.00, 3.80, 1.00, 'PTI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (184, ' 42.100.003.0 ', 'TL. PEDEK ', 6.00, 3.60, 1.00, 'PTI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (185, ' 42.107.006.0 ', 'MALUK I ', 6.00, 8.10, 1.00, 'PTI', 3.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (186, ' 42.107.020.0 ', 'SINYUR IX ', 6.00, 5.30, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TR', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (187, ' 42.112.022.0.2 ', 'BINONG I ', 6.00, 6.60, 1.00, 'PTI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (188, ' 42.112.029.0.2 ', 'BEAT ', 6.00, 6.10, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (189, ' 42.112.036.0.2 ', 'KOMAS IV ', 6.00, 6.50, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (190, ' 42.117.003.0 ', 'KENU ', 6.00, 4.70, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (191, ' 42.117.004.0 ', 'WADU NAE ', 6.00, 5.50, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (192, ' 42.121.002.0 ', 'AMA TAMI ', 6.00, 4.70, 1.00, 'PTI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (193, ' 42.120.028.0 ', 'TANAH AWU I ', 6.00, 4.50, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (194, ' 42.123.006.0.2 ', 'DORO O\'O IV ', 6.00, 4.10, 1.00, 'PTI', 1.00, 'B', 2.00, 'LS', 3.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (195, ' 42.112.039.0.2 ', 'KOMAS VII ', 2.70, 4.00, 1.00, 'RBB', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (196, ' 42.112.010.0.2 ', 'LEDANG VIII ', 3.00, 4.80, 1.00, 'GBA', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (197, ' 42.112.061.0.2 ', 'SAMPARAU II ', 6.00, 5.70, 1.00, 'GBA', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (198, ' 42.112.044.0.2 ', 'LIAN I ', 2.70, 4.00, 1.00, 'GBI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (199, ' 42.082.002.3 ', 'TELABAH PELULAN ', 3.40, 7.00, 1.00, 'GBI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (200, ' 42.093.000.6 ', 'TELABAH LOANG TUNA ', 3.70, 7.00, 1.00, 'GBI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (201, ' 42.092.003.0.2 ', 'TELABAH SIMBE ', 4.00, 6.50, 1.00, 'GBI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (202, ' 42.112.067.0.2 ', 'SEKAMANG II ', 4.70, 7.00, 1.00, 'GBI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (203, ' 42.093.001.0 ', 'SISIK ', 6.00, 6.50, 1.00, 'GBI', 1.00, 'B', 1.00, 'LS', 1.00, 'A', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (204, ' 42.112.013.0.1 ', 'LANAK I ', 6.00, 6.80, 1.00, 'GBI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (205, ' 42.113.075.0.2 ', 'KOKAR ODE V ', 5.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (206, ' 42.088.002.0 ', 'LEMBUT PETUNG ', 6.10, 4.90, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (207, ' 42.117.001.0 ', 'SORI SANTE ', 6.10, 6.20, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (208, ' 42.119.001.3 ', 'TOMPU ', 6.10, 6.30, 1.00, 'GTI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (209, ' 42.100.002.0 ', 'PENUJAK II ', 6.10, 3.70, 1.00, 'PTI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (210, ' 42.112.018.0.2 ', 'LEDANG XVII ', 6.10, 6.90, 1.00, 'RBR', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (211, ' 42.109.002.0 ', 'SEMONGKAT I ', 6.20, 7.00, 1.00, 'ETI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (212, ' 42.084.004.0 ', 'EYAT BENGKOK ', 6.20, 11.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (213, ' 42.107.014.0 ', 'SINYUR III ', 6.20, 5.40, 1.00, 'GTI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (214, ' 42.112.007.0.2 ', 'AI TUMANG I ', 6.20, 6.60, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (215, ' 42.067.001.1.11 ', 'TL. SINDU ', 6.20, 6.30, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (216, ' 42.123.011.0.2 ', 'RABA BUSI I ', 6.30, 8.20, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (217, ' 42.123.011.2.3 ', 'RABA BUSI II ', 6.30, 8.20, 1.00, 'PTI', 2.00, 'B', 2.00, 'LS', 3.00, 'TA', 2.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (218, ' 42.101.003.8 ', 'LEPER ', 6.40, 9.00, 1.00, 'ETI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (219, ' 42.112.008.0.1 ', 'BATU PASAK ', 6.50, 7.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (220, ' 42.112.050.0.2 ', 'KENANGAS III ', 6.50, 6.00, 1.00, 'GTI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (221, ' 42.112.051.0.2 ', 'KENANGAS IV ', 6.50, 6.50, 1.00, 'GTI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (222, ' 42.115.007.1 ', 'KOKAR LABANGKA ', 6.50, 6.10, 1.00, 'GTI', 3.00, 'B', 1.00, 'LS', 1.00, 'TA', 3.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (223, ' 42.118.015.0.3 ', 'SARITA II ', 6.50, 4.20, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (224, ' 42.121.013.0 ', 'SORI BOTE ', 6.50, 4.80, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (225, ' 42.122.002.0.1 ', 'SAKURU ', 6.50, 6.30, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'AT', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (226, ' 42.087.006.0 ', 'PANDANAN ', 6.50, 3.50, 1.00, 'PTI', 3.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (227, ' 42.087.007.0 ', 'TEMERANG ', 6.50, 7.10, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (228, ' 42.112.003.7.1 ', 'BATAN JUAT ', 6.50, 8.50, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (229, ' 42.112.057.0.2 ', 'BERINGIN ', 6.50, 6.50, 1.00, 'PTI', 2.00, 'B', 3.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (230, ' 42.112.058.0.2 ', 'KOKAR PELAS  ', 6.50, 6.70, 1.00, 'PTI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (231, ' 42.122.001.2.1 ', 'TENTE II ', 6.50, 6.20, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (232, ' 42.109.005.0 ', 'SEMONGKAT IV ', 6.70, 7.90, 1.00, 'ETI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (233, ' 42.052.006.1.1 ', 'KOLOH ', 6.70, 6.00, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (234, ' 42.112.006.0.1 ', 'KOKAR NEISA ', 6.80, 6.00, 1.00, 'ETI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (235, ' 42.112.008.0.2 ', 'AI TUMANG II ', 6.80, 6.70, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (236, ' 42.101.003.3 ', 'MENANGA BARIS V ', 6.90, 6.30, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (237, ' 42.101.004.6 ', 'LABU PANDAN ', 6.90, 6.20, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (238, ' 42.120.001.1 ', 'LAKEY I ', 6.90, 4.90, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (239, ' 42.120.025.0 ', 'TAHINAE I ', 6.90, 3.90, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (240, ' 42.123.015.0.3 ', 'RORE ', 6.90, 4.30, 1.00, 'GTI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (241, ' 42.123.028.0.3 ', 'BUGIS ', 7.00, 6.00, 2.00, 'BTI', 1.00, 'B', 1.00, 'LS', 2.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (242, ' 42.080.002.0 ', 'REMENING ', 7.00, 8.90, 1.00, 'ETI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (243, ' 42.112.064.0.2 ', 'PLARA I ', 7.00, 6.40, 1.00, 'ETI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (244, ' 42.080.001.5 ', 'KALI TENGAH II ', 7.00, 10.00, 1.00, 'GBI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (245, ' 42.063.003.0.11 ', 'PAGUTAN I ', 7.00, 9.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (246, ' 42.063.004.0.11 ', 'PAGUTAN II ', 7.00, 9.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (247, ' 42.107.005.0 ', 'BENETE III ', 7.00, 7.00, 1.00, 'GTI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 2.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (248, ' 42.121.004.0 ', 'SORI KANAHI ', 7.00, 4.20, 1.00, 'GTI', 3.00, 'B', 1.00, 'LS', 3.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (249, ' 42.112.024.0.2 ', 'BINONG III ', 7.00, 6.00, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (250, ' 42.078.001.0.11 ', 'GURU BANGKOL ', 7.10, 7.70, 1.00, 'GTI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (251, ' 42.088.004.0 ', 'BELONGAS II ', 7.10, 5.70, 1.00, 'GTI', 4.00, 'B', 1.00, 'LS', 3.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (252, ' 42.119.003.1 ', 'LEWI DEWA ', 7.10, 6.30, 1.00, 'GTI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (253, ' 42.119.003.6 ', 'LEWI NTANA ', 7.10, 6.20, 1.00, 'GTI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 2.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (254, ' 42.094.013.0 ', 'GRENG ', 7.20, 4.00, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (255, ' 42.058.004.0.11 ', 'SERAYE I ', 7.30, 7.10, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TB', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (256, ' 42.121.011.0 ', 'SORI APU ', 7.30, 7.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (257, ' 42.100.004.0 ', 'SETANGGOR I ', 7.40, 3.50, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (258, ' 42.107.009.0 ', 'SEKONGKANG II ', 7.50, 7.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (259, ' 42.112.017.0.1 ', 'POLA II ', 7.50, 6.50, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (260, ' 42.121.012.0 ', 'SORI BANTA I ', 7.50, 4.70, 1.00, 'GTI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (261, ' 42.121.014.0 ', 'SORI SANCARA ', 7.50, 4.70, 1.00, 'GTI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (262, ' 42.112.025.0.2 ', 'BINONG IV ', 7.50, 6.80, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (263, ' 42.112.014.0.2 ', 'LEDANG XII ', 7.70, 6.40, 1.00, 'ETI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (264, ' 42.068.001.0.11 ', 'TL. SAYANG ', 7.70, 6.30, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (265, ' 42.083.005.3 ', 'BABILE ', 7.70, 6.80, 1.00, 'GTI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (266, ' 42.094.011.0 ', 'KEDATU ', 7.80, 4.50, 1.00, 'ETI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (267, ' 42.058.003.0.11 ', 'PESONGORAN ', 7.80, 7.50, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (268, ' 42.121.010.0 ', 'KAMOSO ', 7.80, 4.50, 1.00, 'GTI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (269, ' 42.112.011.0.2 ', 'KEMANG KUNING ', 7.90, 7.00, 1.00, 'GTI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (270, ' 42.113.011.0 ', 'RANAN ', 8.00, 0.00, 4.00, 'BTI', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (271, ' 42.112.073.0.2 ', 'KESI ', 8.00, 6.00, 1.00, 'ETI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (272, ' 42.121.004.0 ', 'NIPA I ', 8.00, 6.30, 1.00, 'ETI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (273, ' 42.058.001.0.11 ', 'BERNYOK ', 8.00, 6.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (274, ' 42.083.006.0 ', 'LONGKANG ', 8.00, 4.70, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (275, ' 42.101.001.0 ', 'KOKOK SEPANG ', 8.00, 6.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (276, ' 42.107.010.0 ', 'SEKONGKANG III ', 8.00, 7.70, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (277, ' 42.112.031.0.2 ', 'MELUNG I ', 8.00, 6.00, 2.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (278, ' 42.112.032.0.2 ', 'MELUNG II ', 8.00, 6.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (279, ' 42.112.034.0.2 ', 'KOMAS II ', 8.00, 7.50, 2.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (280, ' 42.112.035.0.2 ', 'KOMAS III ', 8.00, 7.50, 1.00, 'GTI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 2.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (281, ' 42.112.052.0.2 ', 'AIR MIRA ', 8.00, 6.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (282, ' 42.119.004.0 ', 'BAJO ', 8.00, 6.00, 1.00, 'GTI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (283, ' 42.121.011.6 ', 'TUNDON  ', 8.00, 7.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (284, ' 42.121.001.0 ', 'SORI NDOLO ', 8.00, 4.40, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (285, ' 42.121.005.0 ', 'TALAGA ', 8.00, 4.30, 1.00, 'GTI', 3.00, 'B', 3.00, 'LS', 3.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (286, ' 42.123.010.0.2 ', 'RIMBA ', 8.00, 6.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (287, ' 42.123.023.0.3 ', 'MANGGE VI.1 ', 8.00, 4.50, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (288, ' 42.113.013.0 ', 'LELA MASE ', 8.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (289, ' 42.113.015.0 ', 'KELEBE ', 8.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (290, ' 42.113.017.0 ', 'JALET BRANG I ', 8.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (291, ' 42.113.007.0.1 ', 'SENDA ', 8.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (292, ' 42.113.009.0.1 ', 'SOSO\' BATU ', 8.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (293, ' 42.113.010.0.1 ', 'NOOK ', 8.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (294, ' 42.112.059.0.2 ', 'CADAS PISAK ', 8.10, 6.00, 1.00, 'ETI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (295, ' 42.086.002.0 ', 'BONGOR ', 8.10, 4.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (296, ' 42.112.071.0.2 ', 'PLAS I ', 8.10, 7.00, 1.00, 'GTI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (297, ' 42.117.007.0 ', 'NISA II ', 8.10, 6.80, 1.00, 'GTI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (298, ' 42.119.001.1 ', 'KENANGA II ', 8.10, 6.10, 1.00, 'GTI', 2.00, 'B', 1.00, 'LS', 2.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (299, ' 42.123.025.0.3 ', 'SUMI ', 8.10, 4.60, 1.00, 'GTI', 1.00, 'B', 2.00, 'LS', 3.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (300, ' 42.112.046.0.2 ', 'KOKAR WENA ', 8.10, 6.00, 1.00, 'PTI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 2.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (301, ' 42.112.030.0.2 ', 'TAWAR II ', 8.20, 6.60, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (302, ' 42.088.001.0 ', 'GUBUK BALI ', 8.40, 6.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'SU', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (303, ' 42.121.005.0 ', 'NIPA II ', 8.40, 6.00, 1.00, 'GTI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (304, ' 42.121.010.0 ', 'OI BOMBU ', 8.40, 4.80, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (305, ' 42.112.011.A.1 ', 'LITOK IIA ', 8.50, 4.00, 2.00, 'ETI', 2.00, 'B', 1.00, 'LS', 2.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (306, ' 42.112.055.0.2 ', 'GENTING I ', 8.50, 6.00, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (307, ' 42.123.023.0.3 ', 'MANGGE VI ', 8.50, 4.50, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (308, ' 42.112.015.0.2 ', 'LEDANG XIV ', 8.60, 6.40, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (309, ' 42.101.003.0 ', 'BATU SARUNG/M.BARIS II ', 8.70, 7.50, 1.00, 'ETI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (310, ' 42.101.003.2 ', 'MENANGA BARIS IV/GD. BARU ', 8.70, 6.40, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (311, ' 42.051.001.0.11 ', 'KALI NING ', 8.80, 7.70, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (312, ' 42.120.006.0 ', 'TANTE\'E ', 8.80, 4.70, 1.00, 'GTI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (313, ' 42.121.003.0.11 ', 'LELA ', 8.80, 6.00, 1.00, 'GTI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (314, ' 42.100.009.0 ', 'EMOT ', 8.90, 6.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (315, ' 42.091.011.0 ', 'MOYOT ', 9.00, 5.60, 2.00, 'ETI', 1.00, 'B', 2.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (316, ' 42.084.006.0 ', 'DS. BARU ', 9.00, 6.10, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (317, ' 42.111.003.0 ', 'Berare II ', 9.00, 4.00, 2.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (318, ' 42.112.012.1.1 ', 'LITOK IV ', 9.00, 7.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (319, ' 42.112.017.0.2 ', 'LEDANG XVI ', 9.00, 6.30, 1.00, 'GTI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (320, ' 42.121.013.0 ', 'SORI TENGGE ', 9.00, 4.20, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (321, ' 42.121.017.0 ', 'RABA WONTU ', 9.00, 4.20, 1.00, 'GTI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (322, ' 42.112.047.0.2 ', 'KENANGAS I ', 9.00, 6.00, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (323, ' 42.112.048.0.2 ', 'AIR TERJUN DARURAT ', 9.00, 5.50, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'LS', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (324, ' 42.121.025.0 ', 'SORI KOWO ', 9.10, 5.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (325, ' 42.122.004.0.1 ', 'NGGERU/DUNDU HEA ', 9.20, 6.50, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (326, ' 42.101.004.8 ', 'KALI BOKOR I ', 9.30, 6.40, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (327, ' 42.122.008.0.2 ', 'DANA ME\'E ', 9.40, 6.40, 1.00, 'GTI', 3.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (328, ' 42.122.006.0.1 ', 'DAE LAWARU ', 9.50, 6.30, 1.00, 'ETI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (329, ' 42.112.043.0.2 ', 'KOKAR LOBONG ', 9.50, 6.50, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (330, ' 42.101.008.0 ', 'KOKOK ANGET ', 9.80, 6.10, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (331, ' 42.112.011.B.1 ', 'LITOK IIB ', 9.80, 6.10, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (332, ' 42.121.007.0 ', 'SORI PETO ', 9.80, 4.70, 1.00, 'GTI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (333, ' 42.112.020.0.2 ', 'LEDANG XIX ', 9.90, 6.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (334, ' 42.087.006.5 ', 'LABU PETUNG I ', 10.00, 6.00, 2.00, 'ETI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (335, ' 42.082.004.0 ', 'EYAT MAYUNG ', 10.00, 10.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (336, ' 42.089.001.0 ', 'EYAT RUJAK ', 10.00, 6.00, 1.00, 'GTI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (337, ' 42.101.012.0 ', 'TENAU/BUNUT LEMPENG ', 10.00, 6.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (338, ' 42.101.010.0 ', 'SANDONGAN/KAHWA ', 10.00, 6.50, 1.00, 'GTI', 1.00, 'B', 2.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (339, ' 42.107.022.0 ', 'AIK GOAH I ', 10.00, 6.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (340, ' 42.108.052.1 ', 'TELONANG III ', 10.00, 6.00, 1.00, 'GTI', 2.00, 'B', 2.00, 'LS', 1.00, 'TA', 2.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (341, ' 42.108.056.0 ', 'BOIN JATI ', 10.00, 6.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 2.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (342, ' 42.108.061.0 ', 'MUMIL I ', 10.00, 6.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'SU', 1.00, 'T', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (343, ' 42.108.067.0 ', 'PETANI I ', 10.00, 6.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'SU', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (344, ' 42.110.001.0 ', 'RABERAS I ', 10.00, 6.30, 1.00, 'GTI', 1.00, 'B', 1.00, 'SU', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (345, ' 42.112.015.0.1 ', 'KOKAR ALI ', 10.00, 6.00, 1.00, 'GTI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (346, ' 42.112.016.0.1 ', 'KOKAR BALISU ', 10.00, 7.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (347, ' 42.116.066.0.1 ', 'SORI JATI II ', 10.00, 6.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (348, ' 42.118.021.0.3 ', 'SORI LIA ', 10.00, 4.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (349, ' 42.119.003.0 ', 'OIWONTU ', 10.00, 7.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (350, ' 42.121.002.0 ', 'SORI KELI ', 10.00, 5.40, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (351, ' 42.120.023.0 ', 'LERE IV ', 10.00, 4.50, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (352, ' 42.123.026.0.3 ', 'SUMI ', 10.00, 6.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'SU', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (353, ' 42.112.076.0.2 ', 'BOMONG ', 10.00, 6.50, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (354, ' 42.107.043.0 ', 'TATAR I ', 10.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (355, ' 42.108.060.0 ', 'TEBIL II ', 10.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (356, ' 42.113.019.0 ', 'JALET SELEBUK I ', 10.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (357, ' 42.113.008.0.1 ', 'PARALENG ', 10.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (358, ' 42.113.023.0.2 ', 'BRANG LEPU II ', 10.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (359, ' 42.113.037.0.2 ', 'BRANG BETINGGAL III ', 10.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (360, ' 42.113.052.0.2 ', 'KOKAR TAMPAR PISAK I ', 10.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (361, ' 42.113.053.0.2 ', 'KOKAR TAMPAR PISAK II ', 10.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (362, ' 42.113.063.0.2 ', 'BRANG TAMPAR DALAM III ', 10.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (363, ' 42.113.071.0.2 ', 'KOKAR ODE I ', 10.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (364, ' 42.113.074.0.2 ', 'KOKAR ODE IV ', 10.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (365, ' 42.113.079.0.2 ', 'KOKAR BATU BOLONG II ', 10.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (366, ' 42.113.081.0.2 ', 'KOKAR BATU BOLONG IV ', 10.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (367, ' 42.113.083.0.2 ', 'KOKAR ODEK II ', 10.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (368, ' 42.113.084.0.2 ', 'KOKAR ODEK III ', 10.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (369, ' 42.113.085.0.2 ', 'KOKAR ODEK IV ', 10.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (370, ' 42.113.088.0.2 ', 'KOKAR KAJAH II ', 10.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (371, ' 42.113.090.0.2 ', 'KOKAR IPIL ', 10.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (372, ' 42.113.097.0.2 ', 'KOKAR TERO I ', 10.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (373, ' 42.113.099.0.2 ', 'KOKAR MEJO ', 10.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (374, ' 42.118.025.0.3 ', 'SORI SOWA ', 10.00, 5.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (375, ' 42.118.026.0.3 ', 'SORI WONTU I ', 10.00, 5.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (376, ' 42.118.032.0.3 ', 'SORI LAMBE ', 10.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (377, ' 42.121.001.0.11 ', 'RANGGO  I ', 10.10, 4.70, 2.00, 'BTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (378, ' 42.121.014.0 ', 'SORI NANGA NAE ', 10.10, 4.70, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (379, ' 42.123.002.0.1 ', 'LAJU ', 10.10, 4.70, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (380, ' 42.117.006.0 ', 'NISA I ', 10.10, 6.30, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (381, ' 42.118.016.0.3 ', 'SARITA III ', 10.20, 4.30, 1.00, 'GTI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (382, ' 42.118.022.0.3 ', 'MORI ', 10.20, 4.70, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (383, ' 42.101.024.0 ', 'KOKO KEMANGI ', 10.30, 6.50, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (384, ' 42.107.008.0 ', 'SEKONGKANG I ', 10.50, 8.00, 1.00, 'GTI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 2.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (385, ' 42.120.002.1 ', 'LAKEY II ', 10.50, 4.80, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (386, ' 42.120.004.0 ', 'WADU NAE ', 10.50, 4.80, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (387, ' 42.121.007.0 ', 'AMBALAWI ', 10.50, 5.00, 1.00, 'GTI', 3.00, 'B', 1.00, 'LS', 1.00, 'TA', 2.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (388, ' 42.092.002.0.2 ', 'DASAN LEKONG ', 10.50, 9.40, 1.00, 'MBI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (389, ' 42.112.056.0.2 ', 'SAMPANG I ', 10.50, 6.50, 1.00, 'PTI', 3.00, 'B', 1.00, 'LS', 1.00, 'TA', 2.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (390, ' 42.112.001.B.1 ', 'BRANG BOAK B ', 10.60, 4.60, 2.00, 'ETI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (391, ' 42.116.065.0.1 ', 'SORI JATI I ', 10.60, 5.30, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (392, ' 42.100.007.0 ', 'MENGKONENG ', 10.70, 6.20, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (393, ' 42.109.003.0 ', 'SEMONGKAT II ', 10.70, 6.30, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (394, ' 42.120.005.0 ', 'SUPA ', 10.70, 4.70, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (395, ' 42.101.017.0 ', 'OBEL - OBEL ', 10.80, 6.30, 1.00, 'GTI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (396, ' 42.118.003.0.1 ', 'SORI LO ', 10.80, 6.40, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (397, ' 42.101.004.0 ', 'BELANTING ', 10.90, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (398, ' 42.082.005.0 ', 'JELANTIK II ', 11.00, 8.20, 1.00, 'GTI', 1.00, 'K', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (399, ' 42.108.072.0 ', 'BENDUNGAN ', 11.00, 6.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'SU', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (400, ' 42.115.008.0 ', 'LABANGKA II ', 11.00, 6.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (401, ' 42.122.003.0.1 ', 'SORI UMA ', 11.10, 6.40, 1.00, 'ETI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (402, ' 42.087.005.2 ', 'GILI NANGU ', 11.10, 6.60, 2.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (403, ' 42.101.018.0 ', 'LOKOK BELEK ', 11.30, 6.40, 1.00, 'GTI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (404, ' 42.125.001.0.11 ', 'KAWINDA ', 11.50, 5.60, 3.00, 'ETI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (405, ' 42.101.002.0 ', 'NANGKA I ', 11.50, 6.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (406, ' 42.101.003.0 ', 'NANGKA II ', 11.50, 6.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (407, ' 42.090.008.0 ', 'SERAPAN ', 11.60, 4.40, 3.00, 'ETI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (408, ' 42.058.002.0.11 ', 'TL. TENGAH ', 11.60, 6.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (409, ' 42.063.002.0.11 ', 'PESONGORAN ', 11.80, 8.50, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (410, ' 42.117.005.0 ', 'MPOLO ', 11.90, 6.20, 1.00, 'GTI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (411, ' 42.119.001.0 ', 'KENANGA I ', 11.90, 6.20, 1.00, 'GTI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (412, ' 42.087.002.B ', 'JELATENG B ', 12.00, 6.00, 1.00, 'GTI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (413, ' 42.101.002.0 ', 'POAK/MENANGA BARIS I ', 12.00, 6.50, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (414, ' 42.107.034.0 ', 'TABISU II ', 12.00, 6.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (415, ' 42.121.002.0.11 ', 'JATIWANGI ', 12.00, 5.50, 1.00, 'GTI', 3.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (416, ' 42.121.006.0 ', 'SORI WUWU ', 12.00, 7.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (417, ' 42.113.020.0 ', 'JALET SELEBUK II ', 12.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (418, ' 42.118.024.0.3 ', 'DIWU JARA ', 12.00, 5.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (419, ' 42.082.006.0 ', 'PUYUNG ', 12.10, 7.60, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (420, ' 42.118.018.0.3 ', 'SORI PUNTI ', 12.10, 6.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (421, ' 42.123.027.0.3 ', 'SORO II ', 12.10, 6.40, 1.00, 'GTI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (422, ' 42.083.002.0 ', 'KELEBUH ', 12.20, 6.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (423, ' 42.118.020.0.3 ', 'NOTI II ', 12.30, 4.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (424, ' 42.121.008.0 ', 'SORI MAWU ', 12.30, 5.20, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (425, ' 42.098.001.0.11 ', 'JURING ', 12.40, 7.40, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (426, ' 42.087.005.0 ', 'CEPING ', 12.50, 6.20, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (427, ' 42.087.008.0 ', 'TEMBOWONG ', 12.50, 4.10, 1.00, 'GTI', 3.00, 'B', 3.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (428, ' 42.108.066.0 ', 'TELANG/LIANG BAGIK ', 12.50, 6.50, 1.00, 'GTI', 1.00, 'B', 1.00, 'SU', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (429, ' 42.108.068.0 ', 'PETANI II/LIANG BUK ', 12.50, 6.50, 1.00, 'GTI', 1.00, 'B', 1.00, 'SU', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (430, ' 42.108.069.0 ', 'MOLONG ', 12.50, 6.50, 1.00, 'GTI', 1.00, 'B', 1.00, 'SU', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (431, ' 42.101.007.0 ', 'TIBU BELO ', 12.60, 6.30, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (432, ' 42.119.002.0 ', 'NGGEMBE ', 12.60, 6.20, 1.00, 'GTI', 2.00, 'B', 1.00, 'LS', 2.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (433, ' 42.118.002.0.1 ', 'MBUJU ', 12.70, 6.40, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (434, ' 42.094.009.0 ', 'DS. BAGIK ', 12.80, 4.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (435, ' 42.120.008.0 ', 'NANGA DORO II ', 12.80, 5.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (436, ' 42.100.008.0 ', 'TEBEK ', 12.90, 6.10, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (437, ' 42.115.004.0 ', 'UNTIR RENGA ', 12.90, 6.30, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (438, ' 42.082.002.0 ', 'PAKU KELING ', 13.00, 13.50, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (439, ' 42.088.008.0 ', 'BENGKANG ', 13.00, 4.10, 1.00, 'GTI', 3.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (440, ' 42.123.004.0.2 ', 'DORO O\'O II ', 13.00, 4.50, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (441, ' 42.126.002.0.11 ', 'SADIA ', 13.10, 8.50, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (442, ' 42.088.003.0 ', 'BELONGAS I ', 13.20, 6.30, 1.00, 'GBI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (443, ' 42.052.003.0.1 ', 'MEDAS ', 13.20, 6.70, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (444, ' 42.083.008.0 ', 'TIBUBELO ', 13.20, 7.60, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (445, ' 42.084.005.0 ', 'MENANGA PAOK ', 13.60, 5.30, 1.00, 'GTI', 1.00, 'B', 0.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (446, ' 42.112.002.0.2 ', 'LEDANG II (BALEMAN) ', 13.70, 6.40, 2.00, 'ETI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (447, ' 42.112.001.A.1 ', 'BRANG BOAK A ', 13.80, 6.50, 1.00, 'GTI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (448, ' 42.112.012.8.1 ', 'PEN BONYO ', 13.80, 6.40, 1.00, 'GTI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (449, ' 42.087.004.0 ', 'ELAK JURING ', 14.00, 6.50, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (450, ' 42.123.005.0.2 ', 'DORO O\'O III ', 14.10, 5.00, 3.00, 'BTI', 1.00, 'B', 0.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (451, ' 42.063.001.0.11 ', 'BUNGKARNO ', 14.20, 14.50, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TB', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (452, ' 42.112.009.0.1 ', 'UMA LANGKE ', 14.30, 6.30, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (453, ' 42.112.002.B.1 ', 'KOKAR KATOMPO B ', 14.50, 3.60, 2.00, 'ETI', 2.00, 'B', 1.00, 'LS', 3.00, 'TA', 2.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (454, ' 42.122.009.0.2 ', 'PARADO ', 14.50, 6.50, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (455, ' 42.080.003.0 ', 'DATAR ', 14.50, 10.50, 1.00, 'MBI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (456, ' 42.118.014.0.3 ', 'SARITA I ', 14.60, 3.90, 3.00, 'PTI', 3.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (457, ' 42.065.001.0.11 ', 'Abian Tubuh II ', 14.70, 13.70, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (458, ' 42.120.003.0 ', 'NCANGA ', 14.80, 4.70, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (459, ' 42.107.007.0 ', 'MALUK II ', 14.90, 6.50, 1.00, 'GTI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (460, ' 42.101.021.0 ', 'KALI POAK ', 15.00, 6.20, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (461, ' 42.108.050.0 ', 'MONE II ', 15.00, 6.00, 1.00, 'GTI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 2.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (462, ' 42.108.054.0 ', 'BINTUNG ', 15.00, 6.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (463, ' 42.108.057.0 ', 'BLENGKON/SINGKUK ', 15.00, 6.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (464, ' 42.108.063.0 ', 'MELAP/MENANGA KERIKIT ', 15.00, 6.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'SU', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (465, ' 42.108.065.0 ', 'AIK MAT ', 15.00, 6.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'SU', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (466, ' 42.121.012.1 ', 'SORI BANTA II ', 15.00, 4.80, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (467, ' 42.121.008.0 ', 'OI POU ', 15.00, 4.00, 4.00, 'PTI', 3.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (468, ' 42.107.030.8 ', 'TANAMAN III ', 15.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (469, ' 42.107.044.0 ', 'TATAR II ', 15.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (470, ' 42.108.055.0 ', 'TATAR ', 15.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (471, ' 42.108.058.0 ', 'GRANTA/TEBIL ', 15.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (472, ' 42.113.022.0 ', 'TIU BARU ', 15.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (473, ' 42.113.036.0.2 ', 'BRANG BETINGGAL II ', 15.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (474, ' 42.113.062.0.2 ', 'BRANG TAMPAR DALAM II ', 15.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (475, ' 42.113.078.0.2 ', 'KOKAR BATU BOLONG I ', 15.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (476, ' 42.113.089.0.2 ', 'KOKAR KAJAH III ', 15.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (477, ' 42.120.016.0 ', 'S A M A I ', 15.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (478, ' 42.116.075.0.1 ', 'DOROMBOLO IV/KAWINDA X ', 15.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (479, ' 42.116.077.0.1 ', 'DOROMBOLO VI/KAWINDA ', 15.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (480, ' 42.116.078.0.1 ', 'DOROMBOLO VII/KAWINDA ', 15.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (481, ' 42.116.080.0.1 ', 'OI MORI II ', 15.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (482, ' 42.116.082.0.1 ', 'KAWINDA ', 15.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (483, ' 42.116.084.0.2 ', 'PIONG I/PIONG VI ', 15.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (484, ' 42.116.090.0.2 ', 'PIONG VII/PIONG IB ', 15.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (485, ' 42.116.091.0.2 ', 'PIONG VIII/PIONG IA ', 15.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (486, ' 42.118.011.0.2 ', 'SAMPUNGU I ', 15.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (487, ' 42.118.029.0.3 ', 'SORI WONTU IV ', 15.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (488, ' 42.101.011.0 ', 'AIR SINTU ', 15.10, 6.30, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (489, ' 42.107.030.4 ', 'TANAMAN II ', 15.10, 6.50, 1.00, 'GTI', 3.00, 'B', 1.00, 'SU', 1.00, 'TA', 3.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (490, ' 42.101.005.0 ', 'SAMBELIA ', 15.20, 8.20, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (491, ' 42.107.023.0 ', 'AIK GOAH II ', 15.30, 6.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'SU', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (492, ' 42.120.020.0 ', 'LERE I ', 15.50, 4.70, 1.00, 'GTI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (493, ' 42.115.006.0 ', 'LABANGKA I ', 15.60, 6.50, 2.00, 'BTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (494, ' 42.115.003.0 ', 'PRUAK NELOKA ', 15.60, 6.30, 1.00, 'GTI', 3.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (495, ' 42.101.005.0 ', 'KALI BOKOR II ', 15.70, 6.30, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (496, ' 42.101.011.0 ', 'DAMB. KL. PASIRAN I ', 15.70, 6.30, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (497, ' 42.100.010.0 ', 'RATI ', 15.80, 4.10, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (498, ' 42.101.013.0 ', 'KALI MELEMPO ', 15.80, 6.50, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (499, ' 42.084.003.0 ', 'KOANG WAI ', 15.80, 5.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TB', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (500, ' 42.115.005.0 ', 'BRANG BARU ', 15.80, 6.30, 1.00, 'GTI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (501, ' 42.116.071.0.1 ', 'DOROMBOLO ', 15.80, 6.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'SU', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (502, ' 42.094.012.0 ', 'SONGGEN ', 15.90, 6.20, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (503, ' 42.083.001.0 ', 'GERANTUNG ', 16.00, 7.80, 3.00, 'ETI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (504, ' 42.120.026.0 ', 'TAHINAE II ', 16.00, 4.50, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (505, ' 42.120.029.0 ', 'TANAH AWU II ', 16.00, 4.50, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (506, ' 42.112.003.A.1 ', 'KOKAR LESANG A ', 16.20, 4.00, 2.00, 'ETI', 2.00, 'B', 1.00, 'LS', 2.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (507, ' 42.085.001.0 ', 'TIMBE DEWE ', 16.20, 6.20, 1.00, 'GTI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (508, ' 42.094.010.0 ', 'SANGGAR ', 16.20, 4.30, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (509, ' 42.112.004.0.1 ', 'KOKAR BALAI AIR ', 16.50, 7.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (510, ' 42.123.012.0.3 ', 'SORI MANGO ', 16.50, 6.50, 2.00, 'GTI', 1.00, 'B', 1.00, 'LS', 2.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (511, ' 42.101.001.0 ', 'GUMBANG ', 16.60, 7.90, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (512, ' 42.052.005.0.1 ', 'BENTEK ', 16.70, 7.60, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (513, ' 42.082.001.0 ', 'PLOWOK ', 16.70, 8.40, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (514, ' 42.112.002.A.1 ', 'KOKAR KATOMPO A ', 16.80, 7.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (515, ' 42.112.007.0.1 ', 'UMA BELO ', 16.90, 6.20, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (516, ' 42.116.074.0.1 ', 'DOROMBOLO III/KAWINDA ', 17.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (517, ' 42.118.027.0.3 ', 'SORI WONTU II ', 17.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (518, ' 42.069.001.B.11 ', 'BATU DAWE B ', 17.40, 6.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'SU', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (519, ' 42.101.009.0 ', 'KOKOK PANSOR ', 17.50, 6.30, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (520, ' 42.082.008.0.11 ', 'KOKOK DESA ', 17.70, 7.20, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (521, ' 42.098.002.0.12 ', 'BONDER ', 17.90, 5.90, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (522, ' 42.109.006.0 ', 'SETANGO ', 18.00, 6.40, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (523, ' 42.113.016.0 ', 'SELAMPONG ', 18.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (524, ' 42.113.021.0 ', 'LAMPUI I ', 18.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (525, ' 42.112.003.B.1 ', 'KOKAR LESANG B ', 18.70, 6.20, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (526, ' 42.112.013.0.2 ', 'LEDANG XI ', 19.10, 6.40, 1.00, 'GBI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (527, ' 42.066.002.0.11 ', 'SAYANG - SAYANG ', 19.60, 6.50, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (528, ' 42.098.001.0.12 ', 'SADE ', 19.60, 7.60, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (529, ' 42.121.015.0 ', 'TOLO MILA ', 19.70, 4.70, 2.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (530, ' 42.112.063.0.2 ', 'RONTONG II ', 19.80, 6.70, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (531, ' 42.108.071.0 ', 'KALBIR ', 20.00, 6.00, 1.00, 'GBJ', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (532, ' 42.091.010.0 ', 'RAMBANG ', 20.00, 8.70, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (533, ' 42.092.001.0.1 ', 'TOJANG ', 20.00, 8.10, 1.00, 'GTI', 2.00, 'B', 2.00, 'LS', 1.00, 'TA', 2.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (534, ' 42.107.024.0 ', 'AIK BETAK I ', 20.00, 6.30, 1.00, 'GTI', 2.00, 'B', 1.00, 'SU', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (535, ' 42.107.025.0 ', 'AIK BETAK II ', 20.00, 6.50, 1.00, 'GTI', 1.00, 'B', 1.00, 'SU', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (536, ' 42.121.012.0 ', 'SORI MANGO ', 20.00, 7.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (537, ' 42.107.031.0 ', 'PUNA I ', 20.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (538, ' 42.107.045.0 ', 'TATAR III ', 20.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (539, ' 42.108.059.0 ', 'TEBIL I ', 20.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (540, ' 42.113.012.0 ', 'LABANGKAR ', 20.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (541, ' 42.113.014.0 ', 'PAMULEN ', 20.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (542, ' 42.113.023.0.2 ', 'KOKAR LABANGKA 3 ', 20.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (543, ' 42.113.023.0.2 ', 'BRANG LEPU I ', 20.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (544, ' 42.113.029.0.2 ', 'KOKAR TAMPAR ODE II ', 20.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (545, ' 42.113.032.0.2 ', 'KOKAR JORENG I ', 20.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (546, ' 42.113.033.0.2 ', 'KOKAR JORENG II ', 20.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (547, ' 42.113.034.0.2 ', 'KOKAR JORENG II ', 20.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (548, ' 42.113.042.0.2 ', 'BRANG TAMPAR BAGIK II ', 20.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (549, ' 42.113.047.0.2 ', 'KOKAR AI PANAN ', 20.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (550, ' 42.113.048.0.2 ', 'KOKAR JUNG RUSAK I ', 20.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (551, ' 42.113.049.0.2 ', 'KOKAR JUNG RUSAK II ', 20.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (552, ' 42.113.050.0.2 ', 'KOKAR BARU I ', 20.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (553, ' 42.113.056.0.2 ', 'KOKAR BATU ANAR II ', 20.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (554, ' 42.113.059.0.2 ', 'KOKAR TAKAT REAK I ', 20.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (555, ' 42.113.080.0.2 ', 'KOKAR BATU BOLONG III ', 20.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (556, ' 42.113.087.0.2 ', 'KOKAR KAJAH I ', 20.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (557, ' 42.113.096.0.2 ', 'BRANG GELUMPANG II ', 20.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (558, ' 42.113.098.0.2 ', 'KOKAR TERO II ', 20.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (559, ' 42.113.100.0.2 ', 'KOKAR TERO III ', 20.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (560, ' 42.113.101.0.2 ', 'KOKAR IMO ', 20.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (561, ' 42.116.079.0.1 ', 'OI MORI I ', 20.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (562, ' 42.116.081.0.1 ', 'OI MORI III ', 20.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (563, ' 42.116.083.0.2 ', 'OI KETUPA ', 20.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (564, ' 42.116.085.0.2 ', 'PIONG II/PIONG V ', 20.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (565, ' 42.116.088.0.2 ', 'PIONG V/PIONG II ', 20.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (566, ' 42.118.008.0.2 ', 'SORI LUMBA ', 20.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (567, ' 42.118.028.0.3 ', 'SORI WONTU III ', 20.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (568, ' 42.125.002.0.11 ', 'SALO ', 20.10, 6.20, 4.00, 'BTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (569, ' 42.123.008.0.2 ', 'KONCA ', 20.30, 4.20, 2.00, 'GTI', 1.00, 'B', 2.00, 'LS', 3.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (570, ' 42.121.009.0 ', 'NANGA NDAWA ', 20.40, 6.00, 1.00, 'GBA', 1.00, 'B', 1.00, 'SU', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (571, ' 42.103.002.0 ', 'ORONG SEMAYE ', 20.60, 4.60, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (572, ' 42.122.007.0.2 ', 'SORI KARA  ', 20.60, 7.20, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (573, ' 42.103.003.0 ', 'ORONG SEBAU ', 20.70, 4.40, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (574, ' 42.115.007.0 ', 'MATA GELUNING ', 20.80, 6.00, 1.00, 'GTI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (575, ' 42.107.012.0 ', 'SINYUR I ', 20.90, 6.00, 1.00, 'GBL', 1.00, 'B', 1.00, 'SU', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (576, ' 42.069.001.A.11 ', 'BATU DAWE A ', 21.00, 6.00, 1.00, 'GBA', 1.00, 'B', 1.00, 'SU', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (577, ' 42.123.001.0.1 ', 'SIMPASAI ', 21.40, 6.00, 2.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (578, ' 42.110.002.0 ', 'RABERAS II ', 21.50, 6.20, 1.00, 'GTI', 1.00, 'B', 1.00, 'SU', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (579, ' 42.107.032.3 ', 'PUNA III ', 22.00, 6.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (580, ' 42.116.070.0.1 ', 'LABU BILI ', 22.00, 5.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (581, ' 42.090.007.0 ', 'SAGIK MATENG ', 22.30, 3.00, 3.00, 'ETI', 2.00, 'B', 3.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (582, ' 42.083.005.0 ', 'GANTI ', 23.40, 7.50, 2.00, 'GTI', 1.00, 'B', 2.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (583, ' 42.101.015.0 ', 'MENTERENG ', 23.40, 6.30, 2.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (584, ' 42.084.001.0 ', 'KEDOME ', 23.70, 6.00, 4.00, 'BTI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (585, ' 42.072.001.0.12 ', 'BATU DAWE ', 24.00, 7.20, 2.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (586, ' 42.121.006.0 ', 'TOLOLAI ', 24.00, 6.00, 2.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (587, ' 42.121.026.0 ', 'SORI NAE ', 24.00, 4.50, 2.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (588, ' 42.122.001.0.1 ', 'TENTE I ', 24.00, 7.90, 2.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (589, ' 42.126.003.0.11 ', 'SAMBI NAE ', 24.40, 12.20, 2.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (590, ' 42.101.004.3 ', 'SENGKURIK ', 25.00, 6.00, 5.00, 'BTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (591, ' 42.112.077.0.2 ', 'LUNYUK ', 25.00, 7.00, 1.00, 'ETI', 3.00, 'B', 1.00, 'SU', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (592, ' 42.074.001.0.11 ', 'KARANG SUKUN ', 25.00, 7.00, 1.00, 'GBA', 1.00, 'B', 1.00, 'SU', 1.00, 'SU', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (593, ' 42.082.009.0.11 ', 'SURABAYA ', 25.00, 6.30, 2.00, 'GBI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (594, ' 42.101.004.0 ', 'KURUBIAN ', 25.00, 6.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'SU', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (595, ' 42.107.030.0 ', 'TANAMAN I ', 25.00, 6.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (596, ' 42.107.033.0 ', 'TABISU ', 25.00, 6.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (597, ' 42.107.035.0 ', 'TABISU III ', 25.00, 6.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (598, ' 42.107.036.0 ', 'TABISU IV ', 25.00, 6.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (599, ' 42.107.037.0 ', 'TABISU V ', 25.00, 6.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (600, ' 42.107.039.0 ', 'AIK KERU I ', 25.00, 6.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (601, ' 42.107.040.0 ', 'AIK KERU II ', 25.00, 6.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (602, ' 42.108.049.0 ', 'MONE I ', 25.00, 6.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (603, ' 42.118.004.0.1 ', 'ENCA I ', 25.00, 7.00, 1.00, 'GTI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (604, ' 42.108.047.0 ', 'TERENG BODO ', 25.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (605, ' 42.108.052.0 ', 'TELONANG II ', 25.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (606, ' 42.113.030.0.2 ', 'KOKAR TAMPAR ODE II ', 25.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (607, ' 42.113.031.0.2 ', 'KOKAR TAMPAR ODE III ', 25.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (608, ' 42.113.044.0.2 ', 'KOKAR AIK MUMIL II ', 25.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (609, ' 42.113.058.0.2 ', 'KOKAR BURUK ', 25.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (610, ' 42.113.086.0.2 ', 'KOKAR RUKU ', 25.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (611, ' 42.113.093.0.2 ', 'KOKAR SEKADUNG I ', 25.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (612, ' 42.113.094.0.2 ', 'KOKAR SEKADUNG II ', 25.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (613, ' 42.120.015.0 ', 'L A M E A  ', 25.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (614, ' 42.120.018.0 ', 'SADIDI RANGGE I ', 25.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (615, ' 42.120.019.0 ', 'SADIDI RANGGE II ', 25.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (616, ' 42.116.086.0.2 ', 'PIONG III/PIONG IV ', 25.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (617, ' 42.116.087.0.2 ', 'PIONG IV/PIONG III ', 25.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (618, ' 42.118.009.0.2 ', 'SORI LAMPIUL ', 25.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (619, ' 42.118.034.0.3 ', 'SORI ENGGOSE ', 25.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (620, ' 42.118.035.0.3 ', 'SORI PONTE ', 25.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (621, ' 42.112.042.0.2 ', 'LIAN (MALAKE) ', 25.30, 6.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (622, ' 42.121.001.0 ', 'SORI KALELI ', 25.40, 6.00, 1.00, 'GBA', 1.00, 'B', 1.00, 'SU', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (623, ' 42.107.017.0 ', 'SINUR VI/BATU REA ', 25.40, 6.00, 1.00, 'GBL', 1.00, 'B', 1.00, 'LS', 1.00, 'T', 2.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (624, ' 42.113.004.0.1 ', 'NANGA POLA ', 25.50, 6.10, 1.00, 'GBL', 3.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (625, ' 42.083.003.0 ', 'MUJUR II ', 25.50, 7.00, 3.00, 'GTI', 2.00, 'B', 1.00, 'LS', 2.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (626, ' 42.116.068.0.1 ', 'KAWINDA NAE ', 25.60, 6.20, 1.00, 'GBL', 3.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (627, ' 42.116.069.0.1 ', 'SORI PANIHI ', 25.60, 6.20, 1.00, 'GBL', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (628, ' 42.115.009.0 ', 'SEKOKAT ', 25.60, 4.60, 1.00, 'GTI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (629, ' 42.057.001.B.11 ', 'PUNIA B ', 27.00, 4.60, 2.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (630, ' 42.083.007.0 ', 'PEMENDEM ', 27.40, 6.30, 2.00, 'GTI', 1.00, 'B', 2.00, 'LS', 1.00, 'TA', 2.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (631, ' 42.101.004.5 ', 'TIBU BOROK ', 27.50, 6.50, 5.00, 'BTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (632, ' 42.052.006.0.1 ', 'MENGGALA ', 27.50, 6.00, 2.00, 'GTI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (633, ' 42.120.027.0 ', 'TAHINAE III ', 28.00, 4.50, 2.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (634, ' 42.082.003.0 ', 'MENINTING AIK ', 28.90, 12.10, 1.00, 'GBA', 1.00, 'B', 1.00, 'SU', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (635, ' 42.093.002.0 ', 'PAOK PAMPANG ', 29.60, 7.30, 2.00, 'GTI', 2.00, 'B', 1.00, 'SU', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (636, ' 42.085.003.0 ', 'KORLEKO ', 29.80, 4.00, 9.00, 'PTI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (637, ' 42.108.053.0 ', 'SEPANG ', 30.00, 6.00, 1.00, 'GBJ', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (638, ' 42.108.064.0 ', 'LAMAR ', 30.00, 6.00, 1.00, 'GBJ', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (639, ' 42.108.070.0 ', 'EMANG ', 30.00, 6.00, 1.00, 'GBJ', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (640, ' 42.052.004.0.1 ', 'EYAT KEPOR ', 30.00, 6.00, 1.00, 'GBL', 2.00, 'B', 1.00, 'SU', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (641, ' 42.101.006.0 ', 'KALI PAKENDANGAN ', 30.00, 6.00, 1.00, 'GBL', 2.00, 'B', 1.00, 'SU', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (642, ' 42.091.012.0 ', 'MARONGGEK ', 30.00, 4.70, 2.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (643, ' 42.107.028.0 ', 'TABIUNG ', 30.00, 6.00, 1.00, 'GTI', 2.00, 'B', 1.00, 'SU', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (644, ' 42.120.010.0 ', 'MATITI ', 30.00, 7.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (645, ' 42.116.067.0.1 ', 'SORI BURA  ', 30.00, 6.00, 2.00, 'GTI', 1.00, 'B', 1.00, 'SU', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (646, ' 42.113.006.0.1 ', 'BIAU ', 30.00, 6.00, 1.00, 'RBR', 1.00, 'B', 1.00, 'SU', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (647, ' 42.120.009.0 ', 'NANGA DORO III ', 30.00, 7.00, 1.00, 'RBR', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (648, ' 42.120.014.0 ', 'TEROLULU III ', 30.00, 7.00, 1.00, 'RBR', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (649, ' 42.116.064.0.1 ', 'LB. KENANGA ', 30.00, 3.10, 1.00, 'RBR', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (650, ' 42.120.030.0 ', 'TANAH AWU III ', 30.00, 4.20, 1.00, 'RBS', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (651, ' 42.107.041.0 ', 'AIK KERU III ', 30.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (652, ' 42.108.062.0 ', 'MUMIL II ', 30.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (653, ' 42.113.018.0 ', 'JALET BRANG II ', 30.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (654, ' 42.120.012.0 ', 'TEROLULU I ', 30.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (655, ' 42.120.013.0 ', 'TEROLULU II ', 30.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (656, ' 42.120.017.0 ', 'S A M A II ', 30.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (657, ' 42.116.072.0.1 ', 'DOROMBOLO I/KAWINDA ', 30.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (658, ' 42.116.073.0.1 ', 'DOROMBOLO II/KAWINDA V ', 30.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (659, ' 42.118.033.0.3 ', 'SORI LUPUS ', 30.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (660, ' 42.107.011.0 ', 'SEKONGKANG IV ', 30.20, 4.10, 1.00, 'RBS', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 2.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (661, ' 42.112.010.0.1 ', 'KOKAR KASIO ', 30.30, 6.00, 1.00, 'GBA', 2.00, 'B', 1.00, 'SU', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (662, ' 42.107.029.0 ', 'BRUNUT ', 30.30, 6.10, 2.00, 'GTI', 3.00, 'B', 1.00, 'SU', 1.00, 'TA', 2.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (663, ' 42.090.002.0 ', 'AWANG ', 30.30, 4.10, 1.00, 'RBS', 2.00, 'B', 1.00, 'SU', 1.00, 'KA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (664, ' 42.090.003.0 ', 'PERAS ', 30.30, 4.10, 1.00, 'RBS', 2.00, 'B', 1.00, 'SU', 1.00, 'KA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (665, ' 42.121.003.0 ', 'AMADAREHO ', 30.50, 6.10, 1.00, 'GBA', 1.00, 'B', 1.00, 'TP', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (666, ' 42.118.001.0.1 ', 'KAMBU ', 30.50, 6.00, 1.00, 'RBB', 2.00, 'B', 1.00, 'TP', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (667, ' 42.113.002.0.1 ', 'LABANGKA IV ', 30.50, 4.20, 1.00, 'RBS', 3.00, 'B', 1.00, 'SU', 1.00, 'K', 3.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (668, ' 42.113.003.0.1 ', 'LABANGKA V ', 30.50, 4.20, 1.00, 'RBS', 3.00, 'B', 1.00, 'SU', 1.00, 'K', 3.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (669, ' 42.120.024.0 ', 'LERE V ', 30.50, 4.20, 1.00, 'RBS', 3.00, 'B', 1.00, 'LS', 1.00, 'K', 3.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (670, ' 42.057.001.A.11 ', 'PUNIA A ', 31.00, 6.00, 1.00, 'GBJ', 1.00, 'B', 1.00, 'SU', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (671, ' 42.052.001.0.11 ', 'Midang I ', 31.60, 7.50, 2.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (672, ' 42.066.001.0.11 ', 'SINDU ', 32.00, 7.00, 1.00, 'RBU', 2.00, 'B', 1.00, 'SU', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (673, ' 42.101.020.0 ', 'DAMB. KL RUNGGANG ', 32.50, 6.00, 6.00, 'BTI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (674, ' 42.115.002.0 ', 'SELANTE II ', 33.20, 6.40, 2.00, 'GTI', 2.00, 'B', 1.00, 'SU', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (675, ' 42.085.004.0 ', 'POH GADING ', 34.00, 6.00, 2.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (676, ' 42.054.001.0.11 ', 'KALI ANCAR  ', 34.20, 7.70, 3.00, 'GTI', 2.00, 'B', 1.00, 'SU', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (677, ' 42.090.006.0 ', 'MENANGA PELEPOK ', 34.20, 4.50, 5.00, 'PTI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 2.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (678, ' 42.107.042.0 ', 'NANGENE ', 35.00, 6.00, 1.00, 'GBJ', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (679, ' 42.118.010.0.2 ', 'SORI KENANGA ', 35.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (680, ' 42.118.012.0.2 ', 'SAMPUNGU II ', 35.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (681, ' 42.059.001.0.11 ', 'KR. BEDIL ', 35.30, 7.00, 1.00, 'GPI', 1.00, 'B', 1.00, 'SU', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (682, ' 42.062.001.0.11 ', 'BUNG HATTA ', 36.00, 7.30, 2.00, 'GTI', 1.00, 'B', 1.00, 'SU', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (683, ' 42.087.003.0 ', 'EMPOL ', 36.40, 3.60, 2.00, 'GTI', 2.00, 'B', 1.00, 'SU', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (684, ' 42.111.002.0 ', 'Berare I ', 37.50, 6.50, 2.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (685, ' 42.111.001.0 ', 'Brang Moyo ', 38.00, 6.50, 2.00, 'GTI', 1.00, 'B', 1.00, 'SU', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (686, ' 42.112.016.0.2 ', 'LEDANG XV ', 39.90, 6.90, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (687, ' 42.091.009.0 ', 'PALUNG ', 40.00, 5.20, 3.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (688, ' 42.108.051.0 ', 'TELONANG I ', 40.00, 6.00, 2.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (689, ' 42.122.005.0.1 ', 'PELA ', 40.00, 6.40, 2.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'AT', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (690, ' 42.101.006.0 ', 'KALI RAJAK ', 40.00, 6.00, 1.00, 'RBB', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (691, ' 42.107.026.0 ', 'AIK KANGKUNG ', 40.00, 6.00, 1.00, 'RBR', 2.00, 'B', 1.00, 'LL', 1.00, 'TA', 2.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (692, ' 42.108.048.0 ', 'LABEHE ', 40.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (693, ' 42.120.011.0 ', 'CEKUNGAN DALAM ', 40.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (694, ' 42.118.007.0.1 ', 'PATULA ', 41.60, 4.00, 2.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (695, ' 42.085.002.0 ', 'DS. GERES ', 41.80, 6.30, 2.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (696, ' 42.100.006.0 ', 'KELEBUH ', 42.00, 6.10, 2.00, 'GTI', 2.00, 'B', 1.00, 'SU', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (697, ' 42.052.002.0.1 ', 'MENINTING ', 43.90, 7.40, 3.00, 'GTI', 1.00, 'B', 1.00, 'SU', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (698, ' 42.056.001.B.11 ', 'UDAYANA II ', 45.00, 6.00, 3.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (699, ' 42.116.089.0.2 ', 'PONG VI/PIONG I ', 45.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (700, ' 42.056.001.A.11 ', 'UDAYANA I ', 45.20, 6.00, 3.00, 'GTI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (701, ' 42.110.003.0 ', 'TAHAN ', 45.20, 3.90, 3.00, 'GTI', 3.00, 'B', 1.00, 'SU', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (702, ' 42.112.018.0.1 ', 'BRANG PENEMUNG ', 45.70, 6.00, 1.00, 'RBR', 1.00, 'B', 1.00, 'SU', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (703, ' 42.087.008.0 ', 'PELANGAN ', 46.50, 6.50, 1.00, 'GTI', 3.00, 'B', 3.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (704, ' 42.107.038.0 ', 'TONGO LOKA ', 50.00, 6.00, 2.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (705, ' 42.112.021.0.2 ', 'LEDANG XX ', 50.00, 6.00, 1.00, 'PTI', 1.00, 'B', 1.00, 'SU', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (706, ' 42.044.010.0 ', 'HUU BESAR ', 50.00, 6.00, 1.00, 'RBA', 2.00, 'B', 1.00, 'SU', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (707, ' 42.113.005.0.1 ', 'SEBEKIL ', 50.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (708, ' 42.113.039.0.2 ', 'BRANG BETINGGAL V ', 50.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (709, ' 42.113.045.0.2 ', 'BRANG MUMIL III ', 50.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (710, ' 42.113.046.0.2 ', 'BRANG MUMIL IV ', 50.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (711, ' 42.113.055.0.2 ', 'BRANG BATU ANAR I ', 50.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (712, ' 42.113.060.0.2 ', 'BRANG TAKAT REAK II ', 50.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (713, ' 42.113.061.0.2 ', 'BRANG TAMPAR DALAM I ', 50.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (714, ' 42.113.064.0.2 ', 'BRANG TAMPAR DALAM IV ', 50.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (715, ' 42.113.065.0.2 ', 'BRANG KELIMUTU I ', 50.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (716, ' 42.113.066.0.2 ', 'BRANG KELIMUTU II ', 50.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (717, ' 42.113.067.0.2 ', 'BRANG KELIMUTU III ', 50.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (718, ' 42.113.068.0.2 ', 'BRANG KELIMUTU IV ', 50.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (719, ' 42.113.069.0.2 ', 'BRANG TRENG I ', 50.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (720, ' 42.113.070.0.2 ', 'BRANG TRENG II ', 50.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (721, ' 42.113.072.0.2 ', 'BRANG ODE II ', 50.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (722, ' 42.113.073.0.2 ', 'BRANG ODE III ', 50.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (723, ' 42.113.077.0.2 ', 'BRANG BATU BULAN II ', 50.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (724, ' 42.113.082.0.2 ', 'BRANG ODEK I ', 50.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (725, ' 42.113.095.0.2 ', 'BRANG GELUMPANG I ', 50.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (726, ' 42.120.007.0 ', 'NANGA DORO I ', 50.00, 6.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (727, ' 42.118.030.0.3 ', 'SORI WONTU V ', 50.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (728, ' 42.099.002.0 ', 'PENUJAK II ', 50.50, 6.00, 1.00, 'RBA', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (729, ' 42.084.002.0 ', 'SELAYAR ', 51.00, 6.00, 2.00, 'GTI', 1.00, 'B', 1.00, 'TP', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (730, ' 42.113.001.0.1 ', 'LABANGKA III ', 51.30, 6.00, 1.00, 'RBR', 3.00, 'B', 1.00, 'SU', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (731, ' 42.107.046.0 ', 'TATAR LOKA  ', 55.00, 6.00, 2.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (732, ' 42.107.021.0 ', 'SEJORONG ', 60.00, 6.00, 1.00, 'RBR', 2.00, 'B', 1.00, 'SU', 1.00, 'TA', 2.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (733, ' 42.113.026.0.2 ', 'KOKAR UDANG ', 60.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (734, ' 42.113.054.0.2 ', 'KOKAR TAMPAR PISAK III ', 60.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (735, ' 42.113.091.0.2 ', 'BRANG BUA ', 60.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (736, ' 42.116.076.0.1 ', 'DOROMBOLO V/KAWINDA ', 60.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (737, ' 42.053.001.A.11 ', 'KALI JANGKOK A ', 60.50, 7.40, 3.00, 'MBI', 1.00, 'B', 1.00, 'TP', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (738, ' 42.051.002.0.11 ', 'JANGKOK II ', 60.60, 6.20, 3.00, 'GTI', 1.00, 'B', 1.00, 'SU', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (739, ' 42.053.001.B.11 ', 'KALI JANGKOK B ', 61.00, 7.40, 3.00, 'MBI', 1.00, 'B', 1.00, 'TP', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (740, ' 42.120.022.0 ', 'LERE III ', 62.00, 4.20, 2.00, 'RBS', 3.00, 'B', 1.00, 'SU', 1.00, 'K', 3.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (741, ' 42.086.003.0 ', 'KESEJAHTERAAN ', 70.80, 4.90, 4.00, 'GTI', 2.00, 'B', 1.00, 'SU', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (742, ' 42.107.027.0 ', 'LABUHAN ', 76.90, 6.00, 2.00, 'RBR', 1.00, 'B', 1.00, 'SU', 1.00, 'TA', 2.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (743, ' 42.118.031.0.3 ', 'SORI SAI BESAR ', 80.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (744, ' 42.121.015.0 ', 'SORI TAWALI ', 84.00, 6.00, 2.00, 'RBA', 2.00, 'B', 1.00, 'SU', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (745, ' 42.086.001.0 ', 'KEMAKMURAN ', 87.00, 7.10, 2.00, 'RBA', 2.00, 'B', 1.00, 'SU', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (746, ' 42.107.032.0 ', 'PUNA II ', 90.00, 6.00, 2.00, 'RBL', 3.00, 'B', 1.00, 'SU', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (747, ' 42.109.001.0.11 ', 'BRANG BARA ', 92.50, 6.00, 2.00, 'RBA', 2.00, 'B', 1.00, 'SU', 1.00, 'TA', 2.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (748, ' 42.113.028.0.2 ', 'BRANG BORANG II ', 100.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (749, ' 42.113.035.0.2 ', 'BRANG BETINGGAL I ', 100.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (750, ' 42.113.040.0.2 ', 'BRANG GALUNI ', 100.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (751, ' 42.113.041.0.2 ', 'BRANG TAMPAR BAGIK I ', 100.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (752, ' 42.113.076.0.2 ', 'BRANG BATU BULAN I ', 100.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (753, ' 42.113.092.0.2 ', 'BRANG KAJAH IV ', 100.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (754, ' 42.101.022.0 ', 'BEBURUNG I ', 101.80, 6.50, 2.00, 'RBA', 1.00, 'B', 1.00, 'SU', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (755, ' 42.108.073.0 ', 'BRANG BAI ', 113.00, 6.00, 2.00, 'RBA', 2.00, 'B', 1.00, 'SU', 1.00, 'TA', 2.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (756, ' 42.113.057.0.2 ', 'BRANG BATU ANAR III ', 120.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (757, ' 42.113.027.0.2 ', 'KOKAR BORANG I ', 150.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (758, ' 42.113.043.0.2 ', 'BRANG AIK MUMIL I ', 150.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (759, ' 42.113.051.0.2 ', 'KOKAR BARU II ', 150.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (760, ' 42.101.023.0 ', 'BEBURUNG II ', 154.00, 6.10, 3.00, 'RBB', 4.00, 'B', 1.00, 'SU', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (761, ' 42.113.038.0.2 ', 'BRANG BETINGGAL IV ', 200.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (762, 'asdf', 'asdf', 123.00, 123.00, 12321.00, '0', 0.00, '0', 0.00, '0', 0.00, '0', 0.00, 'asdfasdf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-28 19:00:54', '2020-07-28 19:00:54');
INSERT INTO `jembatan` VALUES (763, '12123123', 'asdfasd', 12.00, 4.00, 12.00, '0', 0.00, '0', 0.00, '0', 0.00, '0', 0.00, NULL, NULL, 8, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-28 19:26:23', '2020-07-28 19:26:23');

-- ----------------------------
-- Table structure for kabupaten_kota
-- ----------------------------
DROP TABLE IF EXISTS `kabupaten_kota`;
CREATE TABLE `kabupaten_kota`  (
  `kabupaten_kota_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `kabupaten_kota_nama` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `pengguna_id` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`kabupaten_kota_id`) USING BTREE,
  INDEX `kabupaten_kota_pengguna_id_foreign`(`pengguna_id`) USING BTREE,
  CONSTRAINT `kabupaten_kota_pengguna_id_foreign` FOREIGN KEY (`pengguna_id`) REFERENCES `pengguna` (`pengguna_id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of kabupaten_kota
-- ----------------------------
INSERT INTO `kabupaten_kota` VALUES (2, 'Kabupaten Bima', 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kabupaten_kota` VALUES (3, 'Kabupaten Dompu', 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kabupaten_kota` VALUES (4, 'Kabupaten Lombok Barat', 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kabupaten_kota` VALUES (5, 'Kabupaten Lombok Tengah', 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kabupaten_kota` VALUES (6, 'Kabupaten Lombok Timur', 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kabupaten_kota` VALUES (7, 'Kabupaten Lombok Utara', 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kabupaten_kota` VALUES (8, 'Kabupaten Sumbawa', 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kabupaten_kota` VALUES (9, 'Kabupaten Sumbawa Barat', 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kabupaten_kota` VALUES (10, 'Kota Bima', 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kabupaten_kota` VALUES (11, 'Kota Mataram', 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');

-- ----------------------------
-- Table structure for kecamatan
-- ----------------------------
DROP TABLE IF EXISTS `kecamatan`;
CREATE TABLE `kecamatan`  (
  `kecamatan_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `kecamatan_nama` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `kabupaten_kota_id` bigint(20) UNSIGNED NOT NULL,
  `pengguna_id` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`kecamatan_id`) USING BTREE,
  INDEX `kecamatan_pengguna_id_foreign`(`pengguna_id`) USING BTREE,
  INDEX `kecamatan_kabupaten_kota_id_foreign`(`kabupaten_kota_id`) USING BTREE,
  CONSTRAINT `kecamatan_kabupaten_kota_id_foreign` FOREIGN KEY (`kabupaten_kota_id`) REFERENCES `kabupaten_kota` (`kabupaten_kota_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `kecamatan_pengguna_id_foreign` FOREIGN KEY (`pengguna_id`) REFERENCES `pengguna` (`pengguna_id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 233 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of kecamatan
-- ----------------------------
INSERT INTO `kecamatan` VALUES (1, 'Ambalawi', 2, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kecamatan` VALUES (2, 'Belo', 2, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kecamatan` VALUES (3, 'Bolo', 2, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kecamatan` VALUES (4, 'Donggo', 2, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kecamatan` VALUES (7, 'Lambitu', 2, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kecamatan` VALUES (10, 'Lambu', 2, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kecamatan` VALUES (13, 'Langgudu', 2, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kecamatan` VALUES (16, 'Mada Pangga', 2, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kecamatan` VALUES (19, 'Monta', 2, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kecamatan` VALUES (22, 'Palibelo', 2, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kecamatan` VALUES (25, 'Parado', 2, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kecamatan` VALUES (28, 'Sanggar', 2, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kecamatan` VALUES (31, 'Sape', 2, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kecamatan` VALUES (34, 'Soromandi', 2, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kecamatan` VALUES (37, 'Tambora', 2, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kecamatan` VALUES (40, 'Wawo', 2, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kecamatan` VALUES (43, 'Wera', 2, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kecamatan` VALUES (46, 'Woha', 2, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kecamatan` VALUES (50, 'Dompu', 3, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kecamatan` VALUES (51, 'Kempo', 3, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kecamatan` VALUES (64, 'Hu\'u', 3, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kecamatan` VALUES (77, 'Kilo', 3, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kecamatan` VALUES (88, 'Woja', 3, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kecamatan` VALUES (108, 'Pekat', 3, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kecamatan` VALUES (125, 'Manggelewa', 3, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kecamatan` VALUES (142, 'Pajo', 3, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kecamatan` VALUES (143, 'Gerung', 4, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kecamatan` VALUES (144, 'Kediri', 4, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kecamatan` VALUES (145, 'Narmada', 4, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kecamatan` VALUES (146, 'Sekotong', 4, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kecamatan` VALUES (147, 'Labu Api', 4, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kecamatan` VALUES (148, 'Gunung Sari', 4, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kecamatan` VALUES (149, 'Lingsar', 4, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kecamatan` VALUES (150, 'Lembar', 4, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kecamatan` VALUES (151, 'Batu Layar', 4, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kecamatan` VALUES (152, 'Kuripan', 4, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kecamatan` VALUES (153, 'Batukliang', 5, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kecamatan` VALUES (154, 'Batukliang Utara', 5, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kecamatan` VALUES (155, 'Janapria', 5, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kecamatan` VALUES (156, 'Jonggat', 5, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kecamatan` VALUES (157, 'Kopang', 5, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kecamatan` VALUES (158, 'Praya', 5, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kecamatan` VALUES (159, 'Praya Barat', 5, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kecamatan` VALUES (160, 'Praya Barat Daya', 5, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kecamatan` VALUES (161, 'Praya Tengah', 5, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kecamatan` VALUES (162, 'Praya Timur', 5, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kecamatan` VALUES (163, 'Pringgarata', 5, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kecamatan` VALUES (164, 'Pujut', 5, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kecamatan` VALUES (165, 'Aikmel', 6, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kecamatan` VALUES (166, 'Jerowaru', 6, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kecamatan` VALUES (167, 'Keruak', 6, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kecamatan` VALUES (168, 'Labuhan Haji', 6, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kecamatan` VALUES (169, 'Masbagik', 6, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kecamatan` VALUES (170, 'Montong Gading', 6, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kecamatan` VALUES (171, 'Pringgabaya', 6, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kecamatan` VALUES (172, 'Pringgasela', 6, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kecamatan` VALUES (173, 'Sakra', 6, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kecamatan` VALUES (174, 'Sakra Timur', 6, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kecamatan` VALUES (175, 'Sakra Barat', 6, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kecamatan` VALUES (176, 'Sambelia', 6, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kecamatan` VALUES (177, 'Selong', 6, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kecamatan` VALUES (178, 'Sembalun', 6, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kecamatan` VALUES (179, 'Sikur', 6, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kecamatan` VALUES (180, 'Sukamulia', 6, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kecamatan` VALUES (181, 'Suralaga', 6, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kecamatan` VALUES (182, 'Suwela', 6, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kecamatan` VALUES (183, 'Terara', 6, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kecamatan` VALUES (184, 'Wanasaba', 6, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kecamatan` VALUES (185, 'Bayan', 7, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kecamatan` VALUES (186, 'Gangga', 7, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kecamatan` VALUES (187, 'Kayangan', 7, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kecamatan` VALUES (188, 'Pemenang', 7, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kecamatan` VALUES (189, 'Tanjung', 7, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kecamatan` VALUES (190, 'Alas', 8, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kecamatan` VALUES (191, 'Alas Barat', 8, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kecamatan` VALUES (192, 'Batu Lanteh', 8, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kecamatan` VALUES (193, 'Buer', 8, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kecamatan` VALUES (194, 'Empang', 8, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kecamatan` VALUES (195, 'Labangka', 8, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kecamatan` VALUES (196, 'Labuhan Badas', 8, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kecamatan` VALUES (197, 'Lantung', 8, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kecamatan` VALUES (198, 'Lape', 8, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kecamatan` VALUES (199, 'Lenangguar', 8, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kecamatan` VALUES (200, 'Lunyuk', 8, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kecamatan` VALUES (201, 'Lopok', 8, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kecamatan` VALUES (202, 'Maronge', 8, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kecamatan` VALUES (203, 'Moyo Hilir', 8, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kecamatan` VALUES (204, 'Moyo Hulu', 8, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kecamatan` VALUES (205, 'Moyo Utara', 8, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kecamatan` VALUES (206, 'Orong Telu', 8, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kecamatan` VALUES (207, 'Plampang', 8, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kecamatan` VALUES (208, 'Rhee', 8, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kecamatan` VALUES (209, 'Ropang', 8, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kecamatan` VALUES (210, 'Sumbawa', 8, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kecamatan` VALUES (211, 'Unter Iwes', 8, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kecamatan` VALUES (212, 'Utan', 8, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kecamatan` VALUES (213, 'Tarano', 8, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kecamatan` VALUES (214, 'Jereweh', 9, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kecamatan` VALUES (215, 'Taliwang', 9, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kecamatan` VALUES (216, 'Seteluk', 9, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kecamatan` VALUES (217, 'Sekongkang', 9, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kecamatan` VALUES (218, 'Brang Rea', 9, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kecamatan` VALUES (219, 'Poto Tano', 9, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kecamatan` VALUES (220, 'Brang Ene', 9, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kecamatan` VALUES (221, 'Maluk', 9, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kecamatan` VALUES (222, 'Asakota', 10, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kecamatan` VALUES (223, 'Mpunda', 10, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kecamatan` VALUES (224, 'Raba', 10, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kecamatan` VALUES (225, 'Rasanae Barat', 10, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kecamatan` VALUES (226, 'Rasanae Timur', 10, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kecamatan` VALUES (227, 'Ampenan', 11, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kecamatan` VALUES (228, 'Cakranegara', 11, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kecamatan` VALUES (229, 'Mataram', 11, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kecamatan` VALUES (230, 'Sandubaya', 11, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kecamatan` VALUES (231, 'Sekarbela', 11, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kecamatan` VALUES (232, 'Selaparang', 11, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');

-- ----------------------------
-- Table structure for kelurahan_desa
-- ----------------------------
DROP TABLE IF EXISTS `kelurahan_desa`;
CREATE TABLE `kelurahan_desa`  (
  `kelurahan_desa_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `kelurahan_desa_nama` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `kecamatan_id` bigint(20) UNSIGNED NOT NULL,
  `pengguna_id` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`kelurahan_desa_id`) USING BTREE,
  INDEX `kelurahan_desa_pengguna_id_foreign`(`pengguna_id`) USING BTREE,
  INDEX `kelurahan_desa_kecamatan_id_foreign`(`kecamatan_id`) USING BTREE,
  CONSTRAINT `kelurahan_desa_kecamatan_id_foreign` FOREIGN KEY (`kecamatan_id`) REFERENCES `kecamatan` (`kecamatan_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `kelurahan_desa_pengguna_id_foreign` FOREIGN KEY (`pengguna_id`) REFERENCES `pengguna` (`pengguna_id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 1258 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of kelurahan_desa
-- ----------------------------
INSERT INTO `kelurahan_desa` VALUES (114, 'Kole', 1, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (115, 'Mawu', 1, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (116, 'Nipa', 1, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (117, 'Rite', 1, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (118, 'Talapiti', 1, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (119, 'Tolowata', 1, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (120, 'Diha', 2, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (121, 'Cenggu', 2, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (122, 'Lido', 2, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (123, 'Ncera', 2, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (124, 'Ngali', 2, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (125, 'Renda', 2, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (126, 'Roka', 2, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (127, 'Runggu', 2, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (128, 'Soki', 2, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (129, 'Bontokape', 3, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (130, 'Darussalam', 3, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (131, 'Kananga', 3, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (132, 'Kara', 3, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (133, 'Leu', 3, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (134, 'Nggembe', 3, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (135, 'Rada', 3, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (136, 'Rasabau', 3, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (137, 'Rato', 3, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (138, 'Sanolo', 3, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (139, 'Sondosia', 3, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (140, 'Tambe', 3, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (141, 'Timu', 3, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (142, 'Tumpu', 3, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (143, 'Bumi Pajo', 4, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (144, 'Doridungga', 4, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (145, 'Kala', 4, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (146, 'Mbawa', 4, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (147, 'Mpili', 4, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (148, 'Ndano Na\'e', 4, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (149, 'O\'o', 4, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (150, 'Palama', 4, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (151, 'Rora', 4, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (152, 'Kaboro', 7, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (153, 'Kaowa', 7, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (154, 'Kuta', 7, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (155, 'Londu', 7, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (156, 'Sambori', 7, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (157, 'Teta', 7, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (158, 'Hidirasa', 10, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (159, 'Kaleo', 10, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (160, 'Lambu', 10, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (161, 'Lanta', 10, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (162, 'Lanta Barat', 10, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (163, 'Mangge', 10, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (164, 'Melayu', 10, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (165, 'Monta Baru', 10, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (166, 'Nggelu', 10, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (167, 'Rato', 10, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (168, 'Sangga', 10, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (169, 'Simpasai', 10, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (170, 'Soro', 10, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (171, 'Sumi', 10, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (172, 'Doro O\'o', 13, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (173, 'Dumu', 13, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (174, 'Kalodu', 13, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (175, 'Kangga', 13, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (176, 'Karampi', 13, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (177, 'Karumbu', 13, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (178, 'Kawuwu', 13, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (179, 'Laju', 13, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (180, 'Pusu', 13, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (181, 'Rompo', 13, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (182, 'Rupe', 13, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (183, 'Sambane', 13, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (184, 'Sarae Ruma', 13, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (185, 'Wadu Ruka', 13, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (186, 'Waworada', 13, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (187, 'Bolo', 16, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (188, 'Campa', 16, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (189, 'Dena', 16, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (190, 'Mandawau', 16, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (191, 'Monggo', 16, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (192, 'Mpuri', 16, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (193, 'Ncandi', 16, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (194, 'Ndano', 16, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (195, 'Rade', 16, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (196, 'Tonda', 16, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (197, 'Woro', 16, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (198, 'Baralau', 19, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (199, 'Monta', 19, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (200, 'Nontotera', 19, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (201, 'Pela', 19, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (202, 'Sekuru', 19, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (203, 'Sie', 19, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (204, 'Simpasai', 19, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (205, 'Sondo', 19, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (206, 'Tangga', 19, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (207, 'Tangga Baru', 19, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (208, 'Tolotangga', 19, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (209, 'Tolouwi', 19, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (210, 'Waro', 19, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (211, 'Willamaci', 19, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (212, 'Belo', 22, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (213, 'Bre', 22, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (214, 'Dore', 22, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (215, 'Nata', 22, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (216, 'Ntonggu', 22, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (217, 'Panda', 22, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (218, 'Padolo', 22, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (219, 'Ragi', 22, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (220, 'Roi', 22, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (221, 'Teke', 22, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (222, 'Tolongondoa', 22, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (223, 'Tonggorisa', 22, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (224, 'Kanca', 25, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (225, 'Kuta', 25, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (226, 'Lere', 25, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (227, 'Paradorato', 25, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (228, 'Paradowane', 25, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (229, 'Boro', 28, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (230, 'Kore', 28, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (231, 'Oi Saro', 28, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (232, 'Piong', 28, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (233, 'Sandue', 28, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (234, 'Taloko', 28, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (235, 'Bajo Pulau', 31, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (236, 'Boke', 31, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (237, 'Bugis', 31, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (238, 'Buncu', 31, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (239, 'Jia', 31, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (240, 'Kowo', 31, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (241, 'Lamere', 31, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (242, 'Nae', 31, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (243, 'Naru Barat', 31, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (244, 'Naru Timur', 31, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (245, 'Oi Maci', 31, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (246, 'Parangina', 31, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (247, 'Poja', 31, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (248, 'Rai Oi', 31, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (249, 'Rasabou', 31, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (250, 'Sangia', 31, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (251, 'Sari', 31, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (252, 'Tanah Putih', 31, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (253, 'Bajo', 34, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (254, 'Kananta', 34, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (255, 'Lewintana', 34, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (256, 'Punti', 34, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (257, 'Sai', 34, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (258, 'Sampungu', 34, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (259, 'Wadukopa', 34, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (260, 'Kawinda Nae', 37, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (261, 'Kawinda Toi', 37, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (262, 'Labuhan Kananga', 37, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (263, 'Oi Bura', 37, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (264, 'Oi Katupa', 37, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (265, 'Oi Panihi', 37, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (266, 'Rasabou', 37, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (267, 'Kambilo', 40, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (268, 'Kombo', 40, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (269, 'Maria', 40, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (270, 'Maria Utara', 40, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (271, 'Ntori', 40, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (272, 'Pesa', 40, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (273, 'Raba', 40, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (274, 'Riamau', 40, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (275, 'Tarlawi', 40, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (276, 'Bala', 43, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (277, 'Hidirasa', 43, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (278, 'Kalajena', 43, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (279, 'Mandala', 43, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (280, 'Nanga Wera', 43, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (281, 'Ntoke', 43, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (282, 'Nunggi', 43, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (283, 'Oitui', 43, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (284, 'Pai', 43, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (285, 'Ranggasolo', 43, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (286, 'Sangiang', 43, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (287, 'Tadewa', 43, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (288, 'Tawali', 43, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (289, 'Wora', 43, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (290, 'Dadibou', 46, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (291, 'Donggobolo', 46, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (292, 'Kalampa', 46, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (293, 'Keli', 46, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (294, 'Naru', 46, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (295, 'Nisa', 46, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (296, 'Pandai', 46, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (297, 'Penapali', 46, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (298, 'Rabakodo', 46, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (299, 'Risa', 46, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (300, 'Samili', 46, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (301, 'Talabiu', 46, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (302, 'Tenga', 46, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (303, 'Tente', 46, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (304, 'Waduwani', 46, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (305, 'Dore Bara', 50, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (306, 'Katua', 50, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (307, 'Karamabura', 50, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (308, 'Kareke', 50, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (309, 'Mangge Nae', 50, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (310, 'Manggeasi', 50, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (311, 'Mbawi', 50, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (312, 'O\'o', 50, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (313, 'Sori Sakolo', 50, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (314, 'Bada', 50, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (315, 'Bali', 50, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (316, 'Karijawa', 50, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (317, 'Potu', 50, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (318, 'Dora Tangga', 50, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (319, 'Kandai I', 50, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (320, 'Doro Kobo', 51, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (321, 'Kempo', 51, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (322, 'Konte', 51, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (323, 'Songgaja', 51, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (324, 'Soro', 51, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (325, 'Soro Barat', 51, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (326, 'Ta\'a', 51, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (327, 'Tolo Kalo', 51, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (328, 'Adu', 64, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (329, 'Cempi Jaya', 64, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (330, 'Daha', 64, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (331, 'Hu\'u', 64, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (332, 'Jala', 64, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (333, 'Merada', 64, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (334, 'Rasa Bou', 64, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (335, 'Sawe', 64, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (336, 'Kiwu', 77, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (337, 'Kramat', 77, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (338, 'Lasi', 77, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (339, 'Malaju', 77, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (340, 'Mbuju', 77, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (341, 'Taropo', 77, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (342, 'Baka Jaya', 88, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (343, 'Bara', 88, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (344, 'Mada Prama', 88, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (345, 'Matua', 88, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (346, 'Nowa', 88, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (347, 'Mumbu', 88, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (348, 'Raba Baka', 88, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (349, 'Riwo', 88, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (350, 'Saneo', 88, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (351, 'Sera Kapi', 88, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (352, 'Wawonduru', 88, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (353, 'Kandai II', 88, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (354, 'Monta Baru', 88, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (355, 'Simpasai', 88, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (356, 'Beringin Jaya', 108, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (357, 'Calabai', 108, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (358, 'Doro Peti', 108, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (359, 'Pekat', 108, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (360, 'Kadindi', 108, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (361, 'Kadindi Barat', 108, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (362, 'Karombo', 108, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (363, 'Nangakara', 108, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (364, 'Nangamiro', 108, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (365, 'Sori Nomo', 108, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (366, 'Sori Tatanga', 108, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (367, 'Tambora', 108, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (368, 'Anamina', 125, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (369, 'Banggo', 125, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (370, 'Doromelo', 125, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (371, 'Kampasi Meci', 125, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (372, 'Kwangko', 125, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (373, 'Lanci Jaya', 125, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (374, 'Nangatumpu', 125, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (375, 'Nusa Jaya', 125, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (376, 'Soriutu', 125, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (377, 'Suka Damai', 125, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (378, 'Tanju', 125, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (379, 'Teka Sire', 125, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (380, 'Jambu', 142, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (381, 'Lepadi', 142, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (382, 'Lune', 142, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (383, 'Ranggo', 142, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (384, 'Temba Lae', 142, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (385, 'UPT. Woko', 142, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (386, 'Babussalam', 143, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (387, 'Banyu Urip', 143, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (388, 'Beleke', 143, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (389, 'Dasan Tapen', 143, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (390, 'Gapuk', 143, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (391, 'Giri Tembesi', 143, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (392, 'Kebun Ayu', 143, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (393, 'Mesanggok', 143, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (394, 'Suka Makmur', 143, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (395, 'Taman Ayu', 143, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (396, 'Tempos', 143, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (397, 'Dasan Geres', 143, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (398, 'Gerung Selatan', 143, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (399, 'Gerung Utara', 143, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (400, 'Banyumulek', 144, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (401, 'Dasan Baru', 144, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (402, 'Gelogor', 144, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (403, 'Jagaraga Indah', 144, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (404, 'Kediri', 144, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (405, 'Kediri Selatan', 144, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (406, 'Lelede', 144, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (407, 'Montong Are', 144, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (408, 'Ombe Baru', 144, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (409, 'Rumak', 144, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (410, 'Badrain', 145, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (411, 'Batu Kuta', 145, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (412, 'Buwun Sejati', 145, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (413, 'Dasan Tereng', 145, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (414, 'Gerimak Indah', 145, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (415, 'Golong', 145, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (416, 'Krama Jaya', 145, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (417, 'Lebah Sempaga', 145, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (418, 'Lembuak', 145, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (419, 'Mekarsari', 145, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (420, 'Narmada', 145, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (421, 'Nyur Lembang', 145, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (422, 'Pakuan', 145, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (423, 'Peresak', 145, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (424, 'Peru', 145, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (425, 'Sedau', 145, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (426, 'Selat', 145, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (427, 'Sembung', 145, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (428, 'Sesaot', 145, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (429, 'Suranadi', 145, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (430, 'Tanak Beak', 145, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (431, 'Batu Putih', 146, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (432, 'Buwun Mas', 146, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (433, 'Cendi Manik', 146, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (434, 'Gili Gede Indah', 146, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (435, 'Kedaro', 146, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (436, 'Pelangan', 146, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (437, 'Sekotong Barat', 146, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (438, 'Sekotong Tengah', 146, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (439, 'Taman Baru', 146, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (440, 'Bagik Polak', 147, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (441, 'Bagik Polak Barat', 147, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (442, 'Bajur', 147, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (443, 'Bengkel', 147, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (444, 'Karang Bongkot', 147, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (445, 'Kuranji', 147, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (446, 'Kuranji Dalang', 147, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (447, 'Labu Api', 147, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (448, 'Merembu', 147, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (449, 'Perampuan', 147, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (450, 'Telagawaru', 147, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (451, 'Terong Tawah', 147, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (452, 'Bukittinggi', 148, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (453, 'Dopang', 148, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (454, 'Gelangsar', 148, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (455, 'Guntur Macan', 148, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (456, 'Gunung Sari', 148, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (457, 'Jatisela', 148, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (458, 'Jeringo', 148, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (459, 'Kekait', 148, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (460, 'Kekeri', 148, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (461, 'Mekarsari', 148, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (462, 'Midang', 148, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (463, 'Nambalan', 148, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (464, 'Penimbung', 148, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (465, 'Ranjok', 148, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (466, 'Sesela', 148, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (467, 'Taman Sari', 148, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (468, 'Batu Kumbung', 149, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (469, 'Batu Mekar', 149, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (470, 'Bug-Bug', 149, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (471, 'Dasan Geria', 149, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (472, 'Duman', 149, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (473, 'Gegelang', 149, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (474, 'Gegerung', 149, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (475, 'Giri Madia', 149, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (476, 'Gontoran', 149, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (477, 'Karang Bayan', 149, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (478, 'Langko', 149, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (479, 'Lingsar', 149, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (480, 'Peteluan Indah', 149, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (481, 'Saribaye', 149, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (482, 'Sigerongan', 149, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (483, 'Eyat Mayang', 150, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (484, 'Jembatan Gantung', 150, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (485, 'Jembatan Kembar', 150, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (486, 'Jembatan Kembar Timur', 150, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (487, 'Labuan Kereng', 150, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (488, 'Lembar', 150, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (489, 'Lembar Selatan', 150, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (490, 'Mareje', 150, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (491, 'Mareje Timur', 150, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (492, 'Sekotong Timur', 150, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (493, 'Batu Layar', 151, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (494, 'Batu Layar Barat', 151, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (495, 'Bengkaung', 151, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (496, 'Lembah Sari', 151, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (497, 'Meninting', 151, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (498, 'Pusuk Lestari', 151, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (499, 'Sandik', 151, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (500, 'Senggigi', 151, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (501, 'Senteluk', 151, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (502, 'Giri Sasak', 152, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (503, 'Jagaraga', 152, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (504, 'Kuripan', 152, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (505, 'Kuripan Selatan', 152, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (506, 'Kuripan Timur', 152, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (507, 'Kuripan Utara', 152, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (508, 'Aik Darek', 153, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (509, 'Barabali', 153, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (510, 'Beber', 153, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (511, 'Bujak', 153, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (512, 'Mantang', 153, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (513, 'Mekar Bersatu', 153, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (514, 'Pagutan', 153, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (515, 'Peresak', 153, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (516, 'Selebung', 153, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (517, 'Tampak Siring', 153, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (518, 'Aik Berik', 154, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (519, 'Aik Bukak', 154, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (520, 'Karang Sidemen', 154, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (521, 'Lantan', 154, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (522, 'Mas Mas', 154, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (523, 'Setiling', 154, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (524, 'Tanak Beak', 154, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (525, 'Teratak', 154, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (526, 'Bakan', 155, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (527, 'Durian', 155, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (528, 'Janapria', 155, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (529, 'Jango', 155, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (530, 'Kerembong', 155, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (531, 'Langko', 155, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (532, 'Lekor', 155, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (533, 'Loangmaka', 155, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (534, 'Pendem', 155, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (535, 'Saba', 155, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (536, 'Selebung Rembiga', 155, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (537, 'Setuta', 155, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (538, 'Barejulat', 156, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (539, 'Batutulis', 156, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (540, 'Bonjeruk', 156, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (541, 'Bunkate', 156, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (542, 'Gemel', 156, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (543, 'Jelantik', 156, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (544, 'Labulia', 156, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (545, 'Nyerot', 156, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (546, 'Pengenjek', 156, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (547, 'Perina', 156, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (548, 'Puyung', 156, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (549, 'Sukarara', 156, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (550, 'Ubung', 156, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (551, 'Aik Bual', 157, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (552, 'Bebuak', 157, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (553, 'Darmaji', 157, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (554, 'Dasan Baru', 157, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (555, 'Kopang Rembiga', 157, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (556, 'Lendang Are', 157, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (557, 'Monggas', 157, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (558, 'Montong Gamang', 157, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (559, 'Muncan', 157, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (560, 'Semparu', 157, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (561, 'Wajageseng', 157, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (562, 'Aik Mual', 158, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (563, 'Bunut Baok', 158, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (564, 'Jago', 158, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (565, 'Mekar Damai', 158, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (566, 'Mertak Tombok', 158, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (567, 'Montong Terep', 158, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (568, 'Gerunung', 158, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (569, 'Gonjak', 158, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (570, 'Leneng', 158, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (571, 'Panji Sari', 158, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (572, 'Perapen', 158, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (573, 'Praya', 158, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (574, 'Renteng', 158, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (575, 'Semayan', 158, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (576, 'Tiwugalih', 158, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (577, 'Banyu Urip', 159, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (578, 'Batujai', 159, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (579, 'Bonder', 159, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (580, 'Kateng', 159, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (581, 'Mangkung', 159, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (582, 'Mekar Sari', 159, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (583, 'Penujak', 159, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (584, 'Selong Belanak', 159, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (585, 'Setanggor', 159, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (586, 'Tanak Rarang', 159, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (587, 'Batu Jangkih', 160, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (588, 'Darek', 160, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (589, 'Kabul', 160, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (590, 'Montong Ajan', 160, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (591, 'Montong Sapah', 160, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (592, 'Pandan Indah', 160, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (593, 'Pelambik', 160, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (594, 'Ranggagata', 160, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (595, 'Serage', 160, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (596, 'Teduh', 160, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (597, 'Ungga', 160, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (598, 'Batunyala', 161, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (599, 'Beraim', 161, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (600, 'Dakung', 161, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (601, 'Jurang Jaler', 161, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (602, 'Kelebuh', 161, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (603, 'Lajut', 161, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (604, 'Pejanggik', 161, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (605, 'Pengadang', 161, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (606, 'Prai Meke', 161, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (607, 'Gerantung', 161, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (608, 'Jontlak', 161, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (609, 'Sasake', 161, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (610, 'Beleka', 162, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (611, 'Bilelando', 162, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (612, 'Ganti', 162, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (613, 'Kidang', 162, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (614, 'Landah', 162, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (615, 'Marong', 162, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (616, 'Mujur', 162, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (617, 'Semoyang', 162, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (618, 'Sengkerang', 162, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (619, 'Sukaraja', 162, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (620, 'Arjangka', 163, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (621, 'Bagu', 163, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (622, 'Bilebante', 163, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (623, 'Menemeng', 163, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (624, 'Murbaya', 163, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (625, 'Pemepek', 163, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (626, 'Pringgarata', 163, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (627, 'Sepakek', 163, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (628, 'Sintung', 163, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (629, 'Sisik', 163, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (630, 'Taman Indah', 163, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (631, 'Bangket Parak', 164, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (632, 'Gapura', 164, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (633, 'Kawo', 164, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (634, 'Ketara', 164, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (635, 'Kuta', 164, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (636, 'Mertak', 164, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (637, 'Pengembur', 164, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (638, 'Pengengat', 164, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (639, 'Prabu', 164, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (640, 'Rembitan', 164, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (641, 'Segala Anyar', 164, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (642, 'Sengkol', 164, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (643, 'Sukadana', 164, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (644, 'Tanak Awu', 164, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (645, 'Teruwai', 164, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (646, 'Tumpak', 164, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (647, 'Aik Prapa', 165, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (648, 'Aikmel', 165, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (649, 'Aikmel Barat', 165, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (650, 'Aikmel Timur', 165, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (651, 'Aikmel Utara', 165, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (652, 'Bagik Nyaka Santri', 165, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (653, 'Kalijaga', 165, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (654, 'Kalijaga Baru', 165, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (655, 'Kalijaga Selatan', 165, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (656, 'Kalijaga Tengah', 165, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (657, 'Kalijaga Timur', 165, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (658, 'Kembang Kerang', 165, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (659, 'Kembang Kerang Daya', 165, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (660, 'Keroya', 165, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (661, 'Lenek', 165, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (662, 'Lenek Baru', 165, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (663, 'Lenek Daya', 165, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (664, 'Lenek Duren', 165, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (665, 'Lenek Kali Bambang', 165, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (666, 'Lenek Lauk', 165, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (667, 'Lenek Pasiraman', 165, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (668, 'Lenek Ramban Biak', 165, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (669, 'Sukarema', 165, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (670, 'Toya', 165, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (671, 'Batunampar', 166, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (672, 'Batunampar Selatan', 166, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (673, 'Ekas Buana', 166, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (674, 'Jerowaru', 166, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (675, 'Kwang Rundun', 166, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (676, 'Pandan Wangi', 166, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (677, 'Pare Mas', 166, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (678, 'Pemongkong', 166, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (679, 'Pene', 166, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (680, 'Sekaroh', 166, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (681, 'Sepapan', 166, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (682, 'Seriwe', 166, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (683, 'Sukadamai', 166, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (684, 'Sukaraja', 166, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (685, 'Wakan', 166, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (686, 'Batu Putik', 167, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (687, 'Dane Rase', 167, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (688, 'Keruak', 167, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (689, 'Ketangga Jeraeng', 167, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (690, 'Ketapang Raya', 167, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (691, 'Pijot', 167, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (692, 'Pijot Utara', 167, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (693, 'Pulau Maringkik', 167, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (694, 'Mendana Raya', 167, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (695, 'Montong Belae', 167, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (696, 'Senyiur', 167, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (697, 'Sepit', 167, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (698, 'Selebung Ketangga', 167, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (699, 'Setungkep Lingsar', 167, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (700, 'Tanjung Luar', 167, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (701, 'Banjarsari', 168, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (702, 'Kertasari', 168, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (703, 'Korleko', 168, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (704, 'Korleko Selatan', 168, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (705, 'Labuhan Haji', 168, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (706, 'Penedagandor', 168, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (707, 'Teros', 168, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (708, 'Tirtanadi', 168, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (709, 'Geres', 168, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (710, 'Ijobalit', 168, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (711, 'Suryawangi', 168, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (712, 'Tanjung', 168, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (713, 'Danger', 169, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (714, 'Kesik', 169, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (715, 'Kumbang', 169, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (716, 'Lendang Nangka', 169, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (717, 'Lendang Nangka Utara', 169, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (718, 'Masbagik Selatan', 169, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (719, 'Masbagik Timur', 169, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (720, 'Masbagik Utara', 169, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (721, 'Masbagik Utara Baru', 169, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (722, 'Paok Motong', 169, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (723, 'Jenggik Utara', 170, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (724, 'Kilang', 170, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (725, 'Lendang Belo', 170, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (726, 'Montong Betok', 170, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (727, 'Perian', 170, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (728, 'Pesanggrahan', 170, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (729, 'Pringga Jurang', 170, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (730, 'Pringga Jurang Utara', 170, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (731, 'Anggaraksa', 171, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (732, 'Apitaik', 171, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (733, 'Bagik Papan', 171, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (734, 'Batuyang', 171, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (735, 'Gunung Malang', 171, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (736, 'Kerumut', 171, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (737, 'Labuhan Lombok', 171, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (738, 'Pohgading', 171, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (739, 'Pringgabaya', 171, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (740, 'Pringgabaya Utara', 171, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (741, 'Pohgading Timur', 171, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (742, 'Seruni Mumbul', 171, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (743, 'Tanak Gadang', 171, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (744, 'Teko', 171, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (745, 'Telaga Waru', 171, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (746, 'Aik Dewa', 172, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (747, 'Jurit', 172, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (748, 'Jurit Baru', 172, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (749, 'Pengadangan', 172, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (750, 'Pengadangan Barat', 172, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (751, 'Pringgasela', 172, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (752, 'Pringgasela Selatan', 172, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (753, 'Pringgasela Timur', 172, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (754, 'Rempung', 172, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (755, 'Timbanuh', 172, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (756, 'Kabar', 173, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (757, 'Keselet', 173, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (758, 'Kuang Baru', 173, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (759, 'Moyot', 173, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (760, 'Peresak', 173, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (761, 'Rumbuk', 173, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (762, 'Rumbuk Timur', 173, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (763, 'Sakra', 173, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (764, 'Sakra Selatan', 173, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (765, 'Songak', 173, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (766, 'Suangi', 173, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (767, 'Suwangi Timur', 173, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (768, 'Gelanggang', 174, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (769, 'Gereneng', 174, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (770, 'Lepak', 174, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (771, 'Montong Tangi', 174, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (772, 'Surabaya', 174, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (773, 'Surabaya Utara', 174, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (774, 'Gereneng Timur', 174, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (775, 'Lepak Timur', 174, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (776, 'Lenting', 174, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (777, 'Menceh', 174, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (778, 'Borok Toyang', 175, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (779, 'Boyemare', 175, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (780, 'Bungtiang', 175, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (781, 'Gadungmas', 175, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (782, 'Gerisak Semanggeleng', 175, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (783, 'Gunung Rajak', 175, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (784, 'Jerogunung', 175, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (785, 'Kembang Are Sampai', 175, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (786, 'Mengkuru', 175, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (787, 'Montong Beter', 175, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (788, 'Pejaring', 175, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (789, 'Pematung', 175, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (790, 'Pengkelakmas', 175, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (791, 'Rensing', 175, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (792, 'Rensing Bat', 175, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (793, 'Rensing Raya', 175, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (794, 'Sukarara', 175, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (795, 'Tanak Kaken', 175, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (796, 'Bagik Manis', 176, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (797, 'Belanting', 176, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (798, 'Dadap', 176, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (799, 'Darakunci', 176, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (800, 'Labuhan Pandan', 176, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (801, 'Madayin', 176, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (802, 'Obel Obel', 176, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (803, 'Padak Guar', 176, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (804, 'Sambelia', 176, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (805, 'Senanggalih', 176, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (806, 'Sugian', 176, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (807, 'Denggen Timur', 177, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (808, 'Denggen', 177, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (809, 'Jorong', 177, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (810, 'Kelayu Selatan', 177, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (811, 'Kelayu Utara', 177, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (812, 'Kembang Sari', 177, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (813, 'Majidi', 177, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (814, 'Pancor', 177, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (815, 'Rakam', 177, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (816, 'Sandubaya', 177, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (817, 'Sekarteja', 177, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (818, 'Selong Kota', 177, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (819, 'Bilok Petung', 178, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (820, 'Sajang', 178, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (821, 'Sembalun', 178, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (822, 'Sembalun Bumbung', 178, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (823, 'Sembalun Lawang', 178, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (824, 'Sembalun Timba Gading', 178, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (825, 'Darmasari', 179, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (826, 'Gelora', 179, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (827, 'Jeruk Manis', 179, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (828, 'Loyok', 179, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (829, 'Kembang Kuning', 179, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (830, 'Kota Raja', 179, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (831, 'Montong Baan', 179, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (832, 'Montong Baan Selatan', 179, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (833, 'Semaya', 179, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (834, 'Sikur', 179, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (835, 'Sikur Barat', 179, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (836, 'Sikur Selatan', 179, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (837, 'Tete Batu', 179, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (838, 'Tetebatu Selatan', 179, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (839, 'Dasan Lekong', 180, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (840, 'Jantuk', 180, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (841, 'Nyiur Tebel', 180, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (842, 'Padamara', 180, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (843, 'Paok Pampang', 180, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (844, 'Setanggor', 180, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (845, 'Setanggor Selatan', 180, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (846, 'Sukamulia', 180, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (847, 'Sukamulia Timur', 180, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (848, 'Anjani', 181, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (849, 'Bagik Payung', 181, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (850, 'Bagik Payung Selatan', 181, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (851, 'Bagik Payung Timur', 181, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (852, 'Bintang Rinjani', 181, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (853, 'Dasan Borok', 181, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (854, 'Dames Damai', 181, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (855, 'Gapuk', 181, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (856, 'Gerung Permai', 181, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (857, 'Kerongkong', 181, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (858, 'Paok Lombok', 181, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (859, 'Suralaga', 181, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (860, 'Tebaban', 181, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (861, 'Tumbuh Mulia', 181, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (862, 'Waringin', 181, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (863, 'Ketangga', 182, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (864, 'Mekar Sari', 182, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (865, 'Perigi', 182, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (866, 'Puncak Jeringo', 182, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (867, 'Sapit', 182, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (868, 'Selaparang', 182, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (869, 'Suela', 182, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (870, 'Suntalangu', 182, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (871, 'Embung Kandong', 183, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (872, 'Embung Raja', 183, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (873, 'Jenggik', 183, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (874, 'Kalianyar', 183, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (875, 'Lando', 183, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (876, 'Leming', 183, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (877, 'Pandan Duri', 183, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (878, 'Rarang', 183, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (879, 'Rarang Batas', 183, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (880, 'Rarang Selatan', 183, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (881, 'Rarang Tengah', 183, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (882, 'Santong', 183, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (883, 'Selagik', 183, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (884, 'Sukadana', 183, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (885, 'Suradadi', 183, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (886, 'Terara', 183, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (887, 'Bandok', 184, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (888, 'Bebidas', 184, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (889, 'Beriri Jarak', 184, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (890, 'Jineng', 184, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (891, 'Karang Baru', 184, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (892, 'Karang Baru Timur', 184, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (893, 'Mamben Daya', 184, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (894, 'Mamben Baru', 184, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (895, 'Mamben Lauk', 184, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (896, 'Otak Rarangan', 184, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (897, 'Tembeng Putik', 184, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (898, 'Wanasaba', 184, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (899, 'Wanasaba Daya', 184, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (900, 'Wanasaba Lauk', 184, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (901, 'Akar-Akar', 185, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (902, 'Anyar', 185, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (903, 'Bayan', 185, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (904, 'Karangbajo', 185, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (905, 'Loloan', 185, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (906, 'Mumbul Sari', 185, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (907, 'Sambik Elen', 185, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (908, 'Senaru', 185, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (909, 'Sukadana', 185, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (910, 'Bentek', 186, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (911, 'Genggelang', 186, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (912, 'Gondang', 186, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (913, 'Rempek', 186, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (914, 'Sambik Bangkol', 186, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (915, 'Dangiang', 187, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (916, 'Gumantar', 187, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (917, 'Kayangan', 187, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (918, 'Pendua', 187, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (919, 'Salut', 187, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (920, 'Santong', 187, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (921, 'Selengen', 187, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (922, 'Sesait', 187, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (923, 'Gili Indah', 188, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (924, 'Malaka', 188, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (925, 'Pemenang Barat', 188, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (926, 'Pemenang Timur', 188, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (927, 'Jenggala', 189, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (928, 'Medana', 189, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (929, 'Sigar Penjalin', 189, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (930, 'Sokong', 189, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (931, 'Tanjung', 189, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (932, 'Tegal Maja', 189, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (933, 'Teniga', 189, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (934, 'Baru', 190, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (935, 'Dalam', 190, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (936, 'Juranalas', 190, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (937, 'Kalimango', 190, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (938, 'Labuhan Alas', 190, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (939, 'Luar', 190, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (940, 'Marenteh', 190, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (941, 'Pulau Bungin', 190, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (942, 'Gontar', 191, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (943, 'Gontar Baru', 191, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (944, 'Labuhan Mapin', 191, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (945, 'Lekong', 191, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (946, 'Mapin Baru', 191, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (947, 'Mapin Kebak', 191, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (948, 'Mapin Rea', 191, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (949, 'Usar Mapin', 191, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (950, 'Bao Desa', 192, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (951, 'Batudulang', 192, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (952, 'Baturotok', 192, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (953, 'Kelungkung', 192, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (954, 'Tangkan Pulit', 192, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (955, 'Tepal', 192, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (956, 'Buin Baru', 193, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (957, 'Juru Mapin', 193, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (958, 'Kalabeso', 193, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (959, 'Labuhan Burung', 193, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (960, 'Pulau Kaung', 193, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (961, 'Tarusa', 193, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (962, 'Boal', 194, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (963, 'Bunga Eja', 194, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (964, 'Empang Atas', 194, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (965, 'Empang Bawah', 194, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (966, 'Gapit', 194, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (967, 'Jotang', 194, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (968, 'Jotang Beru', 194, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (969, 'Lamenta', 194, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (970, 'Ongko', 194, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (971, 'Pamanto', 194, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (972, 'Jaya Makmur', 195, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (973, 'Labangka', 195, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (974, 'Sekokat', 195, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (975, 'Suka Damai', 195, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (976, 'Suka Mulya', 195, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (977, 'Bajo Medang', 196, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (978, 'Bugis Medang', 196, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (979, 'Karang Dima', 196, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (980, 'Labuan Aji', 196, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (981, 'Labuan Sumbawa', 196, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (982, 'Labuhan Badas', 196, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (983, 'Sebotok', 196, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (984, 'Ai Mual', 197, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (985, 'Lantung', 197, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (986, 'Padesa', 197, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (987, 'Sepukur', 197, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (988, 'Dete', 198, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (989, 'Hijrah', 198, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (990, 'Labuhan Kuris', 198, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (991, 'Lape', 198, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (992, 'Ledang', 199, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (993, 'Lenangguar', 199, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (994, 'Tatebal', 199, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (995, 'Emang Lestari', 200, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (996, 'Jamu', 200, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (997, 'Lunyuk Ode', 200, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (998, 'Lunyuk Rea', 200, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (999, 'Pada Suka', 200, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (1000, 'Perung', 200, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (1001, 'Suka Maju', 200, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (1002, 'Berora', 201, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (1003, 'Langam', 201, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (1004, 'Lopok', 201, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (1005, 'Lopok Baru', 201, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (1006, 'Mama', 201, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (1007, 'Pungkit', 201, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (1008, 'Tatede', 201, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (1009, 'Labuhan Sangoro', 202, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (1010, 'Maronge', 202, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (1011, 'Pemasar', 202, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (1012, 'Simu', 202, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (1013, 'Batu Bangka', 203, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (1014, 'Berare', 203, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (1015, 'Kakiang', 203, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (1016, 'Labuhan Ijuk', 203, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (1017, 'Moyo', 203, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (1018, 'Moyo Mekar', 203, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (1019, 'Ngeru', 203, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (1020, 'Olat Rawa', 203, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (1021, 'Poto', 203, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (1022, 'Serading', 203, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (1023, 'Brang Rea', 204, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (1024, 'Batu Bulan', 204, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (1025, 'Batu Tering', 204, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (1026, 'Leseng', 204, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (1027, 'Lito', 204, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (1028, 'Maman', 204, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (1029, 'Marga Karya', 204, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (1030, 'Mokong', 204, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (1031, 'Pernek', 204, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (1032, 'Sebasang', 204, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (1033, 'Semamung', 204, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (1034, 'Sempe', 204, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (1035, 'Baru Tahan', 205, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (1036, 'Kukin', 205, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (1037, 'Penyaring', 205, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (1038, 'Pungkit', 205, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (1039, 'Sebewe', 205, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (1040, 'Songkar', 205, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (1041, 'Kelawis', 206, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (1042, 'Mungkin', 206, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (1043, 'Sebeok', 206, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (1044, 'Senawang', 206, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (1045, 'Brang Kolong', 207, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (1046, 'Muer', 207, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (1047, 'Plampang', 207, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (1048, 'Selante', 207, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (1049, 'Sepakat', 207, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (1050, 'Sepayung', 207, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (1051, 'Sp I Perode', 207, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (1052, 'Sp II Perode', 207, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (1053, 'Sp III Perode', 207, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (1054, 'Teluk Santong', 207, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (1055, 'Usar', 207, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (1056, 'Luk', 208, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (1057, 'Rhee', 208, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (1058, 'Rhee Loka', 208, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (1059, 'Sampe', 208, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (1060, 'Lawin', 209, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (1061, 'Lebangkar', 209, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (1062, 'Lebin', 209, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (1063, 'Lebin Mekar', 209, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (1064, 'Ranan', 209, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (1065, 'Ropang', 209, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (1066, 'Brang Bara', 210, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (1067, 'Brang Biji', 210, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (1068, 'Bugis', 210, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (1069, 'Lempeh', 210, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (1070, 'Pekat', 210, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (1071, 'Samapuin', 210, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (1072, 'Seketeng', 210, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (1073, 'Boak', 211, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (1074, 'Jorok', 211, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (1075, 'Kerato', 211, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (1076, 'Kerekeh', 211, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (1077, 'Nijang', 211, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (1078, 'Pelat', 211, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (1079, 'Pungka', 211, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (1080, 'Uma Beringin', 211, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (1081, 'Bale Brang', 212, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (1082, 'Jorok', 212, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (1083, 'Labuan Bajo', 212, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (1084, 'Motong', 212, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (1085, 'Orong Bawa', 212, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (1086, 'Pukat', 212, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (1087, 'Sabedo', 212, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (1088, 'Stowe Brang', 212, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (1089, 'Tengah', 212, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (1090, 'Banda', 213, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (1091, 'Bantulanteh', 213, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (1092, 'Labuan Aji', 213, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (1093, 'Labuan Bontong', 213, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (1094, 'Labuan Jambu', 213, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (1095, 'Labuhan Pidang', 213, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (1096, 'Mata', 213, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (1097, 'Tolo Oi', 213, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (1098, 'Belo', 214, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (1099, 'Beru', 214, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (1100, 'Dasan Anyar', 214, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (1101, 'Goa', 214, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (1102, 'Banjar', 215, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (1103, 'Batu Putih', 215, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (1104, 'Labuhan Liang', 215, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (1105, 'Labuhan Lalar', 215, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (1106, 'Labuhan Kertasari', 215, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (1107, 'Sermong', 215, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (1108, 'Seloto', 215, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (1109, 'Tamekan', 215, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (1110, 'Arab Kenangan', 215, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (1111, 'Bugis', 215, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (1112, 'Dalam', 215, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (1113, 'Kuang', 215, 'admin', '2020-06-22 01:00:00', '2020-06-22 01:00:00');
INSERT INTO `kelurahan_desa` VALUES (1114, 'Menala', 215, 'admin', NULL, NULL);
INSERT INTO `kelurahan_desa` VALUES (1115, 'Sampir', 215, 'admin', NULL, NULL);
INSERT INTO `kelurahan_desa` VALUES (1116, 'Telaga Bertong', 215, 'admin', NULL, NULL);
INSERT INTO `kelurahan_desa` VALUES (1117, 'Air Suning', 216, 'admin', NULL, NULL);
INSERT INTO `kelurahan_desa` VALUES (1118, 'Desaloka', 216, 'admin', NULL, NULL);
INSERT INTO `kelurahan_desa` VALUES (1119, 'Kelanir', 216, 'admin', NULL, NULL);
INSERT INTO `kelurahan_desa` VALUES (1120, 'Lamusung', 216, 'admin', NULL, NULL);
INSERT INTO `kelurahan_desa` VALUES (1121, 'Meraran', 216, 'admin', NULL, NULL);
INSERT INTO `kelurahan_desa` VALUES (1122, 'Rempe', 216, 'admin', NULL, NULL);
INSERT INTO `kelurahan_desa` VALUES (1123, 'Seran', 216, 'admin', NULL, NULL);
INSERT INTO `kelurahan_desa` VALUES (1124, 'Seteluk Atas', 216, 'admin', NULL, NULL);
INSERT INTO `kelurahan_desa` VALUES (1125, 'Seteluk Tengah', 216, 'admin', NULL, NULL);
INSERT INTO `kelurahan_desa` VALUES (1126, 'Tapir', 216, 'admin', NULL, NULL);
INSERT INTO `kelurahan_desa` VALUES (1127, 'Ai Kangkung', 217, 'admin', NULL, NULL);
INSERT INTO `kelurahan_desa` VALUES (1128, 'Kemuning', 217, 'admin', NULL, NULL);
INSERT INTO `kelurahan_desa` VALUES (1129, 'Sekongkang Atas', 217, 'admin', NULL, NULL);
INSERT INTO `kelurahan_desa` VALUES (1130, 'Sekongkang Bawah', 217, 'admin', NULL, NULL);
INSERT INTO `kelurahan_desa` VALUES (1131, 'Talonang', 217, 'admin', NULL, NULL);
INSERT INTO `kelurahan_desa` VALUES (1132, 'Tatar', 217, 'admin', NULL, NULL);
INSERT INTO `kelurahan_desa` VALUES (1133, 'Tongo', 217, 'admin', NULL, NULL);
INSERT INTO `kelurahan_desa` VALUES (1134, 'Bangkat Monteh', 218, 'admin', NULL, NULL);
INSERT INTO `kelurahan_desa` VALUES (1135, 'Desa Beru', 218, 'admin', NULL, NULL);
INSERT INTO `kelurahan_desa` VALUES (1136, 'Lamuntet', 218, 'admin', NULL, NULL);
INSERT INTO `kelurahan_desa` VALUES (1137, 'Moteng', 218, 'admin', NULL, NULL);
INSERT INTO `kelurahan_desa` VALUES (1138, 'Rarak Ronges', 218, 'admin', NULL, NULL);
INSERT INTO `kelurahan_desa` VALUES (1139, 'Sapugara Bree', 218, 'admin', NULL, NULL);
INSERT INTO `kelurahan_desa` VALUES (1140, 'Seminar Salit', 218, 'admin', NULL, NULL);
INSERT INTO `kelurahan_desa` VALUES (1141, 'Tepas', 218, 'admin', NULL, NULL);
INSERT INTO `kelurahan_desa` VALUES (1142, 'Tepas Sepakat', 218, 'admin', NULL, NULL);
INSERT INTO `kelurahan_desa` VALUES (1143, 'Kiantar', 219, 'admin', NULL, NULL);
INSERT INTO `kelurahan_desa` VALUES (1144, 'Kokarlian', 219, 'admin', NULL, NULL);
INSERT INTO `kelurahan_desa` VALUES (1145, 'Mantar', 219, 'admin', NULL, NULL);
INSERT INTO `kelurahan_desa` VALUES (1146, 'Poto Tano', 219, 'admin', NULL, NULL);
INSERT INTO `kelurahan_desa` VALUES (1147, 'Senayan', 219, 'admin', NULL, NULL);
INSERT INTO `kelurahan_desa` VALUES (1148, 'Tambak Sari', 219, 'admin', NULL, NULL);
INSERT INTO `kelurahan_desa` VALUES (1149, 'Tebo', 219, 'admin', NULL, NULL);
INSERT INTO `kelurahan_desa` VALUES (1150, 'Tuananga', 219, 'admin', NULL, NULL);
INSERT INTO `kelurahan_desa` VALUES (1151, 'Kalimantong', 220, 'admin', NULL, NULL);
INSERT INTO `kelurahan_desa` VALUES (1152, 'Lampok', 220, 'admin', NULL, NULL);
INSERT INTO `kelurahan_desa` VALUES (1153, 'Manemeng', 220, 'admin', NULL, NULL);
INSERT INTO `kelurahan_desa` VALUES (1154, 'Mataiyang', 220, 'admin', NULL, NULL);
INSERT INTO `kelurahan_desa` VALUES (1155, 'Mujahiddin', 220, 'admin', NULL, NULL);
INSERT INTO `kelurahan_desa` VALUES (1156, 'Mura', 220, 'admin', NULL, NULL);
INSERT INTO `kelurahan_desa` VALUES (1157, 'Benete', 221, 'admin', NULL, NULL);
INSERT INTO `kelurahan_desa` VALUES (1158, 'Bukit Damai', 221, 'admin', NULL, NULL);
INSERT INTO `kelurahan_desa` VALUES (1159, 'Maluk', 221, 'admin', NULL, NULL);
INSERT INTO `kelurahan_desa` VALUES (1160, 'Mantun', 221, 'admin', NULL, NULL);
INSERT INTO `kelurahan_desa` VALUES (1161, 'Pasir Putih', 221, 'admin', NULL, NULL);
INSERT INTO `kelurahan_desa` VALUES (1162, 'Jatibaru', 222, 'admin', NULL, NULL);
INSERT INTO `kelurahan_desa` VALUES (1163, 'Jatiwangi', 222, 'admin', NULL, NULL);
INSERT INTO `kelurahan_desa` VALUES (1164, 'Kolo', 222, 'admin', NULL, NULL);
INSERT INTO `kelurahan_desa` VALUES (1165, 'Melayu', 222, 'admin', NULL, NULL);
INSERT INTO `kelurahan_desa` VALUES (1166, 'Lewirato', 223, 'admin', NULL, NULL);
INSERT INTO `kelurahan_desa` VALUES (1167, 'Mande', 223, 'admin', NULL, NULL);
INSERT INTO `kelurahan_desa` VALUES (1168, 'Manggemaci', 223, 'admin', NULL, NULL);
INSERT INTO `kelurahan_desa` VALUES (1169, 'Matakando', 223, 'admin', NULL, NULL);
INSERT INTO `kelurahan_desa` VALUES (1170, 'Monggonao', 223, 'admin', NULL, NULL);
INSERT INTO `kelurahan_desa` VALUES (1171, 'Panggi', 223, 'admin', NULL, NULL);
INSERT INTO `kelurahan_desa` VALUES (1172, 'Penatoi', 223, 'admin', NULL, NULL);
INSERT INTO `kelurahan_desa` VALUES (1173, 'Sadia', 223, 'admin', NULL, NULL);
INSERT INTO `kelurahan_desa` VALUES (1174, 'Santi', 223, 'admin', NULL, NULL);
INSERT INTO `kelurahan_desa` VALUES (1175, 'Sambinae', 223, 'admin', NULL, NULL);
INSERT INTO `kelurahan_desa` VALUES (1176, 'Kendo', 224, 'admin', NULL, NULL);
INSERT INTO `kelurahan_desa` VALUES (1177, 'Nitu', 224, 'admin', NULL, NULL);
INSERT INTO `kelurahan_desa` VALUES (1178, 'Ntobo', 224, 'admin', NULL, NULL);
INSERT INTO `kelurahan_desa` VALUES (1179, 'Penanae', 224, 'admin', NULL, NULL);
INSERT INTO `kelurahan_desa` VALUES (1180, 'Penaraga', 224, 'admin', NULL, NULL);
INSERT INTO `kelurahan_desa` VALUES (1181, 'Rabangodu Barat', 224, 'admin', NULL, NULL);
INSERT INTO `kelurahan_desa` VALUES (1182, 'Rabangodu Selatan', 224, 'admin', NULL, NULL);
INSERT INTO `kelurahan_desa` VALUES (1183, 'Rabangodu Timur', 224, 'admin', NULL, NULL);
INSERT INTO `kelurahan_desa` VALUES (1184, 'Rabangodu Utara', 224, 'admin', NULL, NULL);
INSERT INTO `kelurahan_desa` VALUES (1185, 'Rite', 224, 'admin', NULL, NULL);
INSERT INTO `kelurahan_desa` VALUES (1186, 'Rontu', 224, 'admin', NULL, NULL);
INSERT INTO `kelurahan_desa` VALUES (1187, 'Dara', 225, 'admin', NULL, NULL);
INSERT INTO `kelurahan_desa` VALUES (1188, 'Nae', 225, 'admin', NULL, NULL);
INSERT INTO `kelurahan_desa` VALUES (1189, 'Pane', 225, 'admin', NULL, NULL);
INSERT INTO `kelurahan_desa` VALUES (1190, 'Paruga', 225, 'admin', NULL, NULL);
INSERT INTO `kelurahan_desa` VALUES (1191, 'Sarae', 225, 'admin', NULL, NULL);
INSERT INTO `kelurahan_desa` VALUES (1192, 'Tanjung', 225, 'admin', NULL, NULL);
INSERT INTO `kelurahan_desa` VALUES (1193, 'Dodu', 226, 'admin', NULL, NULL);
INSERT INTO `kelurahan_desa` VALUES (1194, 'Kodo', 226, 'admin', NULL, NULL);
INSERT INTO `kelurahan_desa` VALUES (1195, 'Kumbe', 226, 'admin', NULL, NULL);
INSERT INTO `kelurahan_desa` VALUES (1196, 'Lampe', 226, 'admin', NULL, NULL);
INSERT INTO `kelurahan_desa` VALUES (1197, 'Lelamase', 226, 'admin', NULL, NULL);
INSERT INTO `kelurahan_desa` VALUES (1198, 'Nungga', 226, 'admin', NULL, NULL);
INSERT INTO `kelurahan_desa` VALUES (1199, 'Oi Fo\'o', 226, 'admin', NULL, NULL);
INSERT INTO `kelurahan_desa` VALUES (1200, 'Ampenan Selatan', 227, 'admin', NULL, NULL);
INSERT INTO `kelurahan_desa` VALUES (1201, 'Ampenan Tengah', 227, 'admin', NULL, NULL);
INSERT INTO `kelurahan_desa` VALUES (1202, 'Ampenan Utara', 227, 'admin', NULL, NULL);
INSERT INTO `kelurahan_desa` VALUES (1203, 'Banjar', 227, 'admin', NULL, NULL);
INSERT INTO `kelurahan_desa` VALUES (1204, 'Bintaro', 227, 'admin', NULL, NULL);
INSERT INTO `kelurahan_desa` VALUES (1205, 'Dayan Peken', 227, 'admin', NULL, NULL);
INSERT INTO `kelurahan_desa` VALUES (1206, 'Kebun Sari', 227, 'admin', NULL, NULL);
INSERT INTO `kelurahan_desa` VALUES (1207, 'Pajarakan Karya', 227, 'admin', NULL, NULL);
INSERT INTO `kelurahan_desa` VALUES (1208, 'Pejeruk', 227, 'admin', NULL, NULL);
INSERT INTO `kelurahan_desa` VALUES (1209, 'Taman Sari', 227, 'admin', NULL, NULL);
INSERT INTO `kelurahan_desa` VALUES (1210, 'Cakranegara Barat', 228, 'admin', NULL, NULL);
INSERT INTO `kelurahan_desa` VALUES (1211, 'Cakranegara Selatan', 228, 'admin', NULL, NULL);
INSERT INTO `kelurahan_desa` VALUES (1212, 'Cakranegara Selatan Baru', 228, 'admin', NULL, NULL);
INSERT INTO `kelurahan_desa` VALUES (1213, 'Cakranegara Timur', 228, 'admin', NULL, NULL);
INSERT INTO `kelurahan_desa` VALUES (1214, 'Cakranegara Utara', 228, 'admin', NULL, NULL);
INSERT INTO `kelurahan_desa` VALUES (1215, 'Cilinaya', 228, 'admin', NULL, NULL);
INSERT INTO `kelurahan_desa` VALUES (1216, 'Karang Taliwang', 228, 'admin', NULL, NULL);
INSERT INTO `kelurahan_desa` VALUES (1217, 'Mayura', 228, 'admin', NULL, NULL);
INSERT INTO `kelurahan_desa` VALUES (1218, 'Sapta Marga', 228, 'admin', NULL, NULL);
INSERT INTO `kelurahan_desa` VALUES (1219, 'Sayang-sayang', 228, 'admin', NULL, NULL);
INSERT INTO `kelurahan_desa` VALUES (1220, 'Mataram Timur', 229, 'admin', NULL, NULL);
INSERT INTO `kelurahan_desa` VALUES (1221, 'Pagesangan', 229, 'admin', NULL, NULL);
INSERT INTO `kelurahan_desa` VALUES (1222, 'Pagesangan Barat', 229, 'admin', NULL, NULL);
INSERT INTO `kelurahan_desa` VALUES (1223, 'Pagesangan Timur', 229, 'admin', NULL, NULL);
INSERT INTO `kelurahan_desa` VALUES (1224, 'Pagutan', 229, 'admin', NULL, NULL);
INSERT INTO `kelurahan_desa` VALUES (1225, 'Pagutan Barat', 229, 'admin', NULL, NULL);
INSERT INTO `kelurahan_desa` VALUES (1226, 'Pagutan Timur', 229, 'admin', NULL, NULL);
INSERT INTO `kelurahan_desa` VALUES (1227, 'Pejanggik', 229, 'admin', NULL, NULL);
INSERT INTO `kelurahan_desa` VALUES (1228, 'Punia', 229, 'admin', NULL, NULL);
INSERT INTO `kelurahan_desa` VALUES (1229, 'Abian Tubuh Baru', 230, 'admin', NULL, NULL);
INSERT INTO `kelurahan_desa` VALUES (1230, 'Babakan', 230, 'admin', NULL, NULL);
INSERT INTO `kelurahan_desa` VALUES (1231, 'Bertais', 230, 'admin', NULL, NULL);
INSERT INTO `kelurahan_desa` VALUES (1232, 'Dasan Cermen', 230, 'admin', NULL, NULL);
INSERT INTO `kelurahan_desa` VALUES (1233, 'Mandalika', 230, 'admin', NULL, NULL);
INSERT INTO `kelurahan_desa` VALUES (1234, 'Selagalas', 230, 'admin', NULL, NULL);
INSERT INTO `kelurahan_desa` VALUES (1235, 'Turida', 230, 'admin', NULL, NULL);
INSERT INTO `kelurahan_desa` VALUES (1236, 'Jempong Baru', 231, 'admin', NULL, NULL);
INSERT INTO `kelurahan_desa` VALUES (1237, 'Karang Pule', 231, 'admin', NULL, NULL);
INSERT INTO `kelurahan_desa` VALUES (1238, 'Kekalik Jaya', 231, 'admin', NULL, NULL);
INSERT INTO `kelurahan_desa` VALUES (1239, 'Tanjung Karang', 231, 'admin', NULL, NULL);
INSERT INTO `kelurahan_desa` VALUES (1240, 'Tanjung Karang Permai', 231, 'admin', NULL, NULL);
INSERT INTO `kelurahan_desa` VALUES (1241, 'Dasan Agung', 232, 'admin', NULL, NULL);
INSERT INTO `kelurahan_desa` VALUES (1242, 'Dasan Agung Baru', 232, 'admin', NULL, NULL);
INSERT INTO `kelurahan_desa` VALUES (1243, 'Gomong', 232, 'admin', NULL, NULL);
INSERT INTO `kelurahan_desa` VALUES (1244, 'Karang Baru', 232, 'admin', NULL, NULL);
INSERT INTO `kelurahan_desa` VALUES (1245, 'Mataram Barat', 232, 'admin', NULL, NULL);
INSERT INTO `kelurahan_desa` VALUES (1246, 'Monjok', 232, 'admin', NULL, NULL);
INSERT INTO `kelurahan_desa` VALUES (1247, 'Monjok Barat', 232, 'admin', NULL, NULL);
INSERT INTO `kelurahan_desa` VALUES (1248, 'Monjok Timur', 232, 'admin', NULL, NULL);
INSERT INTO `kelurahan_desa` VALUES (1249, 'Rembiga', 232, 'admin', NULL, NULL);
INSERT INTO `kelurahan_desa` VALUES (1250, 'Lembah Sempage', 145, 'admin', '2020-07-25 20:41:39', '2020-07-25 20:41:39');
INSERT INTO `kelurahan_desa` VALUES (1251, 'Pedua', 187, 'admin', '2020-07-25 21:04:10', '2020-07-25 21:04:10');
INSERT INTO `kelurahan_desa` VALUES (1252, 'Gili Genting', 146, 'admin', '2020-07-25 21:55:05', '2020-07-25 21:55:05');
INSERT INTO `kelurahan_desa` VALUES (1253, 'Biloq Pitung', 178, 'admin', '2020-07-27 08:55:45', '2020-07-27 08:55:45');
INSERT INTO `kelurahan_desa` VALUES (1254, 'Selang', 211, 'admin', '2020-07-27 10:08:37', '2020-07-27 10:08:37');
INSERT INTO `kelurahan_desa` VALUES (1255, 'Madaprama', 88, 'admin', '2020-07-27 10:10:46', '2020-07-27 10:10:46');
INSERT INTO `kelurahan_desa` VALUES (1256, 'Medain', 176, 'admin', '2020-07-27 10:43:52', '2020-07-27 10:43:52');
INSERT INTO `kelurahan_desa` VALUES (1257, 'Segara Katon', 186, 'admin', '2020-07-27 11:09:39', '2020-07-27 11:09:39');

-- ----------------------------
-- Table structure for kewenangan_provinsi
-- ----------------------------
DROP TABLE IF EXISTS `kewenangan_provinsi`;
CREATE TABLE `kewenangan_provinsi`  (
  `kewenangan_provinsi_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `kewenangan_provinsi_deskripsi_kegiatan` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `kewenangan_provinsi_jenis_infrastruktur` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `kewenangan_provinsi_tahun` int(11) NOT NULL,
  `kewenangan_provinsi_nilai` double(15, 2) NOT NULL DEFAULT 0.00,
  `kewenangan_provinsi_penanggung_jawab` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `kewenangan_provinsi_spesifikasi` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `kewenangan_provinsi_keterangan` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `infrastruktur_id` bigint(20) NOT NULL,
  `sumber_dana_nama` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `pengguna_id` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`kewenangan_provinsi_id`) USING BTREE,
  INDEX `kewenangan_provinsi_pengguna_id_foreign`(`pengguna_id`) USING BTREE,
  INDEX `kewenangan_provinsi_sumber_dana_nama_foreign`(`sumber_dana_nama`) USING BTREE,
  CONSTRAINT `kewenangan_provinsi_pengguna_id_foreign` FOREIGN KEY (`pengguna_id`) REFERENCES `pengguna` (`pengguna_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `kewenangan_provinsi_sumber_dana_nama_foreign` FOREIGN KEY (`sumber_dana_nama`) REFERENCES `sumber_dana` (`sumber_dana_nama`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for mata_air
-- ----------------------------
DROP TABLE IF EXISTS `mata_air`;
CREATE TABLE `mata_air`  (
  `mata_air_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `mata_air_nama` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `mata_air_debit` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `kabupaten_kota_id` bigint(20) UNSIGNED NULL DEFAULT NULL,
  `kecamatan_id` bigint(20) UNSIGNED NULL DEFAULT NULL,
  `kelurahan_desa_id` bigint(20) UNSIGNED NULL DEFAULT NULL,
  `marker` point NULL,
  `polyline` linestring NULL,
  `polygon` polygon NULL,
  `pengguna_id` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `kewenangan_provinsi` tinyint(4) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`mata_air_id`) USING BTREE,
  INDEX `mata_air_pengguna_id_foreign`(`pengguna_id`) USING BTREE,
  INDEX `mata_air_kelurahan_desa_id_foreign`(`kelurahan_desa_id`) USING BTREE,
  INDEX `mata_air_kabupaten_kota_id_foreign`(`kabupaten_kota_id`) USING BTREE,
  INDEX `mata_air_kecamatan_id_foreign`(`kecamatan_id`) USING BTREE,
  CONSTRAINT `mata_air_kabupaten_kota_id_foreign` FOREIGN KEY (`kabupaten_kota_id`) REFERENCES `kabupaten_kota` (`kabupaten_kota_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `mata_air_kecamatan_id_foreign` FOREIGN KEY (`kecamatan_id`) REFERENCES `kecamatan` (`kecamatan_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `mata_air_kelurahan_desa_id_foreign` FOREIGN KEY (`kelurahan_desa_id`) REFERENCES `kelurahan_desa` (`kelurahan_desa_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `mata_air_pengguna_id_foreign` FOREIGN KEY (`pengguna_id`) REFERENCES `pengguna` (`pengguna_id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 873 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mata_air
-- ----------------------------
INSERT INTO `mata_air` VALUES (1, 'Joret Kembang', '1', NULL, NULL, 837, NULL, NULL, NULL, 'admin', 0, NULL, '2020-07-27 10:13:58');
INSERT INTO `mata_air` VALUES (2, 'Nyeredep', '26', NULL, NULL, 551, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (3, 'Petepung', '0', NULL, NULL, 189, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (4, 'Kelebutan Lading-lading', '0', NULL, NULL, 189, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (5, 'Berantah', '0', NULL, NULL, 189, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (6, 'Karang Langu 1', '12', NULL, NULL, 189, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (7, 'Karang Lagu 2', '12', NULL, NULL, 189, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (8, 'Bebengan', '7.67', NULL, NULL, 189, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (9, 'Beli I', '11.17', NULL, NULL, 189, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (10, 'Beli II', '17.86', NULL, NULL, 189, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (11, 'Beli III', '25.71', NULL, NULL, 189, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (12, 'Kandang Kaok', '2', NULL, NULL, 189, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (13, 'Pancor Bunut', '4', NULL, NULL, 386, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (14, 'Pancor Mas', '0', NULL, NULL, 407, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (15, 'Dasan Tebu', '0', NULL, NULL, 408, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (16, 'Lembah Sempage', '120', NULL, NULL, 411, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (17, 'Pancor Batu Belah', '0', NULL, NULL, 412, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (18, 'Mertak', '0', NULL, NULL, 413, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (19, 'Goak', '0', NULL, NULL, 413, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (20, 'Kuluh', '0', NULL, NULL, 413, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (21, 'Temas', '29.18', NULL, NULL, 418, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (22, 'Gandari I', '67.6', NULL, NULL, 420, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (23, 'Gandari II', '0', NULL, NULL, 420, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (24, 'Gandawari', '68.7', NULL, NULL, 420, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (25, 'Narmada', '0', NULL, NULL, 420, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (26, 'Lembuak', '29.18', NULL, NULL, 420, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (27, 'Pancor Godang', '10.03', NULL, NULL, 423, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (28, 'Tanak Tepong', '10.03', NULL, NULL, 423, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (29, 'Montong ', '66.43', NULL, NULL, 426, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (30, 'Aik Nyet', '541', NULL, NULL, 428, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (31, 'Bentoyang', '198.1', NULL, NULL, 428, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (32, 'Bunut Ngengkang', '745', NULL, NULL, 428, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (33, 'Jelateng', '0', NULL, NULL, 428, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (34, 'Ranget I', '77.98', NULL, NULL, 428, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (35, 'Ranget II', '50.69', NULL, NULL, 428, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (36, 'Ranget III', '730.98', NULL, NULL, 428, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (37, 'Pemotoh I', '19.7', NULL, NULL, 428, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (38, 'Pemotoh II', '69.9', NULL, NULL, 428, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (39, 'Orong Petung I', '21.2', NULL, NULL, 428, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (40, 'Orong Petung II', '14.2', NULL, NULL, 428, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (41, 'Orong Petung', '5.86', NULL, NULL, 428, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (42, 'Kokok Jelateng', '0', NULL, NULL, 428, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (43, 'Suranadi Hulu', '173.8', NULL, NULL, 429, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (44, 'Suranadi Hilir', '207.5', NULL, NULL, 429, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (45, 'Suranadi Teratai', '7.13', NULL, NULL, 429, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (46, 'Suranadi', '173.8', NULL, NULL, 429, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (47, 'Mertak Lingkuk Joet ', '0.45', NULL, NULL, 433, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (48, 'Aik Semin', '0.01', NULL, NULL, 433, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (49, 'Aik Tangi', '0.15', NULL, NULL, 437, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (50, 'Pancor', '0', NULL, NULL, 437, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (51, 'Lingkok Juwet', '0', NULL, NULL, 438, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (52, 'Lat Pancor', '0', NULL, NULL, 438, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (53, 'Taman', '0', NULL, NULL, 438, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (54, 'Bunut Ungkah', '0.15', NULL, NULL, 438, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (55, 'Dopang', '0', NULL, NULL, 453, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (56, 'Gria', '10', NULL, NULL, 454, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (57, 'Kol -Kol', '0', NULL, NULL, 458, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (58, 'Kemalian', '0', NULL, NULL, 458, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (59, 'Batu Goling', '0', NULL, NULL, 458, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (60, 'Manggong', '95', NULL, NULL, 468, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (61, 'Buwun Mas', '10', NULL, NULL, 468, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (62, 'Goa Perapi', '173', NULL, NULL, 468, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (63, 'Gua Perapi', '121', NULL, NULL, 469, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (64, 'Serepak', '0', NULL, NULL, 478, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (65, 'Saraswaka', '135.2', NULL, NULL, 479, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (66, 'Sarasuta', '30.2', NULL, NULL, 479, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (67, 'Sarasuta I', '328.8', NULL, NULL, 479, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (68, 'Sarasuta II (BBI)', '149.14', NULL, NULL, 479, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (69, 'Sungai : SPL Penimbung', '0', NULL, NULL, 479, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (70, 'Sungai : Serepak', '0', NULL, NULL, 479, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (71, 'Pura Lingsar I', '60.1', NULL, NULL, 479, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (72, 'Pura Lingsar II', '0', NULL, NULL, 479, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (73, 'Pancor Siwak', '162', NULL, NULL, 479, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (74, 'Lingsar', '60.1', NULL, NULL, 479, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (75, 'Pemancingan', '0', NULL, NULL, 485, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (76, 'Bawak Goak', '0', NULL, NULL, 485, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (77, 'Jembatan kembar', '0', NULL, NULL, 485, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (78, 'Goak Grebekan', '0', NULL, NULL, 485, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (79, 'Eat Semaye', '0', NULL, NULL, 498, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (80, 'Aik Jambe', '0', NULL, NULL, 505, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (81, 'Lingkok pedaleman', '0', NULL, NULL, 505, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (82, 'Embulan Dasan Cermen', '1', NULL, NULL, 508, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (83, 'Kiai Baduah', '1', NULL, NULL, 508, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (84, 'Lingkok Berora', '1', NULL, NULL, 508, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (85, 'Pancor Siwak I', '1', NULL, NULL, 508, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (86, 'Pancor Siwak II', '1.5', NULL, NULL, 508, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (87, 'Pancoran H Mashur', '1', NULL, NULL, 508, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (88, 'Wakaf Halil', '1', NULL, NULL, 508, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (89, 'Lengkok Lekong', '0', NULL, NULL, 508, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (90, 'Sengkol II', '0', NULL, NULL, 508, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (91, 'Antak-antak/ Gb Bangsal', '0', NULL, NULL, 508, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (92, 'Gentungan', '0', NULL, NULL, 508, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (93, 'Lengkok Bunut', '0', NULL, NULL, 510, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (94, 'Lengkok Embung', '0', NULL, NULL, 510, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (95, 'Gerantungan', '0', NULL, NULL, 510, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (96, 'Gng Kedul', '0', NULL, NULL, 510, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (97, 'Repuk Prine', '0', NULL, NULL, 510, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (98, 'Lingkok Sanggah', '1', NULL, NULL, 513, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (99, 'Pengempal', '15', NULL, NULL, 513, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (100, 'Selewat', '0', NULL, NULL, 514, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (101, 'Tanak Embang', '0', NULL, NULL, 516, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (102, 'Embulan Goak', '91', NULL, NULL, 518, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (103, 'PDAM Benang Stukel', '63.86', NULL, NULL, 518, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (104, 'Gunung Jae I', '0', NULL, NULL, 518, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (105, 'Gunung Jae II', '0', NULL, NULL, 518, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (106, 'Benang Stukel', '85.89', NULL, NULL, 518, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (107, 'PDAM Benang Stukel', '113.86', NULL, NULL, 518, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (108, 'Benang Kelambu', '562.02', NULL, NULL, 518, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (109, 'Dao', '0', NULL, NULL, 518, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (110, 'Embulan Waru', '20', NULL, NULL, 518, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (111, 'Embulan Salak (Salak)', '125.7', NULL, NULL, 518, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (112, 'Goak', '60.19', NULL, NULL, 518, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (113, 'Klucing', '140.18', NULL, NULL, 518, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (114, 'Pemotoh Barat I', '28.1', NULL, NULL, 518, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (115, 'Pemotoh Barat II', '26.2', NULL, NULL, 518, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (116, 'Pemotoh Tengah I', '49.39', NULL, NULL, 518, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (117, 'Pemotoh Tengah II', '67.7', NULL, NULL, 518, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (118, 'Selak Aik', '20.07', NULL, NULL, 518, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (119, 'Wakul I', '219.9', NULL, NULL, 518, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (120, 'Wakul II', '92.2', NULL, NULL, 518, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (121, 'Tibu Nangklok', '200', NULL, NULL, 518, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (122, 'Embulan Kali Babak', '93.1', NULL, NULL, 518, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (123, 'Otak Kokoh', '0', NULL, NULL, 518, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (124, 'Janggot', '24.5', NULL, NULL, 518, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (125, 'Tibu Kemeres', '0', NULL, NULL, 518, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (126, 'Kliwun', '300', NULL, NULL, 518, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (127, 'Tembing Keke', '14', NULL, NULL, 518, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (128, 'Batu Keciwe', '50', NULL, NULL, 518, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (129, 'Tanak Emas', '1.2', NULL, NULL, 518, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (130, 'Sesere', '200', NULL, NULL, 518, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (131, 'Kolam Aik Bukak', '36.67', NULL, NULL, 519, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (132, 'Aik Bone', '72.29/12.3', NULL, NULL, 519, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (133, 'PDAM Aik Bone', '32.32', NULL, NULL, 519, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (134, 'Petikus I', '169', NULL, NULL, 519, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (135, 'Petikus II', '2.5', NULL, NULL, 519, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (136, 'Petikus III', '2.5', NULL, NULL, 519, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (137, 'Petikus IV', '4.5', NULL, NULL, 519, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (138, 'Pancor Dendeng I (Dare Dendeng)', '15.43', NULL, NULL, 519, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (139, 'Pancor Dendeng II (Tangin-Angin)', '10.12', NULL, NULL, 519, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (140, 'Pancor Jeruti', '0', NULL, NULL, 519, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (141, 'Montong Kemo', '28', NULL, NULL, 519, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (142, 'Pancor Duren', '15', NULL, NULL, 519, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (143, 'Pancor Gerobak', '16.16', NULL, NULL, 519, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (144, 'Batu Ngrenseng', '0', NULL, NULL, 519, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (145, 'Dare Dendeng', '0', NULL, NULL, 519, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (146, 'Gunung Malang', '15', NULL, NULL, 520, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (147, 'Meredet', '0', NULL, NULL, 520, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (148, 'Eat Pete', '0', NULL, NULL, 520, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (149, 'Kelebut 1', '10.1', NULL, NULL, 520, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (150, 'Kelebut 2', '3.1', NULL, NULL, 520, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (151, 'Gunung Malang', '5.1', NULL, NULL, 520, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (152, 'Mindre', '0', NULL, NULL, 520, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (153, 'Pancor Gres', '0', NULL, NULL, 520, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (154, 'Selojan', '0', NULL, NULL, 520, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (155, 'Sintung Timur', '0', NULL, NULL, 520, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (156, 'Embukan Melati', '0', NULL, NULL, 520, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (157, 'Gubuk Jati', '0', NULL, NULL, 520, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (158, 'Rangkap', '0', NULL, NULL, 520, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (159, 'Sintung Barat', '0', NULL, NULL, 520, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (160, 'Eat Terep', '21.7', NULL, NULL, 521, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (161, 'Merobot', '0', NULL, NULL, 521, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (162, 'Mata Air Kebon Kopi HGU', '0', NULL, NULL, 521, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (163, 'Rerantik', '2', NULL, NULL, 521, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (164, 'Simbe', '5', NULL, NULL, 521, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (165, 'Eyat Pemasir', '5', NULL, NULL, 521, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (166, 'Eyat Melak', '0', NULL, NULL, 521, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (167, 'Gb. Makam', '0', NULL, NULL, 521, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (168, 'Sempur', '0', NULL, NULL, 521, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (169, 'Lantan Daya', '0', NULL, NULL, 521, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (170, 'Eyat Pakis', '0', NULL, NULL, 521, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (171, 'Eyat Peji', '0', NULL, NULL, 521, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (172, 'Penokasih 1', '4', NULL, NULL, 522, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (173, 'Pesongkah', '2', NULL, NULL, 522, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (174, 'Pekasih II', '4', NULL, NULL, 522, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (175, 'Selusuh', '0', NULL, NULL, 522, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (176, 'Keranji', '0', NULL, NULL, 522, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (177, 'Aik Leneng', '47.71', NULL, NULL, 523, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (178, 'Calok Dure', '0', NULL, NULL, 523, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (179, 'Pengenem Daye I, II, III, IV', '288.97', NULL, NULL, 523, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (180, 'Pengenem Daye II', '0', NULL, NULL, 523, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (181, 'Pengenem Daye III', '0', NULL, NULL, 523, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (182, 'Pengenem Daye IV', '0', NULL, NULL, 523, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (183, 'Pengenem Daye V', '5.77', NULL, NULL, 523, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (184, 'Pengenem Daye VI', '25.92', NULL, NULL, 523, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (185, 'Pengenem Daye VII', '7.94', NULL, NULL, 523, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (186, 'Montong Keme', '19.05', NULL, NULL, 523, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (187, 'Skedek', '15.04', NULL, NULL, 523, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (188, 'Baran Mayung', '8', NULL, NULL, 523, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (189, 'Kumbak Luah', '0', NULL, NULL, 523, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (190, 'Tatik Amat', '98', NULL, NULL, 523, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (191, 'Pengenem Daye', '35.9', NULL, NULL, 523, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (192, 'Manduk I', '25.45', NULL, NULL, 524, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (193, 'Manduk II', '2.78', NULL, NULL, 524, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (194, 'Tanggluk', '0', NULL, NULL, 524, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (195, 'Manduk', '1', NULL, NULL, 524, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (196, 'Tanak Beak', '0', NULL, NULL, 524, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (197, 'Lembuk', '0', NULL, NULL, 525, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (198, 'Jengguar', '0', NULL, NULL, 525, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (199, 'Linkok Sukur', '0', NULL, NULL, 531, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (200, 'Gunting Otak Desa', '0', NULL, NULL, 531, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (201, 'Lingkok Sandat', '0', NULL, NULL, 531, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (202, 'Sandat', '0', NULL, NULL, 532, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (203, 'Pepao', '0', NULL, NULL, 532, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (204, 'Batu Payung', '0', NULL, NULL, 533, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (205, 'Montong Bageq', '0', NULL, NULL, 536, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (206, 'Ngengget', '0', NULL, NULL, 536, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (207, 'Suling', '0', NULL, NULL, 536, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (208, 'Bun Ganti', '10', NULL, NULL, 540, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (209, 'Lingkok Rejeng', '0', NULL, NULL, 552, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (210, 'Batu Nampar', '0.35', NULL, NULL, 554, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (211, 'Bual Kiri', '65.97', NULL, NULL, 561, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (212, 'Bual Kanan', '11.33', NULL, NULL, 561, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (213, 'Peseng', '1.16', NULL, NULL, 561, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (214, 'Nyeredet', '4.29', NULL, NULL, 561, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (215, 'Sumbek', '0', NULL, NULL, 561, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (216, 'Tibu Bara', '10.59', NULL, NULL, 561, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (217, 'Aiq Bual', '75', NULL, NULL, 561, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (218, 'Talun Ambon', '0', NULL, NULL, 561, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (219, 'Embung Bual', '0', NULL, NULL, 561, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (220, 'Ramus', '0', NULL, NULL, 561, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (221, 'Lendang Pengkores', '0', NULL, NULL, 561, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (222, 'Kuang Rase', '0', NULL, NULL, 561, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (223, 'Paok Rengge', '0', NULL, NULL, 561, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (224, 'Wajageseng', '0', NULL, NULL, 561, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (225, 'Mertak Tombok', '0', NULL, NULL, 566, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (226, 'WTP. Penujak', '85', NULL, NULL, 578, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (227, 'Bile Tengak', '0', NULL, NULL, 582, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (228, 'Tebaer', '8750', NULL, NULL, 589, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (229, 'Rumpang Rmeneng', '122', NULL, NULL, 590, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (230, 'Aik Enem', '0', NULL, NULL, 610, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (231, 'Penyambak', '0', NULL, NULL, 610, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (232, 'Bat Eat', '0', NULL, NULL, 616, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (233, 'Sayang', '0', NULL, NULL, 618, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (234, 'Sengkerang', '0', NULL, NULL, 618, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (235, 'Dodal', '0', NULL, NULL, 619, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (236, 'Dusun Bagu Dasan', '0', NULL, NULL, 621, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (237, 'Repok Medas 1', '0', NULL, NULL, 621, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (238, 'Repok Medas 2', '0', NULL, NULL, 621, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (239, 'Goroh', '1', NULL, NULL, 624, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (240, 'Lingkuk Bawak Tereng', '0.5', NULL, NULL, 624, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (241, 'Lingkok Gol I', '2', NULL, NULL, 624, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (242, 'Lingkok Gol II', '1', NULL, NULL, 624, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (243, 'Lingkok H Idris', '1.3', NULL, NULL, 624, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (244, 'Lingkok Borok', '1.3', NULL, NULL, 624, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (245, 'Lingkok Borok', '1', NULL, NULL, 624, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (246, 'Lingkok Amaq Sidun I', '1.2', NULL, NULL, 624, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (247, 'Lingkok Amaq Sidun II', '1.2', NULL, NULL, 624, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (248, 'Lingkok Amaq Sidun III', '1.4', NULL, NULL, 624, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (249, 'Lingkok Snipah', '1.6', NULL, NULL, 624, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (250, 'Lingkok Embung', '1.2', NULL, NULL, 624, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (251, 'Lingkok Goroh', '1', NULL, NULL, 624, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (252, 'Lingkok Treng', '1.5', NULL, NULL, 624, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (253, 'Lingkok Waru', '3.5', NULL, NULL, 624, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (254, 'Kebon Treng', '12', NULL, NULL, 624, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (255, 'Lingkok Pancor Gede I', '65', NULL, NULL, 624, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (256, 'Lingkok Padamara', '1.2', NULL, NULL, 624, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (257, 'Lingkok Lauk', '1.5', NULL, NULL, 624, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (258, 'Lingkok Timuk I', '1', NULL, NULL, 624, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (259, 'Lingkok Timuk ', '1', NULL, NULL, 624, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (260, 'Lingkok Sari', '1.5', NULL, NULL, 624, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (261, 'Pancor Gede II', '1.2', NULL, NULL, 624, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (262, 'Pancor Gede III', '1.5', NULL, NULL, 624, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (263, 'Tumpang Sari', '1.2', NULL, NULL, 624, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (264, 'Timbe Melah', '1.5', NULL, NULL, 624, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (265, 'Sedau', '0', NULL, NULL, 625, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (266, 'Kebun Sirih', '0', NULL, NULL, 625, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (267, 'Pemepek Barat', '0', NULL, NULL, 625, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (268, 'Pemepek I', '0', NULL, NULL, 625, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (269, 'Pemepek II', '0', NULL, NULL, 625, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (270, 'Pancor Mitak', '0', NULL, NULL, 625, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (271, 'Sedau Barat', '0', NULL, NULL, 625, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (272, 'Repok Pidendang', '0', NULL, NULL, 625, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (273, 'Repok Spakek', '0', NULL, NULL, 625, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (274, 'Sedau Timur', '0', NULL, NULL, 625, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (275, 'Rarung', '0', NULL, NULL, 625, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (276, 'Bunut Bendera', '0', NULL, NULL, 625, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (277, 'Lingkok Waru I', '23', NULL, NULL, 627, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (278, 'Lingkok Waru II', '25', NULL, NULL, 627, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (279, 'Presak', '1.5', NULL, NULL, 627, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (280, 'Putri Manik', '1.5', NULL, NULL, 627, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (281, 'Montong Rame', '1.5', NULL, NULL, 627, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (282, 'Uluan', '0', NULL, NULL, 639, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (283, 'Perabu', '0', NULL, NULL, 639, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (284, 'Pendaus Jaran', '0', NULL, NULL, 639, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (285, 'Uluan', '0', NULL, NULL, 639, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (286, 'Lingsar', '0', NULL, NULL, 639, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (287, 'Timba Pituk', '582', NULL, NULL, 648, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (288, 'Pesanggrahan', '15', NULL, NULL, 648, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (289, 'Pesanggrahan I', '57.04', NULL, NULL, 648, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (290, 'Pesanggrahan II', '58.99', NULL, NULL, 648, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (291, 'Pesanggrahan III', '0', NULL, NULL, 648, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (292, 'Meloang', '12', NULL, NULL, 648, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (293, 'Mualan', '75-100', NULL, NULL, 648, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (294, 'Lomaq', '0', NULL, NULL, 651, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (295, 'Jelateng', '417.35', NULL, NULL, 651, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (296, 'Batu Santek', '30', NULL, NULL, 651, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (297, 'Aik Asak', '20', NULL, NULL, 651, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (298, 'Aik Bakang', '35-40', NULL, NULL, 651, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (299, 'Odang', '87.57', NULL, NULL, 651, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (300, 'Dondong', '39.56', NULL, NULL, 651, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (301, 'Ijo', '106.18', NULL, NULL, 658, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (302, 'Kedatuk', '11.79', NULL, NULL, 658, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (303, 'Koak', '6.88', NULL, NULL, 658, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (304, 'Lintah', '12.98', NULL, NULL, 658, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (305, 'Dongo', '80.96', NULL, NULL, 658, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (306, 'Nyiur Sundung', '22.58', NULL, NULL, 658, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (307, 'Gambir', '57.67', NULL, NULL, 658, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (308, 'Tububunter', '20', NULL, NULL, 658, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (309, 'Air Terjun Tete Batu', '12.7', NULL, NULL, 658, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (310, 'Mencrit', '65.32', NULL, NULL, 658, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (311, 'Tanggik Mayung', '1.5', NULL, NULL, 658, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (312, 'Erat Piah', '0', NULL, NULL, 658, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (313, 'Pancor Suni', '50', NULL, NULL, 658, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (314, 'Aik Lomak', '75', NULL, NULL, 670, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (315, 'Pancoran Siwaq', '95', NULL, NULL, 683, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (316, 'Keruak', '0', NULL, NULL, 688, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (317, 'Terminyak', '1.5', NULL, NULL, 691, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (318, 'Tirpas', '35', NULL, NULL, 703, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (319, 'Timba Dao/Pancor dao', '75', NULL, NULL, 703, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (320, 'Tirta Bening', '0', NULL, NULL, 708, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (321, 'Hutan Tojang', '211.1', NULL, NULL, 716, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (322, 'Tigasa', '103', NULL, NULL, 716, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (323, 'Merobot', '10', NULL, NULL, 716, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (324, 'Aiq Matan Lentaq', '50', NULL, NULL, 716, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (325, 'Aik Ambung', '10', NULL, NULL, 719, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (326, 'Telaga Pandan ', '1', NULL, NULL, 724, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (327, 'Telaga Sedah ', '1', NULL, NULL, 724, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (328, 'Kebon Bebai', '-', NULL, NULL, 724, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (329, 'Lingkoq Dewa', '0.5', NULL, NULL, 724, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (330, 'Lingkoq Mame', '0.5', NULL, NULL, 724, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (331, 'Lingkoq Tilem ', '1', NULL, NULL, 724, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (332, 'Lingkoq Kebon Lauq', '1', NULL, NULL, 724, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (333, 'Serju Bawah Direq', '0.5', NULL, NULL, 724, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (334, 'Pancor Raden', '1', NULL, NULL, 724, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (335, 'Tanggik', '52.78', NULL, NULL, 726, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (336, 'Semuluk', '12.07', NULL, NULL, 726, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (337, 'Batu Lawang', '49.56', NULL, NULL, 726, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (338, 'Gading I (Borok Putih)', '0', NULL, NULL, 726, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (339, 'Gading II (Otak Kokok)', '89.17', NULL, NULL, 726, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (340, 'Kacang I', '7.29', NULL, NULL, 726, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (341, 'Kacang II', '9.33', NULL, NULL, 726, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (342, 'Batu Lawang', '49.56', NULL, NULL, 726, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (343, 'Semuluk', '12.07', NULL, NULL, 726, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (344, 'Aik Ngangak', '9.81', NULL, NULL, 726, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (345, 'Lingkoq Ilir', '0.5', NULL, NULL, 726, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (346, 'Joben', '200', NULL, NULL, 726, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (347, 'Kebon Tengak', '0', NULL, NULL, 726, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (348, 'Lingkoq Kemaliq', '0.5', NULL, NULL, 726, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (349, 'Trengwilis', '412.87', NULL, NULL, 727, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (350, 'Batu Nganga', '0.5', NULL, NULL, 729, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (351, 'Kepas', '0', NULL, NULL, 731, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (352, 'Pancoran', '0', NULL, NULL, 731, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (353, 'Kokok koak', '0', NULL, NULL, 731, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (354, 'Kolam Susu', '0', NULL, NULL, 731, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (355, 'Kokok Kebon', '0', NULL, NULL, 731, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (356, 'Kokok Kepas', '0', NULL, NULL, 731, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (357, 'Kokok Aik Dalam', '0', NULL, NULL, 731, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (358, 'Perempung', '0.35', NULL, NULL, 732, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (359, 'Timba Segeleng', '0', NULL, NULL, 732, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (360, 'Tibu Balok', '0', NULL, NULL, 732, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (361, 'Tibu Balok', '0', NULL, NULL, 732, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (362, 'Timba Segeleng', '0', NULL, NULL, 732, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (363, 'Banjar Getas Lisung Batu', '0', NULL, NULL, 733, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (364, 'Balas', '0', NULL, NULL, 733, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (365, 'Banjar Getas', '0', NULL, NULL, 733, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (366, 'Telaga Murni', '0', NULL, NULL, 733, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (367, 'Nenamo', '0', NULL, NULL, 734, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (368, 'Nenamo I', '0', NULL, NULL, 734, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (369, 'Nenamo II', '0', NULL, NULL, 734, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (370, 'Nenamo III', '0', NULL, NULL, 734, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (371, 'Aik Liang', '0', NULL, NULL, 735, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (372, 'Seruk', '10', NULL, NULL, 735, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (373, 'Aik Layang', '0', NULL, NULL, 735, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (374, 'Senotok', '0', NULL, NULL, 735, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (375, 'Batu Sela', '0', NULL, NULL, 735, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (376, 'Timbe Bet', '0', NULL, NULL, 735, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (377, 'Aik Liang', '0', NULL, NULL, 735, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (378, 'Brangtapen I', '20', NULL, NULL, 737, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (379, 'Brangtapen II', '10', NULL, NULL, 737, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (380, 'Brangtapen III', '5', NULL, NULL, 737, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (381, 'Bual Kanan', '11.33', NULL, NULL, 737, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (382, 'Timba Lendang', '2', NULL, NULL, 738, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (383, 'Timba Lisung', '0', NULL, NULL, 738, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (384, 'Timba Isah', '0', NULL, NULL, 738, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (385, 'Kesogok', '20', NULL, NULL, 740, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (386, 'Goge', '0', NULL, NULL, 740, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (387, 'Gegerung', '0', NULL, NULL, 740, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (388, 'Timba Rupa', '0', NULL, NULL, 740, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (389, 'Kecak', '0', NULL, NULL, 740, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (390, 'Sandat', '0', NULL, NULL, 740, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (391, 'Embung', '0', NULL, NULL, 740, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (392, 'Gegerung', '0', NULL, NULL, 740, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (393, 'Sandat', '0', NULL, NULL, 740, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (394, 'Sandat 2', '0', NULL, NULL, 740, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (395, 'Kecak', '0', NULL, NULL, 740, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (396, 'Timba Rupa', '0', NULL, NULL, 740, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (397, 'Goge', '0', NULL, NULL, 740, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (398, 'Kesogok', '0', NULL, NULL, 740, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (399, 'Telaga Rura', '0', NULL, NULL, 741, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (400, 'Telaga Jernih', '0', NULL, NULL, 741, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (401, 'Timba Balendang', '0', NULL, NULL, 741, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (402, 'Timba Badok', '0', NULL, NULL, 741, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (403, 'Timba Sao', '0', NULL, NULL, 741, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (404, 'Timba Gadang', '0', NULL, NULL, 741, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (405, 'Pancor Mas', '0', NULL, NULL, 741, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (406, 'Telaga Uringin', '0', NULL, NULL, 741, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (407, 'Telaga Rura', '0', NULL, NULL, 741, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (408, 'Timba Batu', '0', NULL, NULL, 741, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (409, 'Timba Riak', '0', NULL, NULL, 741, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (410, 'Timba Gegerung', '0', NULL, NULL, 741, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (411, 'Timba Lendang', '0', NULL, NULL, 741, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (412, 'Mumbul', '0', NULL, NULL, 742, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (413, 'Baran Tapen', '0', NULL, NULL, 742, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (414, 'Mumbul', '0', NULL, NULL, 742, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (415, 'Baran Tapen', '0', NULL, NULL, 742, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (416, 'Seruni', '0', NULL, NULL, 742, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (417, 'Timba Tereng', '0', NULL, NULL, 743, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (418, 'Timba Pojok', '0', NULL, NULL, 743, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (419, 'Timba Diaseh', '0', NULL, NULL, 743, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (420, 'Timba Sajim', '0', NULL, NULL, 743, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (421, 'Timba Darman', '0', NULL, NULL, 743, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (422, 'Timba Asri', '0', NULL, NULL, 743, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (423, 'Timba Mesir', '0', NULL, NULL, 743, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (424, 'Telaga Murni', '0', NULL, NULL, 745, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (425, 'Timba Lisung', '0', NULL, NULL, 745, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (426, 'Timba Gedang', '0', NULL, NULL, 745, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (427, 'Banjar Getas', '0', NULL, NULL, 745, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (428, 'Telaga Murni', '0', NULL, NULL, 745, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (429, 'Aik Bumbang', '0', NULL, NULL, 746, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (430, 'Gamang/Dao', '20', NULL, NULL, 747, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (431, 'SB. Mencrit', '0', NULL, NULL, 750, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (432, 'Aik Mencerit', '0', NULL, NULL, 751, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (433, 'Aik Dewa I', '17.91', NULL, NULL, 751, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (434, 'Aik Dewa II', '9.48', NULL, NULL, 751, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (435, 'Otak Kokok', '8.5', NULL, NULL, 751, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (436, 'Pancor Kopong', '78.9', NULL, NULL, 751, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (437, 'Pancor Guling I, II, III, IV', '15.53', NULL, NULL, 751, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (438, 'Pancor Guling II', '0', NULL, NULL, 751, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (439, 'Pancor Guling III', '0', NULL, NULL, 751, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (440, 'Pancor Guling IV', '0', NULL, NULL, 751, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (441, 'Pancor Guling V', '21.66', NULL, NULL, 751, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (442, 'Pancor Datuk', '27.1196', NULL, NULL, 751, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (443, 'Timba gerah', '2', NULL, NULL, 752, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (444, 'Dongo', '0', NULL, NULL, 753, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (445, 'Kaki Dola', '0', NULL, NULL, 754, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (446, 'Permit Presak', '2.5', NULL, NULL, 761, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (447, 'Timbe Lisung ', '1', NULL, NULL, 761, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (448, 'Boro\'', '1', NULL, NULL, 761, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (449, 'Lingkoq Permit', '1', NULL, NULL, 761, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (450, 'Merdani ', '2.5', NULL, NULL, 761, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (451, 'Birisan Nangka', '0', NULL, NULL, 797, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (452, 'Pademakan', '5', NULL, NULL, 797, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (453, 'Salut', '0', NULL, NULL, 797, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (454, 'Tereng Bukit', '0', NULL, NULL, 799, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (455, 'Olor Lisung', '0', NULL, NULL, 799, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (456, 'Beburung ', '1.142', NULL, NULL, 801, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (457, 'Tumpasan Ajan', '400', NULL, NULL, 801, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (458, 'Lok', '0', NULL, NULL, 801, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (459, 'Kali Beburung', '0', NULL, NULL, 801, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (460, 'Batu Empak ', '38', NULL, NULL, 802, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (461, 'Gumbang ', '840', NULL, NULL, 802, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (462, 'Lekoq Sukun I ', '1.5', NULL, NULL, 802, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (463, 'Lekoq Sukun II', '1.5', NULL, NULL, 802, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (464, 'Lekoq Sukun III', '1.5', NULL, NULL, 802, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (465, 'Lekoq Kuang ', '1', NULL, NULL, 802, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (466, 'Embung Gumbang', '0', NULL, NULL, 802, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (467, 'MA. Gumbang', '5', NULL, NULL, 802, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (468, 'Lokok Blek', '0', NULL, NULL, 802, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (469, 'Mentareng', '0', NULL, NULL, 802, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (470, 'Melempo', '0', NULL, NULL, 802, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (471, 'Kokok Sukun', '0', NULL, NULL, 802, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (472, 'Tuar', '1.5', NULL, NULL, 803, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (473, 'Timba Kerongkeng', '1.2', NULL, NULL, 803, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (474, 'Ketak', '0', NULL, NULL, 803, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (475, 'Elak - Elak ', '12', NULL, NULL, 803, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (476, 'Embung Koak', '3', NULL, NULL, 803, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (477, 'Kali Timburan', '0', NULL, NULL, 803, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (478, 'Sungai/Kali Sambelia (SPL Sambelia)', '10', NULL, NULL, 804, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (479, 'Aik Kalak', '0', NULL, NULL, 804, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (480, 'Otak Reban', '0', NULL, NULL, 804, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (481, 'Talimah', '0', NULL, NULL, 804, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (482, 'Timba Bokok', '1.5', NULL, NULL, 804, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (483, 'Kuang Gero', '4', NULL, NULL, 804, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (484, 'Kokok Rajak', '0', NULL, NULL, 804, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (485, 'Timba Pandan', '< 1.5', NULL, NULL, 804, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (486, 'Timba Galih', '< 1.5', NULL, NULL, 804, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (487, 'Timba Bantu', '< 1.5', NULL, NULL, 804, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (488, 'Aik Embuk', '2', NULL, NULL, 805, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (489, 'Anjeman', '0', NULL, NULL, 805, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (490, 'Bebusuk', '0', NULL, NULL, 805, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (491, 'Tebing Lantai', '0', NULL, NULL, 805, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (492, 'Pasiran', '0', NULL, NULL, 806, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (493, 'Kokok Kahwa', '< 1.5', NULL, NULL, 806, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (494, 'Sapta', '30', NULL, NULL, 810, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (495, 'Borok Bongkang', '75', NULL, NULL, 810, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (496, 'Menemeng ', '20', NULL, NULL, 811, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (497, 'Dasan Pancor', '1', NULL, NULL, 813, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (498, 'Pancor Santek', '0', NULL, NULL, 814, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (499, 'Pancor Tenggek', '0', NULL, NULL, 814, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (500, 'Sumur Dalam (Pancor)', '5', NULL, NULL, 814, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (501, 'Pancoran Lebak', '1', NULL, NULL, 816, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (502, 'Tojang I', '1', NULL, NULL, 816, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (503, 'Tojang II', '0.005', NULL, NULL, 816, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (504, 'Togok ', '1', NULL, NULL, 822, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (505, 'Bawak Terep', '0.7', NULL, NULL, 830, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (506, 'Perempungan', '0', NULL, NULL, 837, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (507, 'Otak Aik', '15', NULL, NULL, 837, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (508, 'Saman', '19.69', NULL, NULL, 837, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (509, 'Bawak Duren I', '24.08', NULL, NULL, 837, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (510, 'Bawak Duren II', '17.72', NULL, NULL, 837, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (511, 'Kembang Sri Kanan', '26.03', NULL, NULL, 837, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (512, 'Kembang Sri Kiri', '13.78', NULL, NULL, 837, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (513, 'Lendang Penyuguk', '56.66', NULL, NULL, 837, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (514, 'Perempungan', '0', NULL, NULL, 837, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (515, 'Bunut Jambul', '83.88', NULL, NULL, 837, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (516, 'Lendang Penyuguk', '56.66', NULL, NULL, 837, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (517, 'Duren Dua', '15', NULL, NULL, 837, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (518, 'Saman', '19.69', NULL, NULL, 837, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (519, 'Senang', '25', NULL, NULL, 837, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (520, 'Ance', '0', NULL, NULL, 838, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (521, 'Sukamulia ', '0.005', NULL, NULL, 846, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (522, 'Gotong Royong ', '2', NULL, NULL, 846, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (523, 'Pancor Siwak', '3.28', NULL, NULL, 849, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (524, 'Peresak', '3.03', NULL, NULL, 849, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (525, 'Pancor Ganang II', '9.98', NULL, NULL, 857, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (526, 'Pancor Ganang II', '0.81', NULL, NULL, 857, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (527, 'Tibu Gendang', '1.6', NULL, NULL, 857, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (528, 'Pancoran Kerongkong I', '1.5', NULL, NULL, 857, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (529, 'Pancoran Kerongkong II', '1.5', NULL, NULL, 857, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (530, 'Ganang ', '63', NULL, NULL, 857, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (531, 'Kesembung', '1.87', NULL, NULL, 859, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (532, 'Pancor Gadang', '1.18', NULL, NULL, 860, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (533, 'Timba Juwet', '4.58', NULL, NULL, 860, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (534, 'Tebaban ', '1.5', NULL, NULL, 860, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (535, 'Tempos Sepolong', '0', NULL, NULL, 864, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (536, 'Kemuning', '0', NULL, NULL, 865, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (537, 'Kokok Abang I', '0', NULL, NULL, 865, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (538, 'Kokok Abang II', '0', NULL, NULL, 865, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (539, 'Perembukan', '0', NULL, NULL, 865, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (540, 'Sambongan', '0', NULL, NULL, 865, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (541, 'Otak Aik', '0', NULL, NULL, 865, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (542, 'Liwatan Sekajang', '0', NULL, NULL, 865, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (543, 'Sendura', '0', NULL, NULL, 865, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (544, 'Borok Nunggal', '60', NULL, NULL, 867, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (545, 'Pesusa', '50', NULL, NULL, 867, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (546, 'Bunut Kol-kol', '0', NULL, NULL, 869, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (547, 'Lemor', '10', NULL, NULL, 869, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (548, 'Aik Jambe', '0', NULL, NULL, 869, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (549, 'Peserungan', '5', NULL, NULL, 869, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (550, 'Kemaling Sesang', '10', NULL, NULL, 873, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (551, 'Lemboq', '1.5', NULL, NULL, 878, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (552, 'Aik Mual ', '0.05', NULL, NULL, 884, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (553, 'Embulan Bengkok I ', '0.05', NULL, NULL, 884, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (554, 'Embulan Bengkok II', '0.05', NULL, NULL, 884, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (555, 'Embulan Bengkok III', '0.05', NULL, NULL, 884, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (556, 'Lingkoq Bajang ', '1', NULL, NULL, 884, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (557, 'Ligkoq Merubuk ', '1.5', NULL, NULL, 884, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (558, 'Loang Tune', '0.05', NULL, NULL, 884, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (559, 'Kokoq nangka', '0', NULL, NULL, 888, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (560, 'Menyer', '0', NULL, NULL, 888, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (561, 'Orong Sumur', '0', NULL, NULL, 888, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (562, 'Bunut Baok', '0', NULL, NULL, 888, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (563, 'Sanggala', '0', NULL, NULL, 888, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (564, 'Ketiping', '0', NULL, NULL, 889, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (565, 'Aik Numpas ', '0', NULL, NULL, 889, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (566, 'Ober - Ober', '0', NULL, NULL, 889, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (567, 'Ketiping', '0', NULL, NULL, 889, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (568, 'Timba I', '0', NULL, NULL, 891, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (569, 'Timba II', '0', NULL, NULL, 891, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (570, 'Kedatuk', '0', NULL, NULL, 891, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (571, 'Timba Joet I', '35', NULL, NULL, 893, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (572, 'Timba Joet II', '0', NULL, NULL, 893, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (573, 'Oniba', '0', NULL, NULL, 893, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (574, 'Sengkelep', '0', NULL, NULL, 893, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (575, 'Reges', '0', NULL, NULL, 893, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (576, 'Kokok Keru II', '0', NULL, NULL, 894, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (577, 'Kokok Keru I', '0', NULL, NULL, 894, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (578, 'Kuang Paok', '20', NULL, NULL, 895, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (579, 'Tibu Paok', '0', NULL, NULL, 895, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (580, 'Air Truk', '0', NULL, NULL, 895, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (581, 'Timba Aji Udin', '50', NULL, NULL, 895, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (582, 'Ladon I', '0', NULL, NULL, 895, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (583, 'Ladon II', '0', NULL, NULL, 895, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (584, 'Teberu', '0', NULL, NULL, 895, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (585, 'Teberu', '0', NULL, NULL, 895, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (586, 'Timba Knun', '0', NULL, NULL, 895, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (587, 'Timba Bawak Rau', '0', NULL, NULL, 895, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (588, 'Timba Tumang', '0', NULL, NULL, 895, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (589, 'Timba Paso', '0', NULL, NULL, 895, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (590, 'Juet', '0', NULL, NULL, 895, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (591, 'Lokok Dalem', '0', NULL, NULL, 895, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (592, 'Songgen', '222', NULL, NULL, 898, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (593, 'Kokok Urung', '0', NULL, NULL, 898, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (594, 'Kali Bening', '0', NULL, NULL, 898, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (595, 'Kokok Urung', '0', NULL, NULL, 900, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (596, 'Bantek I', '0', NULL, NULL, 900, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (597, 'Bantek II', '0', NULL, NULL, 900, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (598, 'Sayakti', '0', NULL, NULL, 900, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (599, 'Timba Balas', '0', NULL, NULL, 900, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (600, 'Tempos', '0', NULL, NULL, 900, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (601, 'Tibu Gambir', '0', NULL, NULL, 900, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (602, 'Dasen Rundun', '0', NULL, NULL, 900, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (603, 'Kali Sengoar', '3', NULL, NULL, 901, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (604, 'Lokok Jawa', '60', NULL, NULL, 903, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (605, 'Lokok Pedangan', '75', NULL, NULL, 903, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (606, 'Lokok Embual', '20', NULL, NULL, 903, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (607, 'Lokok Sangga', '262.4', NULL, NULL, 903, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (608, 'Lokok Empok (Awal)', '30', NULL, NULL, 903, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (609, 'Lokok Empok II', '25', NULL, NULL, 903, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (610, 'Bangket Bayan', '120', NULL, NULL, 903, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (611, 'Bangket Bayan', '25', NULL, NULL, 903, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (612, 'Bangket Dalam', '200', NULL, NULL, 903, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (613, 'Mandala', '188', NULL, NULL, 903, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (614, 'Sendang Gile', '500', NULL, NULL, 903, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (615, 'Lokok Suren', '5', NULL, NULL, 903, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (616, 'Lokok Nina', '3', NULL, NULL, 903, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (617, 'Mendala', '5', NULL, NULL, 903, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (618, 'Lokok Prabu', '25', NULL, NULL, 903, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (619, 'Birisan Nangka', '35', NULL, NULL, 905, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (620, 'Cemplo Julat', '69.1', NULL, NULL, 905, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (621, 'Lokok Serero', '3', NULL, NULL, 905, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (622, 'Lokok Ujan', '3', NULL, NULL, 905, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (623, 'Lokok Reban ', '8.76', NULL, NULL, 906, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (624, 'Lekok Reban', '8.76', NULL, NULL, 906, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (625, 'Murus malang', '200', NULL, NULL, 906, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (626, 'Mumbulsari', '10', NULL, NULL, 906, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (627, 'Lokok Reban', '2', NULL, NULL, 906, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (628, 'Lokok Mumbul', '2', NULL, NULL, 906, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (629, 'Senangka', '3', NULL, NULL, 907, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (630, 'Lokok Peji', '3', NULL, NULL, 907, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (631, 'Lokok Lepang', '3', NULL, NULL, 907, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (632, 'Pawang', '5', NULL, NULL, 907, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (633, 'Lokok Klesek', '3', NULL, NULL, 908, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (634, 'Tiu Kelep', '300', NULL, NULL, 908, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (635, 'Lokok Prabu', '80', NULL, NULL, 908, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (636, 'Betera Guru', '20', NULL, NULL, 908, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (637, 'Mandala', '8', NULL, NULL, 908, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (638, 'Sigor', '5', NULL, NULL, 909, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (639, 'Lokok Empok', '3', NULL, NULL, 909, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (640, 'Jonplanka/Ojongplanka', '706', NULL, NULL, 910, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (641, 'Kakong', '20', NULL, NULL, 910, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (642, 'Pawang Mejet', '226', NULL, NULL, 910, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (643, 'Murmas', '3', NULL, NULL, 910, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (644, 'Gusi', '3', NULL, NULL, 910, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (645, 'Anten', '3', NULL, NULL, 910, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (646, 'Stambing', '5', NULL, NULL, 910, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (647, 'Sekuluh', '5', NULL, NULL, 910, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (648, 'Klebut', '3', NULL, NULL, 910, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (649, 'Air Terjun Gangga', '69.09', NULL, NULL, 911, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (650, 'Kertaharja', '500', NULL, NULL, 911, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (651, 'Lokok Sisik', '104.7', NULL, NULL, 911, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (652, 'Cerampang Bentot', '33.6', NULL, NULL, 911, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (653, 'Tiu Pupus', '500', NULL, NULL, 911, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (654, 'Syaiton', '15', NULL, NULL, 911, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (655, 'Rempek', '25', NULL, NULL, 911, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (656, 'Pancor Mas', '3', NULL, NULL, 911, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (657, 'Batu Beleq', '3', NULL, NULL, 911, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (658, 'Kakong', '0', NULL, NULL, 911, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (659, 'Mandala', '5', NULL, NULL, 912, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (660, 'Sebun Tereng', '3', NULL, NULL, 913, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (661, 'Selekak', '3', NULL, NULL, 913, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (662, 'Jeruk Kiting', '3', NULL, NULL, 913, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (663, 'Air Pandan', '5', NULL, NULL, 913, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (664, 'Erat Bual', '10', NULL, NULL, 914, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (665, 'Sekeper', '2076', NULL, NULL, 914, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (666, 'Lokok Enjer', '5', NULL, NULL, 914, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (667, 'Kopang Sebangun', '3', NULL, NULL, 914, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (668, 'Montong Setingga', '5', NULL, NULL, 914, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (669, 'Lokok Bikuk', '110', NULL, NULL, 916, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (670, 'Pawang Kates', '3', NULL, NULL, 916, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (671, 'Koloh Pancoran', '2', NULL, NULL, 916, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (672, 'Lokok Tenggorong', '10', NULL, NULL, 916, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (673, 'Lokok Berora', '0', NULL, NULL, 918, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (674, 'Erat Sanga', '0', NULL, NULL, 918, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (675, 'Santong', '1967.83', NULL, NULL, 920, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (676, 'Erat Gedang', '15', NULL, NULL, 920, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (677, 'Limpanas', '160.5', NULL, NULL, 920, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (678, 'Lokok Salak', '15', NULL, NULL, 920, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (679, 'Lokok Bual', '556', NULL, NULL, 920, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (680, 'Sumur Empat', '2', NULL, NULL, 920, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (681, 'Kaling Panas', '10', NULL, NULL, 920, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (682, 'Batubara', '15', NULL, NULL, 920, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (683, 'Tiu Urip', '5', NULL, NULL, 921, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (684, 'Koloh Batubara', '1.5', NULL, NULL, 924, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (685, 'Tetiu Tuna', '1', NULL, NULL, 924, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (686, 'Penamping Hidup', '2', NULL, NULL, 924, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (687, 'Sumur Ceraken ', '2', NULL, NULL, 924, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (688, 'Tetiu Jorong', '1', NULL, NULL, 924, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (689, 'Koloh Kenyo', '1', NULL, NULL, 924, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (690, 'Koloh Putat', '1.5', NULL, NULL, 924, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (691, 'Lokok Setanggi', '2', NULL, NULL, 924, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (692, 'Batu Gambir', '1.5', NULL, NULL, 924, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (693, 'Pancor Mas II', '1.5', NULL, NULL, 924, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (694, 'Pancor Mas I', '1.5', NULL, NULL, 924, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (695, 'Castela', '85.7', NULL, NULL, 925, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (696, 'Kastela', '0', NULL, NULL, 925, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (697, 'Tumpak Jaran', '15', NULL, NULL, 925, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (698, 'Rat Naga', '20', NULL, NULL, 925, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (699, 'Lingkuk Naga', '0.1', NULL, NULL, 926, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (700, 'Sumur Suma', '1.5', NULL, NULL, 926, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (701, 'Lenggorong', '2', NULL, NULL, 926, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (702, 'Koloh Baru', '50', NULL, NULL, 926, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (703, 'Tiu Roton', '1', NULL, NULL, 926, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (704, 'Lokok Simpar', '2', NULL, NULL, 926, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (705, 'Lokok Kerujuk', '3', NULL, NULL, 926, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (706, 'Selelos', '46', NULL, NULL, 927, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (707, 'Keditan', '40', NULL, NULL, 927, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (708, 'Lokok Tangkok', '15', NULL, NULL, 927, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (709, 'Sumur Jangkat', '3', NULL, NULL, 927, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (710, 'Segendung', '2.5', NULL, NULL, 927, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (711, 'Sida Bukit', '1', NULL, NULL, 927, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (712, 'Bimbi', '1', NULL, NULL, 927, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (713, 'Kali Rangsot', '5', NULL, NULL, 929, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (714, 'Koang Bawi', '3', NULL, NULL, 930, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (715, 'Erat Selonjong', '2', NULL, NULL, 930, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (716, 'Tiu Kelambu', '1', NULL, NULL, 930, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (717, 'Lokok Petung', '65', NULL, NULL, 932, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (718, 'Sekoah', '137.8', NULL, NULL, 932, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (719, 'Sumur Jerong', '1.5', NULL, NULL, 932, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (720, 'Karang Bangket', '1', NULL, NULL, 932, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (721, 'Sumur Duyung', '2.5', NULL, NULL, 932, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (722, 'Lokok Petung', '1', NULL, NULL, 932, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (723, 'Lokok Nbual', '1', NULL, NULL, 932, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (724, 'Kumbak', '1', NULL, NULL, 932, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (725, 'Batu Rejeki', '1', NULL, NULL, 932, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (726, 'Lokok Kelebut', '1.5', NULL, NULL, 932, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (727, 'Tempos Moreng', '37.23', NULL, NULL, 1054, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (728, 'Pejanggik', '0', NULL, NULL, 1227, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (729, 'Lingkuk Bawak Tereng', '0', NULL, NULL, 1231, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (730, 'Lingkok Gol I', '0', NULL, NULL, 1231, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (731, 'Dasan Cermen', '0', NULL, NULL, 1232, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (732, 'Bilobuntu', '377', NULL, NULL, 1250, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (733, 'Eat Tangsi', '10', NULL, NULL, 1250, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (734, 'Sumur Pituk', '3', NULL, NULL, 1251, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (735, 'Lokok Sulun', '3', NULL, NULL, 1251, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (736, 'Lokok Duren', '3', NULL, NULL, 1251, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (737, 'Aik Bais', '0.01', NULL, NULL, 1252, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (738, 'Elong-Elong I', '1.5', NULL, NULL, 1253, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (739, 'Elong-Elong II', '1.5', NULL, NULL, 1253, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (740, 'Aik Rimas', '20.4', NULL, NULL, 948, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (741, 'Jorok Sangkrang', '1', NULL, NULL, 947, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (742, 'Tiu Watu', '3.7', NULL, NULL, 947, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (743, 'Tiu Sebangka', '419.6', NULL, NULL, 948, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (744, 'Sampar Nangka', '0.9', NULL, NULL, 947, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (745, 'Sungai Brang Dalap', '50', NULL, NULL, 940, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (746, 'Embung Labangka', '50', NULL, NULL, 973, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (747, 'Kwangrako', '50', NULL, NULL, 998, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (748, 'Semongkat', '100', NULL, NULL, 1091, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (749, 'Sungai Orong Semu', '100', NULL, NULL, 1097, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (750, 'Liang Aik Jaran', '11.5', NULL, NULL, 979, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (751, 'Inil', '5', NULL, NULL, 982, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (752, 'Karantina', '5', NULL, NULL, 982, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (753, 'Sumir Payung', '8', NULL, NULL, 979, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (754, 'Aik Mual', '3', NULL, NULL, 964, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (755, 'MA.Aik Muncar', '22', NULL, NULL, 1046, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (756, 'MA.Telaga Lompak', '95.1', NULL, NULL, 1046, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (757, 'Tiu Kele', '10.7', NULL, NULL, 1059, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (758, 'Kokar Rero', '25.8', NULL, NULL, 1059, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (759, 'Ai Lenang', '19.4', NULL, NULL, 1056, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (760, 'Ai Mas', '42.19', NULL, NULL, 1056, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (761, 'Aik Panan', '0.17', NULL, NULL, 1056, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (762, 'Aik Punti', '28', NULL, NULL, 1058, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (763, 'Sungai Rhee', '405', NULL, NULL, 1059, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (764, 'Zebra', '46', NULL, NULL, 940, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (765, 'Aik Putih', '320', NULL, NULL, 993, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (766, 'Tiu Nini', '42', NULL, NULL, 1043, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (767, 'Nyiur Gading', '3', NULL, NULL, 993, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (768, 'Aik Kuning', '32', NULL, NULL, 1043, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (769, 'Lampas Padesa', '70', NULL, NULL, 1043, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (770, 'Gantung Guar', '22', NULL, NULL, 957, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (771, 'Aik We', '28', NULL, NULL, 1046, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (772, 'Sungai Bangkong ', '0', NULL, NULL, 979, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (773, 'Sungai Pamulung Hulu', '0', NULL, NULL, 982, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (774, 'Sungai Pamulung Hulir', '0', NULL, NULL, 982, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (775, 'Sungai Selang', '0', NULL, NULL, 1254, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (776, 'Sungai Kerekeh', '0', NULL, NULL, 1076, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (777, 'Sungai Semongkat', '0', NULL, NULL, 1091, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (778, 'Sungai brang Aisurik Hulu', '0', NULL, NULL, 1084, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (779, 'Sungai brang Aisurik Hilir', '0', NULL, NULL, 1084, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (780, 'Latonda', '141 l', NULL, NULL, 359, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (781, 'Oi Raw', '73.1', NULL, NULL, 358, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (782, 'Air terjun Nangakara', '261.2', NULL, NULL, 359, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (783, 'Nangakara II', '80.9', NULL, NULL, 359, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (784, 'Nangakara I', '34.1', NULL, NULL, 359, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (785, 'Kedindi I', '188.1', NULL, NULL, 359, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (786, 'Kadindi III', '66.5', NULL, NULL, 359, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (787, 'Wa\'u I dan Wa\'u II', '195.9', NULL, NULL, 359, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (788, 'Wa\'u III dan Wa\'u IV', '0.9', NULL, NULL, 359, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (789, 'Dola Nipo', '48.1', NULL, NULL, 364, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (790, 'Pancasila', '19.3', NULL, NULL, 364, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (791, 'Watu Meneq', '20.1', NULL, NULL, 359, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (792, 'Sori Ntana', '137.2', NULL, NULL, 359, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (793, 'Hoddo', '311.5', NULL, NULL, 359, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (794, 'Ejo I', '54.5', NULL, NULL, 359, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (795, 'Ejo II', '16.6', NULL, NULL, 359, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (796, 'Karano', '43.2', NULL, NULL, 356, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (797, 'Monggolinggo', '63', NULL, NULL, 307, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (798, 'Saluran Rora', '100', NULL, NULL, 307, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (799, 'Patula', '24.5', NULL, NULL, 339, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (800, 'Sungai Rababaka', '150', NULL, NULL, 348, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (801, 'Oi Na’e', '5.4', NULL, NULL, 369, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (802, 'Benca', '3.2', NULL, NULL, 369, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (803, 'Kolo', '2.8', NULL, NULL, 369, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (804, 'Ompu Kateo II', '1.8', NULL, NULL, 333, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (805, 'Ompu Kateo I / Oi Panas', '1.6', NULL, NULL, 333, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (806, 'Oi Ebo', '2', NULL, NULL, 334, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (807, 'Oi Ro\'o', '1.8', NULL, NULL, 381, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (808, 'Oi Sarimbi', '2', NULL, NULL, 328, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (809, 'MA.woko', '0', NULL, NULL, 385, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (810, 'Sungai Woko ', '0', NULL, NULL, 385, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (811, 'Sungai Patula Hulu', '0', NULL, NULL, 339, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (812, 'Sungai Patula Hullir', '0', NULL, NULL, 339, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (813, 'MA.Madaprama', '0', NULL, NULL, 1255, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (814, 'Sungai Rora', '0', NULL, NULL, 307, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (815, 'Nangakara', '80.9', NULL, NULL, 359, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (816, 'Oi Kebe', '2.5', NULL, NULL, 282, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (817, 'Hidirasa', '4.6', NULL, NULL, 277, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (818, 'Karombe', '21', NULL, NULL, 281, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (819, 'Tangge', '2.5', NULL, NULL, 284, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (820, 'Pa\'i', '42', NULL, NULL, 284, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (821, 'Oi Caba', '2.5', NULL, NULL, 284, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (822, 'Oi Konca', '1.5', NULL, NULL, 284, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (823, 'Woro', '8', NULL, NULL, 197, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (824, 'Oi Wowo', '10', NULL, NULL, 270, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (825, 'O\'i Mila', '0.2', NULL, NULL, 289, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (826, 'Ompu Koli', '0.1', NULL, NULL, 289, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (827, 'Kadi Jawa', '0.2', NULL, NULL, 289, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (828, 'Runggu  ', '0.1', NULL, NULL, 289, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (829, 'Seli ', '0.1', NULL, NULL, 289, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (830, 'Ura ', '0.1', NULL, NULL, 289, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (831, 'Mpanggo', '0.1', NULL, NULL, 289, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (832, 'Telaga I', '0.1', NULL, NULL, 289, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (833, 'Telaga II', '0.2', NULL, NULL, 289, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (834, 'Sori Sambi', '0.2', NULL, NULL, 281, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (835, 'Sori Ngaci', '0.5', NULL, NULL, 282, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (836, 'Wontu ', '0.2', NULL, NULL, 282, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (837, 'Wotu ', '0.1', NULL, NULL, 293, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (838, 'Ina Mene', '0.1', NULL, NULL, 280, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (839, 'Embung Ncoha', '75', NULL, NULL, 187, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (840, 'Oi Amabaena', '7.4', NULL, NULL, 246, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (841, 'Oi Jonangga', '4.6', NULL, NULL, 246, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (842, 'Oi Papa', '6', NULL, NULL, 238, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (843, 'Oi Marai', '200', NULL, NULL, 261, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (844, 'Oi Panihi', '350', NULL, NULL, 265, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (845, 'Monggo', '300', NULL, NULL, 191, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (846, 'Oi Nta,a', '3', NULL, NULL, 189, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (847, 'Sungai Dompo', '40', NULL, NULL, 197, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (848, 'Oi Woddi', '10', NULL, NULL, 192, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (849, 'Sungai Parado Hulu', '0', NULL, NULL, 201, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (850, 'Sungai Parado Hulir', '0', NULL, NULL, 201, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (851, 'MA.Mada Bure', '0', NULL, NULL, 191, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (852, 'MA.Manggo', '0', NULL, NULL, 191, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (853, 'Sungai Lelamase Hulu', '0', NULL, NULL, 1197, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (854, 'Sungai Lelamase Hullir', '0', NULL, NULL, 1197, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (855, 'MA.Madapangga', '0', NULL, NULL, 194, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (856, 'MA.Dewu Tenggiri', '0', NULL, NULL, 253, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (857, 'MA.Wadutunti', '0', NULL, NULL, 143, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (858, 'Sungai Parado', '0', NULL, NULL, 201, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (859, 'Sou Law', '4', NULL, NULL, 252, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (860, 'Oi Lanco', '6', NULL, NULL, 251, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (861, 'Sungai Nungga', '60', NULL, NULL, 1198, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (862, 'Ai Mada', '10', NULL, NULL, 1193, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (863, 'Oi Lupe', '10', NULL, NULL, 1193, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (864, 'Sungai Lela Mase', '100', NULL, NULL, 1197, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (865, 'Kolo', '50', NULL, NULL, 1164, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (866, 'Sungai Busu', '50', NULL, NULL, 1178, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (867, 'Sungai Nungga', '60', NULL, NULL, 1198, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (868, 'Ai Mada', '10', NULL, NULL, 1193, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (869, 'Oi Lupe', '10', NULL, NULL, 1193, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (870, 'Sungai Lela Mase', '100', NULL, NULL, 1197, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (871, 'Kolo', '50', NULL, NULL, 1164, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `mata_air` VALUES (872, 'Sungai Busu', '50', NULL, NULL, 1178, NULL, NULL, NULL, 'admin', 0, NULL, NULL);

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 86 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (1, '2020_01_20_000513_create_pengguna_table', 1);
INSERT INTO `migrations` VALUES (2, '2020_01_20_000858_create_permission_tables', 1);
INSERT INTO `migrations` VALUES (3, '2020_01_20_023620_create_activity_log_table', 1);
INSERT INTO `migrations` VALUES (5, '2020_06_18_081121_create_kabupaten_kota_table', 1);
INSERT INTO `migrations` VALUES (6, '2020_06_18_081131_create_kecamatan_table', 1);
INSERT INTO `migrations` VALUES (7, '2020_06_18_081141_create_kelurahan_desa_table', 1);
INSERT INTO `migrations` VALUES (19, '2020_06_25_055119_create_embung_table', 2);
INSERT INTO `migrations` VALUES (20, '2020_06_25_080159_create_daerah_irigasi_table', 2);
INSERT INTO `migrations` VALUES (21, '2020_06_25_094239_create_jalan_table', 2);
INSERT INTO `migrations` VALUES (23, '2020_06_25_094247_create_jembatan_table', 3);
INSERT INTO `migrations` VALUES (26, '2020_07_14_183331_create_sumber_dana_table', 4);
INSERT INTO `migrations` VALUES (40, '2020_06_18_081209_create_bendungan_table', 8);
INSERT INTO `migrations` VALUES (45, '2020_06_24_223249_create_das_table', 9);
INSERT INTO `migrations` VALUES (46, '2020_06_25_081442_create_mata_air_table', 10);
INSERT INTO `migrations` VALUES (47, '2020_06_25_083951_create_pos_hidrologi_table', 10);
INSERT INTO `migrations` VALUES (49, '2020_06_25_084001_create_sumur_table', 11);
INSERT INTO `migrations` VALUES (50, '2020_07_27_113344_create_desa_miskin_table', 12);
INSERT INTO `migrations` VALUES (63, '2020_07_27_131620_create_spam_table', 13);
INSERT INTO `migrations` VALUES (64, '2020_07_27_131635_create_drainase_table', 13);
INSERT INTO `migrations` VALUES (65, '2020_07_27_144343_add_columns_to_bendungan_table', 14);
INSERT INTO `migrations` VALUES (66, '2020_07_27_144502_add_columns_to_daerah_irigasi_table', 14);
INSERT INTO `migrations` VALUES (67, '2020_07_27_144607_add_columns_to_das_table', 14);
INSERT INTO `migrations` VALUES (68, '2020_07_27_144615_add_columns_to_drainase_table', 14);
INSERT INTO `migrations` VALUES (69, '2020_07_27_144624_add_columns_to_embung_table', 14);
INSERT INTO `migrations` VALUES (70, '2020_07_27_144816_add_columns_to_jembatan_table', 14);
INSERT INTO `migrations` VALUES (71, '2020_07_27_144824_add_columns_to_jalan_table', 14);
INSERT INTO `migrations` VALUES (72, '2020_07_27_144836_add_columns_to_spam_table', 14);
INSERT INTO `migrations` VALUES (73, '2020_07_27_144846_add_columns_to_sumur_table', 14);
INSERT INTO `migrations` VALUES (74, '2020_07_27_144854_add_columns_to_mata_air_table', 14);
INSERT INTO `migrations` VALUES (82, '2020_07_27_150956_create_pembangunan_table', 15);
INSERT INTO `migrations` VALUES (83, '2020_07_27_151006_create_pemeliharaan_table', 15);
INSERT INTO `migrations` VALUES (84, '2020_07_27_153850_add_columns_to_pembangunan_table', 15);
INSERT INTO `migrations` VALUES (85, '2020_07_27_153859_add_columns_to_pemeliharaan_table', 15);

-- ----------------------------
-- Table structure for model_has_permissions
-- ----------------------------
DROP TABLE IF EXISTS `model_has_permissions`;
CREATE TABLE `model_has_permissions`  (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `model_id` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`permission_id`, `model_id`, `model_type`) USING BTREE,
  INDEX `model_has_permissions_model_id_model_type_index`(`model_id`, `model_type`) USING BTREE,
  CONSTRAINT `model_has_permissions_model_id_foreign` FOREIGN KEY (`model_id`) REFERENCES `pengguna` (`pengguna_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for model_has_roles
-- ----------------------------
DROP TABLE IF EXISTS `model_has_roles`;
CREATE TABLE `model_has_roles`  (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `model_id` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`role_id`, `model_id`, `model_type`) USING BTREE,
  INDEX `model_has_roles_model_id_model_type_index`(`model_id`, `model_type`) USING BTREE,
  CONSTRAINT `model_has_roles_model_id_foreign` FOREIGN KEY (`model_id`) REFERENCES `pengguna` (`pengguna_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of model_has_roles
-- ----------------------------
INSERT INTO `model_has_roles` VALUES (1, 'App\\Pengguna', 'admin');
INSERT INTO `model_has_roles` VALUES (3, 'App\\Pengguna', 'asdf');
INSERT INTO `model_has_roles` VALUES (3, 'App\\Pengguna', 'tes');

-- ----------------------------
-- Table structure for pembangunan
-- ----------------------------
DROP TABLE IF EXISTS `pembangunan`;
CREATE TABLE `pembangunan`  (
  `pembangunan_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `pembangunan_tahun` int(11) NOT NULL,
  `pembangunan_uraian` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `pembangunan_nilai` double(15, 2) NOT NULL,
  `pembangunan_jenis` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `pembangunan_penanggung_jawab` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `infrastruktur_jenis` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `infrastruktur_id` bigint(20) NOT NULL,
  `sumber_dana_id` bigint(20) UNSIGNED NOT NULL,
  `kabupaten_kota_id` bigint(20) UNSIGNED NOT NULL,
  `pengguna_id` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`pembangunan_id`) USING BTREE,
  INDEX `pembangunan_pengguna_id_foreign`(`pengguna_id`) USING BTREE,
  INDEX `pembangunan_sumber_dana_id_foreign`(`sumber_dana_id`) USING BTREE,
  INDEX `pembangunan_kabupaten_kota_id_foreign`(`kabupaten_kota_id`) USING BTREE,
  CONSTRAINT `pembangunan_kabupaten_kota_id_foreign` FOREIGN KEY (`kabupaten_kota_id`) REFERENCES `kabupaten_kota` (`kabupaten_kota_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `pembangunan_pengguna_id_foreign` FOREIGN KEY (`pengguna_id`) REFERENCES `pengguna` (`pengguna_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `pembangunan_sumber_dana_id_foreign` FOREIGN KEY (`sumber_dana_id`) REFERENCES `sumber_dana` (`sumber_dana_id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pembangunan
-- ----------------------------
INSERT INTO `pembangunan` VALUES (1, 2020, 'Uraian', 2000000000.00, 'Kewenangan Provinsi', 'Penanggung Jawab', 'Jalan', 116, 3, 3, 'admin', '2020-07-28 19:24:06', '2020-07-28 19:24:06');
INSERT INTO `pembangunan` VALUES (2, 2020, 'asf', 20700000000.00, 'Kewenangan Provinsi', 'asdfasdf', 'Jembatan', 763, 3, 8, 'admin', '2020-07-28 19:26:23', '2020-07-28 19:26:23');
INSERT INTO `pembangunan` VALUES (3, 2020, 'asd', 12310000000.00, 'Kewenangan Provinsi', 'asdfadfas', 'DAS', 199, 3, 2, 'admin', '2020-07-28 19:27:34', '2020-07-28 19:27:34');
INSERT INTO `pembangunan` VALUES (4, 2020, 'asdf', 111111000000.00, 'Kewenangan Provinsi', 'safdasd', 'Drainase', 2, 3, 9, 'admin', '2020-07-28 19:28:16', '2020-07-28 19:28:16');
INSERT INTO `pembangunan` VALUES (5, 2020, 'asdfasf', 123123.00, 'Kewenangan Provinsi', 'asdfasdfasdf', 'SPAM', 2, 3, 6, 'admin', '2020-07-28 19:29:18', '2020-07-28 19:29:18');

-- ----------------------------
-- Table structure for pemeliharaan
-- ----------------------------
DROP TABLE IF EXISTS `pemeliharaan`;
CREATE TABLE `pemeliharaan`  (
  `pemeliharaan_tahun` int(11) NOT NULL,
  `pemeliharaan_uraian` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `pemeliharaan_nilai` double(15, 2) NOT NULL,
  `pemeliharaan_jenis` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `pemeliharaan_penanggung_jawab` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `infrastruktur_jenis` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `infrastruktur_id` bigint(20) NOT NULL,
  `sumber_dana_id` bigint(20) UNSIGNED NOT NULL,
  `kabupaten_kota_id` bigint(20) UNSIGNED NOT NULL,
  `pengguna_id` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  INDEX `pemeliharaan_pengguna_id_foreign`(`pengguna_id`) USING BTREE,
  INDEX `pemeliharaan_sumber_dana_id_foreign`(`sumber_dana_id`) USING BTREE,
  INDEX `pemeliharaan_kabupaten_kota_id_foreign`(`kabupaten_kota_id`) USING BTREE,
  CONSTRAINT `pemeliharaan_kabupaten_kota_id_foreign` FOREIGN KEY (`kabupaten_kota_id`) REFERENCES `kabupaten_kota` (`kabupaten_kota_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `pemeliharaan_pengguna_id_foreign` FOREIGN KEY (`pengguna_id`) REFERENCES `pengguna` (`pengguna_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `pemeliharaan_sumber_dana_id_foreign` FOREIGN KEY (`sumber_dana_id`) REFERENCES `sumber_dana` (`sumber_dana_id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for pengguna
-- ----------------------------
DROP TABLE IF EXISTS `pengguna`;
CREATE TABLE `pengguna`  (
  `pengguna_id` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `pengguna_nama` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `pengguna_sandi` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `pengguna_foto` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `pengguna_status` tinyint(1) NOT NULL,
  `session_id` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`pengguna_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pengguna
-- ----------------------------
INSERT INTO `pengguna` VALUES ('admin', 'Administrator', '$2y$10$KdwMkM/05.9AYsd/n0n/8u5nBAa2EXVDtppyKavVhiG2yiOmgBr9.', NULL, 1, NULL, 'xUpx3b13u23nDssQ0dPiogSqD5GLCRPmmK3pCHrd492C8W4iBDFpf3Vp3QTk', '2020-06-19 10:45:42', '2020-06-19 10:45:42', NULL);
INSERT INTO `pengguna` VALUES ('asdf', 'asdf', '$2y$10$1f45SRbgeNbXdmMN2E71D.cQknMxGc8R3KvTc6uskfaUTzY3Z4DC6', NULL, 1, NULL, NULL, '2020-06-19 15:45:07', '2020-06-19 15:45:07', NULL);
INSERT INTO `pengguna` VALUES ('tes', 'tes', '$2y$10$OEXBlv1zSpuSUT3MtZ1w9eaS91WKuH42HPCl2qaAj6vKhWoknguTO', NULL, 1, NULL, NULL, '2020-06-19 15:11:40', '2020-06-19 15:11:40', NULL);

-- ----------------------------
-- Table structure for permissions
-- ----------------------------
DROP TABLE IF EXISTS `permissions`;
CREATE TABLE `permissions`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `guard_name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of permissions
-- ----------------------------
INSERT INTO `permissions` VALUES (1, 'dashboard', 'web', '2020-07-15 09:42:54', '2020-07-15 09:42:54');
INSERT INTO `permissions` VALUES (2, 'datamaster', 'web', '2020-07-15 09:42:54', '2020-07-15 09:42:54');
INSERT INTO `permissions` VALUES (3, 'daerahirigasi', 'web', '2020-07-15 09:42:54', '2020-07-15 09:42:54');
INSERT INTO `permissions` VALUES (4, 'embung', 'web', '2020-07-15 09:42:54', '2020-07-15 09:42:54');
INSERT INTO `permissions` VALUES (5, 'isda', 'web', '2020-07-15 09:42:54', '2020-07-15 09:42:54');
INSERT INTO `permissions` VALUES (6, 'jalan', 'web', '2020-07-15 09:42:54', '2020-07-15 09:42:54');
INSERT INTO `permissions` VALUES (7, 'jembatan', 'web', '2020-07-15 09:42:54', '2020-07-15 09:42:54');
INSERT INTO `permissions` VALUES (8, 'infrastruktur', 'web', '2020-07-15 09:42:54', '2020-07-15 09:42:54');
INSERT INTO `permissions` VALUES (9, 'aspirasimasyarakat', 'web', '2020-07-15 09:42:54', '2020-07-15 09:42:54');
INSERT INTO `permissions` VALUES (10, 'kewenanganprovinsi', 'web', '2020-07-15 09:42:54', '2020-07-15 09:42:54');
INSERT INTO `permissions` VALUES (11, 'laporan', 'web', '2020-07-15 09:42:55', '2020-07-15 09:42:55');
INSERT INTO `permissions` VALUES (12, 'pengguna', 'web', '2020-07-15 09:42:55', '2020-07-15 09:42:55');
INSERT INTO `permissions` VALUES (13, 'setup', 'web', '2020-07-15 09:42:55', '2020-07-15 09:42:55');
INSERT INTO `permissions` VALUES (14, 'jenisinfrastruktur', 'web', '2020-07-15 09:42:55', '2020-07-15 09:42:55');
INSERT INTO `permissions` VALUES (15, 'sumberdana', 'web', '2020-07-15 09:42:55', '2020-07-15 09:42:55');
INSERT INTO `permissions` VALUES (16, 'wilayah', 'web', '2020-07-15 09:42:55', '2020-07-15 09:42:55');
INSERT INTO `permissions` VALUES (17, 'kabupatenkota', 'web', '2020-07-15 09:42:55', '2020-07-15 09:42:55');
INSERT INTO `permissions` VALUES (18, 'kecamatan', 'web', '2020-07-15 09:42:55', '2020-07-15 09:42:55');
INSERT INTO `permissions` VALUES (19, 'kelurahandesa', 'web', '2020-07-15 09:42:55', '2020-07-15 09:42:55');

-- ----------------------------
-- Table structure for role_has_permissions
-- ----------------------------
DROP TABLE IF EXISTS `role_has_permissions`;
CREATE TABLE `role_has_permissions`  (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  PRIMARY KEY (`permission_id`, `role_id`) USING BTREE,
  INDEX `role_has_permissions_role_id_foreign`(`role_id`) USING BTREE,
  CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `guard_name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of roles
-- ----------------------------
INSERT INTO `roles` VALUES (1, 'super-admin', 'web', '2020-06-19 10:45:42', '2020-06-19 10:45:42');
INSERT INTO `roles` VALUES (2, 'supervisor', 'web', '2020-06-19 10:45:42', '2020-06-19 10:45:42');
INSERT INTO `roles` VALUES (3, 'user', 'web', '2020-06-19 10:45:42', '2020-06-19 10:45:42');
INSERT INTO `roles` VALUES (4, 'guest', 'web', '2020-06-19 10:45:42', '2020-06-19 10:45:42');

-- ----------------------------
-- Table structure for spam
-- ----------------------------
DROP TABLE IF EXISTS `spam`;
CREATE TABLE `spam`  (
  `spam_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `spam_nama_unit` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `spam_tahun_pembuatan` int(11) NULL DEFAULT NULL,
  `spam_kapasitas_terpasang` decimal(15, 2) NOT NULL DEFAULT 0.00,
  `spam_kapasitas_produksi` decimal(15, 2) NOT NULL DEFAULT 0.00,
  `spam_kapasitas_distribusi` decimal(15, 2) NOT NULL DEFAULT 0.00,
  `spam_kapasitas_air_terjual` decimal(15, 2) NOT NULL DEFAULT 0.00,
  `spam_kapasitas_idle` decimal(15, 2) NOT NULL DEFAULT 0.00,
  `spam_jumlah_sr` int(11) NULL DEFAULT NULL,
  `spam_jumlah_jiwa_terlayani` int(11) NULL DEFAULT NULL,
  `kabupaten_kota_id` bigint(20) UNSIGNED NULL DEFAULT NULL,
  `kecamatan_id` bigint(20) UNSIGNED NULL DEFAULT NULL,
  `kelurahan_desa_id` bigint(20) UNSIGNED NULL DEFAULT NULL,
  `marker` point NULL,
  `polyline` linestring NULL,
  `polygon` polygon NULL,
  `pengguna_id` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `kewenangan_provinsi` tinyint(4) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`spam_id`) USING BTREE,
  INDEX `spam_pengguna_id_foreign`(`pengguna_id`) USING BTREE,
  INDEX `spam_kabupaten_kota_id_foreign`(`kabupaten_kota_id`) USING BTREE,
  INDEX `spam_kelurahan_desa_id_foreign`(`kelurahan_desa_id`) USING BTREE,
  INDEX `spam_kecamatan_id_foreign`(`kecamatan_id`) USING BTREE,
  CONSTRAINT `spam_kabupaten_kota_id_foreign` FOREIGN KEY (`kabupaten_kota_id`) REFERENCES `kabupaten_kota` (`kabupaten_kota_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `spam_kecamatan_id_foreign` FOREIGN KEY (`kecamatan_id`) REFERENCES `kecamatan` (`kecamatan_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `spam_kelurahan_desa_id_foreign` FOREIGN KEY (`kelurahan_desa_id`) REFERENCES `kelurahan_desa` (`kelurahan_desa_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `spam_pengguna_id_foreign` FOREIGN KEY (`pengguna_id`) REFERENCES `pengguna` (`pengguna_id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of spam
-- ----------------------------
INSERT INTO `spam` VALUES (1, 'asdf', 123, 0.00, 0.00, 0.00, 0.00, 0.00, 12, 123, 9, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-28 19:09:46', '2020-07-28 19:09:46');
INSERT INTO `spam` VALUES (2, '12', 1990, 14.00, 124.00, 124.00, 0.00, 0.00, 3, 4, 6, NULL, NULL, NULL, NULL, NULL, 'admin', 0, '2020-07-28 19:29:18', '2020-07-28 19:29:18');

-- ----------------------------
-- Table structure for sumber_dana
-- ----------------------------
DROP TABLE IF EXISTS `sumber_dana`;
CREATE TABLE `sumber_dana`  (
  `sumber_dana_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `sumber_dana_nama` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`sumber_dana_id`) USING BTREE,
  UNIQUE INDEX `sumber_dana_sumber_dana_nama_unique`(`sumber_dana_nama`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sumber_dana
-- ----------------------------
INSERT INTO `sumber_dana` VALUES (2, 'APBN', '2020-07-14 21:02:36', '2020-07-14 21:02:36');
INSERT INTO `sumber_dana` VALUES (3, 'APBD', '2020-07-14 21:02:41', '2020-07-14 21:02:41');
INSERT INTO `sumber_dana` VALUES (4, 'Hibah', '2020-07-14 21:02:47', '2020-07-14 21:02:47');

-- ----------------------------
-- Table structure for sumur
-- ----------------------------
DROP TABLE IF EXISTS `sumur`;
CREATE TABLE `sumur`  (
  `sumur_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `sumur_kode` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `sumur_tahun_pembuatan` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT '',
  `sumur_debit` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `sumur_kondisi` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `kabupaten_kota_id` bigint(20) UNSIGNED NULL DEFAULT NULL,
  `kecamatan_id` bigint(20) UNSIGNED NULL DEFAULT NULL,
  `kelurahan_desa_id` bigint(20) UNSIGNED NULL DEFAULT NULL,
  `marker` point NULL,
  `polyline` linestring NULL,
  `polygon` polygon NULL,
  `pengguna_id` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `kewenangan_provinsi` tinyint(4) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`sumur_id`) USING BTREE,
  INDEX `sumur_pengguna_id_foreign`(`pengguna_id`) USING BTREE,
  INDEX `sumur_kelurahan_desa_id_foreign`(`kelurahan_desa_id`) USING BTREE,
  INDEX `sumur_kecamatan_id_foreign`(`kecamatan_id`) USING BTREE,
  INDEX `sumur_kabupaten_kota_id_foreign`(`kabupaten_kota_id`) USING BTREE,
  CONSTRAINT `sumur_kabupaten_kota_id_foreign` FOREIGN KEY (`kabupaten_kota_id`) REFERENCES `kabupaten_kota` (`kabupaten_kota_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `sumur_kecamatan_id_foreign` FOREIGN KEY (`kecamatan_id`) REFERENCES `kecamatan` (`kecamatan_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `sumur_kelurahan_desa_id_foreign` FOREIGN KEY (`kelurahan_desa_id`) REFERENCES `kelurahan_desa` (`kelurahan_desa_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `sumur_pengguna_id_foreign` FOREIGN KEY (`pengguna_id`) REFERENCES `pengguna` (`pengguna_id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 432 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sumur
-- ----------------------------
INSERT INTO `sumur` VALUES (1, 'SLE 308', '-', '', 'Baik', NULL, NULL, 483, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (2, 'SGR 309', '-', '', 'Baik', NULL, NULL, 391, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (3, 'SED 31', '1986', '4.0', 'Rusak Ringan', NULL, NULL, 438, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (4, 'SED 30', '1986', '2.5', 'Rusak Ringan', NULL, NULL, 438, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (5, 'SEG 228', '1997', '15.14', 'Rusak Ringan', NULL, NULL, 485, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (6, 'SPK 240', '2001', '3.38', 'Rusak Ringan', NULL, NULL, 409, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (7, 'BK 126', '1990 -1991', '12', 'Baik', NULL, NULL, 901, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (8, 'T 124', '-', '-', 'Baik', NULL, NULL, 921, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (9, 'BK 129', '1989 -1990', '10', 'Baik', NULL, NULL, 901, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (10, 'SPB 209', '1995 -1996', '18', 'Baik', NULL, NULL, 901, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (11, 'SPG 203', '1995 -1996', '25.49', 'Baik', NULL, NULL, 912, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (12, 'SPB 220', '1996 -1997', '18', 'Baik', NULL, NULL, 901, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (13, 'SPB 235', '1999- 2000', '15', 'Baik', NULL, NULL, 901, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (14, 'LK 115', '1991 -1992', '12', 'Baik', NULL, NULL, 909, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (15, 'BK 127', '1989 -1990', '10', 'Baik', NULL, NULL, 901, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (16, 'AK 148', '1990 -1991', '18', 'Baik', NULL, NULL, 901, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (17, 'LN 157', '1990 -1991', '18', 'Baik', NULL, NULL, 917, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (18, 'SE 11', '1990 -1991', '20.19', 'Baik', NULL, NULL, 913, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (19, 'LK 112', '1991 -1992', '18', 'Baik', NULL, NULL, 909, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (20, 'SPB 221', '1996 -1997', '18', 'Baik', NULL, NULL, 901, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (21, 'AK 146', '1990 -1991', '15', 'Baik', NULL, NULL, 901, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (22, 'SPB 208 B', '2011', '18', 'Baik', NULL, NULL, 915, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (23, 'SPB 232 B', '2011', '17', 'Baik', NULL, NULL, 901, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (24, 'BK 141/SPB 265', '1990 -1991', '15.14', 'Baik', NULL, NULL, 901, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (25, 'LN 158', '1990 -1991', '16', 'Baik', NULL, NULL, 917, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (26, 'SE 10', '1990 -1991', '20.19', 'Baik', NULL, NULL, 913, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (27, 'LM 107', '1990 -1991', '15', 'Baik', NULL, NULL, 902, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (28, 'LK 110', '1990 -1991', '15', 'Baik', NULL, NULL, 909, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (29, 'LN 156', '1990 -1991', '16', 'Baik', NULL, NULL, 917, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (30, 'SPB 210', '1995 -1996', '15', 'Baik', NULL, NULL, 901, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (31, 'SPB 212', '1995 -1996', '18', 'Baik', NULL, NULL, 901, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (32, 'SPB 233', '1999 - 2000', '16', 'Baik', NULL, NULL, 901, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (33, 'G 167', '1992 -1993', '15', 'Baik', NULL, NULL, 912, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (34, 'EM 122', '1990 -1991', '18', 'Rusak Ringan', NULL, NULL, 901, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (35, 'SPG 224 B', '2013', '15', 'Baik', NULL, NULL, 912, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (36, 'PM 124', '1992 -1993', '18', 'Baik', NULL, NULL, 926, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (37, 'SPG 225', '1997 -1998', '16', 'Rusak Ringan', NULL, NULL, 912, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (38, 'SPK 242', '2001', '18', 'Baik', NULL, NULL, 917, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (39, 'BK 130', '1989-1990', '10', 'Baik', NULL, NULL, 901, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (40, 'SE 9', '1990-1991', '10', 'Baik', NULL, NULL, 912, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (41, 'SE 11 B', '2011', '15', 'Baik', NULL, NULL, 913, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (42, 'LK 114', '1991 -1992', '12', 'Baik', NULL, NULL, 909, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (43, 'AK 144', '1990 -1991', '15', 'Baik', NULL, NULL, 901, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (44, 'SPB 234', '1999- 2000', '18', 'Baik', NULL, NULL, 915, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (45, 'SPG 162', '1991 -1992', '15', 'Baik', NULL, NULL, 913, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (46, 'SPG 163', '1990 -1991', '18', 'Baik', NULL, NULL, 913, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (47, 'LK 111', '1990 -1991', '15', 'Baik', NULL, NULL, 909, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (48, 'SPG 246', '2003', '19.5', 'Redrilling (Baik)', NULL, NULL, 912, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (49, 'SEC 124', '1985 -1986', '20.46', 'Baik', NULL, NULL, 921, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (50, 'SEC 128', '1985 -1986', '40.3', 'Baik', NULL, NULL, 909, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (51, 'SPB 160', '1991 -1992', '12', 'Baik', NULL, NULL, 901, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (52, 'SPG 164', '1991 -1992', '15', 'Baik', NULL, NULL, 913, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (53, 'AK 168', '1992 -1993', '15', 'Baik', NULL, NULL, 901, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (54, 'SPB 222', '1996 -1997', '18', 'Baik', NULL, NULL, 901, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (55, 'SE 10 B', '2011', '15', 'Baik', NULL, NULL, 912, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (56, 'SEC 28', '1986-1987', '15', 'Baik', NULL, NULL, 909, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (57, 'SEC 126', '1985 -1986', '40', 'Rusak Ringan', NULL, NULL, 901, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (58, 'SE 1', '1990 -1991', '-', 'Rusak Ringan', NULL, NULL, 901, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (59, 'SE 2', '1990 -1991', '6', 'Rusak Ringan', NULL, NULL, 901, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (60, 'SE 3', '1990 -1991', '3', 'Rusak Ringan', NULL, NULL, 901, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (61, 'SE 4', '1990 -1991', '-', 'Rusak Ringan', NULL, NULL, 909, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (62, 'SE 13', '1990 -1991', '-', 'Rusak Ringan', NULL, NULL, 909, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (63, 'EM 154', '1990 -1991', '11.32', 'Rusak Ringan', NULL, NULL, 909, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (64, 'SE 12', '1990 -1991', '-', 'Rusak Ringan', NULL, NULL, 913, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (65, 'SPB 190', '1994 -1995', '18', 'Rusak Ringan', NULL, NULL, 915, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (66, 'SPB 211', '1995 -1996', '10', 'Rusak Ringan', NULL, NULL, 901, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (67, 'SPG 237', '1999 - 2000', '15.73', 'Rusak Ringan', NULL, NULL, 912, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (68, 'SPB 241', '2001', '18', 'Rusak Ringan', NULL, NULL, 901, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (69, 'SPP 247', '2003', '18', 'Rusak Ringan', NULL, NULL, 926, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (70, 'SPK 257', '2005', '18', 'Rusak Ringan', NULL, NULL, 917, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (71, 'SPT 283', '2009', '15', 'Baik', NULL, NULL, 930, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (72, 'SPT 285', '2009', '12', 'Baik', NULL, NULL, 930, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (73, 'SPT 284', '2009', '20.19', 'Rusak Ringan', NULL, NULL, 913, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (74, 'SPK 295', '2012', '16', 'Baik', NULL, NULL, 921, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (75, 'SE 26', '-', '-', 'Rusak Ringan', NULL, NULL, 901, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (76, 'SE 90', '-', '-', 'Rusak Ringan', NULL, NULL, 901, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (77, 'SEG', '-', '-', 'Rusak Ringan', NULL, NULL, 930, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (78, 'SEG 125', '-', '-', 'Rusak Ringan', NULL, NULL, 912, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (79, 'SPB 20', '-', '-', 'Rusak Ringan', NULL, NULL, 915, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (80, 'SPG', '-', '-', 'Rusak Ringan', NULL, NULL, 913, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (81, 'SPB 302', '2015', '-', 'Rusak Ringan', NULL, NULL, 917, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (82, 'SPB 303', '2015', '18', 'Baik', NULL, NULL, 901, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (83, 'SPG 305', '2015', '-', 'Baik', NULL, NULL, 912, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (84, 'PM 120', '1992 -1993', '16', 'Rusak Ringan', NULL, NULL, 926, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (85, 'SEG 19', '1995 -1996', '15', 'Rusak Ringan', NULL, NULL, 912, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (86, 'SEB 20', '1985 -1986', '16', 'Rusak Ringan', NULL, NULL, 912, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (87, 'SPB 200', '1995 -1996', '12', 'Rusak Ringan', NULL, NULL, 915, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (88, 'SPB 239', '2000', '16', 'Rusak Ringan', NULL, NULL, 901, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (89, 'SPB 226', '1997 -1998', '17', 'Rusak Ringan', NULL, NULL, 901, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (90, 'SPK 302', '2015', '16', 'Baik', NULL, NULL, 917, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (91, 'SEB 11 B', '-', '-', 'Baik', NULL, NULL, 913, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (92, 'SEB 10 B', '-', '-', 'Baik', NULL, NULL, 913, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (93, 'AK 142', '1990 -1991', '10', 'Baik', NULL, NULL, 901, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (94, 'SPB 236 B', '2010', '16.81', 'Rusak Ringan', NULL, NULL, 901, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (95, 'SPB 159', '1991 -1992', '18', 'Beralih Fungsi', NULL, NULL, 915, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (96, 'SPG 252', '2003', '20.19', 'Beralih Fungsi', NULL, NULL, 912, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (97, 'SPT 258', '2005', '10', 'Beralih Fungsi', NULL, NULL, 926, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (98, 'SE 9', '1990 -1991', '10', 'Baik', NULL, NULL, 912, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (99, 'SPG 162', '1991 -1992', '15', 'Baik', NULL, NULL, 913, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (100, 'SPG 163', '1990 -1991', '18', 'Baik', NULL, NULL, 913, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (101, 'SPG 165', '1991 -1992', '12', 'Rusak Berat', NULL, NULL, 913, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (102, 'SPG 166', '1991 -1992', '16', 'Rusak Berat', NULL, NULL, 913, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (103, 'LN 155', '1990 -1991', '10', 'Rusak Berat', NULL, NULL, 917, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (104, 'SPB 199', '1995 -1996', '12', 'Rusak Berat', NULL, NULL, 915, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (105, 'SPB 234', '1999- 2000', '18', 'Baik', NULL, NULL, 915, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (106, 'TM 151', '1990 -1991', '15', 'Rusak Ringan', NULL, NULL, 921, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (107, 'AK 147', '1990 -1991', '15', 'Baik', NULL, NULL, 901, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (108, 'LN 150', '1990 -1991', '15', 'Rusak Ringan', NULL, NULL, 901, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (109, 'SEC 24', '1985-1986', '16', 'Baik', NULL, NULL, 921, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (110, 'SEC 26', '1985-1986', '12', 'Rusak Berat', NULL, NULL, 901, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (111, 'BG 123', '1989 -1990', '12', 'Rusak Berat', NULL, NULL, 901, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (112, 'BG 125', '1989 -1990', '12', 'Rusak Ringan', NULL, NULL, 909, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (113, 'BG 134', '1992 -1993', '12', 'Rusak Berat', NULL, NULL, 901, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (114, 'BG 135', '1992 -1993', '10', 'Rusak Berat', NULL, NULL, 901, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (115, 'BG 136', '1992 -1993', '12', 'Rusak Berat', NULL, NULL, 901, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (116, 'BG 137', '1992 -1993', '12', 'Rusak Berat', NULL, NULL, 901, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (117, 'BK 130', '1989 -1990', '10', 'Baik', NULL, NULL, 901, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (118, 'BK 131', '1989 -1990', '15', 'Rusak Ringan', NULL, NULL, 901, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (119, 'BK 132', '1989 -1990', '12', 'Baik', NULL, NULL, 901, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (120, 'BK 140', '1990 -1991', '10', 'Rusak Berat', NULL, NULL, 901, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (121, 'EM 121', '1990 -1991', '12', 'Rusak Ringan', NULL, NULL, 901, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (122, 'EM 133', '1990 -1991', '12', 'Rusak Berat', NULL, NULL, 901, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (123, 'EM 149', '1990 -1991', '12', 'Rusak Berat', NULL, NULL, 901, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (124, 'AK 143', '1990 -1991', '12', 'Rusak Berat', NULL, NULL, 901, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (125, 'AK 142', '1990 -1991', '10', 'Baik', NULL, NULL, 901, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (126, 'AK 145', '1990 -1991', '10', 'Rusak Ringan', NULL, NULL, 901, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (127, 'AK 144', '1990 -1991', '15', 'Baik', NULL, NULL, 901, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (128, 'LK 113', '1991 -1992', '12', 'Rusak Berat', NULL, NULL, 909, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (129, 'LK 117', '1992 -1993', '15', 'Rusak Berat', NULL, NULL, 909, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (130, 'RB 116', '1990 -1991', '15', 'Rusak Berat', NULL, NULL, 909, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (131, 'RB 118', '1990 -1991', '15', 'Rusak Berat', NULL, NULL, 909, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (132, 'EM 139', '1990 -1991', '15', 'Rusak Berat', NULL, NULL, 909, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (133, 'EM 138', '1990 -1991', '15', 'Rusak Berat', NULL, NULL, 909, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (134, 'SPB 201', '1995 -1996', '18', 'Rusak Ringan', NULL, NULL, 901, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (135, 'SPB 223', '1997 -1998', '18', 'Rusak Berat', NULL, NULL, 909, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (136, 'LM 101', '1989 -1990', '10', 'Rusak Berat', NULL, NULL, 902, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (137, 'LM 102', '1989 -1990', '12', 'Rusak Berat', NULL, NULL, 902, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (138, 'LM 103', '1989 -1990', '12', 'Rusak Berat', NULL, NULL, 902, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (139, 'LM 104', '1989 -1990', '10', 'Rusak Ringan', NULL, NULL, 902, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (140, 'LM 105', '1990 -1991', '12', 'Rusak Ringan', NULL, NULL, 902, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (141, 'LM 106', '1990 -1991', '15', 'Rusak Berat', NULL, NULL, 902, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (142, 'LM 108', '1990 -1991', '12', 'Rusak Berat', NULL, NULL, 902, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (143, 'LM 109', '1989 -1990', '12', 'Rusak Berat', NULL, NULL, 902, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (144, 'SPB 191', '1994 -1995', '18', 'Rusak Berat', NULL, NULL, 905, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (145, 'SPB 208', '1995 -1996', '7.08', 'Redrilling', NULL, NULL, 915, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (146, 'SPG 224', '1997 -1998', '14.23', 'Redrilling', NULL, NULL, 912, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (147, 'SPB 232', '1999 - 2000', '7.23', 'Redrilling', NULL, NULL, 901, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (148, 'SPB 236', '1999 - 2000', '13.15', 'Redrilling', NULL, NULL, 901, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (149, 'A', '', '-', 'Sumur Eksplorasi', NULL, NULL, 917, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (150, 'SPB 265', '2006', '18', 'Baik', NULL, NULL, 901, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (151, 'SPG 284', '2009', '10', 'baik', NULL, NULL, 914, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (152, 'SPT 286', '2009', '', 'Baik', NULL, NULL, 930, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (153, 'SPT 274', '2008', '', 'Sumur Eksplorasi (Baik)', NULL, NULL, 930, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (154, 'SPB 203', '1995-1996', '18', 'Baik', NULL, NULL, 1257, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (155, 'SPB 237', '1999-2000', '16', 'Baik', NULL, NULL, 1257, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (156, 'SEA 1', '1981 -1982', '2', 'Rusak Ringan', NULL, NULL, 643, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (157, 'SEA 2', '1981 -1982', '20', 'Rusak Ringan', NULL, NULL, 643, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (158, 'SEA 15', '1983 -1984', '6', 'Rusak Ringan', NULL, NULL, 643, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (159, 'SEA 16', '1984 -1985', '6', 'Rusak Ringan', NULL, NULL, 644, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (160, 'SEA 17', '1984 -1985', '3', 'Rusak Ringan', NULL, NULL, 579, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (161, 'SEA 27', '1985 -1986', '2', 'Rusak Ringan', NULL, NULL, 638, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (162, 'SEA 32', '1986 -1987', '3', 'Rusak Ringan', NULL, NULL, 642, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (163, 'SEA 29', '1986 -1987', '3.38', 'Rusak Ringan', NULL, NULL, 642, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (164, 'SEA 25', '1986 -1987', '15', 'Rusak Ringan', NULL, NULL, 581, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (165, 'SE 1 / 90', '1989 -1990', '5', 'Rusak Ringan', NULL, NULL, 635, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (166, 'SE 4/91', '1991 -1992', '5.54', 'Rusak Ringan', NULL, NULL, 580, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (167, 'SE I / 91', '1991 -1992', '-', 'Rusak Ringan', NULL, NULL, 633, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (168, 'SE 3 / 91', '1991 -1992', '1.21', 'Rusak Ringan', NULL, NULL, 643, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (169, 'T 187', '1993 -1994', '-', 'Rusak Ringan', NULL, NULL, 580, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (170, 'BT 188', '1993 -1994', '-', 'Rusak Ringan', NULL, NULL, 580, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (171, 'S 186', '1993 -1994', '-', 'Rusak Ringan', NULL, NULL, 634, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (172, 'M 189', '1993 -1994', '4.07', 'Rusak Ringan', NULL, NULL, 567, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (173, 'SPJ 253', '2003', '2.52', 'Rusak Ringan', NULL, NULL, 548, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (174, 'SPP 276', '2008', '-', 'Sumur Eksplorasi (Baik)', NULL, NULL, 570, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (175, 'SPPJ 298', '-', '-', 'Baik', NULL, NULL, 633, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (176, 'SPPB 297', '-', '-', 'Baik', NULL, NULL, 585, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (177, 'SE 2/91', '-', '-', 'Rusak Ringan', NULL, NULL, 581, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (178, 'SPPT 293', '2012', '15.0', 'Baik', NULL, NULL, 618, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (179, 'SPR 306', '-', '-', 'Baik', NULL, NULL, 563, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (180, 'SPK 278', '-', '-', 'Sumur Eksplorasi (Baik)', NULL, NULL, 558, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (181, 'SPP 198', '1995 - 1996', '18.00', 'Baik', NULL, NULL, 737, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (182, 'SEP 18', '1995 - 1996', '15.00', 'Baik', NULL, NULL, 739, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (183, 'LB 03', '1988 - 1989', '12.00', 'Rusak Ringan', NULL, NULL, 739, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (184, 'SEB 19', '1984 - 1985', '18.00', 'Rusak Berat', NULL, NULL, 739, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (185, 'SEB 22', '1985 - 1986', '10.00', 'Baik', NULL, NULL, 739, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (186, 'SA 46', '1992 - 1993', '18.00', 'Baik', NULL, NULL, 737, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (187, 'SPP 202', '1995 - 1996', '15.00', 'Baik', NULL, NULL, 739, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (188, 'S 89', '1989-1990', '15.00', 'Baik', NULL, NULL, 804, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (189, 'MB 58', '-', '15.00', 'Baik', NULL, NULL, 737, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (190, 'C 11', '1988 - 1989', '15.00', 'Baik', NULL, NULL, 739, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (191, 'B 21', '1988 - 1989', '12', 'Baik', NULL, NULL, 739, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (192, 'TK 22', '1988 - 1989', '6.2', 'Baik', NULL, NULL, 739, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (193, 'KB 54', '1988 - 1989', '16', 'Baik', NULL, NULL, 804, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (194, 'S 81', '1989 - 1990', '15.14', 'Rusak Berat', NULL, NULL, 804, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (195, 'S 83', '1989 - 1990', '12.11', 'Baik', NULL, NULL, 804, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (196, 'BT 66', '1990 - 1991', '18.00', 'Baik', NULL, NULL, 737, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (197, 'LB 15', '1992 - 1993', '15.00', 'Baik', NULL, NULL, 739, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (198, 'SPP 238', '1999 - 2000', '16.00', 'Baik', NULL, NULL, 739, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (199, 'SPP 192', '1994 - 1995', '16.00', 'Baik', NULL, NULL, 739, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (200, 'S 87', '1989 - 1990', '12.00', 'Baik', NULL, NULL, 804, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (201, 'BT 65', '1989 - 1990', '16.00', 'Baik', NULL, NULL, 737, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (202, 'DP 14', '1992 - 1993', '16.00', 'Baik', NULL, NULL, 737, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (203, 'MR 170', '1992 - 1993', '18.00', 'Baik', NULL, NULL, 797, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (204, 'TK 19', '1988 - 1989', '10.00', 'Rusak Ringan', NULL, NULL, 739, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (205, 'J 26', '1988 - 1989', '12.5', 'Baik', NULL, NULL, 737, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (206, 'BT 51', '1988 - 1989', '18.00', 'Baik', NULL, NULL, 737, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (207, 'BT 72', '1989 - 1990', '10.00', 'Baik', NULL, NULL, 737, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (208, 'BT 52', '1990 - 1991', '12.00', 'Baik', NULL, NULL, 737, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (209, 'SA 31', '1991 - 1992', '15.00', 'Baik', NULL, NULL, 737, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (210, 'SA 33', '1991 - 1992', '15.00', 'Baik', NULL, NULL, 737, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (211, 'SA 39', '1991 - 1992', '12.00', 'Baik', NULL, NULL, 737, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (212, 'C 178', '1993 - 1994', '15.00', 'Baik', NULL, NULL, 739, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (213, 'S 88', '1989-1990', '12.00', 'Baik', NULL, NULL, 804, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (214, 'LB 02', '1988 - 1989', '15.00', 'Baik', NULL, NULL, 739, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (215, 'SPS 214', '1995 - 1996', '3.02', 'Baik', NULL, NULL, 804, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (216, 'B 35', '1988 - 1989', '10.00', 'Baik', NULL, NULL, 739, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (217, 'TK 22 B', '2010', '10.00', 'Baik', NULL, NULL, 739, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (218, 'PR 25 B', '2010', '15.00', 'Baik', NULL, NULL, 737, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (219, 'P 27 B', '2010', '15.00', 'Baik', NULL, NULL, 737, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (220, 'J 26 B', '2011', '12.00', 'Baik', NULL, NULL, 737, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (221, 'SPP 288', '2011', '18.00', 'Baik', NULL, NULL, 737, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (222, 'C 32', '1989 - 1990', '15.00', 'Baik', NULL, NULL, 739, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (223, 'KB 77', '1989 - 1990', '15.14', 'Baik', NULL, NULL, 804, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (224, 'J 06', '1992 - 1993', '16.00', 'Baik', NULL, NULL, 737, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (225, 'SPS 243', '2002', '20.00', 'Baik', NULL, NULL, 804, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (226, 'STW 07', '2006', '20.46', 'Baik', NULL, NULL, 804, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (227, 'SPP 280', '2008', '18.00', 'Baik', NULL, NULL, 739, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (228, 'P 29 B', '2010', '15.00', 'Baik', NULL, NULL, 737, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (229, 'SPS 261 B', '2010', '18.00', 'Baik', NULL, NULL, 804, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (230, 'SEB 10', '1983 - 1984', '18.00', 'Baik', NULL, NULL, 737, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (231, 'T 04', '1988 - 1989', '15.00', 'Baik', NULL, NULL, 739, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (232, 'B 20 B', '2013', '15.00', 'Baik', NULL, NULL, 739, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (233, 'TK 40', '1988 - 1989', '21.3', 'Baik', NULL, NULL, 739, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (234, 'C 34', '1989 - 1990', '9.31', 'Baik', NULL, NULL, 739, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (235, 'TK 43 B', '1992 - 1993', '15.00', 'Baik', NULL, NULL, 737, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (236, 'SPP 273', '2007', '16.00', 'Baik', NULL, NULL, 739, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (237, 'C 34 B', '2013', '18.00', 'Baik', NULL, NULL, 739, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (238, 'TK 40 B', '2013', '25.18', 'Baik', NULL, NULL, 739, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (239, 'SPS 248 B', '2013', '20.00', 'Baik', NULL, NULL, 804, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (240, 'MR 175', '1993-1994', '17.00', 'Baik', NULL, NULL, 797, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (241, 'TKL 82', '-', '15.00', 'Baik', NULL, NULL, 804, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (242, 'MR 174 B', '2013', '16.00', 'Baik', NULL, NULL, 797, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (243, 'T 7', '1988 - 1989', '15.00', 'Baik', NULL, NULL, 739, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (244, 'KB 57', '1988 - 1989', '15.00', 'Baik', NULL, NULL, 804, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (245, 'BT 68', '1989 - 1990', '12.00', 'Baik', NULL, NULL, 737, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (246, 'S 82', '1989 - 1990', '15.14', 'Baik', NULL, NULL, 804, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (247, 'S 86', '1989 - 1990', '12.00', 'Baik', NULL, NULL, 804, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (248, 'MB 75', '1990 - 1991', '16.00', 'Baik', NULL, NULL, 737, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (249, 'C 13', '1988 -1989', '15.00', 'Baik', NULL, NULL, 739, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (250, 'LB 30', '1988', '15.00', 'Baik', NULL, NULL, 739, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (251, 'BT 63', '1989 - 1990', '15.00', 'Baik', NULL, NULL, 737, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (252, 'BT 64', '1989 - 1990', '15.00', 'Baik', NULL, NULL, 737, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (253, 'BT 69', '1989 - 1990', '12.00', 'Baik', NULL, NULL, 737, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (254, 'BT 76', '1990 - 1991', '17.00', 'Baik', NULL, NULL, 737, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (255, 'SPS 207 ', '1995 - 1996', '15.00', 'Baik', NULL, NULL, 804, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (256, 'SPS 244', '2002', '16.00', 'Baik', NULL, NULL, 804, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (257, 'SPP 250', '2003', '10.00', 'Baik', NULL, NULL, 737, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (258, 'LB 5', '1988 - 1989', '30', 'Baik', NULL, NULL, 739, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (259, 'C 8', '1988 - 1989', '16.00', 'Baik', NULL, NULL, 739, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (260, 'C 9', '1988 - 1989', '15.00', 'Baik', NULL, NULL, 739, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (261, 'LB 05 B', '1992 - 1993', '15.00', 'Baik', NULL, NULL, 739, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (262, 'DR 179', '1993 - 1994', '15.00', 'Baik', NULL, NULL, 737, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (263, 'SA 180', '1993 - 1994', '15.00', 'Baik', NULL, NULL, 737, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (264, 'SB 185', '1993 - 1994', '12.00', 'Baik', NULL, NULL, 804, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (265, 'C 184', '1994', '16.00', 'Baik', NULL, NULL, 739, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (266, 'SPP 195', '1995 - 1996', '20.00', 'Baik', NULL, NULL, 739, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (267, 'SPP 215', '1995 - 1996', '18.00', 'Baik', NULL, NULL, 737, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (268, 'SA 216', '1995 - 1996', '23.4', 'Baik', NULL, NULL, 737, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (269, 'SPA 217', '1995 - 1996', '15.00', 'Baik', NULL, NULL, 663, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (270, 'KB 77 B', '2011', '16.00', 'Baik', NULL, NULL, 804, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (271, 'SPP 290', '2010', '15.00', 'Baik', NULL, NULL, 739, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (272, 'BT 73', '1989 - 1990', '12.00', 'Baik', NULL, NULL, 737, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (273, 'SPP 291', '2010', '15.00', 'Baik', NULL, NULL, 737, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (274, 'SPP 271', '2007', '15.00', 'Baik', NULL, NULL, 739, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (275, 'S 84', '1989-1990', '10.00', 'Baik', NULL, NULL, 804, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (276, 'SEB 12', '1983 - 1984', '6', 'Rusak Ringan', NULL, NULL, 739, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (277, 'SEB 13', '1983 - 1984', '2', 'Rusak Ringan', NULL, NULL, 739, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (278, 'SEB 21', '1985 - 1986', '22.75', 'Rusak Ringan', NULL, NULL, 739, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (279, 'SEB 20', '1985 - 1986', '23', 'Rusak Ringan', NULL, NULL, 737, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (280, 'C 36', '1988 - 1989', '18', 'Rusak Ringan', NULL, NULL, 739, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (281, 'BT 58', '1988 - 1989', '12.5', 'Rusak Ringan', NULL, NULL, 737, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (282, 'BT 61', '1989 - 1990', '3.4', 'Rusak Ringan', NULL, NULL, 737, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (283, 'BT 62', '1989 - 1990', '3.1', 'Rusak Ringan', NULL, NULL, 737, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (284, 'S 85', '1989 - 1990', '15', 'Rusak Ringan', NULL, NULL, 804, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (285, 'MR 173', '1993 - 1994', '5.09', 'Rusak Ringan', NULL, NULL, 797, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (286, 'MR 1', '1994', '28.09', 'Rusak Ringan', NULL, NULL, 799, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (287, 'SPP 196', '1995 - 1996', '-', 'Rusak Ringan', NULL, NULL, 739, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (288, 'SPP 197', '1995 - 1996', '-', 'Rusak Ringan', NULL, NULL, 739, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (289, 'SPS 206', '1995 - 1996', '20.19', 'Rusak Ringan', NULL, NULL, 797, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (290, 'SPP 227', '1997 - 1998', '10.19', 'Rusak Ringan', NULL, NULL, 739, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (291, 'SPS 248', '2003', '20.19', 'Rusak Ringan', NULL, NULL, 804, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (292, 'SPS 249', '2003', '15.00', 'Rusak Ringan', NULL, NULL, 804, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (293, 'STW 1', '2004', '20.00', 'Rusak Ringan', NULL, NULL, 804, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (294, 'STW 2', '2004', '15.00', 'Rusak Ringan', NULL, NULL, 804, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (295, 'STW 3', '2004', '20.00', 'Rusak Ringan', NULL, NULL, 804, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (296, 'STW 4', '2004', '15.00', 'Rusak Ringan', NULL, NULL, 804, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (297, 'SOW 1', '2004', '--', 'Rusak Ringan', NULL, NULL, 804, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (298, 'SPS 259', '2006', '15.00', 'Rusak Ringan', NULL, NULL, 804, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (299, 'SPS 260', '2006', '20.00', 'Rusak Ringan', NULL, NULL, 804, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (300, 'SPS 262', '2006', '18.00', 'Rusak Ringan', NULL, NULL, 804, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (301, 'SPP 264', '2006', '20.00', 'Rusak Ringan', NULL, NULL, 739, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (302, 'STW 6', '2006', '16.00', 'Rusak Ringan', NULL, NULL, 804, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (303, 'STW 5', '2004', '20.00', 'Rusak Ringan', NULL, NULL, 804, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (304, 'SPS 266', '2007', '15.00', 'Rusak Ringan', NULL, NULL, 804, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (305, 'SPS 267', '2007', '15.00', 'Rusak Ringan', NULL, NULL, 804, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (306, 'SPS 268', '2007', '15.00', 'Rusak Ringan', NULL, NULL, 804, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (307, 'SPS 269', '2007', '15.00', 'Rusak Ringan', NULL, NULL, 804, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (308, 'SPP 272', '2007', '20.00', 'Rusak Ringan', NULL, NULL, 739, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (309, 'SPP 275', '2008', '18.00', 'Baik', NULL, NULL, 734, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (310, 'SPP 278', '2008', '18.00', 'Baik', NULL, NULL, 739, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (311, 'SPP 281', '2008', '18.00', 'Baik', NULL, NULL, 734, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (312, 'SPP 282', '2008', '18.00', 'Baik', NULL, NULL, 734, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (313, 'SPP 279', '2008', '18.00', 'Rusak Ringan', NULL, NULL, 800, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (314, 'G 27 B', '2010', '10.00', 'Baik', NULL, NULL, 710, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (315, 'SPS 204 B', '2011', '16.00', 'Rusak Ringan', NULL, NULL, 804, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (316, 'SPP 287', '2011', '18.00', 'Baik', NULL, NULL, 737, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (317, 'SPP 292', '2011', '15.00', 'Baik', NULL, NULL, 739, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (318, 'SPP 289', '2011', '7.08', 'Rusak Ringan', NULL, NULL, 799, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (319, 'SPS 294', '2012', '18', 'Baik', NULL, NULL, 804, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (320, 'BT 62 B', '2013', '10.19', 'Redrilling', NULL, NULL, 737, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (321, 'SPS 296', '2013', '16.00', 'Baik', NULL, NULL, 797, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (322, 'STW 7', '2006', '20.00', 'Baik', NULL, NULL, 796, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (323, 'STW 8', '2006', '20.00', 'Rusak Ringan', NULL, NULL, 804, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (324, 'STW 9', '2006', '20.00', 'Baik', NULL, NULL, 798, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (325, 'TKL 83', '1989-1990', '10.00', 'Baik', NULL, NULL, 806, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (326, 'SPS 300', '2015', '16.00', 'Baik', NULL, NULL, 804, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (327, 'SPS 299', '2015', '18.00', 'Baik', NULL, NULL, 804, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (328, 'SPS 301', '2015', '20.00', 'Baik', NULL, NULL, 797, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (329, 'SPS 304', '2015', '20.00', 'Baik', NULL, NULL, 804, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (330, 'J 37', '2011', '18.00', 'Baik', NULL, NULL, 737, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (331, 'SPP 216', '1995-1996', '20.00', 'Baik', NULL, NULL, 737, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (332, 'SPS 291', '-', '-', 'Rusak Ringan', NULL, NULL, 737, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (333, 'TK 40', '1988 -1989', '21.3', 'Beralih Fungsi', NULL, NULL, 739, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (334, 'TK 41', '1988 -1989', '6.2', 'Beralih Fungsi', NULL, NULL, 739, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (335, 'TK 43', '-', '-', 'Beralih Fungsi', NULL, NULL, 737, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (336, 'TK 22', '1988 -1989', '6.2', 'Beralih Fungsi', NULL, NULL, 739, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (337, 'TK 19', '1988 -1989', '9.1', 'Beralih Fungsi', NULL, NULL, 739, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (338, 'B 18', '1988 -1989', '12', 'Beralih Fungsi', NULL, NULL, 739, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (339, 'B 20', '1988 -1989', '12', 'Baik', NULL, NULL, 739, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (340, 'B 21', '1988 -1989', '12', 'Beralih Fungsi', NULL, NULL, 739, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (341, 'B 35', '1988 -1989', '10', 'Baik', NULL, NULL, 739, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (342, 'SEB 10', '1983 -1984', '18', 'Baik', NULL, NULL, 737, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (343, 'SEB 11', '1983 - 1984', '10', 'Beralih Fungsi', NULL, NULL, 739, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (344, 'J 31', '1985 - 1986', '10.72', 'Beralih Fungsi', NULL, NULL, 737, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (345, 'TK 41', '1988 - 1989', '6.2', 'Beralih Fungsi', NULL, NULL, 739, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (346, 'MD 93', '1989 - 1990', '20.19', 'Beralih Fungsi', NULL, NULL, 802, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (347, 'MD 94', '1989 - 1990', '15.1', 'Beralih Fungsi', NULL, NULL, 802, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (348, 'MD 95', '1989 - 1990', '20.74', 'Beralih Fungsi', NULL, NULL, 802, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (349, 'MD 96', '1989 - 1990', '20.74', 'Beralih Fungsi', NULL, NULL, 802, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (350, 'MD 97', '1989 - 1990', '16.08', 'Beralih Fungsi', NULL, NULL, 802, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (351, 'LD 90', '1990 - 1991', '21.3', 'Beralih Fungsi', NULL, NULL, 802, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (352, 'LD 91', '1990 - 1991', '20.5', 'Beralih Fungsi', NULL, NULL, 802, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (353, 'P 42', '1988 - 1989', '10.5', 'Beralih Fungsi', NULL, NULL, 739, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (354, 'D 44', '1988 - 1989', '-', 'Beralih Fungsi', NULL, NULL, 737, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (355, 'D 45', '1988 - 1989', '12.4', 'Beralih Fungsi', NULL, NULL, 737, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (356, 'BT 59', '1990 - 1991', '12.5', 'Beralih Fungsi', NULL, NULL, 737, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (357, 'KB 78', '1991 - 1992', '21.59', 'Beralih Fungsi', NULL, NULL, 804, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (358, 'SPP 230', '1998 - 1999', '15', 'Rusak Berat', NULL, NULL, 739, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (359, 'LB 30', '1988 -1989', '15', 'Baik', NULL, NULL, 739, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (360, 'T 10', '1988 -1989', '10', 'Rusak Ringan', NULL, NULL, 739, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (361, 'SPP 229', '1998 - 1999', '18', 'Rusak Berat', NULL, NULL, 739, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (362, 'SPP 231', '1998 - 1999', '16', 'Rusak Berat', NULL, NULL, 739, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (363, 'C 12', '1988 -1989', '12', 'Rusak Berat', NULL, NULL, 739, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (364, 'C 13', '1988 -1989', '15', 'Baik', NULL, NULL, 739, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (365, 'SPP 194', '1995 -1996', '20', 'Rusak Ringan', NULL, NULL, 739, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (366, 'B 18 B', '2016', '10', 'Baik', NULL, NULL, 739, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (367, 'PR 24 B', '2016', '10', 'Baik', NULL, NULL, 737, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (368, 'P 28', '1988-1989', '10', 'Rusak Berat', NULL, NULL, 737, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (369, 'SA 38', '1991-1992', '15', 'Rusak Ringan', NULL, NULL, 739, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (370, 'PS 181', '1993-1994', '12', 'Rusak Berat', NULL, NULL, 737, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (371, 'BT 67', '1989-1990', '10', 'Rusak Berat', NULL, NULL, 737, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (372, 'BT 70', '1990-1991', '12', 'Rusak Berat', NULL, NULL, 737, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (373, 'BT 71', '1990-1991', '12', 'Rusak Berat', NULL, NULL, 737, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (374, 'SB 183', '1993-1994', '10', 'Rusak Berat', NULL, NULL, 804, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (375, 'SPS 193', '1994-1995', '12', 'Rusak Berat', NULL, NULL, 804, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (376, 'SPS 205', '1995-1996', '12', 'Rusak Berat', NULL, NULL, 804, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (377, 'STW 10 B', '2016', '15', 'Baik', NULL, NULL, 804, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (378, 'STW 11 B', '2016', '20', 'Baik', NULL, NULL, 804, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (379, 'STW 12 B', '2016', '16', 'Baik', NULL, NULL, 804, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (380, 'SPS 218', '1995-1996', '4.607142857', 'Rusak Berat', NULL, NULL, 804, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (381, 'TKL 81', '', '12', 'Rusak Berat', NULL, NULL, 804, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (382, 'PD 100', '1991-1992', '9', 'Rusak Berat', NULL, NULL, 797, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (383, 'SPS 213', '1995-1996', '16.1', 'Rusak Berat', NULL, NULL, 802, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (384, 'SEB 14', '1983 -1984', '18', 'Rusak Berat', NULL, NULL, 739, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (385, 'P 27 / J 26 B', '2011', '12.1', 'Redrilling', NULL, NULL, 737, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (386, 'BT 60 B', '2013', '7.64', 'Redrilling', NULL, NULL, 737, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (387, 'MB 177 B', '2016', '8.15', 'Redrilling', NULL, NULL, 737, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (388, 'MR 171 B', '2016', '20.46', 'Redrilling', NULL, NULL, 797, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (389, 'MR 172 B', '2016', '3.57', 'Redrilling', NULL, NULL, 797, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (390, 'MR 174 / MR 174 B', '1993 - 1994', '25.18', 'Redrilling', NULL, NULL, 797, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (391, 'SPS 204 B', '2011', '16', 'Redrilling', NULL, NULL, 804, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (392, 'SPS 261 / SPS 260 B', '2006', '12.73', 'Redrilling', NULL, NULL, 804, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (393, 'SPP 263 B', '2016', '20', 'Redrilling', NULL, NULL, 739, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (394, 'SPP 270 / SPP 270 B', '2010', '24.47', 'Redrilling', NULL, NULL, 739, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (395, 'STW 11 / STW 11 B', '-', '-', 'Redrilling', NULL, NULL, 804, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (396, 'SP 1', '2011', '-', 'Sumur Pantau/Rusak Ringan', NULL, NULL, 739, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (397, 'SP 2', '2011', '-', 'Sumur Pantau/Rusak Ringan', NULL, NULL, 804, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (398, 'SEB 3', '1981 - 1982', '6', 'Sumur Eksplorasi', NULL, NULL, 710, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (399, 'SEB 4', '1982 - 1983', '13', 'Sumur Eksplorasi', NULL, NULL, 739, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (400, 'SEB 5', '1982 - 1983', '12.2', 'Sumur Eksplorasi', NULL, NULL, 739, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (401, 'SEB 6', '1982 - 1983', '4', 'Sumur Eksplorasi', NULL, NULL, 737, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (402, 'SEB 7', '1982 - 1983', '13.2', 'Sumur Eksplorasi', NULL, NULL, 737, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (403, 'SEB 8', '1982 - 1983', '13', 'Sumur Eksplorasi', NULL, NULL, 737, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (404, 'SEB 9', '1982 - 1983', '15', 'Sumur Eksplorasi', NULL, NULL, 710, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (405, 'SE 3', '1989 - 1990', '3', 'Sumur Eksplorasi', NULL, NULL, 678, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (406, 'SE 2', '1989 - 1990', '6', 'Sumur Eksplorasi', NULL, NULL, 678, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (407, 'SE 5', '1990 - 1991', '-', 'Sumur Eksplorasi', NULL, NULL, 739, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (408, 'SE 6', '1990 - 1991', '-', 'Sumur Eksplorasi', NULL, NULL, 737, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (409, 'SE 7 ', '1990 - 1991', '-', 'Sumur Eksplorasi', NULL, NULL, 737, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (410, 'SE 8', '1990 - 1991', '-', 'Sumur Eksplorasi', NULL, NULL, 737, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (411, 'PD 98', '1991 - 1992', '5.09', 'Sumur Eksplorasi', NULL, NULL, 797, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (412, 'MD 1', '1991 - 1992', '27.43', 'Sumur Eksplorasi', NULL, NULL, 1256, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (413, 'B', '-', '-', 'Sumur Eksplorasi', NULL, NULL, 804, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (414, 'C', '-', '-', 'Sumur Eksplorasi', NULL, NULL, 739, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (415, 'D', '-', '-', 'Sumur Eksplorasi', NULL, NULL, 797, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (416, 'E', '-', '-', 'Sumur Eksplorasi', NULL, NULL, 820, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (417, 'F', '-', '-', 'Sumur Eksplorasi', NULL, NULL, 797, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (418, 'G', '-', '-', 'Sumur Eksplorasi', NULL, NULL, 804, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (419, 'H', '-', '-', 'Sumur Eksplorasi', NULL, NULL, 797, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (420, 'I', '-', '-', 'Sumur Eksplorasi', NULL, NULL, 797, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (421, 'J', '-', '-', 'Sumur Eksplorasi', NULL, NULL, 797, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (422, 'SJW 307', '-', '', 'Baik', NULL, NULL, 674, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (423, 'SPS 232 B', '-', '', 'Baik', NULL, NULL, 737, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (424, 'SPP 263', '2006', '', 'Rusak Ringan', NULL, NULL, 740, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (425, 'SPS 289', '2010', '15', 'Baik', NULL, NULL, 797, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (426, 'LB 01', '1985-1986', '10', 'Rusak Ringan', NULL, NULL, 740, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (427, 'PR 25', '1988 -1989', '', 'Baik', NULL, NULL, 740, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (428, 'PR 24', '1988 -1989', '', 'Rusak Berat', NULL, NULL, 740, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (429, 'SPS 279', '', '', 'Eksplorasi (Q kecil)', NULL, NULL, 800, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (430, 'G 27', '', '', 'Rusak Berat', NULL, NULL, 710, NULL, NULL, NULL, 'admin', 0, NULL, NULL);
INSERT INTO `sumur` VALUES (431, 'SPJ 277', '', '', 'Sumur Eksplorasi (Baik)', NULL, NULL, 671, NULL, NULL, NULL, 'admin', 0, NULL, NULL);

SET FOREIGN_KEY_CHECKS = 1;
