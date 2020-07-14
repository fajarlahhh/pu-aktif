/*
 Navicat Premium Data Transfer

 Source Server         : Localhost 57
 Source Server Type    : MySQL
 Source Server Version : 50724
 Source Host           : localhost:3306
 Source Schema         : aktif

 Target Server Type    : MySQL
 Target Server Version : 50724
 File Encoding         : 65001

 Date: 14/07/2020 19:02:26
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
) ENGINE = InnoDB AUTO_INCREMENT = 37 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

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
  `marker` point NULL,
  `polyline` linestring NULL,
  `polygon` polygon NULL,
  `pengguna_id` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`daerah_irigasi_id`) USING BTREE,
  INDEX `daerah_irigasi_pengguna_id_foreign`(`pengguna_id`) USING BTREE,
  INDEX `daerah_irigasi_kabupaten_kota_id_foreign`(`kabupaten_kota_id`) USING BTREE,
  CONSTRAINT `daerah_irigasi_kabupaten_kota_id_foreign` FOREIGN KEY (`kabupaten_kota_id`) REFERENCES `kabupaten_kota` (`kabupaten_kota_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `daerah_irigasi_pengguna_id_foreign` FOREIGN KEY (`pengguna_id`) REFERENCES `pengguna` (`pengguna_id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 1252 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of daerah_irigasi
-- ----------------------------
INSERT INTO `daerah_irigasi` VALUES (880, 'Mataram', 1927, 697.00, 465.00, 0.00, 0.00, 232.00, '<1000', 11, NULL, NULL, NULL, 'admin', NULL, '2020-07-14 11:45:37');
INSERT INTO `daerah_irigasi` VALUES (881, 'Pamotan', 1969, 295.00, 206.00, 0.00, 0.00, 89.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (882, 'Unus', 1969, 596.00, 358.00, 0.00, 0.00, 238.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (883, 'Pesongoran', 1969, 282.00, 241.00, 0.00, 0.00, 41.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (884, 'Tembelok', 1972, 225.00, 203.00, 0.00, 0.00, 22.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (885, 'Bertais', 1927, 189.00, 108.00, 0.00, 0.00, 81.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (886, 'Sindang Gila', 0, 855.00, 496.00, 0.00, 0.00, 359.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (887, 'Sopak', 0, 515.00, 407.00, 0.00, 0.00, 108.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (888, 'Loloan', 0, 717.00, 500.00, 0.00, 0.00, 217.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (889, 'Batu Rakit', 1975, 480.00, 190.00, 0.00, 0.00, 290.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (890, 'Sambik Jengkel', 1959, 500.00, 245.00, 86.00, 0.00, 169.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (891, 'Pawang Kates', 1982, 346.00, 210.00, 0.00, 0.00, 136.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (892, 'Teres Genit', 1974, 673.00, 516.00, 157.00, 0.00, 0.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (893, 'E. Bayan', 1967, 200.00, 0.00, 0.00, 200.00, 0.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (894, 'E. Lokok Tawah', 1974, 300.00, 0.00, 0.00, 300.00, 0.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (895, 'Lendang Jurang', 1994, 181.00, 146.00, 0.00, 0.00, 35.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (896, 'Rempek', 1994, 358.00, 104.00, 0.00, 0.00, 254.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (897, 'Pekatan', 1998, 853.00, 821.00, 0.00, 0.00, 32.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (898, 'Prawira', 1973, 159.00, 117.00, 0.00, 0.00, 42.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (899, 'Menggala', 1977, 153.00, 121.00, 0.00, 0.00, 32.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (900, 'Bentek', 1963, 14.00, 11.00, 0.00, 0.00, 3.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (901, 'Sandik', 1926, 417.00, 331.00, 0.00, 0.00, 86.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (902, 'Medas', 1965, 103.00, 75.00, 0.00, 0.00, 28.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (903, 'Ireng Daya', 1977, 288.00, 270.00, 0.00, 0.00, 18.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (904, 'Gegutu', 1974, 209.00, 163.00, 0.00, 0.00, 46.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (905, 'Penimbung', 1927, 485.00, 454.00, 0.00, 0.00, 31.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (906, 'Menjeli', 1976, 203.00, 107.00, 0.00, 0.00, 96.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (907, 'Repok Pancor', 1956, 306.00, 285.00, 0.00, 0.00, 21.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (908, 'Mencongah', 1977, 301.00, 245.00, 0.00, 0.00, 56.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (909, 'Nyurbaya', 1921, 555.00, 443.00, 0.00, 0.00, 112.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (910, 'Montang', 1976, 680.00, 176.00, 0.00, 0.00, 504.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (911, 'Keru', 1979, 870.00, 841.00, 0.00, 0.00, 29.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (912, 'Buntopeng', 1926, 225.00, 191.00, 0.00, 0.00, 34.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (913, 'Pesongoran Kuripan', 1975, 86.00, 84.00, 0.00, 0.00, 2.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (914, 'Pelangan', 1926, 333.00, 108.00, 225.00, 0.00, 0.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (915, 'E. Kengkang', 1976, 177.00, 177.00, 0.00, 0.00, 0.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (916, 'E. Telekong I', 1965, 30.00, 30.00, 0.00, 0.00, 0.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (917, 'E. Telekong II', 1984, 28.00, 28.00, 0.00, 0.00, 0.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (918, 'E. Kb. Kuning', 1994, 300.00, 0.00, 0.00, 300.00, 0.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (919, 'Bile Kere', 1996, 383.00, 381.00, 0.00, 0.00, 2.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (920, 'Sidemen', 1996, 688.00, 538.00, 0.00, 0.00, 150.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (921, 'Simbe', 2002, 116.00, 115.00, 0.00, 0.00, 1.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (922, 'Benjor', 0, 233.00, 233.00, 0.00, 0.00, 0.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (923, 'Brambang', 0, 268.00, 268.00, 0.00, 0.00, 0.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (924, 'Mesone Wareng', 0, 285.00, 268.00, 0.00, 0.00, 17.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (925, 'Mertak Paok', 1979, 115.00, 115.00, 0.00, 0.00, 0.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (926, 'E. Dao', 1979, 400.00, 400.00, 0.00, 0.00, 0.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (927, 'Jengguar', 1990, 116.00, 115.00, 0.00, 0.00, 1.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (928, 'Nyeredep', 1990, 222.00, 222.00, 0.00, 0.00, 0.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (929, 'Telaga', 1977, 316.00, 315.00, 0.00, 0.00, 1.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (930, 'Paok Rengga', 1964, 416.00, 415.00, 0.00, 0.00, 1.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (931, 'Otak Desa', 1956, 299.00, 294.00, 0.00, 0.00, 5.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (932, 'Paok Dengkol', 1970, 300.00, 300.00, 0.00, 0.00, 0.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (933, 'Gule liat', 1978, 210.00, 203.00, 0.00, 0.00, 7.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (934, 'Tain Petuk', 1976, 364.00, 353.00, 0.00, 0.00, 11.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (935, 'Muncan', 1988, 318.00, 318.00, 0.00, 0.00, 0.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (936, 'E. Bengak', 1942, 157.00, 157.00, 0.00, 0.00, 0.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (937, 'E. Dana Sari', 1979, 210.00, 210.00, 0.00, 0.00, 0.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (938, 'E. Pendem', 1982, 138.00, 138.00, 0.00, 0.00, 0.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (939, 'E, Kuang Sampi', 1984, 91.00, 91.00, 0.00, 0.00, 0.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (940, 'E. Ld. Telaga', 1970, 136.00, 136.00, 0.00, 0.00, 0.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (941, 'E. Jebak', 1979, 99.00, 98.00, 0.00, 0.00, 1.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (942, 'E. Gusi', 1981, 45.00, 45.00, 0.00, 0.00, 0.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (943, 'E. Penyabuk', 1981, 94.00, 94.00, 0.00, 0.00, 0.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (944, 'E. Brenge', 1981, 350.00, 350.00, 0.00, 0.00, 0.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (945, 'E. Jongkor', 1981, 15.00, 15.00, 0.00, 0.00, 0.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (946, 'E. Pejeruk', 1982, 63.00, 63.00, 0.00, 0.00, 0.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (947, 'E. Paskar', 1981, 96.00, 96.00, 0.00, 0.00, 0.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (948, 'E. Melat I', 1981, 35.00, 35.00, 0.00, 0.00, 0.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (949, 'E. Melat II', 1981, 25.00, 25.00, 0.00, 0.00, 0.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (950, 'E. Tasik Asik', 1983, 25.00, 25.00, 0.00, 0.00, 0.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (951, 'E. Perok', 1981, 35.00, 35.00, 0.00, 0.00, 0.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (952, 'E. Loang Make', 1982, 100.00, 100.00, 0.00, 0.00, 0.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (953, 'Pelapak', 1981, 621.00, 621.00, 0.00, 0.00, 0.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (954, 'E. Pengkemit', 1981, 300.00, 300.00, 0.00, 0.00, 0.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (955, 'E. Gabak', 1982, 250.00, 249.00, 0.00, 0.00, 1.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (956, 'E. Tantih', 1984, 200.00, 200.00, 0.00, 0.00, 0.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (957, 'E. Goa', 1984, 82.00, 82.00, 0.00, 0.00, 0.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (958, 'E. Sepit', 1984, 175.00, 175.00, 0.00, 0.00, 0.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (959, 'E. Pejanggik', 1936, 135.00, 135.00, 0.00, 0.00, 0.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (960, 'E. Orong Gendang', 1940, 132.00, 132.00, 0.00, 0.00, 0.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (961, 'E. Bombas', 1981, 206.00, 206.00, 0.00, 0.00, 0.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (962, 'E. Batu Bokah', 1981, 305.00, 305.00, 0.00, 0.00, 0.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (963, 'E. Pancor', 1982, 120.00, 119.00, 0.00, 0.00, 1.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (964, 'E. Jangkih Jawa', 1984, 320.00, 220.00, 0.00, 100.00, 0.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (965, 'E. Bonder', 1983, 0.00, 0.00, 0.00, 0.00, 0.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (966, 'E. Batu Jangkih', 1982, 100.00, 0.00, 100.00, 0.00, 0.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (967, 'Gege I', 1982, 67.00, 67.00, 0.00, 0.00, 0.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (968, 'Gege II', 1993, 159.00, 157.00, 0.00, 0.00, 2.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (969, 'Gege III', 1993, 146.00, 145.00, 0.00, 0.00, 1.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (970, 'E. Gunung Paok', 1997, 51.00, 49.00, 0.00, 0.00, 2.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (971, 'Selak Eat', 1996, 145.00, 144.00, 0.00, 0.00, 1.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (972, 'Tete Kopong', 1996, 305.00, 302.00, 0.00, 0.00, 3.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (973, 'Lekak', 0, 80.00, 79.00, 0.00, 0.00, 1.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (974, 'Temusik', 0, 654.00, 648.00, 0.00, 2.00, 4.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (975, 'Bangle', 0, 45.00, 43.00, 0.00, 0.00, 2.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (976, 'Camik', 1943, 313.00, 309.00, 0.00, 0.00, 4.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (977, 'Solong', 1943, 150.00, 150.00, 0.00, 0.00, 0.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (978, 'Sundi', 1943, 50.00, 35.00, 0.00, 0.00, 15.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (979, 'Terara', 1981, 271.00, 264.00, 0.00, 0.00, 7.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (980, 'Mare', 1943, 471.00, 471.00, 0.00, 0.00, 0.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (981, 'Tridaya', 1943, 138.00, 135.00, 0.00, 0.00, 3.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (982, 'E. Penggek', 1949, 75.00, 72.00, 0.00, 0.00, 3.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (983, 'E. Banok', 1943, 12.00, 12.00, 0.00, 0.00, 0.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (984, 'E. Kandong', 1978, 389.00, 385.00, 0.00, 0.00, 4.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (985, 'Pancor Dewa', 1975, 125.00, 84.00, 0.00, 0.00, 41.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (986, 'Pelolat', 1976, 297.00, 281.00, 0.00, 0.00, 16.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (987, 'Temiling', 1975, 233.00, 226.00, 0.00, 3.00, 4.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (988, 'Jogok', 1943, 597.00, 547.00, 0.00, 2.00, 48.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (989, 'Pungkang', 1963, 289.00, 289.00, 0.00, 0.00, 0.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (990, 'Tundak', 1962, 625.00, 615.00, 0.00, 0.00, 10.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (991, 'Penendem', NULL, 868.00, 837.00, 0.00, 0.00, 31.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (992, 'Pelambik', NULL, 467.00, 342.00, 3.00, 0.00, 122.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (993, 'Para', 1983, 300.00, 206.00, 0.00, 0.00, 94.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (994, 'Penyonggok', 1970, 193.00, 182.00, 0.00, 0.00, 11.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (995, 'Bangka', 1969, 265.00, 256.00, 0.00, 0.00, 9.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (996, 'Borok Lelet', 1969, 576.00, 576.00, 0.00, 0.00, 0.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (997, 'Jimse', 1967, 111.00, 111.00, 0.00, 0.00, 0.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (998, 'Kangkek Lepang', 1974, 233.00, 230.00, 0.00, 0.00, 3.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (999, 'Reban Talat', 1941, 213.00, 213.00, 0.00, 0.00, 0.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1000, 'Rungkang', 1940, 686.00, 641.00, 0.00, 0.00, 45.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1001, 'Sikur', 1942, 800.00, 758.00, 0.00, 0.00, 42.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1002, 'Endut', 1966, 230.00, 178.00, 0.00, 0.00, 52.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1003, 'Sadar', 1975, 281.00, 279.00, 0.00, 0.00, 2.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1004, 'Pondol', 1971, 117.00, 114.00, 0.00, 0.00, 3.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1005, 'Presak Siren', 1970, 167.00, 155.00, 3.00, 0.00, 9.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1006, 'Lenting', 1973, 220.00, 214.00, 0.00, 0.00, 6.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1007, 'Prako', 1955, 128.00, 121.00, 0.00, 0.00, 7.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1008, 'Kwang Derek', 1960, 254.00, 242.00, 0.00, 0.00, 12.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1009, 'Kuang Berora', 1936, 108.00, 106.00, 0.00, 0.00, 2.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1010, 'Montong Tangi', 1947, 305.00, 295.00, 0.00, 0.00, 10.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1011, 'Kondak', 1971, 508.00, 506.00, 0.00, 0.00, 2.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1012, 'Juwet', 1966, 123.00, 123.00, 0.00, 0.00, 0.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1013, 'Reban Waru', 1972, 204.00, 204.00, 0.00, 0.00, 0.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1014, 'Surabaya Lepak', 1965, 199.00, 199.00, 0.00, 0.00, 0.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1015, 'Burung', 1983, 125.00, 125.00, 0.00, 0.00, 0.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1016, 'Ladon', 1980, 125.00, 110.00, 0.00, 15.00, 0.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1017, 'Tojang', 1980, 136.00, 123.00, 13.00, 0.00, 0.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1018, 'Keruak', 1958, 195.00, 126.00, 0.00, 0.00, 69.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1019, 'Rugah', 1976, 216.00, 196.00, 0.00, 0.00, 20.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1020, 'Aik Anyar', 1939, 270.00, 212.00, 0.00, 48.00, 10.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1021, 'Berembun', 1962, 169.00, 151.00, 0.00, 0.00, 18.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1022, 'Pancor Barong', 1965, 100.00, 84.00, 0.00, 0.00, 16.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1023, 'Simbe', 1939, 410.00, 341.00, 0.00, 2.00, 67.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1024, 'Dasan Lekong', 1972, 350.00, 198.00, 0.00, 142.00, 10.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1025, 'Sangkon', 1973, 258.00, 35.00, 0.00, 0.00, 223.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1026, 'Reban Tebu', 1976, 285.00, 114.00, 0.00, 161.00, 10.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1027, 'Jenjek', 1969, 101.00, 74.00, 27.00, 0.00, 0.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1028, 'Beleong', 1960, 375.00, 286.00, 0.00, 89.00, 0.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1029, 'Denggen', 1946, 111.00, 80.00, 0.00, 14.00, 17.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1030, 'Ledang', 1950, 412.00, 295.00, 0.00, 114.00, 3.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1031, 'Pancor Manis', 1975, 128.00, 103.00, 0.00, 0.00, 25.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1032, 'Bagek Longgek', 1964, 234.00, 214.00, 0.00, 20.00, 0.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1033, 'Kuang Manget', 1930, 148.00, 134.00, 0.00, 0.00, 14.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1034, 'E s  o t', 1966, 293.00, 208.00, 0.00, 85.00, 0.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1035, 'Penede  I', 1953, 321.00, 269.00, 0.00, 49.00, 3.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1036, 'Penede  II', 1967, 224.00, 183.00, 0.00, 38.00, 3.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1037, 'Damar Jengkang', 1950, 315.00, 42.00, 268.00, 0.00, 5.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1038, 'Ambung', 1965, 300.00, 95.00, 0.00, 205.00, 0.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1039, 'Jantuk', 1936, 224.00, 210.00, 0.00, 0.00, 14.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1040, 'Pengadangan', 1926, 664.00, 662.00, 0.00, 0.00, 2.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1041, 'Tempasan', 1960, 500.00, 500.00, 0.00, 0.00, 0.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1042, 'Pringgasele', 1912, 640.00, 512.00, 0.00, 0.00, 128.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1043, 'Tebaban', 1933, 270.00, 263.00, 7.00, 0.00, 0.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1044, 'Paok Pondong', 1960, 129.00, 121.00, 0.00, 0.00, 8.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1045, 'Bagik Tungka', 1958, 250.00, 248.00, 0.00, 0.00, 2.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1046, 'Petung', 1967, 100.00, 98.00, 0.00, 0.00, 2.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1047, 'Reban Bila', 1973, 65.00, 64.00, 0.00, 0.00, 1.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1048, 'Loang Gali', 1981, 170.00, 166.00, 0.00, 0.00, 4.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1049, 'Batu Malang', 1981, 514.00, 514.00, 0.00, 0.00, 0.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1050, 'As Malang', 1970, 254.00, 246.00, 0.00, 0.00, 8.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1051, 'Pelemeng', 1941, 350.00, 255.00, 0.00, 95.00, 0.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1052, 'Orong Atas', 1975, 140.00, 139.00, 0.00, 0.00, 1.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1053, 'Ijo Balit', 1972, 754.00, 754.00, 0.00, 0.00, 0.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1054, 'Anjani', 1972, 315.00, 315.00, 0.00, 0.00, 0.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1055, 'Kerongkong', 1968, 669.00, 669.00, 0.00, 0.00, 0.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1056, 'Gapuk', 1974, 458.00, 404.00, 50.00, 0.00, 4.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1057, 'Meloang', 1970, 170.00, 169.00, 0.00, 0.00, 1.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1058, 'Renga', 1954, 305.00, 279.00, 0.00, 0.00, 26.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1059, 'Paok  Dangka', 1953, 259.00, 257.00, 0.00, 0.00, 2.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1060, 'Bebidas', 1966, 588.00, 580.00, 0.00, 8.00, 0.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1061, 'Lokak Bau', 1960, 752.00, 687.00, 0.00, 65.00, 0.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1062, 'Suntalangu', 1969, 240.00, 240.00, 0.00, 0.00, 0.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1063, 'Senang', 1949, 178.00, 178.00, 0.00, 0.00, 0.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1064, 'Waduk Kembar', 1953, 367.00, 360.00, 0.00, 0.00, 7.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1065, 'Songgen', 1973, 328.00, 287.00, 0.00, 0.00, 41.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1066, 'Lemor', 1972, 150.00, 136.00, 0.00, 0.00, 14.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1067, 'Kulur', 1983, 117.00, 113.00, 0.00, 0.00, 4.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1068, 'Aik Lomak', 1973, 115.00, 115.00, 0.00, 0.00, 0.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1069, 'Kedatuk', 1971, 466.00, 466.00, 0.00, 0.00, 0.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1070, 'Belanting', 1984, 886.00, 515.00, 225.00, 0.00, 146.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1071, 'Lendang Tinggi', 1975, 740.00, 265.00, 475.00, 0.00, 0.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1072, 'Lendang Guar', 1972, 483.00, 243.00, 240.00, 0.00, 0.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1073, 'Timbe Gading', 1950, 415.00, 415.00, 0.00, 0.00, 0.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1074, 'Obel - obel', 1950, 364.00, 50.00, 0.00, 81.00, 233.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1075, 'E. Batu Nampar (Supl)', 1950, 0.00, 0.00, 0.00, 0.00, 0.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1076, 'Padamara', 1969, 163.00, 160.00, 0.00, 0.00, 3.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1077, 'Lembak', 1976, 290.00, 290.00, 0.00, 0.00, 0.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1078, 'Tibu Pandan', 1968, 300.00, 300.00, 0.00, 0.00, 0.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1079, 'Larung', 1977, 607.00, 532.00, 0.00, 0.00, 75.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1080, 'Bande', 1976, 87.00, 87.00, 0.00, 0.00, 0.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1081, 'Tiwu Kawa', 1978, 703.00, 643.00, 0.00, 53.00, 7.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1082, 'Reban Batu', 1978, 404.00, 365.00, 39.00, 0.00, 0.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1083, 'E. Mantar', 1985, 300.00, 0.00, 0.00, 300.00, 0.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1084, 'Aik Putik', 1994, 403.00, 228.00, 175.00, 0.00, 0.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1085, 'Tarusan', 1981, 648.00, 342.00, 0.00, 306.00, 0.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1086, 'Juru Mapin', 1976, 700.00, 286.00, 0.00, 414.00, 0.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1087, 'Tarusan I', 1979, 375.00, 240.00, 135.00, 0.00, 0.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1088, 'Marenteh', 1994, 333.00, 333.00, 0.00, 0.00, 0.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1089, 'Penrengganis', 1979, 725.00, 600.00, 0.00, 125.00, 0.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1090, 'Lekong', 0, 456.00, 389.00, 0.00, 29.00, 38.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1091, 'Tiwu Bulu', 0, 998.00, 612.00, 386.00, 0.00, 0.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1092, 'Pungka', 0, 185.00, 125.00, 0.00, 0.00, 60.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1093, 'A j i', 1970, 715.00, 694.00, 0.00, 0.00, 21.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1094, 'M o y o', 1973, 827.00, 620.00, 0.00, 207.00, 0.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1095, 'Pemasar', 1998, 660.00, 660.00, 0.00, 0.00, 0.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1096, 'Brang Kolong', 0, 600.00, 465.00, 120.00, 15.00, 0.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1097, 'E. Muer', 0, 287.00, 286.00, 0.00, 0.00, 1.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1098, 'E. Selante', 0, 612.00, 470.00, 142.00, 0.00, 0.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1099, 'Sejari', 1985, 500.00, 380.00, 0.00, 120.00, 0.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1100, 'Usar', 1976, 800.00, 204.00, 0.00, 596.00, 0.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1101, 'Paria', 1973, 648.00, 272.00, 0.00, 376.00, 0.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1102, 'Semangi', 1977, 851.00, 578.00, 0.00, 273.00, 0.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1103, 'E. Penyaring', 1976, 216.00, 216.00, 0.00, 0.00, 0.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1104, 'E. Sepayung Dalam', 1981, 603.00, 350.00, 253.00, 0.00, 0.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1105, 'E. Olat Rawa', 1978, 500.00, 350.00, 0.00, 150.00, 0.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1106, 'E. Mengkoang', 1994, 110.00, 110.00, 0.00, 0.00, 0.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1107, 'E. Kaswangi', 1978, 600.00, 600.00, 0.00, 0.00, 0.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1108, 'Kuang Rako', 1975, 273.00, 50.00, 0.00, 223.00, 0.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1109, 'E. Lamenta', 1942, 200.00, 200.00, 0.00, 0.00, 0.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1110, 'E. Jompong', 1979, 150.00, 100.00, 0.00, 50.00, 0.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1111, 'E. Serading', 1979, 200.00, 150.00, 0.00, 50.00, 0.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1112, 'Sakalo', 1984, 330.00, 189.00, 0.00, 0.00, 141.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1113, 'Nae Kempo', 1984, 510.00, 310.00, 0.00, 200.00, 0.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1114, 'Patula', 1975, 356.00, 215.00, 0.00, 0.00, 141.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1115, 'Sanggo Pasante', 1975, 400.00, 85.00, 0.00, 315.00, 0.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1116, 'Lae Ranggo', 1975, 630.00, 523.00, 0.00, 0.00, 107.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1117, 'E. Jambu', 1912, 700.00, 600.00, 100.00, 0.00, 0.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1118, 'Sambana', 1997, 441.00, 396.00, 0.00, 45.00, 0.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1119, 'Ta\'a', 1994, 125.00, 100.00, 0.00, 25.00, 0.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1120, 'Roju', 1996, 70.00, 70.00, 0.00, 0.00, 0.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1121, 'E. Tonda Selatan', 1999, 460.00, 460.00, 0.00, 0.00, 0.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1122, 'E. Kempo', 1999, 200.00, 200.00, 0.00, 0.00, 0.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1123, 'E. Soneo', 1984, 300.00, 250.00, 0.00, 50.00, 0.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1124, 'Monggolenggo', 1995, 800.00, 660.00, 140.00, 0.00, 0.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1125, 'E. Lanangga', 1997, 705.00, 460.00, 0.00, 245.00, 0.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1126, 'Kuangko', 1999, 400.00, 274.00, 0.00, 126.00, 0.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1127, 'E. Soncolopi', 0, 600.00, 460.00, 0.00, 140.00, 0.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1128, 'E. Kesi', 0, 318.00, 125.00, 0.00, 193.00, 0.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1129, 'Rora Kecil', 0, 601.00, 531.00, 0.00, 70.00, 0.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1130, 'Mada Pangga', 1981, 459.00, 400.00, 0.00, 0.00, 59.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1131, 'Mori Rade', 1973, 307.00, 305.00, 0.00, 0.00, 2.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1132, 'L e b o', 1989, 623.00, 330.00, 0.00, 293.00, 0.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1133, 'Ncoha', 1984, 522.00, 336.00, 0.00, 186.00, 0.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1134, 'Ndano Rangga', 1965, 520.00, 275.00, 0.00, 245.00, 0.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1135, 'Diwu Tangiri', 1993, 500.00, 0.00, 0.00, 500.00, 0.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1136, 'Oi Kawa', 1985, 300.00, 42.00, 0.00, 258.00, 0.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1137, 'Bontokape', 1995, 505.00, 505.00, 0.00, 0.00, 0.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1138, 'Sori Monca', 1979, 300.00, 150.00, 0.00, 150.00, 0.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1139, 'Taloko', 1997, 341.00, 341.00, 0.00, 0.00, 0.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1140, 'Tonggondoangali', 1995, 750.00, 339.00, 0.00, 411.00, 0.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1141, 'L e k a', 1995, 350.00, 350.00, 0.00, 0.00, 0.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1142, 'Karanu Ntonggu', 0, 566.00, 566.00, 0.00, 0.00, 0.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1143, 'E. Roi', 0, 803.00, 803.00, 0.00, 0.00, 0.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1144, 'Rontu', 0, 500.00, 266.00, 0.00, 0.00, 234.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1145, 'Nungga', 0, 241.00, 241.00, 0.00, 0.00, 0.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1146, 'Salo', 0, 212.00, 53.00, 0.00, 0.00, 159.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1147, 'Satampa', 0, 50.00, 33.00, 0.00, 0.00, 17.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1148, 'Dadi', 0, 99.00, 78.00, 0.00, 0.00, 21.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1149, 'Kecintobo', 0, 160.00, 160.00, 0.00, 0.00, 0.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1150, 'Sangga', 1975, 50.00, 50.00, 0.00, 0.00, 0.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1151, 'Nggaro Rangga', 1980, 150.00, 150.00, 0.00, 0.00, 0.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1152, 'Raba ponda', 1969, 130.00, 130.00, 0.00, 0.00, 0.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1153, 'D o d u', 1975, 225.00, 225.00, 0.00, 0.00, 0.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1154, 'Na\'e Wera', 1976, 600.00, 450.00, 0.00, 150.00, 0.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1155, 'S a r i', 1970, 622.00, 622.00, 0.00, 0.00, 0.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1156, 'S a p e', 1974, 686.00, 683.00, 0.00, 0.00, 3.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1157, 'W u w u', 1974, 346.00, 346.00, 0.00, 0.00, 0.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1158, 'Sambu', 1987, 100.00, 5.00, 0.00, 95.00, 0.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1159, 'Diwu Sadundu', 1973, 900.00, 650.00, 0.00, 250.00, 0.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1160, 'E. Ncera', 1985, 329.00, 329.00, 0.00, 0.00, 0.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1161, 'E. Kowo', 1974, 220.00, 220.00, 0.00, 0.00, 0.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1162, 'Tolotangga', 1979, 485.00, 400.00, 0.00, 85.00, 0.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1163, 'Woro', 1969, 250.00, 250.00, 0.00, 0.00, 0.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1164, 'E. Woro', 1985, 452.00, 452.00, 0.00, 0.00, 0.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1165, 'E. Wera I', 1965, 75.00, 5.00, 0.00, 70.00, 0.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1166, 'E. Wera II', 1976, 200.00, 150.00, 0.00, 50.00, 0.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1167, 'E. Kore', 1972, 125.00, 125.00, 0.00, 0.00, 0.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1168, 'E. Oi Toi', 1973, 228.00, 228.00, 0.00, 0.00, 0.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1169, 'E. Waworada', 1973, 125.00, 125.00, 0.00, 0.00, 0.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1170, 'E. Nggira I', 1973, 25.00, 5.00, 0.00, 20.00, 0.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1171, 'E. Nggira II', 1972, 35.00, 0.00, 0.00, 35.00, 0.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1172, 'Santong', 1953, 1807.00, 1471.00, 0.00, 0.00, 336.00, '1000-3000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1173, 'Bagik Kembar', 1968, 1305.00, 405.00, 0.00, 0.00, 900.00, '1000-3000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1174, 'Sesaot', 1926, 1678.00, 1212.00, 0.00, 0.00, 466.00, '1000-3000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1175, 'Gebong', 1928, 2161.00, 1814.00, 0.00, 0.00, 347.00, '1000-3000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1176, 'Gde Bongoh', 1934, 2644.00, 2644.00, 0.00, 0.00, 0.00, '1000-3000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1177, 'Bisok Bokah', 1939, 1255.00, 1240.00, 0.00, 0.00, 15.00, '1000-3000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1178, 'Renggung', 1936, 1717.00, 1653.00, 0.00, 0.00, 64.00, '1000-3000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1179, 'Parung', 1971, 1270.00, 1262.00, 0.00, 0.00, 8.00, '1000-3000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1180, 'Rutus', 1937, 1743.00, 1743.00, 0.00, 0.00, 0.00, '1000-3000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1181, 'Rutus', 1962, 1040.00, 1040.00, 0.00, 0.00, 0.00, '1000-3000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1182, 'Pelapak', 1941, 1424.00, 1356.00, 0.00, 0.00, 68.00, '1000-3000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1183, 'Sakra', 1927, 1859.00, 1855.00, 0.00, 0.00, 4.00, '1000-3000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1184, 'Sambelia', 1973, 1666.00, 1229.00, 0.00, 431.00, 6.00, '1000-3000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1185, 'Kalimantong I', 1952, 1550.00, 1430.00, 49.00, 0.00, 71.00, '1000-3000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1186, 'Tepas/Kalimantong II', 1984, 2500.00, 2186.00, 314.00, 0.00, 0.00, '1000-3000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1187, 'Elang Desa', 1968, 1300.00, 800.00, 494.00, 0.00, 6.00, '1000-3000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1188, 'Plampo\'o ', 1975, 1060.00, 121.00, 0.00, 939.00, 0.00, '1000-3000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1189, 'Beringin Sila', 1975, 2400.00, 2395.00, 0.00, 0.00, 5.00, '1000-3000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1190, 'Pungkit', 1982, 1340.00, 1300.00, 0.00, 40.00, 0.00, '1000-3000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1191, 'Maronge/Tiu Kulit', 1977, 1877.00, 1860.00, 0.00, 17.00, 0.00, '1000-3000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1192, 'E. Gapit', 1996, 1300.00, 1170.00, 130.00, 0.00, 0.00, '1000-3000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1193, 'Plara', 1998, 2743.00, 2335.00, 383.00, 25.00, 0.00, '1000-3000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1194, 'Kadindi', 1986, 1200.00, 848.00, 0.00, 352.00, 0.00, '1000-3000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1195, 'Latonda Pekat', 1985, 1217.00, 643.00, 0.00, 574.00, 0.00, '1000-3000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1196, 'Daha  I, II.', 1975, 1273.00, 1144.00, 120.00, 9.00, 0.00, '1000-3000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1197, 'Mada Pangga II', 0, 2000.00, 1000.00, 0.00, 1000.00, 0.00, '1000-3000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1198, 'Ncangakae', 1940, 1063.00, 725.00, 0.00, 338.00, 0.00, '1000-3000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1199, 'Sumi', 1938, 1977.00, 1977.00, 0.00, 0.00, 0.00, '1000-3000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1200, 'Pengga', 1995, 3589.00, 3188.00, 0.00, 0.00, 401.00, '>3000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1201, 'Remening Kompleks', NULL, 3293.00, 3022.00, 0.00, 0.00, 271.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1202, 'Keluncing', 1969, 548.00, 513.00, 0.00, 0.00, 35.00, '>3000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1203, 'Bengkel', 1974, 83.00, 83.00, 0.00, 0.00, 0.00, '>3000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1204, 'Juwet', 1979, 476.00, 476.00, 0.00, 0.00, 0.00, '>3000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1205, 'Dasan Tereng', 1927, 238.00, 220.00, 0.00, 0.00, 18.00, '>3000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1206, 'Datar', 1967, 834.00, 675.00, 0.00, 0.00, 159.00, '>3000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1207, 'Batu Riti', 1963, 619.00, 560.00, 0.00, 0.00, 59.00, '>3000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1208, '10 Irigasi Desa', NULL, 495.00, 495.00, 0.00, 0.00, 0.00, '>3000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1209, 'Jurang Sate Hulu', 1935, 4229.00, 3811.00, 0.00, 0.00, 418.00, '>3000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1210, 'Jurang Sate Hilir', 1935, 6439.00, 6439.00, 0.00, 0.00, 0.00, '>3000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1211, 'Mujur II', 1938, 3506.00, 3229.00, 0.00, 0.00, 277.00, '>3000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1212, 'Batujai', 1981, 3580.00, 3080.00, 0.00, 0.00, 500.00, '>3000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1213, 'Surabaya', 1937, 3258.00, 3239.00, 0.00, 0.00, 19.00, '>3000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1214, 'Jurang Batu', 1993, 3500.00, 3467.00, 0.00, 0.00, 33.00, '>3000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1215, 'Katon Kompleks', NULL, 7495.00, 7355.00, 128.00, 0.00, 12.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1216, 'Katon', 1937, 1885.00, 1875.00, 0.00, 0.00, 10.00, '>3000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1217, 'Tibu Nangka', 1939, 2284.00, 2284.00, 0.00, 0.00, 0.00, '>3000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1218, 'Kulem', 1991, 1135.00, 1135.00, 0.00, 0.00, 0.00, '>3000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1219, 'Mujur I', 1938, 708.00, 708.00, 0.00, 0.00, 0.00, '>3000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1220, 'E. Pare', 1983, 600.00, 600.00, 0.00, 0.00, 0.00, '>3000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1221, 'E. Batu Ngapah', 1992, 583.00, 583.00, 0.00, 0.00, 0.00, '>3000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1222, 'Bile Remong', 1965, 300.00, 170.00, 128.00, 0.00, 2.00, '>3000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1223, 'Pandanduri Swangi ', NULL, 5168.00, 4612.00, 0.00, 556.00, 0.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1224, 'Pandanduri', 1942, 2511.00, 2026.00, 0.00, 485.00, 0.00, '>3000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1225, 'Swangi', 1916, 2657.00, 2586.00, 0.00, 71.00, 0.00, '>3000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1226, 'Tanggik Kompleks', NULL, 3424.00, 3161.00, 0.00, 0.00, 263.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1227, 'Kukusan', 1974, 2864.00, 2605.00, 0.00, 0.00, 259.00, '>3000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1228, 'Mamben', 1975, 560.00, 556.00, 0.00, 0.00, 4.00, '>3000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1229, 'Mamak - Kakiang ', NULL, 5416.00, 4713.00, 0.00, 703.00, 0.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1230, 'Mamak', 1969, 3884.00, 3424.00, 0.00, 460.00, 0.00, '>3000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1231, 'Kakiang', 1976, 1532.00, 1289.00, 0.00, 243.00, 0.00, '>3000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1232, 'Batu Bulan', 2003, 5782.00, 4955.00, 0.00, 753.00, 0.00, '>3000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1233, 'Katua Kompleks', NULL, 3330.00, 3206.00, 0.00, 76.00, 48.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1234, 'Katua', 1979, 1403.00, 1327.00, 0.00, 76.00, 0.00, '>3000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1235, 'Laju', 1935, 1050.00, 1002.00, 0.00, 0.00, 48.00, '>3000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1236, 'Rahalayu', 1982, 441.00, 441.00, 0.00, 0.00, 0.00, '>3000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1237, 'Mada Seli', 0, 75.00, 75.00, 0.00, 0.00, 0.00, '>3000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1238, 'Tua', 0, 60.00, 60.00, 0.00, 0.00, 0.00, '>3000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1239, 'Lamango', 0, 41.00, 41.00, 0.00, 0.00, 0.00, '>3000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1240, 'Lore', 0, 75.00, 75.00, 0.00, 0.00, 0.00, '>3000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1241, 'Saka', 0, 85.00, 85.00, 0.00, 0.00, 0.00, '>3000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1242, 'Manggekalo', 0, 100.00, 100.00, 0.00, 0.00, 0.00, '>3000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1243, 'Rababaka Kompleks', NULL, 4050.00, 3940.00, 0.00, 110.00, 0.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1244, 'Baka', 1937, 1700.00, 1590.00, 0.00, 110.00, 0.00, '>3000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1245, 'Tanju', 0, 2350.00, 2350.00, 0.00, 0.00, 0.00, '>3000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1246, 'Pelaparado', NULL, 4815.00, 4372.00, 0.00, 443.00, 0.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1247, 'Parado', 1984, 1388.00, 1140.00, 0.00, 248.00, 0.00, '>3000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1248, 'Pela Cempaka', 1958, 532.00, 337.00, 0.00, 195.00, 0.00, '>3000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1249, 'Sie', 1973, 182.00, 182.00, 0.00, 0.00, 0.00, '>3000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1250, 'Kalate', 1972, 968.00, 968.00, 0.00, 0.00, 0.00, '>3000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `daerah_irigasi` VALUES (1251, '3 Irigasi Desa', 0, 1745.00, 1745.00, 0.00, 0.00, 0.00, '>3000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);

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
  `kelurahan_desa_id` bigint(20) UNSIGNED NULL DEFAULT NULL,
  `marker` point NULL,
  `polyline` linestring NULL,
  `polygon` polygon NULL,
  `pengguna_id` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`embung_id`) USING BTREE,
  INDEX `embung_pengguna_id_foreign`(`pengguna_id`) USING BTREE,
  INDEX `embung_kelurahan_desa_id_foreign`(`kelurahan_desa_id`) USING BTREE,
  CONSTRAINT `embung_kelurahan_desa_id_foreign` FOREIGN KEY (`kelurahan_desa_id`) REFERENCES `kelurahan_desa` (`kelurahan_desa_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `embung_pengguna_id_foreign` FOREIGN KEY (`pengguna_id`) REFERENCES `pengguna` (`pengguna_id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 188 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of embung
-- ----------------------------
INSERT INTO `embung` VALUES (9, 'Embung Telekong I', 1996, 231997485.00, 0.75, 2.50, 'Timb Tanah', 45000.00, 97.00, 10.00, 10.00, 5.00, 52.00, 72.00, 0.00, 'tidak ada saluran', NULL, NULL, NULL, NULL, 'admin', '2020-07-07 08:00:00', '2020-07-14 12:22:39');
INSERT INTO `embung` VALUES (10, 'Embung Telekong II', 1996, 345590515.00, 0.50, 2.00, 'Pas Bt Kali ', 55000.00, 47.00, 6.50, 7.00, 75.00, 74.00, 100.00, 0.00, '', NULL, NULL, NULL, NULL, 'admin', '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (11, 'Embung Bantir', 1980, 0.00, 0.50, 1.20, 'Timb Tanah ', 50000.00, 60.00, 5.00, 4.00, 65.00, 25.00, 25.00, 0.00, '', NULL, NULL, NULL, NULL, 'admin', '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (12, 'Embung Bentenu', 1980, 0.00, 0.50, 1.70, 'Timb Tanah ', 55000.00, 60.00, 5.00, 3.00, 60.00, 25.00, 25.00, 0.00, '', NULL, NULL, NULL, NULL, 'admin', '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (13, 'Embung Mareje', 2009, 370000000.00, 3.00, 3.75, 'Pas Bt Kali ', 5625.00, 40.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '', NULL, NULL, NULL, NULL, 'admin', '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (14, 'Embung Teloke', 2014, 4000000000.00, 1.56, 0.00, 'Pas Bt Kali ', 16900.00, 52.35, 6.50, 15.00, 0.00, 0.00, 0.00, 0.00, '', NULL, NULL, NULL, NULL, 'admin', '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (15, 'Embung Bayan', 1991, 367207320.00, 7.20, 2.50, 'Pas Bt Kali ', 75000.00, 170.00, 8.00, 20.00, 0.00, 20.00, 100.00, 0.00, 'Sal blm ada', NULL, NULL, NULL, NULL, 'admin', '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (16, 'Embung Lokok Tawah', 1997, 1103190000.00, 1.20, 1.65, 'Timb Tanah ', 37367.00, 125.00, 13.00, 8.65, 163.00, 47.00, 100.00, 0.00, '', NULL, NULL, NULL, NULL, 'admin', '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (17, 'Embung Tanggor', 1981, 527157250.00, 0.90, 2.15, 'Timb Tanah ', 175000.00, 75.00, 8.00, 6.00, 228.00, 50.00, 52.00, 0.00, '', NULL, NULL, NULL, NULL, 'admin', '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (18, 'Embung Dakung', 1980, 21316000.00, 2.36, 2.00, 'Timb Tanah ', 80000.00, 71.00, 8.00, 10.00, 250.00, 72.00, 64.00, 0.00, '', NULL, NULL, NULL, NULL, 'admin', '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (19, 'Embung Bodak', 1996, 352719850.00, 4.60, 8.50, 'Timb Tanah ', 130000.00, 105.58, 9.00, 25.00, 200.00, 81.00, 350.00, 0.00, '', NULL, NULL, NULL, NULL, 'admin', '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (20, 'Embung Perandap', 2004, 450000000.00, 2.50, 0.65, 'Pas Bt Kali ', 18000.00, 35.00, 8.00, 10.00, 35.00, 50.00, 0.00, 0.00, '', NULL, NULL, NULL, NULL, 'admin', '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (21, 'Embung Gerantung', 2006, 1053420000.00, 1.07, 1.50, 'Pas Bt Kali ', 22691.00, 46.00, 10.00, 7.00, 75.00, 50.00, 75.00, 0.00, '', NULL, NULL, NULL, NULL, 'admin', '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (22, 'Embung Jurang Jaler', 1980, 34120000.00, 4.62, 1.20, 'Pas. batukali ', 38400.00, 40.00, 13.00, 6.00, 200.00, 0.00, 123.00, 0.00, '', NULL, NULL, NULL, NULL, 'admin', '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (23, 'Embung Pengadang', 1980, 9618000.00, 0.85, 2.00, 'Pas. batukali ', 80000.00, 71.00, 8.00, 5.00, 300.00, 70.00, 28.00, 0.00, '', NULL, NULL, NULL, NULL, 'admin', '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (24, 'Embung Bubuk', 1981, 28605000.00, 0.44, 1.00, 'Timb Tanah ', 21000.00, 60.00, 5.00, 3.50, 100.00, 28.00, 22.00, 0.00, '', NULL, NULL, NULL, NULL, 'admin', '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (25, 'Embung Bebie', 1997, 287531000.00, 4.18, 0.80, 'Pas Bt Kali ', 56200.00, 72.26, 9.00, 10.00, 50.00, 43.00, 36.00, 0.00, '', NULL, NULL, NULL, NULL, 'admin', '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (26, 'Embung Bage', 2007, 524505000.00, 3.50, 0.80, 'Timb Tanah ', 160000.00, 135.00, 9.00, 6.00, 150.00, 50.00, 100.00, 0.00, '', NULL, NULL, NULL, NULL, 'admin', '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (27, 'Embung Kepok', 2007, 524505000.00, 4.00, 0.75, 'Timb Tanah ', 150000.00, 95.00, 11.00, 6.00, 160.00, 25.00, 100.00, 0.00, '', NULL, NULL, NULL, NULL, 'admin', '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (28, 'Embung Lendang Batah', 1984, 0.00, 0.67, 1.50, 'Timb Tanah ', 60000.00, 60.00, 5.70, 4.00, 60.00, 15.00, 50.00, 0.00, '', NULL, NULL, NULL, NULL, 'admin', '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (29, 'Embung Orogendang', 1982, 262940000.00, 0.75, 3.50, 'Timb Tanah ', 157500.00, 110.00, 11.50, 10.00, 123.00, 163.00, 52.00, 0.00, '', NULL, NULL, NULL, NULL, 'admin', '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (30, 'Embung Juwet', 1983, 0.00, 0.60, 2.00, 'Timb Tanah ', 100000.00, 70.00, 7.00, 3.00, 50.00, 20.00, 25.00, 0.00, '', NULL, NULL, NULL, NULL, 'admin', '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (31, 'Embung Patra 1', 1980, 0.00, 0.60, 1.20, 'Timb Tanah ', 40000.00, 60.00, 6.00, 3.00, 40.00, 10.00, 10.00, 0.00, '', NULL, NULL, NULL, NULL, 'admin', '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (32, 'Embung patra 2', 1982, 0.00, 0.70, 1.25, 'Timb Tanah ', 38000.00, 65.00, 6.00, 3.00, 42.00, 10.00, 10.00, 0.00, '', NULL, NULL, NULL, NULL, 'admin', '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (33, 'Embung Bonder', 1996, 316827549.00, 8.67, 3.75, 'Timb Tanah ', 300000.00, 133.00, 8.00, 10.00, 5.00, 74.00, 75.00, 0.00, 'tidak ada jaringan', NULL, NULL, NULL, NULL, 'admin', '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (34, 'Embung Bombas', 1982, 370270000.00, 1.60, 4.85, 'Timb Tanah ', 289100.00, 122.30, 11.50, 20.00, 206.00, 100.00, 100.00, 0.00, '', NULL, NULL, NULL, NULL, 'admin', '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (35, 'Embung Ngabok', 1982, 0.00, 0.60, 1.00, 'Timb Tanah ', 39000.00, 50.00, 5.00, 4.00, 25.00, 30.00, 15.00, 0.00, '', NULL, NULL, NULL, NULL, 'admin', '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (36, 'Embung Rurut', 1980, 0.00, 0.60, 1.20, 'Timb Tanah ', 40000.00, 50.00, 6.00, 3.00, 30.00, 15.00, 5.00, 0.00, '', NULL, NULL, NULL, NULL, 'admin', '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (37, 'Embung Batu Jangkih', 1996, 257779660.00, 0.75, 3.50, 'Timb Tanah ', 130000.00, 124.40, 11.00, 3.00, 100.00, 46.00, 41.00, 0.00, '', NULL, NULL, NULL, NULL, 'admin', '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (38, 'Embung Aik Mual/Torok aik beleq', 2000, 283975000.00, 0.50, 0.86, 'Pas Bt Kali ', 60000.00, 28.40, 7.00, 3.00, 25.00, 50.50, 10.00, 0.00, '', NULL, NULL, NULL, NULL, 'admin', '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (39, 'Embung Sware', 1983, 0.00, 0.70, 2.00, 'Timb Tanah ', 100000.00, 60.00, 7.00, 4.00, 100.00, 50.00, 30.00, 0.00, '', NULL, NULL, NULL, NULL, 'admin', '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (40, 'Embung Montong Azan', 1983, 0.00, 0.50, 1.20, 'Timb Tanah ', 56000.00, 88.00, 6.00, 3.00, 70.00, 25.00, 20.00, 0.00, '', NULL, NULL, NULL, NULL, 'admin', '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (41, 'Embung Sombeng  II', 1983, 0.00, 0.80, 0.80, 'Timb Tanah ', 76000.00, 72.00, 7.00, 3.00, 50.00, 30.00, 20.00, 0.00, '', NULL, NULL, NULL, NULL, 'admin', '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (42, 'Embung Sombeng I', 1983, 0.00, 0.70, 0.75, 'Timb Tanah ', 60000.00, 70.00, 6.00, 3.00, 70.00, 35.00, 20.00, 0.00, '', NULL, NULL, NULL, NULL, 'admin', '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (43, 'Embung Masjid', 1982, 0.00, 1.20, 2.00, 'Timb Tanah ', 75000.00, 60.00, 8.00, 4.00, 100.00, 25.00, 25.00, 0.00, '', NULL, NULL, NULL, NULL, 'admin', '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (44, 'Embung Darak', 1980, 0.00, 0.70, 1.50, 'Timb Tanah ', 55000.00, 70.00, 6.00, 4.00, 70.00, 25.00, 5.00, 0.00, '', NULL, NULL, NULL, NULL, 'admin', '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (45, 'Embung Lamben', 1982, 0.00, 0.85, 1.00, 'Timb Tanah ', 32000.00, 70.00, 5.00, 2.00, 60.00, 10.00, 10.00, 0.00, '', NULL, NULL, NULL, NULL, 'admin', '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (46, 'Embung Montong Sapah 1', 1982, 0.00, 0.75, 1.00, 'Timb Tanah ', 45000.00, 50.00, 5.00, 4.00, 50.00, 25.00, 10.00, 0.00, '', NULL, NULL, NULL, NULL, 'admin', '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (47, 'Embung Leman', 1985, 0.00, 0.65, 1.00, 'Timb Tanah ', 42000.00, 50.00, 5.00, 4.00, 50.00, 10.00, 12.00, 0.00, '', NULL, NULL, NULL, NULL, 'admin', '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (48, 'Embung Preak', 1980, 0.00, 0.60, 1.50, 'Timb Tanah ', 36000.00, 60.00, 5.00, 4.00, 45.00, 15.00, 0.00, 0.00, '', NULL, NULL, NULL, NULL, 'admin', '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (49, 'Embung Tabaer', 1982, 0.00, 0.70, 0.75, 'Timb Tanah ', 35000.00, 60.00, 6.00, 3.00, 35.00, 15.00, 10.00, 0.00, '', NULL, NULL, NULL, NULL, 'admin', '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (50, 'Embung Goa', 1982, 172804000.00, 1.37, 1.37, 'Timb Tanah ', 157700.00, 200.00, 13.50, 5.00, 82.00, 174.00, 41.00, 0.00, '', NULL, NULL, NULL, NULL, 'admin', '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (51, 'Embung Bual Pancor', 2008, 2000000000.00, 4.91, 1.50, 'Pas. Batukali ', 40000.00, 80.62, 9.50, 9.70, 100.00, 25.00, 100.00, 0.00, '', NULL, NULL, NULL, NULL, 'admin', '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (52, 'Embung Batu Nyale', 1982, 0.00, 1.10, 1.20, 'Timb Tanah ', 50000.00, 55.00, 6.00, 4.00, 48.00, 10.00, 5.00, 0.00, '', NULL, NULL, NULL, NULL, 'admin', '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (53, 'Embung Jerujuk', 1982, 0.00, 0.70, 1.00, 'Timb Tanah ', 45000.00, 60.00, 5.70, 3.50, 50.00, 10.00, 15.00, 0.00, '', NULL, NULL, NULL, NULL, 'admin', '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (54, 'Embung Jongkor', 1981, 168710000.00, 0.75, 0.96, 'Timb Tanah ', 21000.00, 96.00, 9.00, 6.00, 15.00, 42.00, 30.00, 0.00, '', NULL, NULL, NULL, NULL, 'admin', '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (55, 'Embung Melat I', 1981, 97060000.00, 0.50, 1.25, 'Timb Tanah ', 30600.00, 100.00, 8.50, 4.00, 35.00, 78.00, 56.00, 0.00, '', NULL, NULL, NULL, NULL, 'admin', '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (56, 'Embung Melat II', 1983, 80979000.00, 0.80, 1.13, 'Timb Tanah ', 42873.00, 92.00, 8.50, 5.00, 25.00, 35.00, 25.00, 0.00, '', NULL, NULL, NULL, NULL, 'admin', '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (57, 'Embung Inan Ratu', 1995, 434650000.00, 2.20, 1.65, 'Pas Bt Kali ', 91200.00, 87.00, 9.50, 5.00, 100.00, 58.00, 28.00, 0.00, '', NULL, NULL, NULL, NULL, 'admin', '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (58, 'Embung Pendem', 1981, 66670000.00, 1.60, 2.75, 'Timb Tanah ', 72785.00, 85.00, 7.00, 3.00, 138.00, 89.00, 22.00, 0.00, '', NULL, NULL, NULL, NULL, 'admin', '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (59, 'Embung Kuangsampi', 1981, 42570000.00, 1.60, 2.50, 'Timb Tanah ', 71785.00, 134.00, 6.00, 6.00, 91.00, 36.00, 28.00, 0.00, '', NULL, NULL, NULL, NULL, 'admin', '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (60, 'Embung Loang Make', 1984, 175459000.00, 1.40, 2.10, 'Timb Tanah ', 58800.00, 86.00, 6.00, 5.00, 100.00, 78.00, 56.00, 0.00, '', NULL, NULL, NULL, NULL, 'admin', '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (61, 'Embung Monjong 1', 1980, 0.00, 0.70, 1.20, 'Timb Tanah ', 42000.00, 55.00, 5.00, 3.00, 50.00, 15.00, 5.00, 0.00, '', NULL, NULL, NULL, NULL, 'admin', '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (62, 'Embung Monjong 2', 1982, 0.00, 0.80, 1.00, 'Timb Tanah ', 37000.00, 50.00, 5.00, 3.00, 60.00, 15.00, 0.00, 0.00, '', NULL, NULL, NULL, NULL, 'admin', '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (63, 'Embung Pasekar', 1981, 198865863.00, 0.75, 1.40, 'Timb Tanah ', 225500.00, 108.00, 8.00, 5.00, 96.00, 38.00, 25.00, 0.00, '', NULL, NULL, NULL, NULL, 'admin', '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (64, 'Embung Monggas', 1982, 150000000.00, 4.50, 2.00, 'Timb Tanah ', 65000.00, 100.00, 6.00, 4.00, 100.00, 50.00, 50.00, 0.00, '', NULL, NULL, NULL, NULL, 'admin', '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (65, 'Embung Tibu Reban', 1980, 50000000.00, 3.00, 0.65, 'Timb Tanah ', 13230.00, 95.00, 4.00, 4.00, 100.00, 50.00, 75.00, 0.00, '', NULL, NULL, NULL, NULL, 'admin', '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (66, 'Embung Gusi', 1981, 33718000.00, 0.68, 3.00, 'Timb Tanah ', 100000.00, 70.75, 7.00, 3.00, 45.00, 22.00, 18.00, 0.00, '', NULL, NULL, NULL, NULL, 'admin', '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (67, 'Embgun Jebak', 1981, 23130000.00, 0.78, 2.51, 'Timb Tanah ', 71785.00, 134.00, 6.50, 7.40, 98.00, 34.00, 27.00, 0.00, '', NULL, NULL, NULL, NULL, 'admin', '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (68, 'Embung Lendang Telage', 1982, 3410000.00, 0.78, 5.75, 'Timb Tanah ', 13125.00, 130.00, 5.00, 16.00, 136.00, 36.00, 24.00, 0.00, '', NULL, NULL, NULL, NULL, 'admin', '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (69, 'Embung Pejeruk', 1982, 48460000.00, 0.81, 0.75, 'Timb Tanah ', 81820.00, 177.55, 6.00, 1.60, 63.00, 26.00, 32.00, 0.00, '', NULL, NULL, NULL, NULL, 'admin', '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (70, 'Embung Perok', 1984, 38859000.00, 0.46, 0.85, 'Timb Tanah ', 268250.00, 88.00, 6.00, 4.00, 35.00, 12.00, 26.00, 0.00, '', NULL, NULL, NULL, NULL, 'admin', '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (71, 'Embung Tasik0asik', 1984, 43207000.00, 0.42, 3.20, 'Timb Tanah ', 297250.00, 95.85, 8.50, 4.00, 25.00, 12.00, 18.00, 0.00, '', NULL, NULL, NULL, NULL, 'admin', '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (72, 'Embung Bengak', 1981, 1122000.00, 0.60, 2.50, 'Timb Tanah ', 82500.00, 80.00, 9.00, 15.00, 157.00, 24.00, 12.00, 0.00, '', NULL, NULL, NULL, NULL, 'admin', '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (73, 'Embung Dasan Sari', 1983, 0.00, 0.50, 1.00, 'Timb Tanah ', 50000.00, 60.00, 6.00, 4.00, 60.00, 0.00, 15.00, 0.00, '', NULL, NULL, NULL, NULL, 'admin', '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (74, 'Embung Beleq', 1983, 0.00, 0.60, 1.30, 'Timb Tanah ', 50000.00, 50.00, 5.50, 3.00, 56.00, 20.00, 5.00, 0.00, '', NULL, NULL, NULL, NULL, 'admin', '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (75, 'Embung Juring', 1982, 0.00, 0.80, 1.00, 'Timb Tanah ', 42000.00, 65.00, 5.00, 3.00, 67.00, 15.00, 14.00, 0.00, '', NULL, NULL, NULL, NULL, 'admin', '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (76, 'Embung Nuru', 1981, 0.00, 0.70, 1.30, 'Timb Tanah ', 47000.00, 60.00, 5.00, 3.50, 26.00, 20.00, 0.00, 0.00, '', NULL, NULL, NULL, NULL, 'admin', '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (77, 'Embung Danasari', 1981, 0.00, 3.50, 3.00, 'Timb Tanah ', 145000.00, 75.00, 6.60, 15.00, 210.00, 0.00, 0.00, 0.00, '', NULL, NULL, NULL, NULL, 'admin', '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (78, 'Embung Topor', 2003, 400000000.00, 1.50, 1.00, 'Pas Bt Kali ', 17500.00, 48.00, 8.00, 3.00, 25.00, 50.00, 0.00, 0.00, '', NULL, NULL, NULL, NULL, 'admin', '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (79, 'Embung Batu Jaran', 1988, 0.00, 0.75, 1.00, 'Timb Tanah ', 57000.00, 70.00, 6.00, 4.00, 70.00, 25.00, 10.00, 0.00, '', NULL, NULL, NULL, NULL, 'admin', '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (80, 'Embung Kenyalu 1', 1982, 0.00, 1.50, 1.20, 'Timb Tanah ', 43000.00, 60.00, 5.00, 3.00, 76.00, 15.00, 15.00, 0.00, '', NULL, NULL, NULL, NULL, 'admin', '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (81, 'Embung Kenyalu 2', 1982, 0.00, 1.30, 1.20, 'Timb Tanah ', 40000.00, 60.00, 4.00, 3.00, 70.00, 15.00, 15.00, 0.00, '', NULL, NULL, NULL, NULL, 'admin', '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (82, 'Embung Bumbang', 2003, 783021000.00, 1.50, 4.00, 'Timb Tanah ', 156500.00, 135.00, 12.00, 10.00, 150.00, 30.00, 50.00, 0.00, '', NULL, NULL, NULL, NULL, 'admin', '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (83, 'Embung Goa Dakang', 2009, 109748000.00, 0.85, 4.00, 'Timb Tanah ', 160697.00, 155.00, 12.50, 15.00, 150.00, 100.00, 175.00, 0.00, '', NULL, NULL, NULL, NULL, 'admin', '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (84, 'Embung Mengkene', 1982, 0.00, 0.80, 1.00, 'Timb Tanah ', 40000.00, 60.00, 6.00, 4.00, 80.00, 25.00, 5.00, 0.00, '', NULL, NULL, NULL, NULL, 'admin', '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (85, 'Embung Monggel', 1982, 0.00, 0.90, 1.20, 'Timb Tanah ', 50000.00, 55.00, 5.00, 3.00, 64.00, 10.00, 0.00, 0.00, '', NULL, NULL, NULL, NULL, 'admin', '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (86, 'Embung Ruje', 1982, 0.00, 0.50, 1.25, 'Timb Tanah ', 55000.00, 56.00, 6.00, 4.00, 40.00, 10.00, 0.00, 0.00, '', NULL, NULL, NULL, NULL, 'admin', '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (87, 'Embung Tantih', 1981, 33511000.00, 1.47, 7.50, 'Timb Tanah ', 196800.00, 106.50, 7.00, 5.00, 200.00, 26.00, 41.00, 0.00, '', NULL, NULL, NULL, NULL, 'admin', '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (88, 'Embung Pengkemit', 1982, 67670000.00, 1.17, 5.20, 'Timb Tanah ', 310000.00, 242.50, 9.50, 10.00, 300.00, 28.00, 116.00, 0.00, '', NULL, NULL, NULL, NULL, 'admin', '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (89, 'Embung Gabak', 1981, 93867000.00, 1.05, 4.50, 'Timb Tanah ', 198500.00, 106.25, 8.50, 5.00, 249.00, 127.00, 116.00, 0.00, '', NULL, NULL, NULL, NULL, 'admin', '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (90, 'Embung Tajuk', 1986, 0.00, 0.60, 1.00, 'Timb Tanah ', 38000.00, 65.00, 6.00, 3.00, 45.00, 15.00, 15.00, 0.00, '', NULL, NULL, NULL, NULL, 'admin', '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (91, 'Embung Tereng Borek', 1982, 0.00, 0.80, 0.80, 'Timb Tanah ', 39000.00, 56.00, 5.00, 3.00, 25.00, 10.00, 10.00, 0.00, '', NULL, NULL, NULL, NULL, 'admin', '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (92, 'Embung Babi', 2009, 3200852000.00, 6.43, 3.34, 'Pas. Batukali ', 110000.00, 120.00, 12.50, 12.00, 150.00, 125.00, 100.00, 0.00, 'Suplesi ke Bd Babi', NULL, NULL, NULL, NULL, 'admin', '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (93, 'Embung Macut', 2005, 500000000.00, 2.50, 0.50, 'Pas Bt Kali ', 22500.00, 35.00, 8.00, 9.50, 120.00, 0.00, 0.00, 0.00, '', NULL, NULL, NULL, NULL, 'admin', '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (94, 'Embung Tokan', 1980, 11360000.00, 0.36, 1.00, 'Timb Tanah ', 67375.00, 57.00, 5.00, 2.00, 57.00, 0.00, 0.00, 0.00, '', NULL, NULL, NULL, NULL, 'admin', '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (95, 'Embung Karung', 1980, 100000000.00, 2.50, 1.20, 'Timb Tanah ', 32500.00, 130.00, 5.00, 3.00, 120.00, 25.00, 50.00, 0.00, '', NULL, NULL, NULL, NULL, 'admin', '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (96, 'Embung Bingkok', 1981, 237800000.00, 0.78, 2.48, 'Timb Tanah ', 61875.00, 140.00, 6.00, 5.00, 100.00, 28.00, 78.00, 0.00, '', NULL, NULL, NULL, NULL, 'admin', '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (97, 'Embung Muncan', 1981, 61989000.00, 1.32, 4.50, 'Timb Tanah ', 400000.00, 108.90, 9.00, 5.00, 318.00, 18.00, 1246.00, 0.00, '', NULL, NULL, NULL, NULL, 'admin', '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (98, 'Embung Bual', 1981, 13316000.00, 3.24, 0.63, 'Timb Tanah ', 15830.00, 70.00, 5.00, 6.00, 100.00, 76.00, 112.00, 0.00, '', NULL, NULL, NULL, NULL, 'admin', '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (99, 'Embung Rindik', 1982, 39220000.00, 0.62, 1.75, 'Timb Tanah ', 10672.00, 81.00, 4.00, 2.00, 50.00, 61.00, 43.00, 0.00, '', NULL, NULL, NULL, NULL, 'admin', '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (100, 'Embung Menteang', 2006, 2000000000.00, 3.40, 0.93, 'Pas Bt Kali ', 96416.00, 72.30, 13.00, 16.00, 150.00, 0.00, 0.00, 0.00, '', NULL, NULL, NULL, NULL, 'admin', '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (101, 'Embung Sade', 1987, 0.00, 0.60, 1.20, 'Timb Tanah ', 60000.00, 70.00, 5.00, 2.00, 80.00, 0.00, 50.00, 0.00, '', NULL, NULL, NULL, NULL, 'admin', '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (102, 'Embung Petikus', 2008, 500000000.00, 0.86, 1.15, 'Pas Bt Kali ', 27731.00, 140.00, 7.00, 6.60, 50.00, 0.00, 50.00, 0.00, '', NULL, NULL, NULL, NULL, 'admin', '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (103, 'Embung Gule Liat', 1980, 105550000.00, 8.00, 1.40, 'Timb Tanah ', 35015.00, 70.50, 8.00, 3.00, 203.00, 0.00, 100.00, 0.00, '', NULL, NULL, NULL, NULL, 'admin', '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (104, 'Embung Aik Bukak', 1983, 0.00, 0.50, 1.20, 'Timb Tanah ', 60000.00, 100.00, 6.00, 4.00, 75.00, 10.00, 50.00, 0.00, '', NULL, NULL, NULL, NULL, 'admin', '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (105, 'Embung Aik Leneng', 1982, 75000000.00, 6.50, 0.45, 'Timb Tanah ', 13500.00, 75.00, 5.00, 2.50, 100.00, 0.00, 80.00, 0.00, '', NULL, NULL, NULL, NULL, 'admin', '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (106, 'Embung Skedek', 1982, 65750000.00, 4.00, 0.85, 'Timb Tanah ', 30000.00, 65.50, 6.00, 5.00, 120.00, 0.00, 50.00, 0.00, '', NULL, NULL, NULL, NULL, 'admin', '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (107, 'Embung Pengkores', 1980, 0.00, 0.70, 1.50, 'Timb Tanah ', 38000.00, 72.00, 5.50, 4.00, 50.00, 0.00, 10.00, 0.00, '', NULL, NULL, NULL, NULL, 'admin', '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (108, 'Embung Tibu Bara', 1982, 0.00, 0.70, 1.00, 'Timb Tanah ', 37000.00, 65.00, 6.50, 3.00, 50.00, 10.00, 10.00, 0.00, '', NULL, NULL, NULL, NULL, 'admin', '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (109, 'Embung Enem', 1, 0.00, 10.75, 0.70, 'Pas Bt Kali ', 31863.00, 37.95, 7.00, 15.00, 50.00, 0.00, 0.00, 0.00, '', NULL, NULL, NULL, NULL, 'admin', '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (110, 'Embung Uwung', 1998, 0.00, 0.80, 1.00, 'Timb Tanah ', 40000.00, 60.00, 6.00, 4.00, 80.00, 25.00, 5.00, 0.00, '', NULL, NULL, NULL, NULL, 'admin', '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (111, 'Embung Bagek Rupe', 1983, 0.00, 0.67, 1.00, 'Timb. Tanah ', 40000.00, 60.00, 5.00, 3.00, 35.00, 0.00, 0.00, 0.00, '', NULL, NULL, NULL, NULL, 'admin', '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (112, 'Embung Pondok Raden', 1981, 319499569.00, 4.30, 0.47, 'Timb Tanah ', 130000.00, 250.00, 7.00, 5.00, 100.00, 30.00, 28.00, 0.00, '', NULL, NULL, NULL, NULL, 'admin', '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (113, 'Embung Rungkang', 1992, 712128000.00, 6.80, 7.40, 'Pas Bt Kali ', 345000.00, 181.00, 11.00, 30.00, 220.00, 112.00, 76.00, 0.00, '', NULL, NULL, NULL, NULL, 'admin', '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (114, 'Embung Tembeng', 1993, 17043520.00, 0.60, 4.44, 'Timb Tanah ', 82380.00, 323.00, 6.50, 4.00, 80.00, 10.00, 38.00, 0.00, '', NULL, NULL, NULL, NULL, 'admin', '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (115, 'Embung Seliat/Paok gading', 2008, 1999933000.00, 0.70, 1.00, 'Pas. Batukali ', 50000.00, 107.40, 8.50, 7.00, 100.00, 200.00, 0.00, 0.00, '', NULL, NULL, NULL, NULL, 'admin', '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (116, 'Embung Mertak', 1987, 500000000.00, 1.45, 1.50, 'Pas Bt Kali ', 37790.00, 50.00, 6.50, 5.00, 50.00, 0.00, 50.00, 0.00, '', NULL, NULL, NULL, NULL, 'admin', '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (117, 'Embung Barparigi', 1987, 0.00, 0.50, 0.70, 'Timb. Tanah ', 30000.00, 56.00, 5.50, 3.00, 60.00, 0.00, 0.00, 0.00, '', NULL, NULL, NULL, NULL, 'admin', '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (118, 'Embung Repok sampi', 1983, 0.00, 0.80, 0.70, 'Timb. Tanah ', 45000.00, 60.00, 6.00, 4.00, 45.00, 20.00, 5.00, 0.00, '', NULL, NULL, NULL, NULL, 'admin', '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (119, 'Embung Mangan', 1983, 0.00, 0.50, 1.00, 'Timb Tanah ', 20000.00, 50.00, 5.00, 3.00, 37.00, 0.00, 0.00, 0.00, '', NULL, NULL, NULL, NULL, 'admin', '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (120, 'Embung Pejaik', 2003, 1249330000.00, 4.00, 2.00, 'Pas Bt Kali ', 120000.00, 120.00, 6.50, 8.00, 85.00, 100.00, 150.00, 0.00, '', NULL, NULL, NULL, NULL, 'admin', '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (121, 'Embung Temodo', 1995, 723400000.00, 2.20, 11.53, 'Timb Tanah ', 285160.00, 280.00, 9.00, 20.00, 5.00, 50.00, 200.00, 0.00, 'Saluran buntu', NULL, NULL, NULL, NULL, 'admin', '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (122, 'Embung Ujung Gol', 2007, 1319400000.00, 1.50, 5.50, 'Timb Tanah ', 66907.00, 115.00, 9.50, 12.00, 100.00, 50.00, 50.00, 0.00, '', NULL, NULL, NULL, NULL, 'admin', '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (123, 'Embung Mare', 1981, 23302000.00, 1.42, 5.10, 'Timb Tanah ', 412335.00, 72.00, 12.50, 3.00, 471.00, 43.00, 76.00, 0.00, '', NULL, NULL, NULL, NULL, 'admin', '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (124, 'Embung Solong', 2009, 0.00, 1.00, 0.40, 'Pas Bt Kali ', 13440.00, 30.00, 5.00, 2.00, 80.00, 0.00, 0.00, 0.00, '', NULL, NULL, NULL, NULL, 'admin', '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (125, 'Embung Kembar I', 1980, 14126000.00, 0.78, 1.00, 'Timb Tanah ', 36000.00, 60.00, 6.00, 14.00, 360.00, 18.00, 76.00, 0.00, 'tidak ada saluran', NULL, NULL, NULL, NULL, 'admin', '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (126, 'Embung Sapit', 2009, 1200000000.00, 12.00, 0.50, 'Pas Batukali ', 98000.00, 42.00, 9.00, 10.00, 200.00, 100.00, 400.00, 0.00, '', NULL, NULL, NULL, NULL, 'admin', '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (127, 'Embung Kokok Koak', 2006, 932673000.00, 1.10, 0.40, 'Pas Batukali ', 20787.00, 35.00, 12.50, 11.00, 100.00, 0.00, 0.00, 0.00, '', NULL, NULL, NULL, NULL, 'admin', '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (128, 'Embung Seruni', 2000, 252485327.00, 3.13, 0.50, 'Timb. Tanah ', 36000.00, 65.00, 5.00, 10.00, 0.00, 0.00, 20.00, 0.00, 'Embung gagal', NULL, NULL, NULL, NULL, 'admin', '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (129, 'Embung Bt Lawang', 1982, 96435000.00, 1.38, 3.97, 'Timb Tanah ', 26507.00, 72.00, 5.00, 6.00, 100.00, 75.00, 112.00, 0.00, '', NULL, NULL, NULL, NULL, 'admin', '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (130, 'Embung Jero Poto', 1980, 0.00, 0.60, 1.00, 'Timb. Tanah ', 50000.00, 50.00, 6.00, 3.00, 50.00, 0.00, 10.00, 0.00, '', NULL, NULL, NULL, NULL, 'admin', '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (131, 'Embung Bengak Jeropoto', 1982, 0.00, 0.50, 0.90, 'Timb. Tanah ', 35000.00, 67.00, 5.00, 3.00, 25.00, 0.00, 12.00, 0.00, '', NULL, NULL, NULL, NULL, 'admin', '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (132, 'Embung Pelepok', 1985, 0.00, 0.70, 1.00, 'Timb. Tanah ', 35000.00, 55.00, 6.00, 3.00, 50.00, 0.00, 10.00, 0.00, '', NULL, NULL, NULL, NULL, 'admin', '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (133, 'Embung Penye', 1983, 36425000.00, 0.80, 0.50, 'Timb Tanah ', 110250.00, 155.00, 5.00, 4.00, 23.00, 14.00, 37.00, 0.00, '', NULL, NULL, NULL, NULL, 'admin', '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (134, 'Embung Toyang', 1980, 36361000.00, 0.80, 0.80, 'Timb Tanah ', 14500.00, 100.00, 5.00, 3.00, 86.00, 29.00, 47.00, 0.00, '', NULL, NULL, NULL, NULL, 'admin', '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (135, 'Embung Lingkok kolo', 1980, 59999000.00, 0.75, 1.50, 'Timb Tanah ', 20125.00, 130.00, 4.00, 3.00, 105.00, 28.00, 68.00, 0.00, '', NULL, NULL, NULL, NULL, 'admin', '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (136, 'Embung Kondok', 1980, 47344000.00, 0.64, 1.00, 'Timb Tanah ', 24500.00, 75.00, 5.50, 4.00, 67.00, 0.00, 56.00, 0.00, '', NULL, NULL, NULL, NULL, 'admin', '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (137, 'Embung Tibu Kulit', 2009, 0.00, 0.75, 0.50, 'Timb Tanah ', 60000.00, 60.00, 5.00, 3.00, 60.00, 0.00, 0.00, 0.00, '', NULL, NULL, NULL, NULL, 'admin', '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (138, 'Embung Dambrug', 1980, 7229000.00, 0.70, 1.50, 'Pas Bt Kali ', 36700.00, 85.00, 13.50, 85.00, 130.00, 0.00, 0.00, 0.00, '', NULL, NULL, NULL, NULL, 'admin', '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (139, 'Embung Pengoros', 1980, 96435000.00, 0.72, 0.80, 'Timb Tanah ', 12800.00, 185.00, 3.50, 3.00, 50.00, 20.00, 34.00, 0.00, '', NULL, NULL, NULL, NULL, 'admin', '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (140, 'Embung Munte', 1995, 17776000.00, 0.95, 1.50, 'Timb Tanah ', 40000.00, 110.00, 7.00, 6.00, 180.00, 18.00, 52.00, 0.00, '', NULL, NULL, NULL, NULL, 'admin', '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (141, 'Embung Peroa/Plan Sakra', 1985, 255000000.00, 2.00, 0.75, 'Timb. Tanah ', 80000.00, 93.00, 6.00, 6.50, 100.00, 25.00, 100.00, 0.00, '', NULL, NULL, NULL, NULL, 'admin', '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (142, 'Embung Montong Belo', 1983, 0.00, 0.70, 1.00, 'Timb Tanah ', 40000.00, 70.00, 5.00, 3.00, 45.00, 0.00, 0.00, 0.00, '', NULL, NULL, NULL, NULL, 'admin', '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (143, 'Embung Tridaye', 1980, 11819000.00, 0.64, 2.25, 'Timb Tanah ', 44920.00, 115.00, 7.00, 9.00, 50.00, 26.00, 212.00, 0.00, '', NULL, NULL, NULL, NULL, 'admin', '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (144, 'Embung Kandong', 1982, 222918880.00, 0.72, 8.85, 'Pas Bt Kali ', 35000.00, 350.00, 9.00, 3.50, 200.00, 125.00, 56.00, 0.00, '', NULL, NULL, NULL, NULL, 'admin', '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (145, 'Embung Penyampek/Baloq', 1983, 27028000.00, 0.54, 0.40, 'Timb Tanah ', 37632.00, 159.50, 5.00, 3.00, 12.00, 12.00, 32.00, 0.00, '', NULL, NULL, NULL, NULL, 'admin', '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (146, 'Embung Batu bangka', 1982, 15192000.00, 0.50, 0.75, 'Timb Tanah ', 37630.00, 65.50, 3.00, 3.00, 60.00, 12.00, 28.00, 0.00, '', NULL, NULL, NULL, NULL, 'admin', '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (147, 'Embung Raja', 1982, 25570000.00, 2.40, 5.25, 'Timb Tanah ', 158310.00, 62.00, 8.00, 3.00, 95.00, 20.00, 49.00, 0.00, '', NULL, NULL, NULL, NULL, 'admin', '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (148, 'Embung Loncek/Kenyait', 1983, 48301000.00, 0.42, 0.75, 'Timb Tanah ', 14250.00, 90.00, 7.50, 5.00, 30.00, 12.00, 26.00, 0.00, '', NULL, NULL, NULL, NULL, 'admin', '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (149, 'Embung Penggek', 1983, 250000000.00, 2.50, 0.85, 'Timb. Tanah ', 35000.00, 140.00, 3.50, 2.00, 75.00, 0.00, 0.00, 0.00, '', NULL, NULL, NULL, NULL, 'admin', '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (150, 'Embung Lendang Jogang', 1986, 0.00, 0.80, 1.00, 'Timb. Tanah ', 25000.00, 60.00, 4.50, 4.00, 35.00, 0.00, 10.00, 0.00, '', NULL, NULL, NULL, NULL, 'admin', '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (151, 'Embung Semat', 1980, 40984000.00, 0.44, 1.00, 'Timb Tanah ', 14000.00, 50.00, 4.50, 3.00, 42.00, 42.00, 167.00, 0.00, '', NULL, NULL, NULL, NULL, 'admin', '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (152, 'Embung Gunung Sepang', 1981, 42572000.00, 0.46, 1.25, 'Timb Tanah ', 125700.00, 175.00, 5.00, 3.00, 35.00, 64.00, 47.00, 0.00, '', NULL, NULL, NULL, NULL, 'admin', '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (153, 'Embung Montong Atas', 2007, 1500000000.00, 3.30, 1.00, 'Pas Bt Kali ', 100000.00, 73.50, 9.00, 8.00, 100.00, 60.00, 100.00, 0.00, '', NULL, NULL, NULL, NULL, 'admin', '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (154, 'Embung Pusuk', 2009, 500000000.00, 7.50, 0.40, 'Pas Bt Kali ', 52000.00, 36.00, 5.00, 10.00, 67.00, 0.00, 0.00, 0.00, '', NULL, NULL, NULL, NULL, 'admin', '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (155, 'Embung Penede I', 2009, 250000000.00, 1.00, 0.40, 'Timb. Tanah ', 78000.00, 40.00, 4.00, 3.00, 50.00, 0.00, 100.00, 0.00, '', NULL, NULL, NULL, NULL, 'admin', '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (156, 'Embung Penede II', 2009, 280000000.00, 1.00, 0.50, 'Timb. Tanah ', 85000.00, 25.00, 6.00, 3.00, 75.00, 0.00, 100.00, 0.00, '', NULL, NULL, NULL, NULL, 'admin', '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (157, 'Embung Awing', 2006, 932673000.00, 1.10, 0.40, 'Pas Batukali ', 20787.00, 35.00, 12.50, 11.00, 100.00, 0.00, 0.00, 0.00, '', NULL, NULL, NULL, NULL, 'admin', '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (158, 'Embung Tolo Oi ', 1997, 136258944.98, 2.50, 2.00, 'pas.batu ', 275000.00, 60.00, 9.00, 10.00, 20.00, 100.00, 75.00, 0.00, '', NULL, NULL, NULL, NULL, 'admin', '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (159, 'Embung Jompong ', 1997, 906102884.15, 1.40, 8.00, 'Timbunan ', 225000.00, 240.00, 12.25, 10.00, 100.00, 250.00, 50.00, 0.00, '', NULL, NULL, NULL, NULL, 'admin', '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (160, 'Embung Mantar ', 1998, 844230000.00, 1.50, 2.40, 'Timbunan ', 143080.00, 167.00, 14.00, 15.00, 125.00, 100.00, 100.00, 0.00, '', NULL, NULL, NULL, NULL, 'admin', '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (161, 'Embung Ai Buak ', 2007, 1724991653.00, 5.00, 6.50, 'Pas. Batu ', 140000.00, 105.00, 0.00, 10.50, 125.00, 150.00, 50.00, 0.00, '', NULL, NULL, NULL, NULL, 'admin', '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (162, 'Embung Pompong ', 2007, 5379300000.00, 3.70, 0.53, 'Pas. Batu  ', 170000.00, 50.00, 0.00, 8.50, 125.00, 75.00, 50.00, 0.00, '', NULL, NULL, NULL, NULL, 'admin', '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (163, 'Embung Mamak ', 1994, 300000000.00, 0.86, 2.00, 'timbunan ', 42910.00, 155.00, 0.00, 6.00, 50.00, 1000.00, 50.00, 0.00, '', NULL, NULL, NULL, NULL, 'admin', '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (164, 'PATM Beringin Sila ', 2000, 0.00, 0.00, 0.00, '', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '', NULL, NULL, NULL, NULL, 'admin', '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (165, 'Embung Jeruk Lone ', 2008, 1199964650.00, 1.04, 0.45, 'Pas. Batu ', 58240.00, 75.00, 0.00, 10.00, 250.00, 125.00, 50.00, 0.00, '', NULL, NULL, NULL, NULL, 'admin', '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (166, 'Embung Tiu Rantok ', 0, 0.00, 0.00, 0.00, 'Timbunan ', 120000.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '', NULL, NULL, NULL, NULL, 'admin', '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (167, 'Embung Tiu Nisung ', 0, 0.00, 0.00, 0.00, 'Timbunan ', 152500.00, 0.00, 0.00, 0.00, 50.00, 250.00, 20.00, 0.00, '', NULL, NULL, NULL, NULL, 'admin', '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (168, 'Embung Ai Galih ', 0, 0.00, 0.00, 0.00, 'Timbunan ', 150.00, 13679.00, 10.00, 10.00, 200.00, 0.00, 0.00, 0.00, '', NULL, NULL, NULL, NULL, 'admin', '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (169, 'Embung Sangur Maja ', 2013, 3500000000.00, 1.04, 1.37, 'Pas batu ', 34254.00, 13597.00, 9.50, 0.00, 40.00, 0.00, 0.00, 0.00, '', NULL, NULL, NULL, NULL, 'admin', '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (170, 'Embung Kokar Pekok ', NULL, 5300000000.00, 2.50, 3.75, 'Timbunan ', 154000.00, 16186.00, 15.00, 15.00, 250.00, 0.00, 0.00, 0.00, '', NULL, NULL, NULL, NULL, 'admin', '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (171, 'Embung Kuris ', 0, 0.00, 0.67, 0.29, 'Pas Bt ', 6284.00, 35.00, 9.00, 6.00, 50.00, 0.00, 0.00, 0.00, '', NULL, NULL, NULL, NULL, 'admin', '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (172, 'Embung Ngeru ', 1993, 150000000.00, 1.90, 3.50, 'Timbunan ', 35000.00, 125.00, 0.00, 6.00, 120.00, 500.00, 50.00, 0.00, '', NULL, NULL, NULL, NULL, 'admin', '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (173, 'Embung Songkar ', 1994, 300000000.00, 1.19, 2.50, 'timbunan ', 130000.00, 112.00, 0.00, 5.00, 120.00, 800.00, 20.00, 0.00, '', NULL, NULL, NULL, NULL, 'admin', '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (174, 'Embung Batu Bangka ', 1994, 375000000.00, 1.20, 5.00, 'timbunan ', 146490.00, 261.00, 0.00, 10.00, 120.00, 700.00, 15.00, 0.00, '', NULL, NULL, NULL, NULL, 'admin', '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (175, 'Embung Sebeta  ', 1996, 223569916.00, 1.00, 4.00, 'Pas. Batu ', 65000.00, 55.00, 0.00, 4.25, 50.00, 200.00, 20.00, 0.00, '', NULL, NULL, NULL, NULL, 'admin', '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (176, 'Embung Batu Lante ', 1996, 223569916.00, 1.30, 4.50, 'timbunan ', 75000.00, 150.00, 0.00, 10.00, 50.00, 100.00, 25.00, 0.00, '', NULL, NULL, NULL, NULL, 'admin', '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (177, 'Embung Mata ', 1996, 85000000.00, 1.50, 2.00, 'timbunan ', 100000.00, 40.00, 0.00, 5.00, 50.00, 200.00, 50.00, 0.00, '', NULL, NULL, NULL, NULL, 'admin', '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (178, 'Embung Batu Razak ', 1997, 118269546.18, 10.60, 1.50, 'Pas. batu ', 53000.00, 48.00, 0.00, 10.00, 50.00, 200.00, 15.00, 0.00, '', NULL, NULL, NULL, NULL, 'admin', '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (179, 'Embung Petara ', NULL, 0.00, 0.00, 0.00, '', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '', NULL, NULL, NULL, NULL, 'admin', '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (180, 'Embung Panijara ', 2011, NULL, 0.50, 1.50, 'Pas.batu ', 400000.00, 68.00, 11.00, 12.00, 150.00, 50.00, 50.00, 0.00, '', NULL, NULL, NULL, NULL, 'admin', '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (181, 'Embung Madawa ', NULL, 0.00, 0.00, 0.00, '', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '', NULL, NULL, NULL, NULL, 'admin', '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (182, 'Embung Wora ', 1993, 700000000.00, 3.52, 5.10, 'Timbunan ', 300000.00, 166.80, 12.00, 8.00, 200.00, 100.00, 100.00, 0.00, '', NULL, NULL, NULL, NULL, 'admin', '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (183, 'Embung Waworada ', 1998, 762070000.00, 6.70, 7.50, 'Pas. Batu ', 315000.00, 80.00, 14.50, 15.00, 250.00, 100.00, 100.00, 0.00, '', NULL, NULL, NULL, NULL, 'admin', '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (184, 'Embung Kore ', 1998, 528498000.00, 8.25, 3.50, 'Timbunan ', 328000.00, 127.50, 13.00, 10.00, 120.00, 200.00, 100.00, 0.00, '', NULL, NULL, NULL, NULL, 'admin', '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (185, 'Embung Kolo ', NULL, NULL, 7.38, 4.98, 'Timbunan ', 116322.00, 233.00, 14.85, 20.00, 0.00, 0.00, 0.00, 0.00, '', NULL, NULL, NULL, NULL, 'admin', '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (186, 'Embung Ngirah I ', 1996, 85000000.00, 1.20, 1.00, 'Timbunan ', 50000.00, 50.00, 0.00, 0.00, 0.00, 5.00, 85.00, 250.00, '', NULL, NULL, NULL, NULL, 'admin', '2020-07-07 08:00:00', '2020-07-07 08:00:00');
INSERT INTO `embung` VALUES (187, 'Embung Ngirah II ', 1997, 82006000.00, 1.35, 2.30, 'Timbunan ', 10000.00, 60.00, 0.00, 0.00, 0.00, 5.00, 35.00, 300.00, '', NULL, NULL, NULL, NULL, 'admin', '2020-07-07 08:00:00', '2020-07-07 08:00:00');

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
  `marker` point NULL,
  `polyline` linestring NULL,
  `polygon` polygon NULL,
  `pengguna_id` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`jalan_id`) USING BTREE,
  INDEX `jalan_pengguna_id_foreign`(`pengguna_id`) USING BTREE,
  CONSTRAINT `jalan_pengguna_id_foreign` FOREIGN KEY (`pengguna_id`) REFERENCES `pengguna` (`pengguna_id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 113 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of jalan
-- ----------------------------
INSERT INTO `jalan` VALUES (3, '050', '11.K', 'Jln.  Terminal Mandalika (Bertais - Sweta)', 1.70, 1.70, NULL, '2 X 6 ', 1.70, NULL, 0.00, 0.00, 1.35, 79.41, 0.15, 8.82, 0.10, 5.88, 0.10, 5.88, NULL, 'N', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (4, '051', '11.K', 'Jln. DR. Sutomo/Mataram - Rembiga', 2.39, NULL, 2.39, '6', 2.39, NULL, 0.00, 0.00, 2.39, 100.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, 'N', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (5, '052', '11.K', 'Jln. DR. Wahidin (Bts. Kota)', 0.70, 0.70, NULL, '6', 0.70, NULL, 0.00, 0.00, 0.70, 100.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, 'N', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (6, '053', '11.K', 'Jln. Yos Sudarso', 0.85, NULL, 0.85, '9', 0.85, NULL, 0.00, 0.00, 0.05, 5.88, 0.80, 94.12, 0.00, 0.00, 0.00, 0.00, NULL, 'N', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (7, '053', '12.K', 'Jln. Langko', 2.30, NULL, 2.30, '9', 2.30, NULL, 0.00, 0.00, 0.22, 9.57, 2.08, 90.43, 0.00, 0.00, 0.00, 0.00, NULL, 'N', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (8, '054', '11.K', 'Jln. Pejanggik', 3.15, NULL, 3.15, '9', 3.15, NULL, 0.00, 0.00, 2.65, 84.13, 0.50, 15.87, 0.00, 0.00, 0.00, 0.00, NULL, 'N', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (9, '055', '11.K', 'Jln. Selaparang', 2.25, NULL, 2.25, '9', 2.25, NULL, 0.00, 0.00, 2.25, 100.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, 'N', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (10, '056', '11.K', 'Jln. Udayana / Junction - Selaparang', 1.95, NULL, 1.95, '2 X 6 ', 1.95, NULL, 0.00, 0.00, 0.00, 0.00, 1.95, 100.00, 0.00, 0.00, 0.00, 0.00, NULL, 'N', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (11, '057', '11.K', 'Jln. Erlangga', 1.58, NULL, 1.58, '2 X 6 ', 1.58, NULL, 0.00, 0.00, 1.58, 100.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, 'N', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (12, '058', NULL, 'Jln. Gajah Mada', 3.55, 0.00, 3.55, '2 X 6', 3.55, 0.00, 0.00, 0.00, 3.55, 100.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, 'N', NULL, NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-11 12:21:40');
INSERT INTO `jalan` VALUES (13, '059', '11.K', 'Jln. WR. Supratman', 0.65, NULL, 0.65, '6', 0.65, NULL, 0.00, 0.00, 0.65, 100.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, 'N', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (14, '059', '12.K', 'Jln. A. Rahman Hakim', 1.14, NULL, 1.14, '5.5', 1.14, NULL, 0.00, 0.00, 1.14, 100.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, 'N', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (15, '060', '11.K', 'Jln. RA. Kartini', 1.05, NULL, 1.05, '4.5', 1.05, NULL, 0.00, 0.00, 1.05, 100.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, 'N', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (16, '061', '11.K', 'Jln. Ade Irma Suryani', 3.00, NULL, 3.00, '4.5', 3.00, NULL, 0.00, 0.00, 0.03, 1.00, 2.97, 99.00, 0.00, 0.00, 0.00, 0.00, NULL, 'N', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (17, '062', '11.K', 'Jln. Bung Hatta', 2.90, NULL, 2.90, '9 / 2 X 6', 2.90, NULL, 0.00, 0.00, 2.90, 100.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, 'N', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (18, '063', '11.K', 'Jln. Bung Karno', 4.35, NULL, 4.35, '2 X 6 ', 4.35, NULL, 0.00, 0.00, 4.35, 100.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, 'N', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (19, '064', '11.K', 'Jln. AA. Gede Ngurah', 0.85, NULL, 0.85, '9', 0.85, NULL, 0.00, 0.00, 0.85, 100.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, 'N', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (20, '065', '11.K', 'Jln. Prabu Rangka Sari', 2.00, NULL, 2.00, '9', 2.00, NULL, 0.00, 0.00, 1.40, 70.00, 0.20, 10.00, 0.40, 20.00, 0.00, 0.00, NULL, 'N', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (21, '066', '11.K', 'Jln. Sultan Hasanudin', 0.65, NULL, 0.65, '7', 0.65, NULL, 0.00, 0.00, 0.65, 100.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, 'N', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (22, '067', '11.K', 'Jln. Imam Bonjol', 1.00, NULL, 1.00, '4.5', 1.00, NULL, 0.00, 0.00, 1.00, 100.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, 'N', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (23, '068', '11.K', 'Jln. Diponegoro (Bts. Kota)', 0.72, NULL, 0.72, '4.5', 0.72, NULL, 0.00, 0.00, 0.72, 100.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, 'N', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (24, '069', '11.K', 'Jln. Majapahit', 3.05, NULL, 3.05, '2 X 6 ', 3.05, NULL, 0.00, 0.00, 3.05, 100.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, 'N', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (25, '070', '11.K', 'Jln. Sriwijaya', 3.13, NULL, 3.13, '2 X 6 ', 3.13, NULL, 0.00, 0.00, 3.13, 100.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, 'N', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (26, '071', '11.K', 'Jln. Brawijaya', 1.93, NULL, 1.93, '9', 1.93, NULL, 0.00, 0.00, 1.93, 100.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, 'N', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (27, '072', '11.K', 'Jln. R. Suprapto', 0.75, NULL, 0.75, '6', 0.75, NULL, 0.00, 0.00, 0.00, 0.00, 0.05, 6.67, 0.70, 93.33, 0.00, 0.00, NULL, 'N', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (28, '072', '12.K', 'Jln. Panji Tilar Negara', 1.91, NULL, 1.91, '2 X 6 ', 1.91, NULL, 0.00, 0.00, 0.00, 0.00, 1.91, 100.00, 0.00, 0.00, 0.00, 0.00, NULL, 'N', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (29, '073', '11.K', 'Jln. Pendidikan', 1.57, NULL, 1.57, '6', 1.57, NULL, 0.00, 0.00, 0.00, 0.00, 1.57, 100.00, 0.00, 0.00, 0.00, 0.00, NULL, 'N', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (30, '074', '11.K', 'Jln. Caturwarga', 1.90, NULL, 1.90, '6', 1.90, NULL, 0.00, 0.00, 0.00, 0.00, 1.90, 100.00, 0.00, 0.00, 0.00, 0.00, NULL, 'N', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (31, '075', '11.K', 'Jln. Panca Usaha', 1.35, NULL, 1.35, '9', 1.35, NULL, 0.00, 0.00, 1.35, 100.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, 'N', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (32, '076', '11.K', 'Jln. Tumpangsari', 1.20, NULL, 1.20, '4.5', 1.20, NULL, 0.00, 0.00, 0.00, 0.00, 0.30, 25.00, 0.00, 0.00, 0.90, 75.00, NULL, 'N', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (33, '077', '11.K', 'Jln. Sultan Salahudin', 1.10, NULL, 1.10, '4.5', 1.10, NULL, 0.00, 0.00, 1.10, 100.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, 'N', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (34, '077', '12.K', 'Jln. Sultan Kaharudin', 1.85, NULL, 1.85, '4.5', 1.85, NULL, 0.00, 0.00, 1.85, 100.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, 'N', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (35, '078', '11.K', 'Jln. TGH. Bangkol', 1.72, NULL, 1.72, '4.5', 1.72, NULL, 0.00, 0.00, 1.72, 100.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, 'N', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (36, '079', '11.K', 'Jln. I Gusti Ketut Jelantik Gosa', 1.70, NULL, 1.70, '4.5', 1.70, NULL, 0.00, 0.00, 1.70, 100.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, 'N', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (37, '052', '', 'Rembiga (Bts. Kota) - Pemenang', 21.64, 21.64, NULL, '4.5', 21.64, NULL, 0.00, 0.00, 5.36, 24.77, 14.78, 68.30, 1.50, 6.93, 0.00, 0.00, NULL, 'N', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (38, '080', '', 'Bengkel - Kediri', 2.56, 2.56, NULL, '4.5', 2.56, NULL, 0.00, 0.00, 0.00, 0.00, 1.82, 71.09, 0.30, 11.72, 0.44, 17.19, NULL, 'N', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (39, '081', '', 'Kediri - Rumak', 3.00, 3.00, NULL, '6', 3.00, NULL, 0.00, 0.00, 3.00, 100.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, 'N', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (40, '082', '', 'Kediri - Praya', 14.46, 14.46, NULL, '6', 14.46, NULL, 0.00, 0.00, 12.06, 83.40, 1.80, 12.45, 0.60, 4.15, 0.00, 0.00, NULL, 'N', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (41, '086', '1', 'Mapak - Parampuan', 0.80, NULL, 0.80, '4.5', 0.80, NULL, 0.00, 0.00, 0.80, 100.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, 'N', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (42, '086', '2', 'Parampuan - Kebun Ayu - Lembar', 14.68, NULL, 14.68, '4.5', 14.68, NULL, 0.00, 0.00, 13.28, 90.46, 1.10, 7.49, 0.30, 2.04, 0.00, 0.00, NULL, 'N', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (43, '087', '', 'Lembar - Sekotong - Pelangan', 41.00, NULL, 41.00, '6 / 3.5', 41.00, NULL, 0.00, 0.00, 23.09, 56.32, 17.51, 42.71, 0.40, 0.98, 0.00, 0.00, NULL, 'N', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (44, '088', '', 'Pelangan - Sp. Pengantap', 36.38, NULL, 36.38, '4.5', 22.57, NULL, 0.00, 13.81, 6.20, 17.04, 13.57, 37.30, 2.80, 7.70, 13.81, 37.96, NULL, 'N', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (45, '095', '', 'Kediri - Kuripan', 5.30, 5.30, NULL, '4.5', 5.30, NULL, 0.00, 0.00, 3.80, 71.70, 1.00, 18.87, 0.50, 9.43, 0.00, 0.00, NULL, 'N', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (46, '096', '', 'Kuripan - Giri Menang', 2.80, 2.80, NULL, '4.5', 2.80, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 2.80, 100.00, NULL, 'N', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (47, '096', '11.K', 'Jln. Soekarno Hatta (Gerung)', 1.80, 1.80, NULL, '2 X 6', 1.80, NULL, 0.00, 0.00, 0.00, 0.00, 1.80, 100.00, 0.00, 0.00, 0.00, 0.00, NULL, 'N', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (48, '082', '11.K', 'Jln. Gajah Mada', 2.95, 2.95, NULL, '6', 2.95, NULL, 0.00, 0.00, 1.35, 45.76, 1.60, 54.24, 0.00, 0.00, 0.00, 0.00, NULL, 'N', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (49, '083', '', 'Praya - Kruak ', 21.50, 21.50, NULL, '6', 21.50, NULL, 0.00, 0.00, 16.70, 77.67, 4.80, 22.33, 0.00, 0.00, 0.00, 0.00, NULL, 'N', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (50, '089', '', 'Sp. Pengantap - Mt. Ajan - Kuta', 36.44, NULL, 36.44, '4.5', 36.44, NULL, 0.00, 0.00, 20.84, 57.19, 15.60, 42.81, 0.00, 0.00, 0.00, 0.00, NULL, 'N', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (51, '090', '', 'Kuta - Kruak', 37.95, NULL, 37.95, '4.5', 37.95, NULL, 0.00, 0.00, 37.95, 100.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, 'N', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (52, '097', '', 'Mantang - Praya', 11.27, NULL, 11.27, '6', 11.27, NULL, 0.00, 0.00, 10.77, 95.56, 0.50, 4.44, 0.00, 0.00, 0.00, 0.00, NULL, 'N', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (53, '097', '11.K', 'Jln. Basuki Rahmat', 1.00, NULL, 1.00, '6', 1.00, NULL, 0.00, 0.00, 1.00, 100.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, 'N', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (54, '098', '11.K', 'Wakul - Ketejer', 3.53, NULL, 3.53, '6', 3.53, NULL, 0.00, 0.00, 3.53, 100.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, 'P', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (55, '098', '12.K', 'Ketejer - Jontlak', 2.93, NULL, 2.93, '4.5', 2.93, NULL, 0.00, 0.00, 2.63, 89.76, 0.30, 10.24, 0.00, 0.00, 0.00, 0.00, NULL, 'P', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (56, '099', '', 'Sp. Penujak - Tanah Awu', 4.46, NULL, 4.46, '4.5', 4.46, NULL, 0.00, 0.00, 1.86, 41.70, 1.10, 24.66, 0.10, 2.24, 1.40, 31.39, NULL, 'P', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (57, '100', '', 'Penujak - Mt. Ajan', 23.00, NULL, 23.00, '4.5', 23.00, NULL, 0.00, 0.00, 16.00, 69.57, 7.00, 30.43, 0.00, 0.00, 0.00, 0.00, NULL, 'N', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (58, '127', '', 'Batunyala - Sengkol', 9.20, NULL, 9.20, '3.5', 9.20, NULL, 0.00, 0.00, 9.20, 100.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, 'N', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (59, '084', '', 'Kruak - Lb. Haji', 15.05, 15.05, NULL, '4.5', 15.05, NULL, 0.00, 0.00, 15.05, 100.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, 'N', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (60, '085', '', 'Tanjung Geres - Pohgading - Pringgabaya', 15.23, 15.23, NULL, '4.5', 15.23, NULL, 0.00, 0.00, 14.33, 94.09, 0.90, 5.91, 0.00, 0.00, 0.00, 0.00, NULL, 'N', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (61, '091', '', 'Kruak - Pancor', 22.77, NULL, 22.77, '4.5', 22.77, NULL, 0.00, 0.00, 20.37, 89.46, 1.20, 5.27, 1.20, 5.27, 0.00, 0.00, NULL, 'N', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (62, '092', '', 'Masbagik - Pancor', 6.30, 6.30, NULL, '6', 6.30, NULL, 0.00, 0.00, 6.30, 100.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, 'N', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (63, '092', '12.K', 'Jln. TGH. Zainudin Abd. Majid (Pancor-Selong)', 3.45, 3.45, NULL, '2 X 6', 3.45, NULL, 0.00, 0.00, 3.45, 100.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, 'N', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (64, '092', '13.K', 'Jln. Cokroaminoto', 1.92, 1.92, NULL, '6', 1.92, NULL, 0.00, 0.00, 1.92, 100.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, 'N', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (65, '093', '', 'Selong - Lb. Haji', 5.45, 5.45, NULL, '6', 5.45, NULL, 0.00, 0.00, 0.00, 0.00, 5.45, 100.00, 0.00, 0.00, 0.00, 0.00, NULL, 'N', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (66, '094', '', 'Pancor - Rempung', 4.41, NULL, 4.41, '4.5', 4.41, NULL, 0.00, 0.00, 4.41, 100.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, 'N', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (67, '101', '1', 'Lb.Lombok - Sambalia', 29.73, 29.73, NULL, '4.5', 29.73, NULL, 0.00, 0.00, 3.31, 11.13, 26.42, 88.87, 0.00, 0.00, 0.00, 0.00, NULL, 'N', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (68, '101', '2', 'Sambalia - Ds. Biluk', 23.52, 23.52, NULL, '4.5', 23.52, NULL, 0.00, 0.00, 0.00, 0.00, 23.52, 100.00, 0.00, 0.00, 0.00, 0.00, NULL, 'N', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (69, '102', '', 'Aikmal - Swela', 8.40, NULL, 8.40, '4.5', 8.40, NULL, 0.00, 0.00, 0.00, 0.00, 7.10, 84.52, 1.30, 15.48, 0.00, 0.00, NULL, 'N', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (70, '103', '', 'Pringgabaya - Sembalun Bumbung', 26.90, NULL, 26.90, '4.5', 26.90, NULL, 0.00, 0.00, 6.10, 22.68, 20.80, 77.32, 0.00, 0.00, 0.00, 0.00, NULL, 'N', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (71, '104', '11.K', 'Jln. RA. Kartini', 0.95, NULL, 0.95, '4.5', 0.95, NULL, 0.00, 0.00, 0.95, 100.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, 'P', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (72, '105', '11.K', 'Jln. Diponegoro', 2.80, NULL, 2.80, '4.5', 2.80, NULL, 0.00, 0.00, 1.82, 65.00, 0.00, 0.00, 0.00, 0.00, 0.98, 35.00, NULL, 'P', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (73, '105', '12.K', 'Jln. Hasanudin 1', 0.43, NULL, 0.43, '4.5', 0.43, NULL, 0.00, 0.00, 0.43, 100.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, 'P', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (74, '105', '13.K', 'Jln. Abdullah', 0.31, NULL, 0.31, '4.5', 0.31, NULL, 0.00, 0.00, 0.31, 100.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, 'P', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (75, '106', '', 'Simpang Tano - Simpang Seteluk', 3.85, 3.85, NULL, '6', 3.85, NULL, 0.00, 0.00, 3.35, 87.01, 0.00, 0.00, 0.00, 0.00, 0.50, 12.99, NULL, 'N', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (76, '107', '1', 'Benete - Sejorong', 30.44, 30.44, NULL, '4.5 / 6', 30.44, NULL, 0.00, 0.00, 26.84, 88.17, 3.30, 10.84, 0.00, 0.00, 0.30, 0.99, NULL, 'N', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (77, '107', '2', 'Sejorong Tetar - Bts. KSB', 42.10, 42.10, NULL, '4.5 / 6', 32.89, NULL, 3.10, 6.11, 31.99, 75.99, 0.90, 2.14, 0.00, 0.00, 9.21, 21.88, NULL, 'N', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (78, '108', '', 'Tetar (Bts. KSB) - Lunyuk', 32.40, 32.40, NULL, '4.5 / 6', 25.10, NULL, 7.30, 0.00, 0.30, 0.93, 23.50, 72.53, 1.30, 4.01, 7.30, 22.53, NULL, 'N', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (79, '109', '', 'Sumbawa Besar - Semongkat - Batu Dulang', 24.90, NULL, 24.90, '4.5', 24.90, NULL, 0.00, 0.00, 13.50, 54.22, 11.40, 45.78, 0.00, 0.00, 0.00, 0.00, NULL, 'N', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (80, '109', '11.K', 'Jln. Sultan Kaharudin', 1.75, NULL, 1.75, '4.5', 1.75, NULL, 0.00, 0.00, 1.36, 77.66, 0.26, 14.86, 0.13, 7.49, 0.00, 0.00, NULL, 'N', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (81, '110', '', 'Sumbawa - Sebewe - Lua Air', 20.70, 20.70, NULL, '4.5', 17.00, NULL, 3.70, 0.00, 16.70, 80.68, 0.00, 0.00, 0.30, 1.45, 3.70, 17.87, NULL, 'N', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (82, '110', '11.K', 'Jln. Sudirman', 1.00, NULL, 1.00, '4.5', 1.00, NULL, 0.00, 0.00, 1.00, 100.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, 'N', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (83, '111', '', 'Sp. Negara - Moyo - Lua Air', 25.86, 25.86, NULL, '4.5', 23.36, NULL, 0.00, 2.50, 17.66, 68.29, 5.00, 19.33, 0.70, 2.71, 2.50, 9.67, NULL, 'N', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (84, '112', '1', 'Pal IV - Lenangguar', 35.37, 35.37, NULL, '4.5', 35.37, NULL, 0.00, 0.00, 14.72, 41.62, 19.35, 54.71, 0.90, 2.54, 0.40, 1.13, NULL, 'N', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (85, '112', '2', 'Lenangguar - Lunyuk', 56.20, 56.20, 0.00, '4.5', 54.95, 0.00, 1.25, 0.00, 27.35, 48.67, 20.20, 35.94, 3.30, 5.87, 5.35, 9.52, NULL, 'N', NULL, NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-11 12:21:23');
INSERT INTO `jalan` VALUES (86, '113', '1', 'Lunyuk - Ropang', 45.00, NULL, 45.00, '', 0.00, NULL, 0.00, 45.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 45.00, 100.00, NULL, 'N', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (87, '113', '2', 'Ropang - Sekokat', 59.40, NULL, 59.40, '4.5', 12.40, NULL, 0.00, 47.00, 10.10, 17.00, 2.30, 3.87, 0.00, 0.00, 47.00, 79.12, NULL, 'N', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (88, '114', '', 'Sekokat - Bawi', 91.00, NULL, 91.00, '4.5', 6.00, NULL, 0.00, 85.00, 6.00, 6.59, 0.00, 0.00, 0.00, 0.00, 85.00, 93.41, NULL, 'N', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (89, '115', '', 'Plampang - Sekokat', 13.60, NULL, 13.60, '4.5', 13.60, NULL, 0.00, 0.00, 8.70, 63.97, 1.90, 13.97, 3.00, 22.06, 0.00, 0.00, NULL, 'N', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (90, '117', '', 'Simpang Kempo - Simpang Kore', 18.19, NULL, 18.19, '4.5', 18.19, NULL, 0.00, 0.00, 13.21, 72.62, 4.88, 26.83, 0.10, 0.55, 0.00, 0.00, NULL, 'N', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (91, '118', '1', 'Simpang Kore - Kiwu', 29.05, 29.05, NULL, '4.5', 23.65, NULL, 5.40, 0.00, 20.35, 70.05, 3.30, 11.36, 0.00, 0.00, 5.40, 18.59, NULL, 'N', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (92, '120', '', 'H u\' u - Parado', 40.24, 40.24, NULL, '4.5', 27.60, NULL, 6.54, 6.10, 16.00, 39.76, 0.00, 0.00, 0.00, 0.00, 24.24, 60.24, NULL, 'N', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (93, '116', '1', 'Lb. Kenanga (Bts. Dompu) - Kawinda To\'i', 41.26, 41.26, NULL, '4.5', 41.26, NULL, 0.00, 0.00, 5.80, 14.06, 11.22, 27.19, 0.00, 0.00, 24.24, 58.75, NULL, 'N', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (94, '116', '2', 'Kawinda Toi - Piong', 35.57, 35.57, NULL, '4.5', 21.37, NULL, 14.20, 0.00, 18.20, 51.17, 2.70, 7.59, 0.00, 0.00, 14.67, 41.24, NULL, 'N', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (95, '116', '3', 'Piong - Sp. Kore', 14.75, 14.75, NULL, '4.5', 14.75, NULL, 0.00, 0.00, 0.00, 0.00, 6.58, 44.61, 2.30, 15.59, 5.87, 39.80, NULL, 'N', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (96, '118', '2', 'Kiwu - Sampungu', 16.22, 16.22, NULL, '4.5', 0.00, NULL, 0.00, 16.22, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 16.22, 100.00, NULL, 'N', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (97, '118', '3', 'Sampungu - Bajo', 41.60, 41.60, NULL, '4.5', 27.80, NULL, 0.00, 13.80, 5.60, 13.46, 20.40, 49.04, 1.80, 4.33, 13.80, 33.17, NULL, 'N', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (98, '119', '', 'Sila - Bajo', 10.00, 10.00, NULL, '4.5', 10.00, NULL, 0.00, 0.00, 0.00, 0.00, 10.00, 100.00, 0.00, 0.00, 0.00, 0.00, NULL, 'N', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (99, '121', '1', 'Bima - Tawali', 42.32, 42.32, NULL, '4.5', 42.32, NULL, 0.00, 0.00, 28.06, 66.30, 10.46, 24.72, 3.60, 8.51, 0.20, 0.47, NULL, 'N', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (100, '121', '2', 'Tawali - Sape', 46.71, 46.71, NULL, '4.5', 46.71, NULL, 0.00, 0.00, 14.22, 30.43, 5.90, 12.63, 0.30, 0.64, 26.30, 56.29, NULL, 'N', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (101, '122', '1', 'Talabiu - Simpasai', 16.50, NULL, 16.50, '4.5', 16.50, NULL, 0.00, 0.00, 12.10, 73.33, 4.30, 26.06, 0.00, 0.00, 0.10, 0.61, NULL, 'N', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (102, '122', '2', 'Simpasai - Parado', 17.60, 17.60, NULL, '4.5', 17.60, NULL, 0.00, 0.00, 11.00, 62.50, 6.10, 34.66, 0.50, 2.84, 0.00, 0.00, NULL, 'N', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (103, '123', '1', 'Simpasai - Wilamaci', 4.70, 4.70, 0.00, '4.5', 4.70, 0.00, 0.00, 0.00, 1.74, 37.02, 2.86, 60.85, 0.10, 2.13, 0.00, 0.00, NULL, 'N', NULL, NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-11 12:22:36');
INSERT INTO `jalan` VALUES (104, '123', '2', 'Wilamaci - Karumbu', 24.50, 24.50, NULL, '4.5', 24.50, NULL, 0.00, 0.00, 15.97, 65.18, 8.53, 34.82, 0.00, 0.00, 0.00, 0.00, NULL, 'N', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (105, '123', '3', 'Karumbu - Sape', 37.00, 37.00, NULL, '4.5', 37.00, NULL, 0.00, 0.00, 8.30, 22.43, 17.10, 46.22, 0.40, 1.08, 11.20, 30.27, NULL, 'N', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (106, '123', '4', 'Wilamaci - Parado', 16.30, NULL, 16.30, '4.5', 8.57, NULL, 0.00, 7.73, 8.37, 51.35, 0.20, 1.23, 0.00, 0.00, 7.73, 47.42, NULL, 'P', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (107, '121', '11.K', 'Jln. Datuk Dibanta - Bts. Kota', 11.90, 11.90, NULL, '4.5', 11.90, NULL, 0.00, 0.00, 0.30, 2.52, 5.50, 46.22, 5.80, 48.74, 0.30, 2.52, NULL, 'N', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (108, '124', '11.K', 'Jln. Hasanudin', 1.09, 1.09, NULL, '9', 1.09, NULL, 0.00, 0.00, 1.09, 100.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, 'N', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (109, '125', '11.K', 'Jln. Gajah Mada', 4.70, 4.70, NULL, '4.5', 4.70, NULL, 0.00, 0.00, 3.01, 64.04, 1.69, 35.96, 0.00, 0.00, 0.00, 0.00, NULL, 'N', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (110, '126', '11.K', 'Jln. Gatot Subroto', 2.50, NULL, 2.50, '2 X 6', 2.50, NULL, 0.00, 0.00, 0.00, 0.00, 0.03, 1.20, 1.97, 78.80, 0.50, 20.00, NULL, 'N', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');

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
  `marker` point NULL,
  `polyline` linestring NULL,
  `polygon` polygon NULL,
  `pengguna_id` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`jembatan_id`) USING BTREE,
  INDEX `jembatan_pengguna_id_foreign`(`pengguna_id`) USING BTREE,
  INDEX `jembatan_kabupaten_kota_id_foreign`(`kabupaten_kota_id`) USING BTREE,
  INDEX `jembatan_jalan_id_foreign`(`jalan_id`) USING BTREE,
  CONSTRAINT `jembatan_jalan_id_foreign` FOREIGN KEY (`jalan_id`) REFERENCES `jalan` (`jalan_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `jembatan_kabupaten_kota_id_foreign` FOREIGN KEY (`kabupaten_kota_id`) REFERENCES `kabupaten_kota` (`kabupaten_kota_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `jembatan_pengguna_id_foreign` FOREIGN KEY (`pengguna_id`) REFERENCES `pengguna` (`pengguna_id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 762 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of jembatan
-- ----------------------------
INSERT INTO `jembatan` VALUES (1, '42.101.010.0', 'PENENDEM IV', 2.00, 6.20, 2.00, 'ATI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-14 11:34:45');
INSERT INTO `jembatan` VALUES (2, ' 42.052.004.1.1 ', 'TL. SIDEMEN ', 3.00, 8.40, 2.00, 'ATI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (3, ' 42.092.005.0.12 ', 'TELABAH SANGKON ', 3.60, 7.70, 3.00, 'ATI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (4, ' 42.092.004.0.2 ', 'TELABAH KETUJUR ', 2.00, 7.90, 1.00, 'ETI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (5, ' 42.119.001.7 ', 'RADA ', 2.00, 5.80, 1.00, 'ETI', 2.00, 'B', 2.00, 'LS', 2.00, 'TA', 2.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (6, ' 42.112.006.0.2 ', 'LEDANG VI ', 2.20, 3.50, 1.00, 'ETI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 2.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (7, ' 42.091.008.4 ', 'TELABAH SEPIT ', 2.30, 5.30, 1.00, 'ETI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (8, ' 42.099.005.0 ', 'GOBANG ', 3.00, 4.30, 1.00, 'ETI', 1.00, 'B', 1.00, 'LS', 1.00, 'A', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (9, ' 42.083.006.8 ', 'TL. SWANGI ', 3.00, 7.00, 1.00, 'ETI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (10, ' 42.109.004.0 ', 'SEMONGKAT III ', 3.00, 7.00, 1.00, 'ETI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (11, ' 42.052.001.6.1 ', 'TL. BELENCONG ', 3.80, 6.70, 1.00, 'ETI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (12, ' 42.122.002.6.1 ', 'SORI LEU ', 3.80, 6.40, 1.00, 'ETI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (13, ' 42.052.004.2.1 ', 'TL. BATU PENYU ', 4.00, 5.90, 1.00, 'ETI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (14, ' 42.112.060.0.2 ', 'SAMPARAU I ', 4.00, 3.90, 1.00, 'ETI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (15, ' 42.052.003.4.1 ', 'TL. WADON ', 4.20, 5.90, 1.00, 'ETI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (16, ' 42.087.006.6 ', 'LABU PETUNG II ', 4.20, 6.80, 1.00, 'ETI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (17, ' 42.112.003.0.2 ', 'LEDANG III ', 4.80, 6.30, 2.00, 'ETI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (18, ' 42.052.004.8.1 ', 'TL. SEKEPAT ', 5.00, 6.20, 1.00, 'ETI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (19, ' 42.121.003.2.11 ', 'DESA II ', 5.00, 6.20, 1.00, 'ETI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (20, ' 42.091.013.0 ', 'BATU BELEK/NGETAP ', 5.10, 7.00, 1.00, 'ETI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (21, ' 42.126.001.0.11 ', 'SANTI ', 5.10, 11.60, 1.00, 'ETI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (22, ' 42.112.005.0.2 ', 'LEDANG V ', 5.30, 7.30, 1.00, 'ETI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (23, ' 42.121.002.3 ', 'SORI LUMBA ', 5.40, 3.30, 1.00, 'ETI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (24, ' 42.125.003.0.11 ', 'DANA MBARI ', 5.50, 7.20, 1.00, 'ETI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (25, ' 42.122.002.8.1 ', 'SORI RIDA ', 5.90, 6.20, 1.00, 'ETI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (26, ' 42.101.003.1 ', 'MENANGA BARIS III/RAREP ', 6.00, 6.00, 1.00, 'ETI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (27, ' 42.085.002.B ', 'LENEK BARA B ', 6.00, 5.00, 1.00, 'ETI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (28, ' 42.103.001.0 ', 'KEDONDONG ', 6.00, 4.40, 1.00, 'ETI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (29, ' 42.112.005.0.1 ', 'KOKAR ALING ', 6.00, 8.30, 1.00, 'ETI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (30, ' 42.112.014.0.1 ', 'LANAK II ', 6.00, 5.80, 1.00, 'ETI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (31, ' 42.112.004.0.2 ', 'LEDANG IV ', 2.00, 3.50, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (32, ' 42.112.045.0.2 ', 'LIAN II ', 2.00, 4.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (33, ' 42.112.075.0.2 ', 'BERINGIN ', 2.00, 3.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (34, ' 42.112.038.0.2 ', 'KOMAS VI ', 2.70, 4.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (35, ' 42.112.053.0.2 ', 'SAMPANG II ', 3.00, 6.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (36, ' 42.112.012.5.2 ', 'AIK LEDANG ', 4.00, 6.70, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (37, ' 42.112.065.0.2 ', 'PLARA II ', 4.50, 7.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (38, ' 42.112.001.0.2 ', 'LEDANG I (AI NANGKA) ', 4.60, 6.60, 2.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (39, ' 42.112.066.0.2 ', 'SEKAMANG I ', 4.70, 7.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (40, ' 42.112.011.0.2 ', 'LEDANG IX ', 5.00, 5.50, 1.00, 'GTI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (41, ' 42.112.062.0.2 ', 'RONTONG I ', 5.00, 6.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (42, ' 42.112.074.0.2 ', 'BRORA ', 5.50, 6.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (43, ' 42.088.006.0 ', 'SEPI II ', 6.00, 6.00, 1.00, 'GTI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (44, ' 42.101.004.2 ', 'PANDAK GUAR ', 6.00, 6.10, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (45, ' 42.101.012.0 ', 'DAMB. KL. PASIRAN II ', 6.00, 6.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (46, ' 42.107.013.0 ', 'SINYUR II ', 6.00, 5.50, 1.00, 'GTI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (47, ' 42.107.015.0 ', 'SINYUR IV ', 6.00, 5.50, 1.00, 'GTI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (48, ' 42.107.016.0 ', 'SINYUR V ', 6.00, 5.50, 1.00, 'GTI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (49, ' 42.107.018.0 ', 'SINYUR VII ', 6.00, 5.50, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TR', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (50, ' 42.109.007.0 ', 'BATU LATEH I ', 6.00, 6.60, 1.00, 'GTI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (51, ' 42.109.008.0 ', 'BATU LATEH II ', 6.00, 7.00, 1.00, 'GTI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (52, ' 42.112.033.0.2 ', 'KOMAS I ', 6.00, 6.60, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 2.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (53, ' 42.112.049.0.2 ', 'KENANGAS II ', 6.00, 6.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (54, ' 42.112.054.0.2 ', 'BATU NAMPAR ', 6.00, 6.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (55, ' 42.121.006.1 ', 'LALUNE ', 6.00, 4.00, 1.00, 'GTI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (56, ' 42.123.009.0.2 ', 'SORI NGONCO ', 6.00, 6.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (57, ' 42.099.004.0 ', 'TELABAH PENGKANG ', 2.00, 5.00, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (58, ' 42.112.040.0.2 ', 'KOMAS VIII ', 2.00, 4.00, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (59, ' 42.112.041.0.2 ', 'KOMAS IX ', 2.00, 4.00, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (60, ' 42.121.012.9 ', 'RO\'O MALI ', 2.00, 5.30, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (61, ' 42.082.001.1 ', 'TELABAH BAWAH ', 2.40, 7.00, 1.00, 'PTI', 0.00, 'B', 0.00, 'LS', 0.00, 'TA', 0.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (62, ' 42.118.023.0.3 ', 'LAPA MORI ', 2.50, 5.30, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (63, ' 42.112.070.0.2 ', 'KUKIN ', 2.70, 4.00, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (64, ' 42.052.004.4.1 ', 'TL. LINGKOK MAS ', 2.80, 5.10, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (65, ' 42.052.004.6.1 ', 'EYAT PUNTIK ', 2.80, 6.90, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (66, ' 42.054.002.0.11 ', 'KARANG JANGKONG ', 3.00, 10.00, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (67, ' 42.065.002.0.11 ', 'Tl. Waker ', 3.00, 8.00, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (68, ' 42.052.004.7.1 ', 'TL. PUSUK ', 3.00, 7.50, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (69, ' 42.052.004.9.1 ', 'TL. EMBULAN ', 3.00, 7.30, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (70, ' 42.088.007.1 ', 'KEMANUK II ', 3.00, 4.00, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (71, ' 42.090.001.0 ', 'KUTA ', 3.00, 5.00, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (72, ' 42.101.025.0 ', 'JURANG BEBAI ', 3.00, 6.40, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (73, ' 42.107.019.0 ', 'SINYUR VIII ', 3.00, 7.40, 1.00, 'PTI', 3.00, 'B', 1.00, 'LS', 1.00, 'TR', 2.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (74, ' 42.112.012.0.1 ', 'LITOK III ', 3.00, 3.50, 1.00, 'PTI', 0.00, 'B', 0.00, 'LS', 0.00, 'TA', 0.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (75, ' 42.112.019.0.2 ', 'LEDANG XVIII ', 3.00, 4.00, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (76, ' 42.121.001.2.11 ', 'RANGGO  II ', 3.00, 5.20, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (77, ' 42.121.022.0 ', 'SORI LIA ', 3.00, 4.00, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (78, ' 42.122.002.9.1 ', 'WADU LAWA ', 3.00, 7.90, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (79, ' 42.052.005.3.1 ', 'EYAT RATNAGA ', 3.10, 7.20, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (80, ' 42.118.005.0.1 ', 'ENCA II ', 3.10, 3.80, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (81, ' 42.121.009.4 ', 'OI MPONU I ', 3.20, 4.40, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (82, ' 42.121.009.7 ', 'DINDI TELI ', 3.20, 5.20, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (83, ' 42.121.019.0 ', 'KAPILO II ', 3.20, 4.20, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (84, ' 42.052.001.1.1 ', 'TL. MIDANG ', 3.30, 9.00, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (85, ' 42.082.002.1 ', 'LAPAN ELEK ', 3.30, 7.00, 1.00, 'PTI', 0.00, 'B', 0.00, 'LS', 0.00, 'TA', 0.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (86, ' 42.082.003.7 ', 'AIK AMPAT ', 3.30, 7.00, 1.00, 'PTI', 0.00, 'B', 0.00, 'LS', 0.00, 'TA', 0.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (87, ' 42.121.011.1 ', 'MENTAU/MASA ', 3.30, 5.50, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (88, ' 42.080.001.9 ', 'BAGINDA ', 3.40, 7.50, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (89, ' 42.082.004.3 ', 'MONTONG LUMUT ', 3.40, 8.60, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (90, ' 42.101.019.0 ', 'KALI SUKUN ', 3.40, 3.50, 1.00, 'PTI', 2.00, 'B', 1.00, 'LS', 0.00, 'AT', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (91, ' 42.121.013.1 ', 'OI JEKE ', 3.40, 5.30, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (92, ' 42.121.013.2 ', 'MANGGO MAWU ', 3.40, 5.40, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (93, ' 42.052.004.5.1 ', 'TL. BATU TEPONG ', 3.50, 7.50, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (94, ' 42.122.002.7.1 ', 'WADU LECO ', 3.50, 5.20, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (95, ' 42.051.003.0.11 ', 'TELABAH BAWAK ', 3.60, 6.00, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (96, ' 42.052.000.2.11 ', 'Tl. Rembige ', 3.60, 6.80, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (97, ' 42.082.007.7.11 ', 'BATU BUI ', 3.60, 11.00, 1.00, 'PTI', 0.00, 'B', 0.00, 'LS', 0.00, 'TA', 0.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (98, ' 42.093.000.3 ', 'TELABAH SELONG ', 3.60, 6.50, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (99, ' 42.065.000.4.11 ', 'Abian Tubuh I ', 3.70, 13.00, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (100, ' 42.093.000.4 ', 'TELABAH KELAYU ', 3.70, 5.40, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (101, ' 42.052.004.3.1 ', 'TL. KEDONDONG ', 3.80, 6.60, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (102, ' 42.122.002.4.1 ', 'TANGGA ', 3.80, 7.40, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (103, ' 42.053.000.2.12 ', 'TL. NING ', 4.00, 7.50, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (104, ' 42.082.003.1 ', 'JURANG TEBANGO ', 4.00, 7.00, 1.00, 'PTI', 0.00, 'B', 0.00, 'LS', 0.00, 'TA', 0.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (105, ' 42.082.005.6 ', 'NYEROT ', 4.00, 7.00, 1.00, 'PTI', 0.00, 'B', 0.00, 'LS', 0.00, 'TA', 0.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (106, ' 42.099.003.0 ', 'SEMBAWI ', 4.00, 3.50, 2.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (107, ' 42.083.003.5 ', 'REMPUNG PUNTIK ', 4.00, 7.00, 1.00, 'PTI', 0.00, 'B', 0.00, 'LS', 0.00, 'TA', 0.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (108, ' 42.090.001.4 ', 'BALAK ', 4.00, 6.40, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (109, ' 42.101.007.0 ', 'PENENDEM I ', 4.00, 5.40, 1.00, 'PTI', 2.00, 'B', 1.00, 'LS', 1.00, 'AT', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (110, ' 42.118.017.0.3 ', 'SORI KOMBA I ', 4.00, 4.60, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (111, ' 42.118.017.2.3 ', 'SORI KOMBA II ', 4.00, 4.60, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (112, ' 42.121.007.4 ', 'AMA TETO ', 4.00, 5.40, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (113, ' 42.121.016.0 ', 'KALAMPA ', 4.00, 4.20, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (114, ' 42.121.009.0 ', 'OI MORO ', 4.00, 4.00, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (115, ' 42.121.018.0 ', 'KAPILO I ', 4.00, 4.50, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (116, ' 42.121.021.0 ', 'POJA ', 4.00, 4.30, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (117, ' 42.123.016.0.3 ', 'DUMU I ', 4.00, 4.90, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (118, ' 42.123.016.4.3 ', 'SORI DUMU III ', 4.00, 6.00, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (119, ' 42.123.018.0.3 ', 'MANGGE I ', 4.00, 5.20, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (120, ' 42.123.019.0.3 ', 'MANGGE II ', 4.00, 5.00, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (121, ' 42.123.020.0.3 ', 'MANGGE III ', 4.00, 5.00, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (122, ' 42.123.021.0.3 ', 'MANGGE IV ', 4.00, 4.70, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (123, ' 42.125.004.0.11 ', 'NA\'E ', 4.00, 6.00, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (124, ' 42.121.016.0 ', 'KAMBOI ', 4.10, 4.10, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (125, ' 42.112.069.0.2 ', 'SEKAMANG IV ', 4.30, 4.00, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (126, ' 42.121.005.5 ', 'SANOSO ', 4.30, 7.00, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (127, ' 42.121.008.6 ', 'LAWESI ', 4.30, 5.20, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (128, ' 42.112.037.0.2 ', 'KOMAS V ', 4.40, 4.00, 1.00, 'PTI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (129, ' 42.121.011.8 ', 'RAJU  ', 4.40, 5.30, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (130, ' 42.082.004.2 ', 'JELANTIK I ', 4.50, 7.00, 1.00, 'PTI', 0.00, 'B', 0.00, 'LS', 0.00, 'TA', 0.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (131, ' 42.083.000.4 ', 'EYAT SURAK ', 4.50, 7.00, 1.00, 'PTI', 0.00, 'B', 0.00, 'LS', 0.00, 'TA', 0.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (132, ' 42.083.002.6 ', 'MUJUR I ', 4.50, 5.00, 1.00, 'PTI', 0.00, 'B', 0.00, 'LS', 0.00, 'TA', 0.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (133, ' 42.112.011.6.1 ', 'LITOK I ', 4.50, 6.00, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (134, ' 42.121.012.3 ', 'SORI PATO ', 4.50, 4.80, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (135, ' 42.123.024.0.3 ', 'MANGGE VII ', 4.50, 6.50, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (136, ' 42.082.003.6 ', 'AIK ARE ', 4.60, 7.00, 1.00, 'PTI', 0.00, 'B', 0.00, 'LS', 0.00, 'TA', 0.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (137, ' 42.121.005.6 ', 'DUNDU HEA ', 4.60, 7.00, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (138, ' 42.082.001.7 ', 'KROYA ', 4.70, 6.00, 1.00, 'PTI', 0.00, 'B', 0.00, 'LS', 0.00, 'TA', 0.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (139, ' 42.112.012.0.2 ', 'LEDANG X ', 4.70, 9.10, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (140, ' 42.082.001.4 ', 'CENIDING ', 4.80, 7.00, 1.00, 'PTI', 0.00, 'B', 0.00, 'LS', 0.00, 'TA', 0.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (141, ' 42.100.005.0 ', 'SETANGGOR II ', 4.80, 3.50, 2.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (142, ' 42.117.002.0 ', 'LANCI ', 4.80, 4.70, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (143, ' 42.090.001.5 ', 'SERNENG ', 5.00, 6.40, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (144, ' 42.090.001.6 ', 'PAKO ', 5.00, 4.60, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (145, ' 42.101.009.0 ', 'PENENDEM III ', 5.00, 3.20, 1.00, 'PTI', 2.00, 'B', 1.00, 'LS', 1.00, 'AT', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (146, ' 42.112.026.0.2 ', 'SOGA I ', 5.00, 4.00, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (147, ' 42.112.027.0.2 ', 'SOGA II ', 5.00, 4.00, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (148, ' 42.112.072.0.2 ', 'PLAS II ', 5.00, 6.00, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (149, ' 42.120.000.2 ', 'OI TOSI ', 5.00, 4.90, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (150, ' 42.118.019.0.3 ', 'NOTI I ', 5.00, 4.30, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (151, ' 42.121.003.0 ', 'MALI ', 5.00, 4.10, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TR', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (152, ' 42.121.011.0 ', 'SAMIA ', 5.00, 4.70, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (153, ' 42.121.020.0 ', 'NCIRI ', 5.00, 4.50, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (154, ' 42.121.024.0 ', 'SORI NTIMU ', 5.00, 4.30, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (155, ' 42.120.021.0 ', 'LERE II ', 5.00, 4.80, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (156, ' 42.123.003.0.2 ', 'DORO O\'O I ', 5.00, 8.80, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (157, ' 42.123.022.0.3 ', 'MANGGE V ', 5.00, 6.20, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (158, ' 42.118.013.0.3 ', 'LAPA BAJO ', 5.10, 5.20, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (159, ' 42.118.006.0.1 ', 'ENCA III ', 5.20, 6.00, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (160, ' 42.121.023.0 ', 'SORI NDAO ', 5.20, 4.30, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (161, ' 42.122.007.5.2 ', 'PO\'O TANDANDA ', 5.20, 5.20, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (162, ' 42.101.016.0 ', 'MENANGA BAWI ', 5.30, 3.10, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (163, ' 42.112.029.3.2 ', 'TAWAR I ', 5.30, 6.90, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (164, ' 42.115.001.0 ', 'SELANTE I ', 5.30, 6.00, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (165, ' 42.123.014.0.3 ', 'SAMBANE ', 5.30, 6.20, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (166, ' 42.087.001.0 ', 'KEBON TALO ', 5.40, 5.50, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (167, ' 42.101.014.0 ', 'LENDANG RE ', 5.40, 4.30, 1.00, 'PTI', 2.00, 'B', 1.00, 'LS', 0.00, 'AT', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (168, ' 42.112.068.0.2 ', 'SEKAMANG III ', 5.40, 4.00, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (169, ' 42.123.007.0.2 ', 'NAWA LAPA ', 5.50, 4.50, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (170, ' 42.123.013.0.3 ', 'RUPE ', 5.50, 5.50, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (171, ' 42.123.017.0.3 ', 'DUMU II ', 5.50, 5.00, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 0.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (172, ' 42.112.010.5.1 ', 'AI LAGI ', 5.60, 6.00, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (173, ' 42.112.023.0.2 ', 'BINONG II ', 5.60, 6.50, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (174, ' 42.085.002.A ', 'LENEK BARA A ', 5.70, 5.50, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (175, ' 42.121.003.1.11 ', 'DESA I ', 5.70, 6.70, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (176, ' 42.083.006.9 ', 'TUNDAK ', 5.80, 6.20, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (177, ' 42.101.008.0 ', 'PENENDEM II ', 5.80, 3.20, 1.00, 'PTI', 2.00, 'B', 1.00, 'LS', 1.00, 'AT', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (178, ' 42.112.028.0.2 ', 'PANAN ', 5.80, 6.30, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (179, ' 42.088.005.0 ', 'SEPI I ', 6.00, 4.00, 1.00, 'PTI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (180, ' 42.088.007.0 ', 'KEMANUK I ', 6.00, 4.00, 1.00, 'PTI', 3.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (181, ' 42.099.001.0 ', 'PENUJAK I ', 6.00, 6.10, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (182, ' 42.083.004.0 ', 'PAMONDAH ', 6.00, 6.50, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (183, ' 42.100.001.0 ', 'PENUJAK I ', 6.00, 3.80, 1.00, 'PTI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (184, ' 42.100.003.0 ', 'TL. PEDEK ', 6.00, 3.60, 1.00, 'PTI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (185, ' 42.107.006.0 ', 'MALUK I ', 6.00, 8.10, 1.00, 'PTI', 3.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (186, ' 42.107.020.0 ', 'SINYUR IX ', 6.00, 5.30, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TR', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (187, ' 42.112.022.0.2 ', 'BINONG I ', 6.00, 6.60, 1.00, 'PTI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (188, ' 42.112.029.0.2 ', 'BEAT ', 6.00, 6.10, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (189, ' 42.112.036.0.2 ', 'KOMAS IV ', 6.00, 6.50, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (190, ' 42.117.003.0 ', 'KENU ', 6.00, 4.70, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (191, ' 42.117.004.0 ', 'WADU NAE ', 6.00, 5.50, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (192, ' 42.121.002.0 ', 'AMA TAMI ', 6.00, 4.70, 1.00, 'PTI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (193, ' 42.120.028.0 ', 'TANAH AWU I ', 6.00, 4.50, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (194, ' 42.123.006.0.2 ', 'DORO O\'O IV ', 6.00, 4.10, 1.00, 'PTI', 1.00, 'B', 2.00, 'LS', 3.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (195, ' 42.112.039.0.2 ', 'KOMAS VII ', 2.70, 4.00, 1.00, 'RBB', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (196, ' 42.112.010.0.2 ', 'LEDANG VIII ', 3.00, 4.80, 1.00, 'GBA', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (197, ' 42.112.061.0.2 ', 'SAMPARAU II ', 6.00, 5.70, 1.00, 'GBA', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (198, ' 42.112.044.0.2 ', 'LIAN I ', 2.70, 4.00, 1.00, 'GBI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (199, ' 42.082.002.3 ', 'TELABAH PELULAN ', 3.40, 7.00, 1.00, 'GBI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (200, ' 42.093.000.6 ', 'TELABAH LOANG TUNA ', 3.70, 7.00, 1.00, 'GBI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (201, ' 42.092.003.0.2 ', 'TELABAH SIMBE ', 4.00, 6.50, 1.00, 'GBI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (202, ' 42.112.067.0.2 ', 'SEKAMANG II ', 4.70, 7.00, 1.00, 'GBI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (203, ' 42.093.001.0 ', 'SISIK ', 6.00, 6.50, 1.00, 'GBI', 1.00, 'B', 1.00, 'LS', 1.00, 'A', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (204, ' 42.112.013.0.1 ', 'LANAK I ', 6.00, 6.80, 1.00, 'GBI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (205, ' 42.113.075.0.2 ', 'KOKAR ODE V ', 5.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (206, ' 42.088.002.0 ', 'LEMBUT PETUNG ', 6.10, 4.90, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (207, ' 42.117.001.0 ', 'SORI SANTE ', 6.10, 6.20, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (208, ' 42.119.001.3 ', 'TOMPU ', 6.10, 6.30, 1.00, 'GTI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (209, ' 42.100.002.0 ', 'PENUJAK II ', 6.10, 3.70, 1.00, 'PTI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (210, ' 42.112.018.0.2 ', 'LEDANG XVII ', 6.10, 6.90, 1.00, 'RBR', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (211, ' 42.109.002.0 ', 'SEMONGKAT I ', 6.20, 7.00, 1.00, 'ETI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (212, ' 42.084.004.0 ', 'EYAT BENGKOK ', 6.20, 11.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (213, ' 42.107.014.0 ', 'SINYUR III ', 6.20, 5.40, 1.00, 'GTI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (214, ' 42.112.007.0.2 ', 'AI TUMANG I ', 6.20, 6.60, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (215, ' 42.067.001.1.11 ', 'TL. SINDU ', 6.20, 6.30, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (216, ' 42.123.011.0.2 ', 'RABA BUSI I ', 6.30, 8.20, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (217, ' 42.123.011.2.3 ', 'RABA BUSI II ', 6.30, 8.20, 1.00, 'PTI', 2.00, 'B', 2.00, 'LS', 3.00, 'TA', 2.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (218, ' 42.101.003.8 ', 'LEPER ', 6.40, 9.00, 1.00, 'ETI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (219, ' 42.112.008.0.1 ', 'BATU PASAK ', 6.50, 7.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (220, ' 42.112.050.0.2 ', 'KENANGAS III ', 6.50, 6.00, 1.00, 'GTI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (221, ' 42.112.051.0.2 ', 'KENANGAS IV ', 6.50, 6.50, 1.00, 'GTI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (222, ' 42.115.007.1 ', 'KOKAR LABANGKA ', 6.50, 6.10, 1.00, 'GTI', 3.00, 'B', 1.00, 'LS', 1.00, 'TA', 3.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (223, ' 42.118.015.0.3 ', 'SARITA II ', 6.50, 4.20, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (224, ' 42.121.013.0 ', 'SORI BOTE ', 6.50, 4.80, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (225, ' 42.122.002.0.1 ', 'SAKURU ', 6.50, 6.30, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'AT', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (226, ' 42.087.006.0 ', 'PANDANAN ', 6.50, 3.50, 1.00, 'PTI', 3.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (227, ' 42.087.007.0 ', 'TEMERANG ', 6.50, 7.10, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (228, ' 42.112.003.7.1 ', 'BATAN JUAT ', 6.50, 8.50, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (229, ' 42.112.057.0.2 ', 'BERINGIN ', 6.50, 6.50, 1.00, 'PTI', 2.00, 'B', 3.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (230, ' 42.112.058.0.2 ', 'KOKAR PELAS  ', 6.50, 6.70, 1.00, 'PTI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (231, ' 42.122.001.2.1 ', 'TENTE II ', 6.50, 6.20, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (232, ' 42.109.005.0 ', 'SEMONGKAT IV ', 6.70, 7.90, 1.00, 'ETI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (233, ' 42.052.006.1.1 ', 'KOLOH ', 6.70, 6.00, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (234, ' 42.112.006.0.1 ', 'KOKAR NEISA ', 6.80, 6.00, 1.00, 'ETI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (235, ' 42.112.008.0.2 ', 'AI TUMANG II ', 6.80, 6.70, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (236, ' 42.101.003.3 ', 'MENANGA BARIS V ', 6.90, 6.30, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (237, ' 42.101.004.6 ', 'LABU PANDAN ', 6.90, 6.20, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (238, ' 42.120.001.1 ', 'LAKEY I ', 6.90, 4.90, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (239, ' 42.120.025.0 ', 'TAHINAE I ', 6.90, 3.90, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (240, ' 42.123.015.0.3 ', 'RORE ', 6.90, 4.30, 1.00, 'GTI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (241, ' 42.123.028.0.3 ', 'BUGIS ', 7.00, 6.00, 2.00, 'BTI', 1.00, 'B', 1.00, 'LS', 2.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (242, ' 42.080.002.0 ', 'REMENING ', 7.00, 8.90, 1.00, 'ETI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (243, ' 42.112.064.0.2 ', 'PLARA I ', 7.00, 6.40, 1.00, 'ETI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (244, ' 42.080.001.5 ', 'KALI TENGAH II ', 7.00, 10.00, 1.00, 'GBI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (245, ' 42.063.003.0.11 ', 'PAGUTAN I ', 7.00, 9.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (246, ' 42.063.004.0.11 ', 'PAGUTAN II ', 7.00, 9.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (247, ' 42.107.005.0 ', 'BENETE III ', 7.00, 7.00, 1.00, 'GTI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 2.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (248, ' 42.121.004.0 ', 'SORI KANAHI ', 7.00, 4.20, 1.00, 'GTI', 3.00, 'B', 1.00, 'LS', 3.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (249, ' 42.112.024.0.2 ', 'BINONG III ', 7.00, 6.00, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (250, ' 42.078.001.0.11 ', 'GURU BANGKOL ', 7.10, 7.70, 1.00, 'GTI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (251, ' 42.088.004.0 ', 'BELONGAS II ', 7.10, 5.70, 1.00, 'GTI', 4.00, 'B', 1.00, 'LS', 3.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (252, ' 42.119.003.1 ', 'LEWI DEWA ', 7.10, 6.30, 1.00, 'GTI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (253, ' 42.119.003.6 ', 'LEWI NTANA ', 7.10, 6.20, 1.00, 'GTI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 2.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (254, ' 42.094.013.0 ', 'GRENG ', 7.20, 4.00, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (255, ' 42.058.004.0.11 ', 'SERAYE I ', 7.30, 7.10, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TB', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (256, ' 42.121.011.0 ', 'SORI APU ', 7.30, 7.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (257, ' 42.100.004.0 ', 'SETANGGOR I ', 7.40, 3.50, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (258, ' 42.107.009.0 ', 'SEKONGKANG II ', 7.50, 7.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (259, ' 42.112.017.0.1 ', 'POLA II ', 7.50, 6.50, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (260, ' 42.121.012.0 ', 'SORI BANTA I ', 7.50, 4.70, 1.00, 'GTI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (261, ' 42.121.014.0 ', 'SORI SANCARA ', 7.50, 4.70, 1.00, 'GTI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (262, ' 42.112.025.0.2 ', 'BINONG IV ', 7.50, 6.80, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (263, ' 42.112.014.0.2 ', 'LEDANG XII ', 7.70, 6.40, 1.00, 'ETI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (264, ' 42.068.001.0.11 ', 'TL. SAYANG ', 7.70, 6.30, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (265, ' 42.083.005.3 ', 'BABILE ', 7.70, 6.80, 1.00, 'GTI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (266, ' 42.094.011.0 ', 'KEDATU ', 7.80, 4.50, 1.00, 'ETI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (267, ' 42.058.003.0.11 ', 'PESONGORAN ', 7.80, 7.50, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (268, ' 42.121.010.0 ', 'KAMOSO ', 7.80, 4.50, 1.00, 'GTI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (269, ' 42.112.011.0.2 ', 'KEMANG KUNING ', 7.90, 7.00, 1.00, 'GTI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (270, ' 42.113.011.0 ', 'RANAN ', 8.00, 0.00, 4.00, 'BTI', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (271, ' 42.112.073.0.2 ', 'KESI ', 8.00, 6.00, 1.00, 'ETI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (272, ' 42.121.004.0 ', 'NIPA I ', 8.00, 6.30, 1.00, 'ETI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (273, ' 42.058.001.0.11 ', 'BERNYOK ', 8.00, 6.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (274, ' 42.083.006.0 ', 'LONGKANG ', 8.00, 4.70, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (275, ' 42.101.001.0 ', 'KOKOK SEPANG ', 8.00, 6.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (276, ' 42.107.010.0 ', 'SEKONGKANG III ', 8.00, 7.70, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (277, ' 42.112.031.0.2 ', 'MELUNG I ', 8.00, 6.00, 2.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (278, ' 42.112.032.0.2 ', 'MELUNG II ', 8.00, 6.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (279, ' 42.112.034.0.2 ', 'KOMAS II ', 8.00, 7.50, 2.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (280, ' 42.112.035.0.2 ', 'KOMAS III ', 8.00, 7.50, 1.00, 'GTI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 2.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (281, ' 42.112.052.0.2 ', 'AIR MIRA ', 8.00, 6.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (282, ' 42.119.004.0 ', 'BAJO ', 8.00, 6.00, 1.00, 'GTI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (283, ' 42.121.011.6 ', 'TUNDON  ', 8.00, 7.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (284, ' 42.121.001.0 ', 'SORI NDOLO ', 8.00, 4.40, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (285, ' 42.121.005.0 ', 'TALAGA ', 8.00, 4.30, 1.00, 'GTI', 3.00, 'B', 3.00, 'LS', 3.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (286, ' 42.123.010.0.2 ', 'RIMBA ', 8.00, 6.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (287, ' 42.123.023.0.3 ', 'MANGGE VI.1 ', 8.00, 4.50, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (288, ' 42.113.013.0 ', 'LELA MASE ', 8.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (289, ' 42.113.015.0 ', 'KELEBE ', 8.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (290, ' 42.113.017.0 ', 'JALET BRANG I ', 8.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (291, ' 42.113.007.0.1 ', 'SENDA ', 8.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (292, ' 42.113.009.0.1 ', 'SOSO\' BATU ', 8.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (293, ' 42.113.010.0.1 ', 'NOOK ', 8.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (294, ' 42.112.059.0.2 ', 'CADAS PISAK ', 8.10, 6.00, 1.00, 'ETI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (295, ' 42.086.002.0 ', 'BONGOR ', 8.10, 4.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (296, ' 42.112.071.0.2 ', 'PLAS I ', 8.10, 7.00, 1.00, 'GTI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (297, ' 42.117.007.0 ', 'NISA II ', 8.10, 6.80, 1.00, 'GTI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (298, ' 42.119.001.1 ', 'KENANGA II ', 8.10, 6.10, 1.00, 'GTI', 2.00, 'B', 1.00, 'LS', 2.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (299, ' 42.123.025.0.3 ', 'SUMI ', 8.10, 4.60, 1.00, 'GTI', 1.00, 'B', 2.00, 'LS', 3.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (300, ' 42.112.046.0.2 ', 'KOKAR WENA ', 8.10, 6.00, 1.00, 'PTI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 2.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (301, ' 42.112.030.0.2 ', 'TAWAR II ', 8.20, 6.60, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (302, ' 42.088.001.0 ', 'GUBUK BALI ', 8.40, 6.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'SU', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (303, ' 42.121.005.0 ', 'NIPA II ', 8.40, 6.00, 1.00, 'GTI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (304, ' 42.121.010.0 ', 'OI BOMBU ', 8.40, 4.80, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (305, ' 42.112.011.A.1 ', 'LITOK IIA ', 8.50, 4.00, 2.00, 'ETI', 2.00, 'B', 1.00, 'LS', 2.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (306, ' 42.112.055.0.2 ', 'GENTING I ', 8.50, 6.00, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (307, ' 42.123.023.0.3 ', 'MANGGE VI ', 8.50, 4.50, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (308, ' 42.112.015.0.2 ', 'LEDANG XIV ', 8.60, 6.40, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (309, ' 42.101.003.0 ', 'BATU SARUNG/M.BARIS II ', 8.70, 7.50, 1.00, 'ETI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (310, ' 42.101.003.2 ', 'MENANGA BARIS IV/GD. BARU ', 8.70, 6.40, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (311, ' 42.051.001.0.11 ', 'KALI NING ', 8.80, 7.70, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (312, ' 42.120.006.0 ', 'TANTE\'E ', 8.80, 4.70, 1.00, 'GTI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (313, ' 42.121.003.0.11 ', 'LELA ', 8.80, 6.00, 1.00, 'GTI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (314, ' 42.100.009.0 ', 'EMOT ', 8.90, 6.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (315, ' 42.091.011.0 ', 'MOYOT ', 9.00, 5.60, 2.00, 'ETI', 1.00, 'B', 2.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (316, ' 42.084.006.0 ', 'DS. BARU ', 9.00, 6.10, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (317, ' 42.111.003.0 ', 'Berare II ', 9.00, 4.00, 2.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (318, ' 42.112.012.1.1 ', 'LITOK IV ', 9.00, 7.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (319, ' 42.112.017.0.2 ', 'LEDANG XVI ', 9.00, 6.30, 1.00, 'GTI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (320, ' 42.121.013.0 ', 'SORI TENGGE ', 9.00, 4.20, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (321, ' 42.121.017.0 ', 'RABA WONTU ', 9.00, 4.20, 1.00, 'GTI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (322, ' 42.112.047.0.2 ', 'KENANGAS I ', 9.00, 6.00, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (323, ' 42.112.048.0.2 ', 'AIR TERJUN DARURAT ', 9.00, 5.50, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'LS', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (324, ' 42.121.025.0 ', 'SORI KOWO ', 9.10, 5.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (325, ' 42.122.004.0.1 ', 'NGGERU/DUNDU HEA ', 9.20, 6.50, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (326, ' 42.101.004.8 ', 'KALI BOKOR I ', 9.30, 6.40, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (327, ' 42.122.008.0.2 ', 'DANA ME\'E ', 9.40, 6.40, 1.00, 'GTI', 3.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (328, ' 42.122.006.0.1 ', 'DAE LAWARU ', 9.50, 6.30, 1.00, 'ETI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (329, ' 42.112.043.0.2 ', 'KOKAR LOBONG ', 9.50, 6.50, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (330, ' 42.101.008.0 ', 'KOKOK ANGET ', 9.80, 6.10, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (331, ' 42.112.011.B.1 ', 'LITOK IIB ', 9.80, 6.10, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (332, ' 42.121.007.0 ', 'SORI PETO ', 9.80, 4.70, 1.00, 'GTI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (333, ' 42.112.020.0.2 ', 'LEDANG XIX ', 9.90, 6.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (334, ' 42.087.006.5 ', 'LABU PETUNG I ', 10.00, 6.00, 2.00, 'ETI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (335, ' 42.082.004.0 ', 'EYAT MAYUNG ', 10.00, 10.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (336, ' 42.089.001.0 ', 'EYAT RUJAK ', 10.00, 6.00, 1.00, 'GTI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (337, ' 42.101.012.0 ', 'TENAU/BUNUT LEMPENG ', 10.00, 6.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (338, ' 42.101.010.0 ', 'SANDONGAN/KAHWA ', 10.00, 6.50, 1.00, 'GTI', 1.00, 'B', 2.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (339, ' 42.107.022.0 ', 'AIK GOAH I ', 10.00, 6.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (340, ' 42.108.052.1 ', 'TELONANG III ', 10.00, 6.00, 1.00, 'GTI', 2.00, 'B', 2.00, 'LS', 1.00, 'TA', 2.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (341, ' 42.108.056.0 ', 'BOIN JATI ', 10.00, 6.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 2.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (342, ' 42.108.061.0 ', 'MUMIL I ', 10.00, 6.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'SU', 1.00, 'T', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (343, ' 42.108.067.0 ', 'PETANI I ', 10.00, 6.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'SU', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (344, ' 42.110.001.0 ', 'RABERAS I ', 10.00, 6.30, 1.00, 'GTI', 1.00, 'B', 1.00, 'SU', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (345, ' 42.112.015.0.1 ', 'KOKAR ALI ', 10.00, 6.00, 1.00, 'GTI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (346, ' 42.112.016.0.1 ', 'KOKAR BALISU ', 10.00, 7.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (347, ' 42.116.066.0.1 ', 'SORI JATI II ', 10.00, 6.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (348, ' 42.118.021.0.3 ', 'SORI LIA ', 10.00, 4.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (349, ' 42.119.003.0 ', 'OIWONTU ', 10.00, 7.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (350, ' 42.121.002.0 ', 'SORI KELI ', 10.00, 5.40, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (351, ' 42.120.023.0 ', 'LERE IV ', 10.00, 4.50, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (352, ' 42.123.026.0.3 ', 'SUMI ', 10.00, 6.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'SU', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (353, ' 42.112.076.0.2 ', 'BOMONG ', 10.00, 6.50, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (354, ' 42.107.043.0 ', 'TATAR I ', 10.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (355, ' 42.108.060.0 ', 'TEBIL II ', 10.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (356, ' 42.113.019.0 ', 'JALET SELEBUK I ', 10.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (357, ' 42.113.008.0.1 ', 'PARALENG ', 10.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (358, ' 42.113.023.0.2 ', 'BRANG LEPU II ', 10.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (359, ' 42.113.037.0.2 ', 'BRANG BETINGGAL III ', 10.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (360, ' 42.113.052.0.2 ', 'KOKAR TAMPAR PISAK I ', 10.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (361, ' 42.113.053.0.2 ', 'KOKAR TAMPAR PISAK II ', 10.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (362, ' 42.113.063.0.2 ', 'BRANG TAMPAR DALAM III ', 10.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (363, ' 42.113.071.0.2 ', 'KOKAR ODE I ', 10.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (364, ' 42.113.074.0.2 ', 'KOKAR ODE IV ', 10.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (365, ' 42.113.079.0.2 ', 'KOKAR BATU BOLONG II ', 10.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (366, ' 42.113.081.0.2 ', 'KOKAR BATU BOLONG IV ', 10.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (367, ' 42.113.083.0.2 ', 'KOKAR ODEK II ', 10.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (368, ' 42.113.084.0.2 ', 'KOKAR ODEK III ', 10.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (369, ' 42.113.085.0.2 ', 'KOKAR ODEK IV ', 10.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (370, ' 42.113.088.0.2 ', 'KOKAR KAJAH II ', 10.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (371, ' 42.113.090.0.2 ', 'KOKAR IPIL ', 10.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (372, ' 42.113.097.0.2 ', 'KOKAR TERO I ', 10.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (373, ' 42.113.099.0.2 ', 'KOKAR MEJO ', 10.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (374, ' 42.118.025.0.3 ', 'SORI SOWA ', 10.00, 5.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (375, ' 42.118.026.0.3 ', 'SORI WONTU I ', 10.00, 5.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (376, ' 42.118.032.0.3 ', 'SORI LAMBE ', 10.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (377, ' 42.121.001.0.11 ', 'RANGGO  I ', 10.10, 4.70, 2.00, 'BTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (378, ' 42.121.014.0 ', 'SORI NANGA NAE ', 10.10, 4.70, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (379, ' 42.123.002.0.1 ', 'LAJU ', 10.10, 4.70, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (380, ' 42.117.006.0 ', 'NISA I ', 10.10, 6.30, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (381, ' 42.118.016.0.3 ', 'SARITA III ', 10.20, 4.30, 1.00, 'GTI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (382, ' 42.118.022.0.3 ', 'MORI ', 10.20, 4.70, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (383, ' 42.101.024.0 ', 'KOKO KEMANGI ', 10.30, 6.50, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (384, ' 42.107.008.0 ', 'SEKONGKANG I ', 10.50, 8.00, 1.00, 'GTI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 2.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (385, ' 42.120.002.1 ', 'LAKEY II ', 10.50, 4.80, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (386, ' 42.120.004.0 ', 'WADU NAE ', 10.50, 4.80, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (387, ' 42.121.007.0 ', 'AMBALAWI ', 10.50, 5.00, 1.00, 'GTI', 3.00, 'B', 1.00, 'LS', 1.00, 'TA', 2.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (388, ' 42.092.002.0.2 ', 'DASAN LEKONG ', 10.50, 9.40, 1.00, 'MBI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (389, ' 42.112.056.0.2 ', 'SAMPANG I ', 10.50, 6.50, 1.00, 'PTI', 3.00, 'B', 1.00, 'LS', 1.00, 'TA', 2.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (390, ' 42.112.001.B.1 ', 'BRANG BOAK B ', 10.60, 4.60, 2.00, 'ETI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (391, ' 42.116.065.0.1 ', 'SORI JATI I ', 10.60, 5.30, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (392, ' 42.100.007.0 ', 'MENGKONENG ', 10.70, 6.20, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (393, ' 42.109.003.0 ', 'SEMONGKAT II ', 10.70, 6.30, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (394, ' 42.120.005.0 ', 'SUPA ', 10.70, 4.70, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (395, ' 42.101.017.0 ', 'OBEL - OBEL ', 10.80, 6.30, 1.00, 'GTI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (396, ' 42.118.003.0.1 ', 'SORI LO ', 10.80, 6.40, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (397, ' 42.101.004.0 ', 'BELANTING ', 10.90, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (398, ' 42.082.005.0 ', 'JELANTIK II ', 11.00, 8.20, 1.00, 'GTI', 1.00, 'K', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (399, ' 42.108.072.0 ', 'BENDUNGAN ', 11.00, 6.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'SU', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (400, ' 42.115.008.0 ', 'LABANGKA II ', 11.00, 6.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (401, ' 42.122.003.0.1 ', 'SORI UMA ', 11.10, 6.40, 1.00, 'ETI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (402, ' 42.087.005.2 ', 'GILI NANGU ', 11.10, 6.60, 2.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (403, ' 42.101.018.0 ', 'LOKOK BELEK ', 11.30, 6.40, 1.00, 'GTI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (404, ' 42.125.001.0.11 ', 'KAWINDA ', 11.50, 5.60, 3.00, 'ETI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (405, ' 42.101.002.0 ', 'NANGKA I ', 11.50, 6.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (406, ' 42.101.003.0 ', 'NANGKA II ', 11.50, 6.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (407, ' 42.090.008.0 ', 'SERAPAN ', 11.60, 4.40, 3.00, 'ETI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (408, ' 42.058.002.0.11 ', 'TL. TENGAH ', 11.60, 6.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (409, ' 42.063.002.0.11 ', 'PESONGORAN ', 11.80, 8.50, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (410, ' 42.117.005.0 ', 'MPOLO ', 11.90, 6.20, 1.00, 'GTI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (411, ' 42.119.001.0 ', 'KENANGA I ', 11.90, 6.20, 1.00, 'GTI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (412, ' 42.087.002.B ', 'JELATENG B ', 12.00, 6.00, 1.00, 'GTI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (413, ' 42.101.002.0 ', 'POAK/MENANGA BARIS I ', 12.00, 6.50, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (414, ' 42.107.034.0 ', 'TABISU II ', 12.00, 6.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (415, ' 42.121.002.0.11 ', 'JATIWANGI ', 12.00, 5.50, 1.00, 'GTI', 3.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (416, ' 42.121.006.0 ', 'SORI WUWU ', 12.00, 7.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (417, ' 42.113.020.0 ', 'JALET SELEBUK II ', 12.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (418, ' 42.118.024.0.3 ', 'DIWU JARA ', 12.00, 5.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (419, ' 42.082.006.0 ', 'PUYUNG ', 12.10, 7.60, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (420, ' 42.118.018.0.3 ', 'SORI PUNTI ', 12.10, 6.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (421, ' 42.123.027.0.3 ', 'SORO II ', 12.10, 6.40, 1.00, 'GTI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (422, ' 42.083.002.0 ', 'KELEBUH ', 12.20, 6.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (423, ' 42.118.020.0.3 ', 'NOTI II ', 12.30, 4.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (424, ' 42.121.008.0 ', 'SORI MAWU ', 12.30, 5.20, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (425, ' 42.098.001.0.11 ', 'JURING ', 12.40, 7.40, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (426, ' 42.087.005.0 ', 'CEPING ', 12.50, 6.20, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (427, ' 42.087.008.0 ', 'TEMBOWONG ', 12.50, 4.10, 1.00, 'GTI', 3.00, 'B', 3.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (428, ' 42.108.066.0 ', 'TELANG/LIANG BAGIK ', 12.50, 6.50, 1.00, 'GTI', 1.00, 'B', 1.00, 'SU', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (429, ' 42.108.068.0 ', 'PETANI II/LIANG BUK ', 12.50, 6.50, 1.00, 'GTI', 1.00, 'B', 1.00, 'SU', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (430, ' 42.108.069.0 ', 'MOLONG ', 12.50, 6.50, 1.00, 'GTI', 1.00, 'B', 1.00, 'SU', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (431, ' 42.101.007.0 ', 'TIBU BELO ', 12.60, 6.30, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (432, ' 42.119.002.0 ', 'NGGEMBE ', 12.60, 6.20, 1.00, 'GTI', 2.00, 'B', 1.00, 'LS', 2.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (433, ' 42.118.002.0.1 ', 'MBUJU ', 12.70, 6.40, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (434, ' 42.094.009.0 ', 'DS. BAGIK ', 12.80, 4.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (435, ' 42.120.008.0 ', 'NANGA DORO II ', 12.80, 5.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (436, ' 42.100.008.0 ', 'TEBEK ', 12.90, 6.10, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (437, ' 42.115.004.0 ', 'UNTIR RENGA ', 12.90, 6.30, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (438, ' 42.082.002.0 ', 'PAKU KELING ', 13.00, 13.50, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (439, ' 42.088.008.0 ', 'BENGKANG ', 13.00, 4.10, 1.00, 'GTI', 3.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (440, ' 42.123.004.0.2 ', 'DORO O\'O II ', 13.00, 4.50, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (441, ' 42.126.002.0.11 ', 'SADIA ', 13.10, 8.50, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (442, ' 42.088.003.0 ', 'BELONGAS I ', 13.20, 6.30, 1.00, 'GBI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (443, ' 42.052.003.0.1 ', 'MEDAS ', 13.20, 6.70, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (444, ' 42.083.008.0 ', 'TIBUBELO ', 13.20, 7.60, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (445, ' 42.084.005.0 ', 'MENANGA PAOK ', 13.60, 5.30, 1.00, 'GTI', 1.00, 'B', 0.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (446, ' 42.112.002.0.2 ', 'LEDANG II (BALEMAN) ', 13.70, 6.40, 2.00, 'ETI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (447, ' 42.112.001.A.1 ', 'BRANG BOAK A ', 13.80, 6.50, 1.00, 'GTI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (448, ' 42.112.012.8.1 ', 'PEN BONYO ', 13.80, 6.40, 1.00, 'GTI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (449, ' 42.087.004.0 ', 'ELAK JURING ', 14.00, 6.50, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (450, ' 42.123.005.0.2 ', 'DORO O\'O III ', 14.10, 5.00, 3.00, 'BTI', 1.00, 'B', 0.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (451, ' 42.063.001.0.11 ', 'BUNGKARNO ', 14.20, 14.50, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TB', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (452, ' 42.112.009.0.1 ', 'UMA LANGKE ', 14.30, 6.30, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (453, ' 42.112.002.B.1 ', 'KOKAR KATOMPO B ', 14.50, 3.60, 2.00, 'ETI', 2.00, 'B', 1.00, 'LS', 3.00, 'TA', 2.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (454, ' 42.122.009.0.2 ', 'PARADO ', 14.50, 6.50, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (455, ' 42.080.003.0 ', 'DATAR ', 14.50, 10.50, 1.00, 'MBI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (456, ' 42.118.014.0.3 ', 'SARITA I ', 14.60, 3.90, 3.00, 'PTI', 3.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (457, ' 42.065.001.0.11 ', 'Abian Tubuh II ', 14.70, 13.70, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (458, ' 42.120.003.0 ', 'NCANGA ', 14.80, 4.70, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (459, ' 42.107.007.0 ', 'MALUK II ', 14.90, 6.50, 1.00, 'GTI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (460, ' 42.101.021.0 ', 'KALI POAK ', 15.00, 6.20, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (461, ' 42.108.050.0 ', 'MONE II ', 15.00, 6.00, 1.00, 'GTI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 2.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (462, ' 42.108.054.0 ', 'BINTUNG ', 15.00, 6.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (463, ' 42.108.057.0 ', 'BLENGKON/SINGKUK ', 15.00, 6.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (464, ' 42.108.063.0 ', 'MELAP/MENANGA KERIKIT ', 15.00, 6.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'SU', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (465, ' 42.108.065.0 ', 'AIK MAT ', 15.00, 6.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'SU', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (466, ' 42.121.012.1 ', 'SORI BANTA II ', 15.00, 4.80, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (467, ' 42.121.008.0 ', 'OI POU ', 15.00, 4.00, 4.00, 'PTI', 3.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (468, ' 42.107.030.8 ', 'TANAMAN III ', 15.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (469, ' 42.107.044.0 ', 'TATAR II ', 15.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (470, ' 42.108.055.0 ', 'TATAR ', 15.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (471, ' 42.108.058.0 ', 'GRANTA/TEBIL ', 15.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (472, ' 42.113.022.0 ', 'TIU BARU ', 15.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (473, ' 42.113.036.0.2 ', 'BRANG BETINGGAL II ', 15.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (474, ' 42.113.062.0.2 ', 'BRANG TAMPAR DALAM II ', 15.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (475, ' 42.113.078.0.2 ', 'KOKAR BATU BOLONG I ', 15.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (476, ' 42.113.089.0.2 ', 'KOKAR KAJAH III ', 15.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (477, ' 42.120.016.0 ', 'S A M A I ', 15.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (478, ' 42.116.075.0.1 ', 'DOROMBOLO IV/KAWINDA X ', 15.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (479, ' 42.116.077.0.1 ', 'DOROMBOLO VI/KAWINDA ', 15.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (480, ' 42.116.078.0.1 ', 'DOROMBOLO VII/KAWINDA ', 15.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (481, ' 42.116.080.0.1 ', 'OI MORI II ', 15.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (482, ' 42.116.082.0.1 ', 'KAWINDA ', 15.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (483, ' 42.116.084.0.2 ', 'PIONG I/PIONG VI ', 15.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (484, ' 42.116.090.0.2 ', 'PIONG VII/PIONG IB ', 15.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (485, ' 42.116.091.0.2 ', 'PIONG VIII/PIONG IA ', 15.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (486, ' 42.118.011.0.2 ', 'SAMPUNGU I ', 15.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (487, ' 42.118.029.0.3 ', 'SORI WONTU IV ', 15.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (488, ' 42.101.011.0 ', 'AIR SINTU ', 15.10, 6.30, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (489, ' 42.107.030.4 ', 'TANAMAN II ', 15.10, 6.50, 1.00, 'GTI', 3.00, 'B', 1.00, 'SU', 1.00, 'TA', 3.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (490, ' 42.101.005.0 ', 'SAMBELIA ', 15.20, 8.20, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (491, ' 42.107.023.0 ', 'AIK GOAH II ', 15.30, 6.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'SU', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (492, ' 42.120.020.0 ', 'LERE I ', 15.50, 4.70, 1.00, 'GTI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (493, ' 42.115.006.0 ', 'LABANGKA I ', 15.60, 6.50, 2.00, 'BTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (494, ' 42.115.003.0 ', 'PRUAK NELOKA ', 15.60, 6.30, 1.00, 'GTI', 3.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (495, ' 42.101.005.0 ', 'KALI BOKOR II ', 15.70, 6.30, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (496, ' 42.101.011.0 ', 'DAMB. KL. PASIRAN I ', 15.70, 6.30, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (497, ' 42.100.010.0 ', 'RATI ', 15.80, 4.10, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (498, ' 42.101.013.0 ', 'KALI MELEMPO ', 15.80, 6.50, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (499, ' 42.084.003.0 ', 'KOANG WAI ', 15.80, 5.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TB', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (500, ' 42.115.005.0 ', 'BRANG BARU ', 15.80, 6.30, 1.00, 'GTI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (501, ' 42.116.071.0.1 ', 'DOROMBOLO ', 15.80, 6.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'SU', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (502, ' 42.094.012.0 ', 'SONGGEN ', 15.90, 6.20, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (503, ' 42.083.001.0 ', 'GERANTUNG ', 16.00, 7.80, 3.00, 'ETI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (504, ' 42.120.026.0 ', 'TAHINAE II ', 16.00, 4.50, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (505, ' 42.120.029.0 ', 'TANAH AWU II ', 16.00, 4.50, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (506, ' 42.112.003.A.1 ', 'KOKAR LESANG A ', 16.20, 4.00, 2.00, 'ETI', 2.00, 'B', 1.00, 'LS', 2.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (507, ' 42.085.001.0 ', 'TIMBE DEWE ', 16.20, 6.20, 1.00, 'GTI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (508, ' 42.094.010.0 ', 'SANGGAR ', 16.20, 4.30, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (509, ' 42.112.004.0.1 ', 'KOKAR BALAI AIR ', 16.50, 7.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (510, ' 42.123.012.0.3 ', 'SORI MANGO ', 16.50, 6.50, 2.00, 'GTI', 1.00, 'B', 1.00, 'LS', 2.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (511, ' 42.101.001.0 ', 'GUMBANG ', 16.60, 7.90, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (512, ' 42.052.005.0.1 ', 'BENTEK ', 16.70, 7.60, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (513, ' 42.082.001.0 ', 'PLOWOK ', 16.70, 8.40, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (514, ' 42.112.002.A.1 ', 'KOKAR KATOMPO A ', 16.80, 7.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (515, ' 42.112.007.0.1 ', 'UMA BELO ', 16.90, 6.20, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (516, ' 42.116.074.0.1 ', 'DOROMBOLO III/KAWINDA ', 17.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (517, ' 42.118.027.0.3 ', 'SORI WONTU II ', 17.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (518, ' 42.069.001.B.11 ', 'BATU DAWE B ', 17.40, 6.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'SU', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (519, ' 42.101.009.0 ', 'KOKOK PANSOR ', 17.50, 6.30, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (520, ' 42.082.008.0.11 ', 'KOKOK DESA ', 17.70, 7.20, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (521, ' 42.098.002.0.12 ', 'BONDER ', 17.90, 5.90, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (522, ' 42.109.006.0 ', 'SETANGO ', 18.00, 6.40, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (523, ' 42.113.016.0 ', 'SELAMPONG ', 18.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (524, ' 42.113.021.0 ', 'LAMPUI I ', 18.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (525, ' 42.112.003.B.1 ', 'KOKAR LESANG B ', 18.70, 6.20, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (526, ' 42.112.013.0.2 ', 'LEDANG XI ', 19.10, 6.40, 1.00, 'GBI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (527, ' 42.066.002.0.11 ', 'SAYANG - SAYANG ', 19.60, 6.50, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (528, ' 42.098.001.0.12 ', 'SADE ', 19.60, 7.60, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (529, ' 42.121.015.0 ', 'TOLO MILA ', 19.70, 4.70, 2.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (530, ' 42.112.063.0.2 ', 'RONTONG II ', 19.80, 6.70, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (531, ' 42.108.071.0 ', 'KALBIR ', 20.00, 6.00, 1.00, 'GBJ', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (532, ' 42.091.010.0 ', 'RAMBANG ', 20.00, 8.70, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (533, ' 42.092.001.0.1 ', 'TOJANG ', 20.00, 8.10, 1.00, 'GTI', 2.00, 'B', 2.00, 'LS', 1.00, 'TA', 2.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (534, ' 42.107.024.0 ', 'AIK BETAK I ', 20.00, 6.30, 1.00, 'GTI', 2.00, 'B', 1.00, 'SU', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (535, ' 42.107.025.0 ', 'AIK BETAK II ', 20.00, 6.50, 1.00, 'GTI', 1.00, 'B', 1.00, 'SU', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (536, ' 42.121.012.0 ', 'SORI MANGO ', 20.00, 7.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (537, ' 42.107.031.0 ', 'PUNA I ', 20.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (538, ' 42.107.045.0 ', 'TATAR III ', 20.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (539, ' 42.108.059.0 ', 'TEBIL I ', 20.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (540, ' 42.113.012.0 ', 'LABANGKAR ', 20.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (541, ' 42.113.014.0 ', 'PAMULEN ', 20.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (542, ' 42.113.023.0.2 ', 'KOKAR LABANGKA 3 ', 20.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (543, ' 42.113.023.0.2 ', 'BRANG LEPU I ', 20.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (544, ' 42.113.029.0.2 ', 'KOKAR TAMPAR ODE II ', 20.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (545, ' 42.113.032.0.2 ', 'KOKAR JORENG I ', 20.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (546, ' 42.113.033.0.2 ', 'KOKAR JORENG II ', 20.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (547, ' 42.113.034.0.2 ', 'KOKAR JORENG II ', 20.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (548, ' 42.113.042.0.2 ', 'BRANG TAMPAR BAGIK II ', 20.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (549, ' 42.113.047.0.2 ', 'KOKAR AI PANAN ', 20.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (550, ' 42.113.048.0.2 ', 'KOKAR JUNG RUSAK I ', 20.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (551, ' 42.113.049.0.2 ', 'KOKAR JUNG RUSAK II ', 20.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (552, ' 42.113.050.0.2 ', 'KOKAR BARU I ', 20.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (553, ' 42.113.056.0.2 ', 'KOKAR BATU ANAR II ', 20.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (554, ' 42.113.059.0.2 ', 'KOKAR TAKAT REAK I ', 20.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (555, ' 42.113.080.0.2 ', 'KOKAR BATU BOLONG III ', 20.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (556, ' 42.113.087.0.2 ', 'KOKAR KAJAH I ', 20.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (557, ' 42.113.096.0.2 ', 'BRANG GELUMPANG II ', 20.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (558, ' 42.113.098.0.2 ', 'KOKAR TERO II ', 20.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (559, ' 42.113.100.0.2 ', 'KOKAR TERO III ', 20.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (560, ' 42.113.101.0.2 ', 'KOKAR IMO ', 20.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (561, ' 42.116.079.0.1 ', 'OI MORI I ', 20.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (562, ' 42.116.081.0.1 ', 'OI MORI III ', 20.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (563, ' 42.116.083.0.2 ', 'OI KETUPA ', 20.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (564, ' 42.116.085.0.2 ', 'PIONG II/PIONG V ', 20.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (565, ' 42.116.088.0.2 ', 'PIONG V/PIONG II ', 20.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (566, ' 42.118.008.0.2 ', 'SORI LUMBA ', 20.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (567, ' 42.118.028.0.3 ', 'SORI WONTU III ', 20.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (568, ' 42.125.002.0.11 ', 'SALO ', 20.10, 6.20, 4.00, 'BTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (569, ' 42.123.008.0.2 ', 'KONCA ', 20.30, 4.20, 2.00, 'GTI', 1.00, 'B', 2.00, 'LS', 3.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (570, ' 42.121.009.0 ', 'NANGA NDAWA ', 20.40, 6.00, 1.00, 'GBA', 1.00, 'B', 1.00, 'SU', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (571, ' 42.103.002.0 ', 'ORONG SEMAYE ', 20.60, 4.60, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (572, ' 42.122.007.0.2 ', 'SORI KARA  ', 20.60, 7.20, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (573, ' 42.103.003.0 ', 'ORONG SEBAU ', 20.70, 4.40, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (574, ' 42.115.007.0 ', 'MATA GELUNING ', 20.80, 6.00, 1.00, 'GTI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (575, ' 42.107.012.0 ', 'SINYUR I ', 20.90, 6.00, 1.00, 'GBL', 1.00, 'B', 1.00, 'SU', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (576, ' 42.069.001.A.11 ', 'BATU DAWE A ', 21.00, 6.00, 1.00, 'GBA', 1.00, 'B', 1.00, 'SU', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (577, ' 42.123.001.0.1 ', 'SIMPASAI ', 21.40, 6.00, 2.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (578, ' 42.110.002.0 ', 'RABERAS II ', 21.50, 6.20, 1.00, 'GTI', 1.00, 'B', 1.00, 'SU', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (579, ' 42.107.032.3 ', 'PUNA III ', 22.00, 6.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (580, ' 42.116.070.0.1 ', 'LABU BILI ', 22.00, 5.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (581, ' 42.090.007.0 ', 'SAGIK MATENG ', 22.30, 3.00, 3.00, 'ETI', 2.00, 'B', 3.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (582, ' 42.083.005.0 ', 'GANTI ', 23.40, 7.50, 2.00, 'GTI', 1.00, 'B', 2.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (583, ' 42.101.015.0 ', 'MENTERENG ', 23.40, 6.30, 2.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (584, ' 42.084.001.0 ', 'KEDOME ', 23.70, 6.00, 4.00, 'BTI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (585, ' 42.072.001.0.12 ', 'BATU DAWE ', 24.00, 7.20, 2.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (586, ' 42.121.006.0 ', 'TOLOLAI ', 24.00, 6.00, 2.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (587, ' 42.121.026.0 ', 'SORI NAE ', 24.00, 4.50, 2.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (588, ' 42.122.001.0.1 ', 'TENTE I ', 24.00, 7.90, 2.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (589, ' 42.126.003.0.11 ', 'SAMBI NAE ', 24.40, 12.20, 2.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (590, ' 42.101.004.3 ', 'SENGKURIK ', 25.00, 6.00, 5.00, 'BTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (591, ' 42.112.077.0.2 ', 'LUNYUK ', 25.00, 7.00, 1.00, 'ETI', 3.00, 'B', 1.00, 'SU', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (592, ' 42.074.001.0.11 ', 'KARANG SUKUN ', 25.00, 7.00, 1.00, 'GBA', 1.00, 'B', 1.00, 'SU', 1.00, 'SU', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (593, ' 42.082.009.0.11 ', 'SURABAYA ', 25.00, 6.30, 2.00, 'GBI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (594, ' 42.101.004.0 ', 'KURUBIAN ', 25.00, 6.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'SU', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (595, ' 42.107.030.0 ', 'TANAMAN I ', 25.00, 6.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (596, ' 42.107.033.0 ', 'TABISU ', 25.00, 6.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (597, ' 42.107.035.0 ', 'TABISU III ', 25.00, 6.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (598, ' 42.107.036.0 ', 'TABISU IV ', 25.00, 6.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (599, ' 42.107.037.0 ', 'TABISU V ', 25.00, 6.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (600, ' 42.107.039.0 ', 'AIK KERU I ', 25.00, 6.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (601, ' 42.107.040.0 ', 'AIK KERU II ', 25.00, 6.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (602, ' 42.108.049.0 ', 'MONE I ', 25.00, 6.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (603, ' 42.118.004.0.1 ', 'ENCA I ', 25.00, 7.00, 1.00, 'GTI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (604, ' 42.108.047.0 ', 'TERENG BODO ', 25.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (605, ' 42.108.052.0 ', 'TELONANG II ', 25.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (606, ' 42.113.030.0.2 ', 'KOKAR TAMPAR ODE II ', 25.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (607, ' 42.113.031.0.2 ', 'KOKAR TAMPAR ODE III ', 25.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (608, ' 42.113.044.0.2 ', 'KOKAR AIK MUMIL II ', 25.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (609, ' 42.113.058.0.2 ', 'KOKAR BURUK ', 25.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (610, ' 42.113.086.0.2 ', 'KOKAR RUKU ', 25.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (611, ' 42.113.093.0.2 ', 'KOKAR SEKADUNG I ', 25.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (612, ' 42.113.094.0.2 ', 'KOKAR SEKADUNG II ', 25.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (613, ' 42.120.015.0 ', 'L A M E A  ', 25.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (614, ' 42.120.018.0 ', 'SADIDI RANGGE I ', 25.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (615, ' 42.120.019.0 ', 'SADIDI RANGGE II ', 25.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (616, ' 42.116.086.0.2 ', 'PIONG III/PIONG IV ', 25.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (617, ' 42.116.087.0.2 ', 'PIONG IV/PIONG III ', 25.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (618, ' 42.118.009.0.2 ', 'SORI LAMPIUL ', 25.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (619, ' 42.118.034.0.3 ', 'SORI ENGGOSE ', 25.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (620, ' 42.118.035.0.3 ', 'SORI PONTE ', 25.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (621, ' 42.112.042.0.2 ', 'LIAN (MALAKE) ', 25.30, 6.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (622, ' 42.121.001.0 ', 'SORI KALELI ', 25.40, 6.00, 1.00, 'GBA', 1.00, 'B', 1.00, 'SU', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (623, ' 42.107.017.0 ', 'SINUR VI/BATU REA ', 25.40, 6.00, 1.00, 'GBL', 1.00, 'B', 1.00, 'LS', 1.00, 'T', 2.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (624, ' 42.113.004.0.1 ', 'NANGA POLA ', 25.50, 6.10, 1.00, 'GBL', 3.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (625, ' 42.083.003.0 ', 'MUJUR II ', 25.50, 7.00, 3.00, 'GTI', 2.00, 'B', 1.00, 'LS', 2.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (626, ' 42.116.068.0.1 ', 'KAWINDA NAE ', 25.60, 6.20, 1.00, 'GBL', 3.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (627, ' 42.116.069.0.1 ', 'SORI PANIHI ', 25.60, 6.20, 1.00, 'GBL', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (628, ' 42.115.009.0 ', 'SEKOKAT ', 25.60, 4.60, 1.00, 'GTI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (629, ' 42.057.001.B.11 ', 'PUNIA B ', 27.00, 4.60, 2.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (630, ' 42.083.007.0 ', 'PEMENDEM ', 27.40, 6.30, 2.00, 'GTI', 1.00, 'B', 2.00, 'LS', 1.00, 'TA', 2.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (631, ' 42.101.004.5 ', 'TIBU BOROK ', 27.50, 6.50, 5.00, 'BTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (632, ' 42.052.006.0.1 ', 'MENGGALA ', 27.50, 6.00, 2.00, 'GTI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (633, ' 42.120.027.0 ', 'TAHINAE III ', 28.00, 4.50, 2.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (634, ' 42.082.003.0 ', 'MENINTING AIK ', 28.90, 12.10, 1.00, 'GBA', 1.00, 'B', 1.00, 'SU', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (635, ' 42.093.002.0 ', 'PAOK PAMPANG ', 29.60, 7.30, 2.00, 'GTI', 2.00, 'B', 1.00, 'SU', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (636, ' 42.085.003.0 ', 'KORLEKO ', 29.80, 4.00, 9.00, 'PTI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (637, ' 42.108.053.0 ', 'SEPANG ', 30.00, 6.00, 1.00, 'GBJ', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (638, ' 42.108.064.0 ', 'LAMAR ', 30.00, 6.00, 1.00, 'GBJ', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (639, ' 42.108.070.0 ', 'EMANG ', 30.00, 6.00, 1.00, 'GBJ', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (640, ' 42.052.004.0.1 ', 'EYAT KEPOR ', 30.00, 6.00, 1.00, 'GBL', 2.00, 'B', 1.00, 'SU', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (641, ' 42.101.006.0 ', 'KALI PAKENDANGAN ', 30.00, 6.00, 1.00, 'GBL', 2.00, 'B', 1.00, 'SU', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (642, ' 42.091.012.0 ', 'MARONGGEK ', 30.00, 4.70, 2.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (643, ' 42.107.028.0 ', 'TABIUNG ', 30.00, 6.00, 1.00, 'GTI', 2.00, 'B', 1.00, 'SU', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (644, ' 42.120.010.0 ', 'MATITI ', 30.00, 7.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (645, ' 42.116.067.0.1 ', 'SORI BURA  ', 30.00, 6.00, 2.00, 'GTI', 1.00, 'B', 1.00, 'SU', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (646, ' 42.113.006.0.1 ', 'BIAU ', 30.00, 6.00, 1.00, 'RBR', 1.00, 'B', 1.00, 'SU', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (647, ' 42.120.009.0 ', 'NANGA DORO III ', 30.00, 7.00, 1.00, 'RBR', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (648, ' 42.120.014.0 ', 'TEROLULU III ', 30.00, 7.00, 1.00, 'RBR', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (649, ' 42.116.064.0.1 ', 'LB. KENANGA ', 30.00, 3.10, 1.00, 'RBR', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (650, ' 42.120.030.0 ', 'TANAH AWU III ', 30.00, 4.20, 1.00, 'RBS', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (651, ' 42.107.041.0 ', 'AIK KERU III ', 30.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (652, ' 42.108.062.0 ', 'MUMIL II ', 30.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (653, ' 42.113.018.0 ', 'JALET BRANG II ', 30.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (654, ' 42.120.012.0 ', 'TEROLULU I ', 30.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (655, ' 42.120.013.0 ', 'TEROLULU II ', 30.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (656, ' 42.120.017.0 ', 'S A M A II ', 30.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (657, ' 42.116.072.0.1 ', 'DOROMBOLO I/KAWINDA ', 30.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (658, ' 42.116.073.0.1 ', 'DOROMBOLO II/KAWINDA V ', 30.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (659, ' 42.118.033.0.3 ', 'SORI LUPUS ', 30.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (660, ' 42.107.011.0 ', 'SEKONGKANG IV ', 30.20, 4.10, 1.00, 'RBS', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 2.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (661, ' 42.112.010.0.1 ', 'KOKAR KASIO ', 30.30, 6.00, 1.00, 'GBA', 2.00, 'B', 1.00, 'SU', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (662, ' 42.107.029.0 ', 'BRUNUT ', 30.30, 6.10, 2.00, 'GTI', 3.00, 'B', 1.00, 'SU', 1.00, 'TA', 2.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (663, ' 42.090.002.0 ', 'AWANG ', 30.30, 4.10, 1.00, 'RBS', 2.00, 'B', 1.00, 'SU', 1.00, 'KA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (664, ' 42.090.003.0 ', 'PERAS ', 30.30, 4.10, 1.00, 'RBS', 2.00, 'B', 1.00, 'SU', 1.00, 'KA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (665, ' 42.121.003.0 ', 'AMADAREHO ', 30.50, 6.10, 1.00, 'GBA', 1.00, 'B', 1.00, 'TP', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (666, ' 42.118.001.0.1 ', 'KAMBU ', 30.50, 6.00, 1.00, 'RBB', 2.00, 'B', 1.00, 'TP', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (667, ' 42.113.002.0.1 ', 'LABANGKA IV ', 30.50, 4.20, 1.00, 'RBS', 3.00, 'B', 1.00, 'SU', 1.00, 'K', 3.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (668, ' 42.113.003.0.1 ', 'LABANGKA V ', 30.50, 4.20, 1.00, 'RBS', 3.00, 'B', 1.00, 'SU', 1.00, 'K', 3.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (669, ' 42.120.024.0 ', 'LERE V ', 30.50, 4.20, 1.00, 'RBS', 3.00, 'B', 1.00, 'LS', 1.00, 'K', 3.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (670, ' 42.057.001.A.11 ', 'PUNIA A ', 31.00, 6.00, 1.00, 'GBJ', 1.00, 'B', 1.00, 'SU', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (671, ' 42.052.001.0.11 ', 'Midang I ', 31.60, 7.50, 2.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (672, ' 42.066.001.0.11 ', 'SINDU ', 32.00, 7.00, 1.00, 'RBU', 2.00, 'B', 1.00, 'SU', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (673, ' 42.101.020.0 ', 'DAMB. KL RUNGGANG ', 32.50, 6.00, 6.00, 'BTI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (674, ' 42.115.002.0 ', 'SELANTE II ', 33.20, 6.40, 2.00, 'GTI', 2.00, 'B', 1.00, 'SU', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (675, ' 42.085.004.0 ', 'POH GADING ', 34.00, 6.00, 2.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (676, ' 42.054.001.0.11 ', 'KALI ANCAR  ', 34.20, 7.70, 3.00, 'GTI', 2.00, 'B', 1.00, 'SU', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (677, ' 42.090.006.0 ', 'MENANGA PELEPOK ', 34.20, 4.50, 5.00, 'PTI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 2.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (678, ' 42.107.042.0 ', 'NANGENE ', 35.00, 6.00, 1.00, 'GBJ', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (679, ' 42.118.010.0.2 ', 'SORI KENANGA ', 35.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (680, ' 42.118.012.0.2 ', 'SAMPUNGU II ', 35.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (681, ' 42.059.001.0.11 ', 'KR. BEDIL ', 35.30, 7.00, 1.00, 'GPI', 1.00, 'B', 1.00, 'SU', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (682, ' 42.062.001.0.11 ', 'BUNG HATTA ', 36.00, 7.30, 2.00, 'GTI', 1.00, 'B', 1.00, 'SU', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (683, ' 42.087.003.0 ', 'EMPOL ', 36.40, 3.60, 2.00, 'GTI', 2.00, 'B', 1.00, 'SU', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (684, ' 42.111.002.0 ', 'Berare I ', 37.50, 6.50, 2.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (685, ' 42.111.001.0 ', 'Brang Moyo ', 38.00, 6.50, 2.00, 'GTI', 1.00, 'B', 1.00, 'SU', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (686, ' 42.112.016.0.2 ', 'LEDANG XV ', 39.90, 6.90, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (687, ' 42.091.009.0 ', 'PALUNG ', 40.00, 5.20, 3.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (688, ' 42.108.051.0 ', 'TELONANG I ', 40.00, 6.00, 2.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (689, ' 42.122.005.0.1 ', 'PELA ', 40.00, 6.40, 2.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'AT', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (690, ' 42.101.006.0 ', 'KALI RAJAK ', 40.00, 6.00, 1.00, 'RBB', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (691, ' 42.107.026.0 ', 'AIK KANGKUNG ', 40.00, 6.00, 1.00, 'RBR', 2.00, 'B', 1.00, 'LL', 1.00, 'TA', 2.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (692, ' 42.108.048.0 ', 'LABEHE ', 40.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (693, ' 42.120.011.0 ', 'CEKUNGAN DALAM ', 40.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (694, ' 42.118.007.0.1 ', 'PATULA ', 41.60, 4.00, 2.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (695, ' 42.085.002.0 ', 'DS. GERES ', 41.80, 6.30, 2.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (696, ' 42.100.006.0 ', 'KELEBUH ', 42.00, 6.10, 2.00, 'GTI', 2.00, 'B', 1.00, 'SU', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (697, ' 42.052.002.0.1 ', 'MENINTING ', 43.90, 7.40, 3.00, 'GTI', 1.00, 'B', 1.00, 'SU', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (698, ' 42.056.001.B.11 ', 'UDAYANA II ', 45.00, 6.00, 3.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (699, ' 42.116.089.0.2 ', 'PONG VI/PIONG I ', 45.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (700, ' 42.056.001.A.11 ', 'UDAYANA I ', 45.20, 6.00, 3.00, 'GTI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (701, ' 42.110.003.0 ', 'TAHAN ', 45.20, 3.90, 3.00, 'GTI', 3.00, 'B', 1.00, 'SU', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (702, ' 42.112.018.0.1 ', 'BRANG PENEMUNG ', 45.70, 6.00, 1.00, 'RBR', 1.00, 'B', 1.00, 'SU', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (703, ' 42.087.008.0 ', 'PELANGAN ', 46.50, 6.50, 1.00, 'GTI', 3.00, 'B', 3.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (704, ' 42.107.038.0 ', 'TONGO LOKA ', 50.00, 6.00, 2.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (705, ' 42.112.021.0.2 ', 'LEDANG XX ', 50.00, 6.00, 1.00, 'PTI', 1.00, 'B', 1.00, 'SU', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (706, ' 42.044.010.0 ', 'HUU BESAR ', 50.00, 6.00, 1.00, 'RBA', 2.00, 'B', 1.00, 'SU', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (707, ' 42.113.005.0.1 ', 'SEBEKIL ', 50.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (708, ' 42.113.039.0.2 ', 'BRANG BETINGGAL V ', 50.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (709, ' 42.113.045.0.2 ', 'BRANG MUMIL III ', 50.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (710, ' 42.113.046.0.2 ', 'BRANG MUMIL IV ', 50.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (711, ' 42.113.055.0.2 ', 'BRANG BATU ANAR I ', 50.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (712, ' 42.113.060.0.2 ', 'BRANG TAKAT REAK II ', 50.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (713, ' 42.113.061.0.2 ', 'BRANG TAMPAR DALAM I ', 50.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (714, ' 42.113.064.0.2 ', 'BRANG TAMPAR DALAM IV ', 50.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (715, ' 42.113.065.0.2 ', 'BRANG KELIMUTU I ', 50.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (716, ' 42.113.066.0.2 ', 'BRANG KELIMUTU II ', 50.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (717, ' 42.113.067.0.2 ', 'BRANG KELIMUTU III ', 50.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (718, ' 42.113.068.0.2 ', 'BRANG KELIMUTU IV ', 50.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (719, ' 42.113.069.0.2 ', 'BRANG TRENG I ', 50.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (720, ' 42.113.070.0.2 ', 'BRANG TRENG II ', 50.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (721, ' 42.113.072.0.2 ', 'BRANG ODE II ', 50.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (722, ' 42.113.073.0.2 ', 'BRANG ODE III ', 50.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (723, ' 42.113.077.0.2 ', 'BRANG BATU BULAN II ', 50.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (724, ' 42.113.082.0.2 ', 'BRANG ODEK I ', 50.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (725, ' 42.113.095.0.2 ', 'BRANG GELUMPANG I ', 50.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (726, ' 42.120.007.0 ', 'NANGA DORO I ', 50.00, 6.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (727, ' 42.118.030.0.3 ', 'SORI WONTU V ', 50.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (728, ' 42.099.002.0 ', 'PENUJAK II ', 50.50, 6.00, 1.00, 'RBA', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (729, ' 42.084.002.0 ', 'SELAYAR ', 51.00, 6.00, 2.00, 'GTI', 1.00, 'B', 1.00, 'TP', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (730, ' 42.113.001.0.1 ', 'LABANGKA III ', 51.30, 6.00, 1.00, 'RBR', 3.00, 'B', 1.00, 'SU', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (731, ' 42.107.046.0 ', 'TATAR LOKA  ', 55.00, 6.00, 2.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (732, ' 42.107.021.0 ', 'SEJORONG ', 60.00, 6.00, 1.00, 'RBR', 2.00, 'B', 1.00, 'SU', 1.00, 'TA', 2.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (733, ' 42.113.026.0.2 ', 'KOKAR UDANG ', 60.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (734, ' 42.113.054.0.2 ', 'KOKAR TAMPAR PISAK III ', 60.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (735, ' 42.113.091.0.2 ', 'BRANG BUA ', 60.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (736, ' 42.116.076.0.1 ', 'DOROMBOLO V/KAWINDA ', 60.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (737, ' 42.053.001.A.11 ', 'KALI JANGKOK A ', 60.50, 7.40, 3.00, 'MBI', 1.00, 'B', 1.00, 'TP', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (738, ' 42.051.002.0.11 ', 'JANGKOK II ', 60.60, 6.20, 3.00, 'GTI', 1.00, 'B', 1.00, 'SU', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (739, ' 42.053.001.B.11 ', 'KALI JANGKOK B ', 61.00, 7.40, 3.00, 'MBI', 1.00, 'B', 1.00, 'TP', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (740, ' 42.120.022.0 ', 'LERE III ', 62.00, 4.20, 2.00, 'RBS', 3.00, 'B', 1.00, 'SU', 1.00, 'K', 3.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (741, ' 42.086.003.0 ', 'KESEJAHTERAAN ', 70.80, 4.90, 4.00, 'GTI', 2.00, 'B', 1.00, 'SU', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (742, ' 42.107.027.0 ', 'LABUHAN ', 76.90, 6.00, 2.00, 'RBR', 1.00, 'B', 1.00, 'SU', 1.00, 'TA', 2.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (743, ' 42.118.031.0.3 ', 'SORI SAI BESAR ', 80.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (744, ' 42.121.015.0 ', 'SORI TAWALI ', 84.00, 6.00, 2.00, 'RBA', 2.00, 'B', 1.00, 'SU', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (745, ' 42.086.001.0 ', 'KEMAKMURAN ', 87.00, 7.10, 2.00, 'RBA', 2.00, 'B', 1.00, 'SU', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (746, ' 42.107.032.0 ', 'PUNA II ', 90.00, 6.00, 2.00, 'RBL', 3.00, 'B', 1.00, 'SU', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (747, ' 42.109.001.0.11 ', 'BRANG BARA ', 92.50, 6.00, 2.00, 'RBA', 2.00, 'B', 1.00, 'SU', 1.00, 'TA', 2.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (748, ' 42.113.028.0.2 ', 'BRANG BORANG II ', 100.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (749, ' 42.113.035.0.2 ', 'BRANG BETINGGAL I ', 100.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (750, ' 42.113.040.0.2 ', 'BRANG GALUNI ', 100.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (751, ' 42.113.041.0.2 ', 'BRANG TAMPAR BAGIK I ', 100.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (752, ' 42.113.076.0.2 ', 'BRANG BATU BULAN I ', 100.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (753, ' 42.113.092.0.2 ', 'BRANG KAJAH IV ', 100.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (754, ' 42.101.022.0 ', 'BEBURUNG I ', 101.80, 6.50, 2.00, 'RBA', 1.00, 'B', 1.00, 'SU', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (755, ' 42.108.073.0 ', 'BRANG BAI ', 113.00, 6.00, 2.00, 'RBA', 2.00, 'B', 1.00, 'SU', 1.00, 'TA', 2.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (756, ' 42.113.057.0.2 ', 'BRANG BATU ANAR III ', 120.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (757, ' 42.113.027.0.2 ', 'KOKAR BORANG I ', 150.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (758, ' 42.113.043.0.2 ', 'BRANG AIK MUMIL I ', 150.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (759, ' 42.113.051.0.2 ', 'KOKAR BARU II ', 150.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (760, ' 42.101.023.0 ', 'BEBURUNG II ', 154.00, 6.10, 3.00, 'RBB', 4.00, 'B', 1.00, 'SU', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');
INSERT INTO `jembatan` VALUES (761, ' 42.113.038.0.2 ', 'BRANG BETINGGAL IV ', 200.00, 0.00, 1.00, 'WXX', 5.00, '0', 0.00, '0', 0.00, '0', 5.00, '', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-07-12 00:00:00', '2020-07-12 00:00:00');

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
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

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
) ENGINE = InnoDB AUTO_INCREMENT = 143 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

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
) ENGINE = InnoDB AUTO_INCREMENT = 386 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

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

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 24 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

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
-- Records of model_has_permissions
-- ----------------------------
INSERT INTO `model_has_permissions` VALUES (1, 'App\\Pengguna', 'asdf');
INSERT INTO `model_has_permissions` VALUES (2, 'App\\Pengguna', 'asdf');
INSERT INTO `model_has_permissions` VALUES (3, 'App\\Pengguna', 'asdf');
INSERT INTO `model_has_permissions` VALUES (4, 'App\\Pengguna', 'asdf');
INSERT INTO `model_has_permissions` VALUES (5, 'App\\Pengguna', 'asdf');
INSERT INTO `model_has_permissions` VALUES (6, 'App\\Pengguna', 'asdf');
INSERT INTO `model_has_permissions` VALUES (7, 'App\\Pengguna', 'asdf');
INSERT INTO `model_has_permissions` VALUES (8, 'App\\Pengguna', 'asdf');
INSERT INTO `model_has_permissions` VALUES (9, 'App\\Pengguna', 'asdf');
INSERT INTO `model_has_permissions` VALUES (10, 'App\\Pengguna', 'asdf');
INSERT INTO `model_has_permissions` VALUES (11, 'App\\Pengguna', 'asdf');
INSERT INTO `model_has_permissions` VALUES (12, 'App\\Pengguna', 'asdf');
INSERT INTO `model_has_permissions` VALUES (13, 'App\\Pengguna', 'asdf');
INSERT INTO `model_has_permissions` VALUES (1, 'App\\Pengguna', 'tes');
INSERT INTO `model_has_permissions` VALUES (2, 'App\\Pengguna', 'tes');
INSERT INTO `model_has_permissions` VALUES (3, 'App\\Pengguna', 'tes');
INSERT INTO `model_has_permissions` VALUES (14, 'App\\Pengguna', 'tes');
INSERT INTO `model_has_permissions` VALUES (15, 'App\\Pengguna', 'tes');
INSERT INTO `model_has_permissions` VALUES (16, 'App\\Pengguna', 'tes');

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
INSERT INTO `pengguna` VALUES ('admin', 'Administrator', '$2y$10$KdwMkM/05.9AYsd/n0n/8u5nBAa2EXVDtppyKavVhiG2yiOmgBr9.', NULL, 1, NULL, 'kcMvCpFk7bvavtFZHZPHZ65nkfw2AMXrZtgLXojFT7b2b1iPHFd39QySbX13', '2020-06-19 10:45:42', '2020-06-19 10:45:42', NULL);
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
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of permissions
-- ----------------------------
INSERT INTO `permissions` VALUES (1, 'dashboard', 'web', '2020-06-19 10:45:42', '2020-06-19 10:45:42');
INSERT INTO `permissions` VALUES (2, 'datamaster', 'web', '2020-06-19 10:45:42', '2020-06-19 10:45:42');
INSERT INTO `permissions` VALUES (3, 'tipekonstruksi', 'web', '2020-06-19 10:45:42', '2020-06-19 10:45:42');
INSERT INTO `permissions` VALUES (4, 'infrastruktur', 'web', '2020-06-19 10:45:43', '2020-06-19 10:45:43');
INSERT INTO `permissions` VALUES (5, 'bendungan', 'web', '2020-06-19 10:45:43', '2020-06-19 10:45:43');
INSERT INTO `permissions` VALUES (6, 'embung', 'web', '2020-06-19 10:45:43', '2020-06-19 10:45:43');
INSERT INTO `permissions` VALUES (7, 'sumur', 'web', '2020-06-19 10:45:43', '2020-06-19 10:45:43');
INSERT INTO `permissions` VALUES (8, 'isda', 'web', '2020-06-19 10:45:43', '2020-06-19 10:45:43');
INSERT INTO `permissions` VALUES (9, 'jalan', 'web', '2020-06-19 10:45:43', '2020-06-19 10:45:43');
INSERT INTO `permissions` VALUES (10, 'jembatan', 'web', '2020-06-19 10:45:43', '2020-06-19 10:45:43');
INSERT INTO `permissions` VALUES (11, 'jalandanjembatan', 'web', '2020-06-19 10:45:43', '2020-06-19 10:45:43');
INSERT INTO `permissions` VALUES (12, 'setup', 'web', '2020-06-19 10:45:43', '2020-06-19 10:45:43');
INSERT INTO `permissions` VALUES (13, 'pengguna', 'web', '2020-06-19 10:45:43', '2020-06-19 10:45:43');
INSERT INTO `permissions` VALUES (14, 'wilayah', 'web', '2020-06-19 10:45:43', '2020-06-19 10:45:43');
INSERT INTO `permissions` VALUES (15, 'kabupatenkota', 'web', '2020-06-19 10:45:43', '2020-06-19 10:45:43');
INSERT INTO `permissions` VALUES (16, 'kecamatan', 'web', '2020-06-19 10:45:43', '2020-06-19 10:45:43');
INSERT INTO `permissions` VALUES (17, 'kelurahandesa', 'web', '2020-06-19 10:45:43', '2020-06-19 10:45:43');

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

SET FOREIGN_KEY_CHECKS = 1;
