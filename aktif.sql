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

 Date: 08/07/2020 06:13:49
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
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

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
  `daerah_irigasi_belum irigasi` decimal(15, 2) NULL DEFAULT 0.00,
  `daerah_irigasi_belum_sawah` decimal(15, 2) NULL DEFAULT 0.00,
  `daerah_irigasi_alih_fungsi` decimal(15, 2) NULL DEFAULT 0.00,
  `daerah_irigasi_keterangan` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `marker` point NULL,
  `polyline` linestring NULL,
  `polygon` polygon NULL,
  `kabupaten_kota_id` bigint(20) UNSIGNED NULL DEFAULT NULL,
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
INSERT INTO `daerah_irigasi` VALUES (880, 'Mataram', 1927, 697.00, 465.00, 0.00, 0.00, 232.00, '<1000', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
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
  `embung_data_teknik_ca_km` decimal(15, 2) NOT NULL DEFAULT 0.00,
  `embung_data_teknik_luasan_genangan` decimal(15, 2) NOT NULL DEFAULT 0.00,
  `embung_data_teknik_tipe_konstruksi` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `embung_data_teknik_volume` decimal(15, 2) NOT NULL DEFAULT 0.00,
  `embung_data_teknik_l` decimal(15, 2) NOT NULL DEFAULT 0.00,
  `embung_data_teknik_h` decimal(15, 2) NOT NULL DEFAULT 0.00,
  `embung_lebar_spillway` decimal(15, 2) NOT NULL DEFAULT 0.00,
  `embung_fungsi_irigasi` decimal(15, 2) NOT NULL DEFAULT 0.00,
  `embung_fungsi_ternak` decimal(15, 2) NOT NULL DEFAULT 0.00,
  `embung_fungsi_air_baku` decimal(15, 2) NOT NULL DEFAULT 0.00,
  `embung_fungsi_pltm` decimal(15, 2) NOT NULL DEFAULT 0.00,
  `embung_tipe_keterangan` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `marker` point NULL,
  `polyline` linestring NULL,
  `polygon` polygon NULL,
  `kelurahan_desa_id` bigint(20) UNSIGNED NULL DEFAULT NULL,
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
INSERT INTO `embung` VALUES (9, 'Embung Telekong I', 1996, 231997485.00, 0.75, 2.50, 'Timb Tanah ', 45000.00, 97.00, 10.00, 10.00, 5.00, 52.00, 72.00, 0.00, 'tidak ada saluran', NULL, NULL, NULL, NULL, 'admin', '2020-07-07 08:00:00', '2020-07-07 08:00:00');
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
) ENGINE = InnoDB AUTO_INCREMENT = 111 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of jalan
-- ----------------------------
INSERT INTO `jalan` VALUES (3, '050', '11.K', 'Jln.  Terminal Mandalika (Bertais - Sweta)', 1.70, 1.70, NULL, '2 X 6 ', 1.70, NULL, 0.00, 0.00, 1.35, 79.41, 0.15, 8.82, 0.10, 5.88, 0.10, 5.88, '0', 'N', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (4, '051', '11.K', 'Jln. DR. Sutomo/Mataram - Rembiga', 2.39, NULL, 2.39, '6', 2.39, NULL, 0.00, 0.00, 2.39, 100.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '0', 'N', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (5, '052', '11.K', 'Jln. DR. Wahidin (Bts. Kota)', 0.70, 0.70, NULL, '6', 0.70, NULL, 0.00, 0.00, 0.70, 100.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '0', 'N', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (6, '053', '11.K', 'Jln. Yos Sudarso', 0.85, NULL, 0.85, '9', 0.85, NULL, 0.00, 0.00, 0.05, 5.88, 0.80, 94.12, 0.00, 0.00, 0.00, 0.00, '0', 'N', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (7, '053', '12.K', 'Jln. Langko', 2.30, NULL, 2.30, '9', 2.30, NULL, 0.00, 0.00, 0.22, 9.57, 2.08, 90.43, 0.00, 0.00, 0.00, 0.00, '0', 'N', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (8, '054', '11.K', 'Jln. Pejanggik', 3.15, NULL, 3.15, '9', 3.15, NULL, 0.00, 0.00, 2.65, 84.13, 0.50, 15.87, 0.00, 0.00, 0.00, 0.00, '0', 'N', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (9, '055', '11.K', 'Jln. Selaparang', 2.25, NULL, 2.25, '9', 2.25, NULL, 0.00, 0.00, 2.25, 100.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '0', 'N', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (10, '056', '11.K', 'Jln. Udayana / Junction - Selaparang', 1.95, NULL, 1.95, '2 X 6 ', 1.95, NULL, 0.00, 0.00, 0.00, 0.00, 1.95, 100.00, 0.00, 0.00, 0.00, 0.00, '0', 'N', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (11, '057', '11.K', 'Jln. Erlangga', 1.58, NULL, 1.58, '2 X 6 ', 1.58, NULL, 0.00, 0.00, 1.58, 100.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '0', 'N', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (12, '058', '11.K', 'Jln. Gajah Mada', 3.55, NULL, 3.55, '2 X 6 ', 3.55, NULL, 0.00, 0.00, 3.55, 100.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '0', 'N', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (13, '059', '11.K', 'Jln. WR. Supratman', 0.65, NULL, 0.65, '6', 0.65, NULL, 0.00, 0.00, 0.65, 100.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '0', 'N', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (14, '059', '12.K', 'Jln. A. Rahman Hakim', 1.14, NULL, 1.14, '5.5', 1.14, NULL, 0.00, 0.00, 1.14, 100.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '0', 'N', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (15, '060', '11.K', 'Jln. RA. Kartini', 1.05, NULL, 1.05, '4.5', 1.05, NULL, 0.00, 0.00, 1.05, 100.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '0', 'N', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (16, '061', '11.K', 'Jln. Ade Irma Suryani', 3.00, NULL, 3.00, '4.5', 3.00, NULL, 0.00, 0.00, 0.03, 1.00, 2.97, 99.00, 0.00, 0.00, 0.00, 0.00, '0', 'N', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (17, '062', '11.K', 'Jln. Bung Hatta', 2.90, NULL, 2.90, '9 / 2 X 6', 2.90, NULL, 0.00, 0.00, 2.90, 100.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '0', 'N', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (18, '063', '11.K', 'Jln. Bung Karno', 4.35, NULL, 4.35, '2 X 6 ', 4.35, NULL, 0.00, 0.00, 4.35, 100.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '0', 'N', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (19, '064', '11.K', 'Jln. AA. Gede Ngurah', 0.85, NULL, 0.85, '9', 0.85, NULL, 0.00, 0.00, 0.85, 100.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '0', 'N', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (20, '065', '11.K', 'Jln. Prabu Rangka Sari', 2.00, NULL, 2.00, '9', 2.00, NULL, 0.00, 0.00, 1.40, 70.00, 0.20, 10.00, 0.40, 20.00, 0.00, 0.00, '0', 'N', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (21, '066', '11.K', 'Jln. Sultan Hasanudin', 0.65, NULL, 0.65, '7', 0.65, NULL, 0.00, 0.00, 0.65, 100.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '0', 'N', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (22, '067', '11.K', 'Jln. Imam Bonjol', 1.00, NULL, 1.00, '4.5', 1.00, NULL, 0.00, 0.00, 1.00, 100.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '0', 'N', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (23, '068', '11.K', 'Jln. Diponegoro (Bts. Kota)', 0.72, NULL, 0.72, '4.5', 0.72, NULL, 0.00, 0.00, 0.72, 100.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '0', 'N', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (24, '069', '11.K', 'Jln. Majapahit', 3.05, NULL, 3.05, '2 X 6 ', 3.05, NULL, 0.00, 0.00, 3.05, 100.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '0', 'N', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (25, '070', '11.K', 'Jln. Sriwijaya', 3.13, NULL, 3.13, '2 X 6 ', 3.13, NULL, 0.00, 0.00, 3.13, 100.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '0', 'N', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (26, '071', '11.K', 'Jln. Brawijaya', 1.93, NULL, 1.93, '9', 1.93, NULL, 0.00, 0.00, 1.93, 100.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '0', 'N', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (27, '072', '11.K', 'Jln. R. Suprapto', 0.75, NULL, 0.75, '6', 0.75, NULL, 0.00, 0.00, 0.00, 0.00, 0.05, 6.67, 0.70, 93.33, 0.00, 0.00, '0', 'N', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (28, '072', '12.K', 'Jln. Panji Tilar Negara', 1.91, NULL, 1.91, '2 X 6 ', 1.91, NULL, 0.00, 0.00, 0.00, 0.00, 1.91, 100.00, 0.00, 0.00, 0.00, 0.00, '0', 'N', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (29, '073', '11.K', 'Jln. Pendidikan', 1.57, NULL, 1.57, '6', 1.57, NULL, 0.00, 0.00, 0.00, 0.00, 1.57, 100.00, 0.00, 0.00, 0.00, 0.00, '0', 'N', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (30, '074', '11.K', 'Jln. Caturwarga', 1.90, NULL, 1.90, '6', 1.90, NULL, 0.00, 0.00, 0.00, 0.00, 1.90, 100.00, 0.00, 0.00, 0.00, 0.00, '0', 'N', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (31, '075', '11.K', 'Jln. Panca Usaha', 1.35, NULL, 1.35, '9', 1.35, NULL, 0.00, 0.00, 1.35, 100.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '0', 'N', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (32, '076', '11.K', 'Jln. Tumpangsari', 1.20, NULL, 1.20, '4.5', 1.20, NULL, 0.00, 0.00, 0.00, 0.00, 0.30, 25.00, 0.00, 0.00, 0.90, 75.00, '0', 'N', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (33, '077', '11.K', 'Jln. Sultan Salahudin', 1.10, NULL, 1.10, '4.5', 1.10, NULL, 0.00, 0.00, 1.10, 100.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '0', 'N', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (34, '077', '12.K', 'Jln. Sultan Kaharudin', 1.85, NULL, 1.85, '4.5', 1.85, NULL, 0.00, 0.00, 1.85, 100.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '0', 'N', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (35, '078', '11.K', 'Jln. TGH. Bangkol', 1.72, NULL, 1.72, '4.5', 1.72, NULL, 0.00, 0.00, 1.72, 100.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '0', 'N', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (36, '079', '11.K', 'Jln. I Gusti Ketut Jelantik Gosa', 1.70, NULL, 1.70, '4.5', 1.70, NULL, 0.00, 0.00, 1.70, 100.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '0', 'N', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (37, '052', '', 'Rembiga (Bts. Kota) - Pemenang', 21.64, 21.64, NULL, '4.5', 21.64, NULL, 0.00, 0.00, 5.36, 24.77, 14.78, 68.30, 1.50, 6.93, 0.00, 0.00, '0', 'N', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (38, '080', '', 'Bengkel - Kediri', 2.56, 2.56, NULL, '4.5', 2.56, NULL, 0.00, 0.00, 0.00, 0.00, 1.82, 71.09, 0.30, 11.72, 0.44, 17.19, '0', 'N', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (39, '081', '', 'Kediri - Rumak', 3.00, 3.00, NULL, '6', 3.00, NULL, 0.00, 0.00, 3.00, 100.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '0', 'N', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (40, '082', '', 'Kediri - Praya', 14.46, 14.46, NULL, '6', 14.46, NULL, 0.00, 0.00, 12.06, 83.40, 1.80, 12.45, 0.60, 4.15, 0.00, 0.00, '0', 'N', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (41, '086', '1', 'Mapak - Parampuan', 0.80, NULL, 0.80, '4.5', 0.80, NULL, 0.00, 0.00, 0.80, 100.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '0', 'N', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (42, '086', '2', 'Parampuan - Kebun Ayu - Lembar', 14.68, NULL, 14.68, '4.5', 14.68, NULL, 0.00, 0.00, 13.28, 90.46, 1.10, 7.49, 0.30, 2.04, 0.00, 0.00, '0', 'N', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (43, '087', '', 'Lembar - Sekotong - Pelangan', 41.00, NULL, 41.00, '6 / 3.5', 41.00, NULL, 0.00, 0.00, 23.09, 56.32, 17.51, 42.71, 0.40, 0.98, 0.00, 0.00, '0', 'N', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (44, '088', '', 'Pelangan - Sp. Pengantap', 36.38, NULL, 36.38, '4.5', 22.57, NULL, 0.00, 13.81, 6.20, 17.04, 13.57, 37.30, 2.80, 7.70, 13.81, 37.96, '0', 'N', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (45, '095', '', 'Kediri - Kuripan', 5.30, 5.30, NULL, '4.5', 5.30, NULL, 0.00, 0.00, 3.80, 71.70, 1.00, 18.87, 0.50, 9.43, 0.00, 0.00, '0', 'N', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (46, '096', '', 'Kuripan - Giri Menang', 2.80, 2.80, NULL, '4.5', 2.80, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 2.80, 100.00, '0', 'N', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (47, '096', '11.K', 'Jln. Soekarno Hatta (Gerung)', 1.80, 1.80, NULL, '2 X 6', 1.80, NULL, 0.00, 0.00, 0.00, 0.00, 1.80, 100.00, 0.00, 0.00, 0.00, 0.00, '0', 'N', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (48, '082', '11.K', 'Jln. Gajah Mada', 2.95, 2.95, NULL, '6', 2.95, NULL, 0.00, 0.00, 1.35, 45.76, 1.60, 54.24, 0.00, 0.00, 0.00, 0.00, '0', 'N', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (49, '083', '', 'Praya - Kruak ', 21.50, 21.50, NULL, '6', 21.50, NULL, 0.00, 0.00, 16.70, 77.67, 4.80, 22.33, 0.00, 0.00, 0.00, 0.00, '0', 'N', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (50, '089', '', 'Sp. Pengantap - Mt. Ajan - Kuta', 36.44, NULL, 36.44, '4.5', 36.44, NULL, 0.00, 0.00, 20.84, 57.19, 15.60, 42.81, 0.00, 0.00, 0.00, 0.00, '0', 'N', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (51, '090', '', 'Kuta - Kruak', 37.95, NULL, 37.95, '4.5', 37.95, NULL, 0.00, 0.00, 37.95, 100.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '0', 'N', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (52, '097', '', 'Mantang - Praya', 11.27, NULL, 11.27, '6', 11.27, NULL, 0.00, 0.00, 10.77, 95.56, 0.50, 4.44, 0.00, 0.00, 0.00, 0.00, '0', 'N', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (53, '097', '11.K', 'Jln. Basuki Rahmat', 1.00, NULL, 1.00, '6', 1.00, NULL, 0.00, 0.00, 1.00, 100.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '0', 'N', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (54, '098', '11.K', 'Wakul - Ketejer', 3.53, NULL, 3.53, '6', 3.53, NULL, 0.00, 0.00, 3.53, 100.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '0', 'P', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (55, '098', '12.K', 'Ketejer - Jontlak', 2.93, NULL, 2.93, '4.5', 2.93, NULL, 0.00, 0.00, 2.63, 89.76, 0.30, 10.24, 0.00, 0.00, 0.00, 0.00, '0', 'P', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (56, '099', '', 'Sp. Penujak - Tanah Awu', 4.46, NULL, 4.46, '4.5', 4.46, NULL, 0.00, 0.00, 1.86, 41.70, 1.10, 24.66, 0.10, 2.24, 1.40, 31.39, '0', 'P', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (57, '100', '', 'Penujak - Mt. Ajan', 23.00, NULL, 23.00, '4.5', 23.00, NULL, 0.00, 0.00, 16.00, 69.57, 7.00, 30.43, 0.00, 0.00, 0.00, 0.00, '0', 'N', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (58, '127', '', 'Batunyala - Sengkol', 9.20, NULL, 9.20, '3.5', 9.20, NULL, 0.00, 0.00, 9.20, 100.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '0', 'N', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (59, '084', '', 'Kruak - Lb. Haji', 15.05, 15.05, NULL, '4.5', 15.05, NULL, 0.00, 0.00, 15.05, 100.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '0', 'N', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (60, '085', '', 'Tanjung Geres - Pohgading - Pringgabaya', 15.23, 15.23, NULL, '4.5', 15.23, NULL, 0.00, 0.00, 14.33, 94.09, 0.90, 5.91, 0.00, 0.00, 0.00, 0.00, '0', 'N', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (61, '091', '', 'Kruak - Pancor', 22.77, NULL, 22.77, '4.5', 22.77, NULL, 0.00, 0.00, 20.37, 89.46, 1.20, 5.27, 1.20, 5.27, 0.00, 0.00, '0', 'N', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (62, '092', '', 'Masbagik - Pancor', 6.30, 6.30, NULL, '6', 6.30, NULL, 0.00, 0.00, 6.30, 100.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '0', 'N', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (63, '092', '12.K', 'Jln. TGH. Zainudin Abd. Majid (Pancor-Selong)', 3.45, 3.45, NULL, '2 X 6', 3.45, NULL, 0.00, 0.00, 3.45, 100.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '0', 'N', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (64, '092', '13.K', 'Jln. Cokroaminoto', 1.92, 1.92, NULL, '6', 1.92, NULL, 0.00, 0.00, 1.92, 100.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '0', 'N', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (65, '093', '', 'Selong - Lb. Haji', 5.45, 5.45, NULL, '6', 5.45, NULL, 0.00, 0.00, 0.00, 0.00, 5.45, 100.00, 0.00, 0.00, 0.00, 0.00, '0', 'N', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (66, '094', '', 'Pancor - Rempung', 4.41, NULL, 4.41, '4.5', 4.41, NULL, 0.00, 0.00, 4.41, 100.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '0', 'N', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (67, '101', '1', 'Lb.Lombok - Sambalia', 29.73, 29.73, NULL, '4.5', 29.73, NULL, 0.00, 0.00, 3.31, 11.13, 26.42, 88.87, 0.00, 0.00, 0.00, 0.00, '0', 'N', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (68, '101', '2', 'Sambalia - Ds. Biluk', 23.52, 23.52, NULL, '4.5', 23.52, NULL, 0.00, 0.00, 0.00, 0.00, 23.52, 100.00, 0.00, 0.00, 0.00, 0.00, '0', 'N', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (69, '102', '', 'Aikmal - Swela', 8.40, NULL, 8.40, '4.5', 8.40, NULL, 0.00, 0.00, 0.00, 0.00, 7.10, 84.52, 1.30, 15.48, 0.00, 0.00, '0', 'N', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (70, '103', '', 'Pringgabaya - Sembalun Bumbung', 26.90, NULL, 26.90, '4.5', 26.90, NULL, 0.00, 0.00, 6.10, 22.68, 20.80, 77.32, 0.00, 0.00, 0.00, 0.00, '0', 'N', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (71, '104', '11.K', 'Jln. RA. Kartini', 0.95, NULL, 0.95, '4.5', 0.95, NULL, 0.00, 0.00, 0.95, 100.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '0', 'P', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (72, '105', '11.K', 'Jln. Diponegoro', 2.80, NULL, 2.80, '4.5', 2.80, NULL, 0.00, 0.00, 1.82, 65.00, 0.00, 0.00, 0.00, 0.00, 0.98, 35.00, '0', 'P', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (73, '105', '12.K', 'Jln. Hasanudin 1', 0.43, NULL, 0.43, '4.5', 0.43, NULL, 0.00, 0.00, 0.43, 100.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '0', 'P', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (74, '105', '13.K', 'Jln. Abdullah', 0.31, NULL, 0.31, '4.5', 0.31, NULL, 0.00, 0.00, 0.31, 100.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '0', 'P', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (75, '106', '', 'Simpang Tano - Simpang Seteluk', 3.85, 3.85, NULL, '6', 3.85, NULL, 0.00, 0.00, 3.35, 87.01, 0.00, 0.00, 0.00, 0.00, 0.50, 12.99, '0', 'N', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (76, '107', '1', 'Benete - Sejorong', 30.44, 30.44, NULL, '4.5 / 6', 30.44, NULL, 0.00, 0.00, 26.84, 88.17, 3.30, 10.84, 0.00, 0.00, 0.30, 0.99, '0', 'N', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (77, '107', '2', 'Sejorong Tetar - Bts. KSB', 42.10, 42.10, NULL, '4.5 / 6', 32.89, NULL, 3.10, 6.11, 31.99, 75.99, 0.90, 2.14, 0.00, 0.00, 9.21, 21.88, '0', 'N', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (78, '108', '', 'Tetar (Bts. KSB) - Lunyuk', 32.40, 32.40, NULL, '4.5 / 6', 25.10, NULL, 7.30, 0.00, 0.30, 0.93, 23.50, 72.53, 1.30, 4.01, 7.30, 22.53, '0', 'N', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (79, '109', '', 'Sumbawa Besar - Semongkat - Batu Dulang', 24.90, NULL, 24.90, '4.5', 24.90, NULL, 0.00, 0.00, 13.50, 54.22, 11.40, 45.78, 0.00, 0.00, 0.00, 0.00, '0', 'N', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (80, '109', '11.K', 'Jln. Sultan Kaharudin', 1.75, NULL, 1.75, '4.5', 1.75, NULL, 0.00, 0.00, 1.36, 77.66, 0.26, 14.86, 0.13, 7.49, 0.00, 0.00, '0', 'N', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (81, '110', '', 'Sumbawa - Sebewe - Lua Air', 20.70, 20.70, NULL, '4.5', 17.00, NULL, 3.70, 0.00, 16.70, 80.68, 0.00, 0.00, 0.30, 1.45, 3.70, 17.87, '0', 'N', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (82, '110', '11.K', 'Jln. Sudirman', 1.00, NULL, 1.00, '4.5', 1.00, NULL, 0.00, 0.00, 1.00, 100.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '0', 'N', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (83, '111', '', 'Sp. Negara - Moyo - Lua Air', 25.86, 25.86, NULL, '4.5', 23.36, NULL, 0.00, 2.50, 17.66, 68.29, 5.00, 19.33, 0.70, 2.71, 2.50, 9.67, '0', 'N', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (84, '112', '1', 'Pal IV - Lenangguar', 35.37, 35.37, NULL, '4.5', 35.37, NULL, 0.00, 0.00, 14.72, 41.62, 19.35, 54.71, 0.90, 2.54, 0.40, 1.13, '0', 'N', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (85, '112', '2', 'Lenangguar - Lunyuk', 56.20, 56.20, NULL, '4.5', 54.95, NULL, 1.25, 0.00, 27.35, 48.67, 20.20, 35.94, 3.30, 5.87, 5.35, 9.52, '0', 'N', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (86, '113', '1', 'Lunyuk - Ropang', 45.00, NULL, 45.00, '', 0.00, NULL, 0.00, 45.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 45.00, 100.00, '0', 'N', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (87, '113', '2', 'Ropang - Sekokat', 59.40, NULL, 59.40, '4.5', 12.40, NULL, 0.00, 47.00, 10.10, 17.00, 2.30, 3.87, 0.00, 0.00, 47.00, 79.12, '0', 'N', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (88, '114', '', 'Sekokat - Bawi', 91.00, NULL, 91.00, '4.5', 6.00, NULL, 0.00, 85.00, 6.00, 6.59, 0.00, 0.00, 0.00, 0.00, 85.00, 93.41, '0', 'N', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (89, '115', '', 'Plampang - Sekokat', 13.60, NULL, 13.60, '4.5', 13.60, NULL, 0.00, 0.00, 8.70, 63.97, 1.90, 13.97, 3.00, 22.06, 0.00, 0.00, '0', 'N', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (90, '117', '', 'Simpang Kempo - Simpang Kore', 18.19, NULL, 18.19, '4.5', 18.19, NULL, 0.00, 0.00, 13.21, 72.62, 4.88, 26.83, 0.10, 0.55, 0.00, 0.00, '0', 'N', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (91, '118', '1', 'Simpang Kore - Kiwu', 29.05, 29.05, NULL, '4.5', 23.65, NULL, 5.40, 0.00, 20.35, 70.05, 3.30, 11.36, 0.00, 0.00, 5.40, 18.59, '0', 'N', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (92, '120', '', 'H u\' u - Parado', 40.24, 40.24, NULL, '4.5', 27.60, NULL, 6.54, 6.10, 16.00, 39.76, 0.00, 0.00, 0.00, 0.00, 24.24, 60.24, '0', 'N', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (93, '116', '1', 'Lb. Kenanga (Bts. Dompu) - Kawinda To\'i', 41.26, 41.26, NULL, '4.5', 41.26, NULL, 0.00, 0.00, 5.80, 14.06, 11.22, 27.19, 0.00, 0.00, 24.24, 58.75, '0', 'N', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (94, '116', '2', 'Kawinda Toi - Piong', 35.57, 35.57, NULL, '4.5', 21.37, NULL, 14.20, 0.00, 18.20, 51.17, 2.70, 7.59, 0.00, 0.00, 14.67, 41.24, '0', 'N', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (95, '116', '3', 'Piong - Sp. Kore', 14.75, 14.75, NULL, '4.5', 14.75, NULL, 0.00, 0.00, 0.00, 0.00, 6.58, 44.61, 2.30, 15.59, 5.87, 39.80, '0', 'N', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (96, '118', '2', 'Kiwu - Sampungu', 16.22, 16.22, NULL, '4.5', 0.00, NULL, 0.00, 16.22, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 16.22, 100.00, '0', 'N', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (97, '118', '3', 'Sampungu - Bajo', 41.60, 41.60, NULL, '4.5', 27.80, NULL, 0.00, 13.80, 5.60, 13.46, 20.40, 49.04, 1.80, 4.33, 13.80, 33.17, '0', 'N', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (98, '119', '', 'Sila - Bajo', 10.00, 10.00, NULL, '4.5', 10.00, NULL, 0.00, 0.00, 0.00, 0.00, 10.00, 100.00, 0.00, 0.00, 0.00, 0.00, '0', 'N', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (99, '121', '1', 'Bima - Tawali', 42.32, 42.32, NULL, '4.5', 42.32, NULL, 0.00, 0.00, 28.06, 66.30, 10.46, 24.72, 3.60, 8.51, 0.20, 0.47, '0', 'N', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (100, '121', '2', 'Tawali - Sape', 46.71, 46.71, NULL, '4.5', 46.71, NULL, 0.00, 0.00, 14.22, 30.43, 5.90, 12.63, 0.30, 0.64, 26.30, 56.29, '0', 'N', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (101, '122', '1', 'Talabiu - Simpasai', 16.50, NULL, 16.50, '4.5', 16.50, NULL, 0.00, 0.00, 12.10, 73.33, 4.30, 26.06, 0.00, 0.00, 0.10, 0.61, '0', 'N', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (102, '122', '2', 'Simpasai - Parado', 17.60, 17.60, NULL, '4.5', 17.60, NULL, 0.00, 0.00, 11.00, 62.50, 6.10, 34.66, 0.50, 2.84, 0.00, 0.00, '0', 'N', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (103, '123', '1', 'Simpasai - Wilamaci', 4.70, 4.70, NULL, '4.5', 4.70, NULL, 0.00, 0.00, 1.74, 37.02, 2.86, 60.85, 0.10, 2.13, 0.00, 0.00, '0', 'N', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (104, '123', '2', 'Wilamaci - Karumbu', 24.50, 24.50, NULL, '4.5', 24.50, NULL, 0.00, 0.00, 15.97, 65.18, 8.53, 34.82, 0.00, 0.00, 0.00, 0.00, '0', 'N', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (105, '123', '3', 'Karumbu - Sape', 37.00, 37.00, NULL, '4.5', 37.00, NULL, 0.00, 0.00, 8.30, 22.43, 17.10, 46.22, 0.40, 1.08, 11.20, 30.27, '0', 'N', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (106, '123', '4', 'Wilamaci - Parado', 16.30, NULL, 16.30, '4.5', 8.57, NULL, 0.00, 7.73, 8.37, 51.35, 0.20, 1.23, 0.00, 0.00, 7.73, 47.42, '0', 'P', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (107, '121', '11.K', 'Jln. Datuk Dibanta - Bts. Kota', 11.90, 11.90, NULL, '4.5', 11.90, NULL, 0.00, 0.00, 0.30, 2.52, 5.50, 46.22, 5.80, 48.74, 0.30, 2.52, '0', 'N', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (108, '124', '11.K', 'Jln. Hasanudin', 1.09, 1.09, NULL, '9', 1.09, NULL, 0.00, 0.00, 1.09, 100.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '0', 'N', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (109, '125', '11.K', 'Jln. Gajah Mada', 4.70, 4.70, NULL, '4.5', 4.70, NULL, 0.00, 0.00, 3.01, 64.04, 1.69, 35.96, 0.00, 0.00, 0.00, 0.00, '0', 'N', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');
INSERT INTO `jalan` VALUES (110, '126', '11.K', 'Jln. Gatot Subroto', 2.50, NULL, 2.50, '2 X 6', 2.50, NULL, 0.00, 0.00, 0.00, 0.00, 0.03, 1.20, 1.97, 78.80, 0.50, 20.00, '0', 'N', '', NULL, NULL, NULL, 'admin', '2020-07-08 08:00:00', '2020-07-08 08:00:00');

-- ----------------------------
-- Table structure for jembatan
-- ----------------------------
DROP TABLE IF EXISTS `jembatan`;
CREATE TABLE `jembatan`  (
  `jembatan_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `jembatan_nomor` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `jembatan_nama` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `jembatan_nama_ruas` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `jembatan_dimensi_panjang` decimal(15, 2) NOT NULL DEFAULT 0.00,
  `jembatan_dimensi_lebar` decimal(15, 2) NOT NULL DEFAULT 0.00,
  `jembatan_dimensi_bentang` decimal(15, 2) NOT NULL DEFAULT 0.00,
  `jembatan_bangunan_atas_tipe` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `jembatan_bangunan_atas_kondisi` decimal(15, 2) NOT NULL DEFAULT 0.00,
  `jembatan_bangunan_bawah_tipe` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `jembatan_bangunan_bawah_kondisi` decimal(15, 2) NOT NULL DEFAULT 0.00,
  `jembatan_bangunan_pondasi_tipe` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `jembatan_bangunan_pondasi_kondisi` decimal(15, 2) NOT NULL DEFAULT 0.00,
  `jembatan_bangunan_lantai_tipe` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `jembatan_bangunan_lantai_kondisi` decimal(15, 2) NOT NULL DEFAULT 0.00,
  `jembatan_keterangan` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
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
  CONSTRAINT `jembatan_kabupaten_kota_id_foreign` FOREIGN KEY (`kabupaten_kota_id`) REFERENCES `kabupaten_kota` (`kabupaten_kota_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `jembatan_pengguna_id_foreign` FOREIGN KEY (`pengguna_id`) REFERENCES `pengguna` (`pengguna_id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 762 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of jembatan
-- ----------------------------
INSERT INTO `jembatan` VALUES (1, '42.051.001.0.11 ', 'KALI NING ', 'JALAN DR. SUTOMO (MATARAM) ', 8.80, 7.70, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (2, '42.051.002.0.11 ', 'JANGKOK II ', 'JALAN DR. SUTOMO (MATARAM) ', 60.60, 6.20, 3.00, 'GTI', 1.00, 'B', 1.00, 'SU', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (3, '42.051.003.0.11 ', 'TELABAH BAWAK ', 'JALAN DR. SUTOMO (MATARAM) ', 3.60, 6.00, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (4, '42.052.000.2.11 ', 'Tl. Rembige ', 'JALAN DR. WAHIDIN (BTS. KOTA MATARAM) ', 3.60, 6.80, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (5, '42.052.001.0.11 ', 'Midang I ', 'JALAN DR. WAHIDIN (BTS. KOTA MATARAM) ', 31.60, 7.50, 2.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (6, '42.053.001.A.11 ', 'KALI JANGKOK A ', 'JALAN YOS SUDARSO (MATARAM) ', 60.50, 7.40, 3.00, 'MBI', 1.00, 'B', 1.00, 'TP', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (7, '42.053.001.B.11 ', 'KALI JANGKOK B ', 'JALAN YOS SUDARSO (MATARAM) ', 61.00, 7.40, 3.00, 'MBI', 1.00, 'B', 1.00, 'TP', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (8, '42.053.000.2.12 ', 'TL. NING ', 'JALAN LANGKO (MATARAM) ', 4.00, 7.50, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (9, '42.054.001.0.11 ', 'KALI ANCAR  ', 'JALAN PEJANGGIK (MATARAM) ', 34.20, 7.70, 3.00, 'GTI', 2.00, 'B', 1.00, 'SU', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (10, '42.054.002.0.11 ', 'KARANG JANGKONG ', 'JALAN PEJANGGIK (MATARAM) ', 3.00, 10.00, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (11, '42.056.001.A.11 ', 'UDAYANA I ', 'JALAN UDAYANA (MATARAM) ', 45.20, 6.00, 3.00, 'GTI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (12, '42.056.001.B.11 ', 'UDAYANA II ', 'JALAN UDAYANA (MATARAM) ', 45.00, 6.00, 3.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (13, '42.057.001.A.11 ', 'PUNIA A ', 'JALAN ERLANGGA (MATARAM) ', 31.00, 6.00, 1.00, 'GBJ', 1.00, 'B', 1.00, 'SU', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (14, '42.057.001.B.11 ', 'PUNIA B ', 'JALAN ERLANGGA (MATARAM) ', 27.00, 4.60, 2.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (15, '42.058.001.0.11 ', 'BERNYOK ', 'JALAN GAJAH MADA (MATARAM) ', 8.00, 6.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (16, '42.058.002.0.11 ', 'TL. TENGAH ', 'JALAN GAJAH MADA (MATARAM) ', 11.60, 6.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (17, '42.058.003.0.11 ', 'PESONGORAN ', 'JALAN GAJAH MADA (MATARAM) ', 7.80, 7.50, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (18, '42.058.004.0.11 ', 'SERAYE I ', 'JALAN GAJAH MADA (MATARAM) ', 7.30, 7.10, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TB', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (19, '42.059.001.0.11 ', 'KR. BEDIL ', 'JALAN WR. SUPRATMAN (MATARAM) ', 35.30, 7.00, 1.00, 'GPI', 1.00, 'B', 1.00, 'SU', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (20, '42.062.001.0.11 ', 'BUNG HATTA ', 'JALAN BUNG HATTA (MATARAM) ', 36.00, 7.30, 2.00, 'GTI', 1.00, 'B', 1.00, 'SU', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (21, '42.063.001.0.11 ', 'BUNGKARNO ', 'JALAN BUNG KARNO (MATARAM) ', 14.20, 14.50, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TB', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (22, '42.063.002.0.11 ', 'PESONGORAN ', 'JALAN BUNG KARNO (MATARAM) ', 11.80, 8.50, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (23, '42.063.003.0.11 ', 'PAGUTAN I ', 'JALAN BUNG KARNO (MATARAM) ', 7.00, 9.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (24, '42.063.004.0.11 ', 'PAGUTAN II ', 'JALAN BUNG KARNO (MATARAM) ', 7.00, 9.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (25, '42.065.000.4.11 ', 'Abian Tubuh I ', 'JALAN PRABU RANGKA SARI ', 3.70, 13.00, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (26, '42.065.001.0.11 ', 'Abian Tubuh II ', 'JALAN PRABU RANGKA SARI ', 14.70, 13.70, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (27, '42.065.002.0.11 ', 'Tl. Waker ', 'JALAN PRABU RANGKA SARI ', 3.00, 8.00, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (28, '42.066.001.0.11 ', 'SINDU ', 'JALAN SULTAN HASANUDIN (MATARAM) ', 32.00, 7.00, 1.00, 'RBU', 2.00, 'B', 1.00, 'SU', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (29, '42.066.002.0.11 ', 'SAYANG - SAYANG ', 'JALAN SULTAN HASANUDIN (MATARAM) ', 19.60, 6.50, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (30, '42.067.001.1.11 ', 'TL. SINDU ', 'JALAN IMAM BONJOL (MATARAM) ', 6.20, 6.30, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (31, '42.068.001.0.11 ', 'TL. SAYANG ', 'JALAN DIPONEGORO (BTS. KOTA MATARAM) ', 7.70, 6.30, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (32, '42.069.001.A.11 ', 'BATU DAWE A ', 'JALAN MAJAPAHIT (MATARAM) ', 21.00, 6.00, 1.00, 'GBA', 1.00, 'B', 1.00, 'SU', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (33, '42.069.001.B.11 ', 'BATU DAWE B ', 'JALAN MAJAPAHIT (MATARAM) ', 17.40, 6.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'SU', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (34, '42.072.001.0.12 ', 'BATU DAWE ', 'JALAN PANJI TILAR NEGARA (MATARAM) ', 24.00, 7.20, 2.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (35, '42.074.001.0.11 ', 'KARANG SUKUN ', 'JALAN CATUR WARGA (MATARAM) ', 25.00, 7.00, 1.00, 'GBA', 1.00, 'B', 1.00, 'SU', 1.00, 'SU', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (36, '42.078.001.0.11 ', 'GURU BANGKOL ', 'JALAN TGH. BANGKOL (MATARAM) ', 7.10, 7.70, 1.00, 'GTI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (37, '42.086.001.0 ', 'KEMAKMURAN ', 'PERAMPUAN - KEBON AYU - LEMBAR ', 87.00, 7.10, 2.00, 'RBA', 2.00, 'B', 1.00, 'SU', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (38, '42.086.002.0 ', 'BONGOR ', 'PERAMPUAN - KEBON AYU - LEMBAR ', 8.10, 4.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (39, '42.086.003.0 ', 'KESEJAHTERAAN ', 'JALAN TANJUNG KARANG - KEBON AYU - LEMBAR ', 70.80, 4.90, 4.00, 'GTI', 2.00, 'B', 1.00, 'SU', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (40, '42.052.001.1.1 ', 'TL. MIDANG ', 'JALAN REMBIGE (BTS. KOTA MATARAM) - PEMENANG ', 3.30, 9.00, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (41, '42.052.001.6.1 ', 'TL. BELENCONG ', 'JALAN REMBIGE (BTS. KOTA MATARAM) - PEMENANG ', 3.80, 6.70, 1.00, 'ETI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (42, '42.052.002.0.1 ', 'MENINTING ', 'JALAN REMBIGE (BTS. KOTA MATARAM) - PEMENANG ', 43.90, 7.40, 3.00, 'GTI', 1.00, 'B', 1.00, 'SU', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (43, '42.052.003.0.1 ', 'MEDAS ', 'JALAN REMBIGE (BTS. KOTA MATARAM) - PEMENANG ', 13.20, 6.70, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (44, '42.052.003.4.1 ', 'TL. WADON ', 'JALAN REMBIGE (BTS. KOTA MATARAM) - PEMENANG ', 4.20, 5.90, 1.00, 'ETI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (45, '42.052.004.0.1 ', 'EYAT KEPOR ', 'JALAN REMBIGE (BTS. KOTA MATARAM) - PEMENANG ', 30.00, 6.00, 1.00, 'GBL', 2.00, 'B', 1.00, 'SU', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (46, '42.052.004.1.1 ', 'TL. SIDEMEN ', 'JALAN REMBIGE (BTS. KOTA MATARAM) - PEMENANG ', 3.00, 8.40, 2.00, 'ATI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (47, '42.052.004.2.1 ', 'TL. BATU PENYU ', 'JALAN REMBIGE (BTS. KOTA MATARAM) - PEMENANG ', 4.00, 5.90, 1.00, 'ETI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (48, '42.052.004.3.1 ', 'TL. KEDONDONG ', 'JALAN REMBIGE (BTS. KOTA MATARAM) - PEMENANG ', 3.80, 6.60, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (49, '42.052.004.4.1 ', 'TL. LINGKOK MAS ', 'JALAN REMBIGE (BTS. KOTA MATARAM) - PEMENANG ', 2.80, 5.10, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (50, '42.052.004.5.1 ', 'TL. BATU TEPONG ', 'JALAN REMBIGE (BTS. KOTA MATARAM) - PEMENANG ', 3.50, 7.50, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (51, '42.052.004.6.1 ', 'EYAT PUNTIK ', 'JALAN REMBIGE (BTS. KOTA MATARAM) - PEMENANG ', 2.80, 6.90, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (52, '42.052.004.7.1 ', 'TL. PUSUK ', 'JALAN REMBIGE (BTS. KOTA MATARAM) - PEMENANG ', 3.00, 7.50, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (53, '42.052.004.8.1 ', 'TL. SEKEPAT ', 'JALAN REMBIGE (BTS. KOTA MATARAM) - PEMENANG ', 5.00, 6.20, 1.00, 'ETI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (54, '42.052.004.9.1 ', 'TL. EMBULAN ', 'JALAN REMBIGE (BTS. KOTA MATARAM) - PEMENANG ', 3.00, 7.30, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (55, '42.052.005.0.1 ', 'BENTEK ', 'JALAN REMBIGE (BTS. KOTA MATARAM) - PEMENANG ', 16.70, 7.60, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (56, '42.052.005.3.1 ', 'EYAT RATNAGA ', 'JALAN REMBIGE (BTS. KOTA MATARAM) - PEMENANG ', 3.10, 7.20, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (57, '42.052.006.0.1 ', 'MENGGALA ', 'JALAN REMBIGE (BTS. KOTA MATARAM) - PEMENANG ', 27.50, 6.00, 2.00, 'GTI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (58, '42.052.006.1.1 ', 'KOLOH ', 'JALAN REMBIGE (BTS. KOTA MATARAM) - PEMENANG ', 6.70, 6.00, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (59, '42.080.001.5 ', 'KALI TENGAH II ', 'JALAN BENGKEL - KEDIRI ', 7.00, 10.00, 1.00, 'GBI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (60, '42.080.001.9 ', 'BAGINDA ', 'JALAN BENGKEL - KEDIRI ', 3.40, 7.50, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (61, '42.080.002.0 ', 'REMENING ', 'JALAN BENGKEL - KEDIRI ', 7.00, 8.90, 1.00, 'ETI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (62, '42.080.003.0 ', 'DATAR ', 'JALAN BENGKEL - KEDIRI ', 14.50, 10.50, 1.00, 'MBI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (63, '42.082.001.0 ', 'PLOWOK ', 'RUAS JALAN KEDIRI - PRAYA ', 16.70, 8.40, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (64, '42.082.001.1 ', 'TELABAH BAWAH ', 'RUAS JALAN KEDIRI - PRAYA ', 2.40, 7.00, 1.00, 'PTI', 0.00, 'B', 0.00, 'LS', 0.00, 'TA', 0.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (65, '42.082.001.4 ', 'CENIDING ', 'RUAS JALAN KEDIRI - PRAYA ', 4.80, 7.00, 1.00, 'PTI', 0.00, 'B', 0.00, 'LS', 0.00, 'TA', 0.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (66, '42.082.001.7 ', 'KROYA ', 'RUAS JALAN KEDIRI - PRAYA ', 4.70, 6.00, 1.00, 'PTI', 0.00, 'B', 0.00, 'LS', 0.00, 'TA', 0.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (67, '42.082.002.0 ', 'PAKU KELING ', 'RUAS JALAN KEDIRI - PRAYA ', 13.00, 13.50, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (68, '42.082.002.1 ', 'LAPAN ELEK ', 'RUAS JALAN KEDIRI - PRAYA ', 3.30, 7.00, 1.00, 'PTI', 0.00, 'B', 0.00, 'LS', 0.00, 'TA', 0.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (69, '42.082.002.3 ', 'TELABAH PELULAN ', 'RUAS JALAN KEDIRI - PRAYA ', 3.40, 7.00, 1.00, 'GBI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (70, '42.082.003.0 ', 'MENINTING AIK ', 'RUAS JALAN KEDIRI - PRAYA ', 28.90, 12.10, 1.00, 'GBA', 1.00, 'B', 1.00, 'SU', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (71, '42.082.003.1 ', 'JURANG TEBANGO ', 'RUAS JALAN KEDIRI - PRAYA ', 4.00, 7.00, 1.00, 'PTI', 0.00, 'B', 0.00, 'LS', 0.00, 'TA', 0.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (72, '42.082.003.6 ', 'AIK ARE ', 'RUAS JALAN KEDIRI - PRAYA ', 4.60, 7.00, 1.00, 'PTI', 0.00, 'B', 0.00, 'LS', 0.00, 'TA', 0.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (73, '42.082.003.7 ', 'AIK AMPAT ', 'RUAS JALAN KEDIRI - PRAYA ', 3.30, 7.00, 1.00, 'PTI', 0.00, 'B', 0.00, 'LS', 0.00, 'TA', 0.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (74, '42.082.004.0 ', 'EYAT MAYUNG ', 'RUAS JALAN KEDIRI - PRAYA ', 10.00, 10.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (75, '42.082.004.2 ', 'JELANTIK I ', 'RUAS JALAN KEDIRI - PRAYA ', 4.50, 7.00, 1.00, 'PTI', 0.00, 'B', 0.00, 'LS', 0.00, 'TA', 0.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (76, '42.082.004.3 ', 'MONTONG LUMUT ', 'RUAS JALAN KEDIRI - PRAYA ', 3.40, 8.60, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (77, '42.082.005.0 ', 'JELANTIK II ', 'RUAS JALAN KEDIRI - PRAYA ', 11.00, 8.20, 1.00, 'GTI', 1.00, 'K', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (78, '42.082.005.6 ', 'NYEROT ', 'RUAS JALAN KEDIRI - PRAYA ', 4.00, 7.00, 1.00, 'PTI', 0.00, 'B', 0.00, 'LS', 0.00, 'TA', 0.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (79, '42.082.006.0 ', 'PUYUNG ', 'RUAS JALAN KEDIRI - PRAYA ', 12.10, 7.60, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (80, '42.087.001.0 ', 'KEBON TALO ', 'RUAS JALAN LEMBAR - SEKOTONG - PELANGAN ', 5.40, 5.50, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (81, '42.087.002.B ', 'JELATENG B ', 'RUAS JALAN LEMBAR - SEKOTONG - PELANGAN ', 12.00, 6.00, 1.00, 'GTI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (82, '42.087.003.0 ', 'EMPOL ', 'RUAS JALAN LEMBAR - SEKOTONG - PELANGAN ', 36.40, 3.60, 2.00, 'GTI', 2.00, 'B', 1.00, 'SU', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (83, '42.087.004.0 ', 'ELAK JURING ', 'RUAS JALAN LEMBAR - SEKOTONG - PELANGAN ', 14.00, 6.50, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (84, '42.087.005.0 ', 'CEPING ', 'RUAS JALAN LEMBAR - SEKOTONG - PELANGAN ', 12.50, 6.20, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (85, '42.087.005.2 ', 'GILI NANGU ', 'RUAS JALAN LEMBAR - SEKOTONG - PELANGAN ', 11.10, 6.60, 2.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (86, '42.087.006.0 ', 'PANDANAN ', 'RUAS JALAN LEMBAR - SEKOTONG - PELANGAN ', 6.50, 3.50, 1.00, 'PTI', 3.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (87, '42.087.006.5 ', 'LABU PETUNG I ', 'RUAS JALAN LEMBAR - SEKOTONG - PELANGAN ', 10.00, 6.00, 2.00, 'ETI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (88, '42.087.006.6 ', 'LABU PETUNG II ', 'RUAS JALAN LEMBAR - SEKOTONG - PELANGAN ', 4.20, 6.80, 1.00, 'ETI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (89, '42.087.007.0 ', 'TEMERANG ', 'RUAS JALAN LEMBAR - SEKOTONG - PELANGAN ', 6.50, 7.10, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (90, '42.087.008.0 ', 'TEMBOWONG ', 'RUAS JALAN LEMBAR - SEKOTONG - PELANGAN ', 12.50, 4.10, 1.00, 'GTI', 3.00, 'B', 3.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (91, '42.087.008.0 ', 'PELANGAN ', 'RUAS JALAN LEMBAR - SEKOTONG - PELANGAN ', 46.50, 6.50, 1.00, 'GTI', 3.00, 'B', 3.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (92, '42.088.001.0 ', 'GUBUK BALI ', 'RUAS JALAN PELANGAN - SP. PENGANTAP ', 8.40, 6.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'SU', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (93, '42.088.002.0 ', 'LEMBUT PETUNG ', 'RUAS JALAN PELANGAN - SP. PENGANTAP ', 6.10, 4.90, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (94, '42.088.003.0 ', 'BELONGAS I ', 'RUAS JALAN PELANGAN - SP. PENGANTAP ', 13.20, 6.30, 1.00, 'GBI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (95, '42.088.004.0 ', 'BELONGAS II ', 'RUAS JALAN PELANGAN - SP. PENGANTAP ', 7.10, 5.70, 1.00, 'GTI', 4.00, 'B', 1.00, 'LS', 3.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (96, '42.088.005.0 ', 'SEPI I ', 'RUAS JALAN PELANGAN - SP. PENGANTAP ', 6.00, 4.00, 1.00, 'PTI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (97, '42.088.006.0 ', 'SEPI II ', 'RUAS JALAN PELANGAN - SP. PENGANTAP ', 6.00, 6.00, 1.00, 'GTI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (98, '42.088.007.0 ', 'KEMANUK I ', 'RUAS JALAN PELANGAN - SP. PENGANTAP ', 6.00, 4.00, 1.00, 'PTI', 3.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (99, '42.088.007.1 ', 'KEMANUK II ', 'RUAS JALAN PELANGAN - SP. PENGANTAP ', 3.00, 4.00, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (100, '42.088.008.0 ', 'BENGKANG ', 'RUAS JALAN PELANGAN - SP. PENGANTAP ', 13.00, 4.10, 1.00, 'GTI', 3.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (101, '42.099.001.0 ', 'PENUJAK I ', 'RUAS JALAN PENUJAK - TANAH AWU ', 6.00, 6.10, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (102, '42.099.002.0 ', 'PENUJAK II ', 'RUAS JALAN PENUJAK - TANAH AWU ', 50.50, 6.00, 1.00, 'RBA', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (103, '42.099.003.0 ', 'SEMBAWI ', 'RUAS JALAN PENUJAK - TANAH AWU ', 4.00, 3.50, 2.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (104, '42.099.004.0 ', 'TELABAH PENGKANG ', 'RUAS JALAN PENUJAK - TANAH AWU ', 2.00, 5.00, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (105, '42.099.005.0 ', 'GOBANG ', 'RUAS JALAN PENUJAK - TANAH AWU ', 3.00, 4.30, 1.00, 'ETI', 1.00, 'B', 1.00, 'LS', 1.00, 'A', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (106, '42.082.007.7.11 ', 'BATU BUI ', 'JALAN GAJAH MADA (PRAYA) ', 3.60, 11.00, 1.00, 'PTI', 0.00, 'B', 0.00, 'LS', 0.00, 'TA', 0.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (107, '42.082.008.0.11 ', 'KOKOK DESA ', 'JALAN GAJAH MADA (PRAYA) ', 17.70, 7.20, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (108, '42.082.009.0.11 ', 'SURABAYA ', 'JALAN GAJAH MADA (PRAYA) ', 25.00, 6.30, 2.00, 'GBI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (109, '42.083.000.4 ', 'EYAT SURAK ', 'RUAS JALAN PRAYA - KRUAK ', 4.50, 7.00, 1.00, 'PTI', 0.00, 'B', 0.00, 'LS', 0.00, 'TA', 0.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (110, '42.083.001.0 ', 'GERANTUNG ', 'RUAS JALAN PRAYA - KRUAK ', 16.00, 7.80, 3.00, 'ETI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (111, '42.083.002.0 ', 'KELEBUH ', 'RUAS JALAN PRAYA - KRUAK ', 12.20, 6.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (112, '42.083.002.6 ', 'MUJUR I ', 'RUAS JALAN PRAYA - KRUAK ', 4.50, 5.00, 1.00, 'PTI', 0.00, 'B', 0.00, 'LS', 0.00, 'TA', 0.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (113, '42.083.003.0 ', 'MUJUR II ', 'RUAS JALAN PRAYA - KRUAK ', 25.50, 7.00, 3.00, 'GTI', 2.00, 'B', 1.00, 'LS', 2.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (114, '42.083.003.5 ', 'REMPUNG PUNTIK ', 'RUAS JALAN PRAYA - KRUAK ', 4.00, 7.00, 1.00, 'PTI', 0.00, 'B', 0.00, 'LS', 0.00, 'TA', 0.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (115, '42.083.004.0 ', 'PAMONDAH ', 'RUAS JALAN PRAYA - KRUAK ', 6.00, 6.50, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (116, '42.083.005.0 ', 'GANTI ', 'RUAS JALAN PRAYA - KRUAK ', 23.40, 7.50, 2.00, 'GTI', 1.00, 'B', 2.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (117, '42.083.005.3 ', 'BABILE ', 'RUAS JALAN PRAYA - KRUAK ', 7.70, 6.80, 1.00, 'GTI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (118, '42.083.006.0 ', 'LONGKANG ', 'RUAS JALAN PRAYA - KRUAK ', 8.00, 4.70, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (119, '42.083.006.8 ', 'TL. SWANGI ', 'RUAS JALAN PRAYA - KRUAK ', 3.00, 7.00, 1.00, 'ETI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (120, '42.083.006.9 ', 'TUNDAK ', 'RUAS JALAN PRAYA - KRUAK ', 5.80, 6.20, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (121, '42.083.007.0 ', 'PEMENDEM ', 'RUAS JALAN PRAYA - KRUAK ', 27.40, 6.30, 2.00, 'GTI', 1.00, 'B', 2.00, 'LS', 1.00, 'TA', 2.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (122, '42.083.008.0 ', 'TIBUBELO ', 'RUAS JALAN PRAYA - KRUAK ', 13.20, 7.60, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (123, '42.089.001.0 ', 'EYAT RUJAK ', 'RUAS JALAN SP. PENGANTAP - MT. AJAN - KUTA ', 10.00, 6.00, 1.00, 'GTI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (124, '42.090.001.0 ', 'KUTA ', 'RUAS JALAN KUTA - KRUAK ', 3.00, 5.00, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (125, '42.090.001.4 ', 'BALAK ', 'RUAS JALAN KUTA - KRUAK ', 4.00, 6.40, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (126, '42.090.001.5 ', 'SERNENG ', 'RUAS JALAN KUTA - KRUAK ', 5.00, 6.40, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (127, '42.090.001.6 ', 'PAKO ', 'RUAS JALAN KUTA - KRUAK ', 5.00, 4.60, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (128, '42.090.002.0 ', 'AWANG ', 'RUAS JALAN KUTA - KRUAK ', 30.30, 4.10, 1.00, 'RBS', 2.00, 'B', 1.00, 'SU', 1.00, 'KA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (129, '42.090.003.0 ', 'PERAS ', 'RUAS JALAN KUTA - KRUAK ', 30.30, 4.10, 1.00, 'RBS', 2.00, 'B', 1.00, 'SU', 1.00, 'KA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (130, '42.090.006.0 ', 'MENANGA PELEPOK ', 'RUAS JALAN KUTA - KRUAK ', 34.20, 4.50, 5.00, 'PTI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 2.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (131, '42.090.007.0 ', 'SAGIK MATENG ', 'RUAS JALAN KUTA - KRUAK ', 22.30, 3.00, 3.00, 'ETI', 2.00, 'B', 3.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (132, '42.090.008.0 ', 'SERAPAN ', 'RUAS JALAN KUTA - KRUAK ', 11.60, 4.40, 3.00, 'ETI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (133, '42.098.001.0.11 ', 'JURING ', 'RUAS JALAN WAKUL - KETEJER ', 12.40, 7.40, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (134, '42.098.001.0.12 ', 'SADE ', 'RUAS JALAN KETEJER - JONTLAK ', 19.60, 7.60, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (135, '42.098.002.0.12 ', 'BONDER ', 'RUAS JALAN KETEJER - JONTLAK ', 17.90, 5.90, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (136, '42.100.001.0 ', 'PENUJAK I ', 'RUAS JALAN MT. AJAN - PENUJAK ', 6.00, 3.80, 1.00, 'PTI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (137, '42.100.002.0 ', 'PENUJAK II ', 'RUAS JALAN MT. AJAN - PENUJAK ', 6.10, 3.70, 1.00, 'PTI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (138, '42.100.003.0 ', 'TL. PEDEK ', 'RUAS JALAN MT. AJAN - PENUJAK ', 6.00, 3.60, 1.00, 'PTI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (139, '42.100.004.0 ', 'SETANGGOR I ', 'RUAS JALAN MT. AJAN - PENUJAK ', 7.40, 3.50, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (140, '42.100.005.0 ', 'SETANGGOR II ', 'RUAS JALAN MT. AJAN - PENUJAK ', 4.80, 3.50, 2.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (141, '42.100.006.0 ', 'KELEBUH ', 'RUAS JALAN MT. AJAN - PENUJAK ', 42.00, 6.10, 2.00, 'GTI', 2.00, 'B', 1.00, 'SU', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (142, '42.100.007.0 ', 'MENGKONENG ', 'RUAS JALAN MT. AJAN - PENUJAK ', 10.70, 6.20, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (143, '42.100.008.0 ', 'TEBEK ', 'RUAS JALAN MT. AJAN - PENUJAK ', 12.90, 6.10, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (144, '42.100.009.0 ', 'EMOT ', 'RUAS JALAN MT. AJAN - PENUJAK ', 8.90, 6.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (145, '42.100.010.0 ', 'RATI ', 'RUAS JALAN MT. AJAN - PENUJAK ', 15.80, 4.10, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (146, '42.101.001.0 ', 'KOKOK SEPANG ', 'RUAS JALAN SAMBELIA - DS. BILUK ', 8.00, 6.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (147, '42.101.002.0 ', 'NANGKA I ', 'RUAS JALAN SAMBELIA - DS. BILUK ', 11.50, 6.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (148, '42.101.003.0 ', 'NANGKA II ', 'RUAS JALAN SAMBELIA - DS. BILUK ', 11.50, 6.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (149, '42.101.004.0 ', 'BELANTING ', 'RUAS JALAN SAMBELIA - DS. BILUK ', 10.90, 0.00, 1.00, 'WXX', 5.00, '0.00 ', 0.00, '0.00 ', 0.00, '0.00 ', 5.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (150, '42.101.004.8 ', 'KALI BOKOR I ', 'RUAS JALAN SAMBELIA - DS. BILUK ', 9.30, 6.40, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (151, '42.101.005.0 ', 'KALI BOKOR II ', 'RUAS JALAN SAMBELIA - DS. BILUK ', 15.70, 6.30, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (152, '42.101.006.0 ', 'KALI PAKENDANGAN ', 'RUAS JALAN SAMBELIA - DS. BILUK ', 30.00, 6.00, 1.00, 'GBL', 2.00, 'B', 1.00, 'SU', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (153, '42.101.007.0 ', 'PENENDEM I ', 'RUAS JALAN SAMBELIA - DS. BILUK ', 4.00, 5.40, 1.00, 'PTI', 2.00, 'B', 1.00, 'LS', 1.00, 'AT', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (154, '42.101.008.0 ', 'PENENDEM II ', 'RUAS JALAN SAMBELIA - DS. BILUK ', 5.80, 3.20, 1.00, 'PTI', 2.00, 'B', 1.00, 'LS', 1.00, 'AT', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (155, '42.101.009.0 ', 'PENENDEM III ', 'RUAS JALAN SAMBELIA - DS. BILUK ', 5.00, 3.20, 1.00, 'PTI', 2.00, 'B', 1.00, 'LS', 1.00, 'AT', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (156, '42.101.010.0 ', 'PENENDEM IV ', 'RUAS JALAN SAMBELIA - DS. BILUK ', 2.00, 6.20, 2.00, 'ATI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (157, '42.101.011.0 ', 'AIR SINTU ', 'RUAS JALAN SAMBELIA - DS. BILUK ', 15.10, 6.30, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (158, '42.101.012.0 ', 'TENAU/BUNUT LEMPENG ', 'RUAS JALAN SAMBELIA - DS. BILUK ', 10.00, 6.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (159, '42.101.013.0 ', 'KALI MELEMPO ', 'RUAS JALAN SAMBELIA - DS. BILUK ', 15.80, 6.50, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (160, '42.101.014.0 ', 'LENDANG RE ', 'RUAS JALAN SAMBELIA - DS. BILUK ', 5.40, 4.30, 1.00, 'PTI', 2.00, 'B', 1.00, 'LS', 0.00, 'AT', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (161, '42.101.015.0 ', 'MENTERENG ', 'RUAS JALAN SAMBELIA - DS. BILUK ', 23.40, 6.30, 2.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (162, '42.101.016.0 ', 'MENANGA BAWI ', 'RUAS JALAN SAMBELIA - DS. BILUK ', 5.30, 3.10, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (163, '42.101.017.0 ', 'OBEL - OBEL ', 'RUAS JALAN SAMBELIA - DS. BILUK ', 10.80, 6.30, 1.00, 'GTI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (164, '42.101.018.0 ', 'LOKOK BELEK ', 'RUAS JALAN SAMBELIA - DS. BILUK ', 11.30, 6.40, 1.00, 'GTI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (165, '42.101.019.0 ', 'KALI SUKUN ', 'RUAS JALAN SAMBELIA - DS. BILUK ', 3.40, 3.50, 1.00, 'PTI', 2.00, 'B', 1.00, 'LS', 0.00, 'AT', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (166, '42.101.020.0 ', 'DAMB. KL RUNGGANG ', 'RUAS JALAN SAMBELIA - DS. BILUK ', 32.50, 6.00, 6.00, 'BTI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (167, '42.101.021.0 ', 'KALI POAK ', 'RUAS JALAN SAMBELIA - DS. BILUK ', 15.00, 6.20, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (168, '42.101.022.0 ', 'BEBURUNG I ', 'RUAS JALAN SAMBELIA - DS. BILUK ', 101.80, 6.50, 2.00, 'RBA', 1.00, 'B', 1.00, 'SU', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (169, '42.101.023.0 ', 'BEBURUNG II ', 'RUAS JALAN SAMBELIA - DS. BILUK ', 154.00, 6.10, 3.00, 'RBB', 4.00, 'B', 1.00, 'SU', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (170, '42.101.024.0 ', 'KOKO KEMANGI ', 'RUAS JALAN SAMBELIA - DS. BILUK ', 10.30, 6.50, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (171, '42.101.025.0 ', 'JURANG BEBAI ', 'RUAS JALAN SAMBELIA - DS. BILUK ', 3.00, 6.40, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (172, '42.101.001.0 ', 'GUMBANG ', 'RUAS JALAN LAB. LOMBOK - SAMBELIA ', 16.60, 7.90, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (173, '42.101.002.0 ', 'POAK/MENANGA BARIS I ', 'RUAS JALAN LAB. LOMBOK - SAMBELIA ', 12.00, 6.50, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (174, '42.101.003.0 ', 'BATU SARUNG/M.BARIS II ', 'RUAS JALAN LAB. LOMBOK - SAMBELIA ', 8.70, 7.50, 1.00, 'ETI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (175, '42.101.003.1 ', 'MENANGA BARIS III/RAREP ', 'RUAS JALAN LAB. LOMBOK - SAMBELIA ', 6.00, 6.00, 1.00, 'ETI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (176, '42.101.003.2 ', 'MENANGA BARIS IV/GD. BARU ', 'RUAS JALAN LAB. LOMBOK - SAMBELIA ', 8.70, 6.40, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (177, '42.101.003.3 ', 'MENANGA BARIS V ', 'RUAS JALAN LAB. LOMBOK - SAMBELIA ', 6.90, 6.30, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (178, '42.101.003.8 ', 'LEPER ', 'RUAS JALAN LAB. LOMBOK - SAMBELIA ', 6.40, 9.00, 1.00, 'ETI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (179, '42.101.004.0 ', 'KURUBIAN ', 'RUAS JALAN LAB. LOMBOK - SAMBELIA ', 25.00, 6.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'SU', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (180, '42.101.004.2 ', 'PANDAK GUAR ', 'RUAS JALAN LAB. LOMBOK - SAMBELIA ', 6.00, 6.10, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (181, '42.101.004.3 ', 'SENGKURIK ', 'RUAS JALAN LAB. LOMBOK - SAMBELIA ', 25.00, 6.00, 5.00, 'BTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (182, '42.101.004.5 ', 'TIBU BOROK ', 'RUAS JALAN LAB. LOMBOK - SAMBELIA ', 27.50, 6.50, 5.00, 'BTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (183, '42.101.004.6 ', 'LABU PANDAN ', 'RUAS JALAN LAB. LOMBOK - SAMBELIA ', 6.90, 6.20, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (184, '42.101.005.0 ', 'SAMBELIA ', 'RUAS JALAN LAB. LOMBOK - SAMBELIA ', 15.20, 8.20, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (185, '42.101.006.0 ', 'KALI RAJAK ', 'RUAS JALAN LAB. LOMBOK - SAMBELIA ', 40.00, 6.00, 1.00, 'RBB', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (186, '42.101.007.0 ', 'TIBU BELO ', 'RUAS JALAN LAB. LOMBOK - SAMBELIA ', 12.60, 6.30, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (187, '42.101.008.0 ', 'KOKOK ANGET ', 'RUAS JALAN LAB. LOMBOK - SAMBELIA ', 9.80, 6.10, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (188, '42.101.009.0 ', 'KOKOK PANSOR ', 'RUAS JALAN LAB. LOMBOK - SAMBELIA ', 17.50, 6.30, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (189, '42.101.010.0 ', 'SANDONGAN/KAHWA ', 'RUAS JALAN LAB. LOMBOK - SAMBELIA ', 10.00, 6.50, 1.00, 'GTI', 1.00, 'B', 2.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (190, '42.101.011.0 ', 'DAMB. KL. PASIRAN I ', 'RUAS JALAN LAB. LOMBOK - SAMBELIA ', 15.70, 6.30, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (191, '42.101.012.0 ', 'DAMB. KL. PASIRAN II ', 'RUAS JALAN LAB. LOMBOK - SAMBELIA ', 6.00, 6.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (192, '42.084.001.0 ', 'KEDOME ', 'RUAS JALAN KRUAK - LB. HAJI ', 23.70, 6.00, 4.00, 'BTI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (193, '42.084.002.0 ', 'SELAYAR ', 'RUAS JALAN KRUAK - LB. HAJI ', 51.00, 6.00, 2.00, 'GTI', 1.00, 'B', 1.00, 'TP', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (194, '42.084.003.0 ', 'KOANG WAI ', 'RUAS JALAN KRUAK - LB. HAJI ', 15.80, 5.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TB', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (195, '42.084.004.0 ', 'EYAT BENGKOK ', 'RUAS JALAN KRUAK - LB. HAJI ', 6.20, 11.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (196, '42.084.005.0 ', 'MENANGA PAOK ', 'RUAS JALAN KRUAK - LB. HAJI ', 13.60, 5.30, 1.00, 'GTI', 1.00, 'B', 0.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (197, '42.084.006.0 ', 'DS. BARU ', 'RUAS JALAN KRUAK - LB. HAJI ', 9.00, 6.10, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (198, '42.085.001.0 ', 'TIMBE DEWE ', 'RUAS JALAN TANJUNG GERES - POH GADING - PRINGGEBAYA ', 16.20, 6.20, 1.00, 'GTI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (199, '42.085.002.0 ', 'DS. GERES ', 'RUAS JALAN TANJUNG GERES - POH GADING - PRINGGEBAYA ', 41.80, 6.30, 2.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (200, '42.085.002.A ', 'LENEK BARA A ', 'RUAS JALAN TANJUNG GERES - POH GADING - PRINGGEBAYA ', 5.70, 5.50, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (201, '42.085.002.B ', 'LENEK BARA B ', 'RUAS JALAN TANJUNG GERES - POH GADING - PRINGGEBAYA ', 6.00, 5.00, 1.00, 'ETI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (202, '42.085.003.0 ', 'KORLEKO ', 'RUAS JALAN TANJUNG GERES - POH GADING - PRINGGEBAYA ', 29.80, 4.00, 9.00, 'PTI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (203, '42.085.004.0 ', 'POH GADING ', 'RUAS JALAN TANJUNG GERES - POH GADING - PRINGGEBAYA ', 34.00, 6.00, 2.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (204, '42.091.008.4 ', 'TELABAH SEPIT ', 'RUAS JALAN KRUAK - PANCOR ', 2.30, 5.30, 1.00, 'ETI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (205, '42.091.009.0 ', 'PALUNG ', 'RUAS JALAN KRUAK - PANCOR ', 40.00, 5.20, 3.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (206, '42.091.010.0 ', 'RAMBANG ', 'RUAS JALAN KRUAK - PANCOR ', 20.00, 8.70, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (207, '42.091.011.0 ', 'MOYOT ', 'RUAS JALAN KRUAK - PANCOR ', 9.00, 5.60, 2.00, 'ETI', 1.00, 'B', 2.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (208, '42.091.012.0 ', 'MARONGGEK ', 'RUAS JALAN KRUAK - PANCOR ', 30.00, 4.70, 2.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (209, '42.091.013.0 ', 'BATU BELEK/NGETAP ', 'RUAS JALAN KRUAK - PANCOR ', 5.10, 7.00, 1.00, 'ETI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (210, '42.092.001.0.1 ', 'TOJANG ', 'RUAS JALAN PANCOR - REMPUNG ', 20.00, 8.10, 1.00, 'GTI', 2.00, 'B', 2.00, 'LS', 1.00, 'TA', 2.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (211, '42.092.002.0.2 ', 'DASAN LEKONG ', 'RUAS JALAN MASBAGIK - PANCOR ', 10.50, 9.40, 1.00, 'MBI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (212, '42.092.003.0.2 ', 'TELABAH SIMBE ', 'RUAS JALAN MASBAGIK - PANCOR ', 4.00, 6.50, 1.00, 'GBI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (213, '42.092.004.0.2 ', 'TELABAH KETUJUR ', 'RUAS JALAN MASBAGIK - PANCOR ', 2.00, 7.90, 1.00, 'ETI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (214, '42.092.005.0.12 ', 'TELABAH SANGKON ', 'RUAS JALAN PAHLAWAN (PANCOR - SELONG) ', 3.60, 7.70, 3.00, 'ATI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (215, '42.093.000.3 ', 'TELABAH SELONG ', 'RUAS JALAN SELONG - LB. HAJI ', 3.60, 6.50, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (216, '42.093.000.4 ', 'TELABAH KELAYU ', 'RUAS JALAN SELONG - LB. HAJI ', 3.70, 5.40, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (217, '42.093.000.6 ', 'TELABAH LOANG TUNA ', 'RUAS JALAN SELONG - LB. HAJI ', 3.70, 7.00, 1.00, 'GBI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (218, '42.093.001.0 ', 'SISIK ', 'RUAS JALAN SELONG - LB. HAJI ', 6.00, 6.50, 1.00, 'GBI', 1.00, 'B', 1.00, 'LS', 1.00, 'A', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (219, '42.093.002.0 ', 'PAOK PAMPANG ', 'RUAS JALAN SELONG - LB. HAJI ', 29.60, 7.30, 2.00, 'GTI', 2.00, 'B', 1.00, 'SU', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (220, '42.094.009.0 ', 'DS. BAGIK ', 'RUAS JALAN AIKMAL - SWELA ', 12.80, 4.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (221, '42.094.010.0 ', 'SANGGAR ', 'RUAS JALAN AIKMAL - SWELA ', 16.20, 4.30, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (222, '42.094.011.0 ', 'KEDATU ', 'RUAS JALAN AIKMAL - SWELA ', 7.80, 4.50, 1.00, 'ETI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (223, '42.094.012.0 ', 'SONGGEN ', 'RUAS JALAN AIKMAL - SWELA ', 15.90, 6.20, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (224, '42.094.013.0 ', 'GRENG ', 'RUAS JALAN AIKMAL - SWELA ', 7.20, 4.00, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (225, '42.103.001.0 ', 'KEDONDONG ', 'RUAS JALAN PRINGGEBAYA - SEMBALUN BUMBUNG ', 6.00, 4.40, 1.00, 'ETI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (226, '42.103.002.0 ', 'ORONG SEMAYE ', 'RUAS JALAN PRINGGEBAYA - SEMBALUN BUMBUNG ', 20.60, 4.60, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (227, '42.103.003.0 ', 'ORONG SEBAU ', 'RUAS JALAN PRINGGEBAYA - SEMBALUN BUMBUNG ', 20.70, 4.40, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (228, '42.107.005.0 ', 'BENETE III ', 'RUAS JALAN BENETE - SEJORONG ', 7.00, 7.00, 1.00, 'GTI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 2.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (229, '42.107.006.0 ', 'MALUK I ', 'RUAS JALAN BENETE - SEJORONG ', 6.00, 8.10, 1.00, 'PTI', 3.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (230, '42.107.007.0 ', 'MALUK II ', 'RUAS JALAN BENETE - SEJORONG ', 14.90, 6.50, 1.00, 'GTI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (231, '42.107.008.0 ', 'SEKONGKANG I ', 'RUAS JALAN BENETE - SEJORONG ', 10.50, 8.00, 1.00, 'GTI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 2.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (232, '42.107.009.0 ', 'SEKONGKANG II ', 'RUAS JALAN BENETE - SEJORONG ', 7.50, 7.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (233, '42.107.010.0 ', 'SEKONGKANG III ', 'RUAS JALAN BENETE - SEJORONG ', 8.00, 7.70, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (234, '42.107.011.0 ', 'SEKONGKANG IV ', 'RUAS JALAN BENETE - SEJORONG ', 30.20, 4.10, 1.00, 'RBS', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 2.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (235, '42.107.012.0 ', 'SINYUR I ', 'RUAS JALAN BENETE - SEJORONG ', 20.90, 6.00, 1.00, 'GBL', 1.00, 'B', 1.00, 'SU', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (236, '42.107.013.0 ', 'SINYUR II ', 'RUAS JALAN BENETE - SEJORONG ', 6.00, 5.50, 1.00, 'GTI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (237, '42.107.014.0 ', 'SINYUR III ', 'RUAS JALAN BENETE - SEJORONG ', 6.20, 5.40, 1.00, 'GTI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (238, '42.107.015.0 ', 'SINYUR IV ', 'RUAS JALAN BENETE - SEJORONG ', 6.00, 5.50, 1.00, 'GTI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (239, '42.107.016.0 ', 'SINYUR V ', 'RUAS JALAN BENETE - SEJORONG ', 6.00, 5.50, 1.00, 'GTI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (240, '42.107.017.0 ', 'SINUR VI/BATU REA ', 'RUAS JALAN BENETE - SEJORONG ', 25.40, 6.00, 1.00, 'GBL', 1.00, 'B', 1.00, 'LS', 1.00, 'T', 2.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (241, '42.107.018.0 ', 'SINYUR VII ', 'RUAS JALAN BENETE - SEJORONG ', 6.00, 5.50, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TR', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (242, '42.107.019.0 ', 'SINYUR VIII ', 'RUAS JALAN BENETE - SEJORONG ', 3.00, 7.40, 1.00, 'PTI', 3.00, 'B', 1.00, 'LS', 1.00, 'TR', 2.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (243, '42.107.020.0 ', 'SINYUR IX ', 'RUAS JALAN BENETE - SEJORONG ', 6.00, 5.30, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TR', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (244, '42.107.021.0 ', 'SEJORONG ', 'RUAS JALAN SEJORONG - TETAR ', 60.00, 6.00, 1.00, 'RBR', 2.00, 'B', 1.00, 'SU', 1.00, 'TA', 2.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (245, '42.107.022.0 ', 'AIK GOAH I ', 'RUAS JALAN SEJORONG - TETAR ', 10.00, 6.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (246, '42.107.023.0 ', 'AIK GOAH II ', 'RUAS JALAN SEJORONG - TETAR ', 15.30, 6.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'SU', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (247, '42.107.024.0 ', 'AIK BETAK I ', 'RUAS JALAN SEJORONG - TETAR ', 20.00, 6.30, 1.00, 'GTI', 2.00, 'B', 1.00, 'SU', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (248, '42.107.025.0 ', 'AIK BETAK II ', 'RUAS JALAN SEJORONG - TETAR ', 20.00, 6.50, 1.00, 'GTI', 1.00, 'B', 1.00, 'SU', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (249, '42.107.026.0 ', 'AIK KANGKUNG ', 'RUAS JALAN SEJORONG - TETAR ', 40.00, 6.00, 1.00, 'RBR', 2.00, 'B', 1.00, 'LL', 1.00, 'TA', 2.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (250, '42.107.027.0 ', 'LABUHAN ', 'RUAS JALAN SEJORONG - TETAR ', 76.90, 6.00, 2.00, 'RBR', 1.00, 'B', 1.00, 'SU', 1.00, 'TA', 2.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (251, '42.107.028.0 ', 'TABIUNG ', 'RUAS JALAN SEJORONG - TETAR ', 30.00, 6.00, 1.00, 'GTI', 2.00, 'B', 1.00, 'SU', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (252, '42.107.029.0 ', 'BRUNUT ', 'RUAS JALAN SEJORONG - TETAR ', 30.30, 6.10, 2.00, 'GTI', 3.00, 'B', 1.00, 'SU', 1.00, 'TA', 2.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (253, '42.107.030.0 ', 'TANAMAN I ', 'RUAS JALAN SEJORONG - TETAR ', 25.00, 6.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (254, '42.107.030.4 ', 'TANAMAN II ', 'RUAS JALAN SEJORONG - TETAR ', 15.10, 6.50, 1.00, 'GTI', 3.00, 'B', 1.00, 'SU', 1.00, 'TA', 3.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (255, '42.107.030.8 ', 'TANAMAN III ', 'RUAS JALAN SEJORONG - TETAR ', 15.00, 0.00, 1.00, 'WXX', 5.00, '0.00 ', 0.00, '0.00 ', 0.00, '0.00 ', 5.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (256, '42.107.031.0 ', 'PUNA I ', 'RUAS JALAN SEJORONG - TETAR ', 20.00, 0.00, 1.00, 'WXX', 5.00, '0.00 ', 0.00, '0.00 ', 0.00, '0.00 ', 5.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (257, '42.107.032.0 ', 'PUNA II ', 'RUAS JALAN SEJORONG - TETAR ', 90.00, 6.00, 2.00, 'RBL', 3.00, 'B', 1.00, 'SU', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (258, '42.107.032.3 ', 'PUNA III ', 'RUAS JALAN SEJORONG - TETAR ', 22.00, 6.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (259, '42.107.033.0 ', 'TABISU ', 'RUAS JALAN SEJORONG - TETAR ', 25.00, 6.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (260, '42.107.034.0 ', 'TABISU II ', 'RUAS JALAN SEJORONG - TETAR ', 12.00, 6.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (261, '42.107.035.0 ', 'TABISU III ', 'RUAS JALAN SEJORONG - TETAR ', 25.00, 6.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (262, '42.107.036.0 ', 'TABISU IV ', 'RUAS JALAN SEJORONG - TETAR ', 25.00, 6.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (263, '42.107.037.0 ', 'TABISU V ', 'RUAS JALAN SEJORONG - TETAR ', 25.00, 6.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (264, '42.107.038.0 ', 'TONGO LOKA ', 'RUAS JALAN SEJORONG - TETAR ', 50.00, 6.00, 2.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (265, '42.107.039.0 ', 'AIK KERU I ', 'RUAS JALAN SEJORONG - TETAR ', 25.00, 6.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (266, '42.107.040.0 ', 'AIK KERU II ', 'RUAS JALAN SEJORONG - TETAR ', 25.00, 6.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (267, '42.107.041.0 ', 'AIK KERU III ', 'RUAS JALAN SEJORONG - TETAR ', 30.00, 0.00, 1.00, 'WXX', 5.00, '0.00 ', 0.00, '0.00 ', 0.00, '0.00 ', 5.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (268, '42.107.042.0 ', 'NANGENE ', 'RUAS JALAN SEJORONG - TETAR ', 35.00, 6.00, 1.00, 'GBJ', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (269, '42.107.043.0 ', 'TATAR I ', 'RUAS JALAN SEJORONG - TETAR ', 10.00, 0.00, 1.00, 'WXX', 5.00, '0.00 ', 0.00, '0.00 ', 0.00, '0.00 ', 5.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (270, '42.107.044.0 ', 'TATAR II ', 'RUAS JALAN SEJORONG - TETAR ', 15.00, 0.00, 1.00, 'WXX', 5.00, '0.00 ', 0.00, '0.00 ', 0.00, '0.00 ', 5.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (271, '42.107.045.0 ', 'TATAR III ', 'RUAS JALAN SEJORONG - TETAR ', 20.00, 0.00, 1.00, 'WXX', 5.00, '0.00 ', 0.00, '0.00 ', 0.00, '0.00 ', 5.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (272, '42.107.046.0 ', 'TATAR LOKA  ', 'RUAS JALAN SEJORONG - TETAR ', 55.00, 6.00, 2.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (273, '42.108.047.0 ', 'TERENG BODO ', 'RUAS JALAN TETAR - LUNYUK ', 25.00, 0.00, 1.00, 'WXX', 5.00, '0.00 ', 0.00, '0.00 ', 0.00, '0.00 ', 5.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (274, '42.108.048.0 ', 'LABEHE ', 'RUAS JALAN TETAR - LUNYUK ', 40.00, 0.00, 1.00, 'WXX', 5.00, '0.00 ', 0.00, '0.00 ', 0.00, '0.00 ', 5.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (275, '42.108.049.0 ', 'MONE I ', 'RUAS JALAN TETAR - LUNYUK ', 25.00, 6.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (276, '42.108.050.0 ', 'MONE II ', 'RUAS JALAN TETAR - LUNYUK ', 15.00, 6.00, 1.00, 'GTI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 2.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (277, '42.108.051.0 ', 'TELONANG I ', 'RUAS JALAN TETAR - LUNYUK ', 40.00, 6.00, 2.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (278, '42.108.052.0 ', 'TELONANG II ', 'RUAS JALAN TETAR - LUNYUK ', 25.00, 0.00, 1.00, 'WXX', 5.00, '0.00 ', 0.00, '0.00 ', 0.00, '0.00 ', 5.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (279, '42.108.052.1 ', 'TELONANG III ', 'RUAS JALAN TETAR - LUNYUK ', 10.00, 6.00, 1.00, 'GTI', 2.00, 'B', 2.00, 'LS', 1.00, 'TA', 2.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (280, '42.108.053.0 ', 'SEPANG ', 'RUAS JALAN TETAR - LUNYUK ', 30.00, 6.00, 1.00, 'GBJ', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (281, '42.108.054.0 ', 'BINTUNG ', 'RUAS JALAN TETAR - LUNYUK ', 15.00, 6.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (282, '42.108.055.0 ', 'TATAR ', 'RUAS JALAN TETAR - LUNYUK ', 15.00, 0.00, 1.00, 'WXX', 5.00, '0.00 ', 0.00, '0.00 ', 0.00, '0.00 ', 5.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (283, '42.108.056.0 ', 'BOIN JATI ', 'RUAS JALAN TETAR - LUNYUK ', 10.00, 6.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 2.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (284, '42.108.057.0 ', 'BLENGKON/SINGKUK ', 'RUAS JALAN TETAR - LUNYUK ', 15.00, 6.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (285, '42.108.058.0 ', 'GRANTA/TEBIL ', 'RUAS JALAN TETAR - LUNYUK ', 15.00, 0.00, 1.00, 'WXX', 5.00, '0.00 ', 0.00, '0.00 ', 0.00, '0.00 ', 5.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (286, '42.108.059.0 ', 'TEBIL I ', 'RUAS JALAN TETAR - LUNYUK ', 20.00, 0.00, 1.00, 'WXX', 5.00, '0.00 ', 0.00, '0.00 ', 0.00, '0.00 ', 5.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (287, '42.108.060.0 ', 'TEBIL II ', 'RUAS JALAN TETAR - LUNYUK ', 10.00, 0.00, 1.00, 'WXX', 5.00, '0.00 ', 0.00, '0.00 ', 0.00, '0.00 ', 5.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (288, '42.108.061.0 ', 'MUMIL I ', 'RUAS JALAN TETAR - LUNYUK ', 10.00, 6.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'SU', 1.00, 'T', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (289, '42.108.062.0 ', 'MUMIL II ', 'RUAS JALAN TETAR - LUNYUK ', 30.00, 0.00, 1.00, 'WXX', 5.00, '0.00 ', 0.00, '0.00 ', 0.00, '0.00 ', 5.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (290, '42.108.063.0 ', 'MELAP/MENANGA KERIKIT ', 'RUAS JALAN TETAR - LUNYUK ', 15.00, 6.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'SU', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (291, '42.108.064.0 ', 'LAMAR ', 'RUAS JALAN TETAR - LUNYUK ', 30.00, 6.00, 1.00, 'GBJ', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (292, '42.108.065.0 ', 'AIK MAT ', 'RUAS JALAN TETAR - LUNYUK ', 15.00, 6.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'SU', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (293, '42.108.066.0 ', 'TELANG/LIANG BAGIK ', 'RUAS JALAN TETAR - LUNYUK ', 12.50, 6.50, 1.00, 'GTI', 1.00, 'B', 1.00, 'SU', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (294, '42.108.067.0 ', 'PETANI I ', 'RUAS JALAN TETAR - LUNYUK ', 10.00, 6.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'SU', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (295, '42.108.068.0 ', 'PETANI II/LIANG BUK ', 'RUAS JALAN TETAR - LUNYUK ', 12.50, 6.50, 1.00, 'GTI', 1.00, 'B', 1.00, 'SU', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (296, '42.108.069.0 ', 'MOLONG ', 'RUAS JALAN TETAR - LUNYUK ', 12.50, 6.50, 1.00, 'GTI', 1.00, 'B', 1.00, 'SU', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (297, '42.108.070.0 ', 'EMANG ', 'RUAS JALAN TETAR - LUNYUK ', 30.00, 6.00, 1.00, 'GBJ', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (298, '42.108.071.0 ', 'KALBIR ', 'RUAS JALAN TETAR - LUNYUK ', 20.00, 6.00, 1.00, 'GBJ', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (299, '42.108.072.0 ', 'BENDUNGAN ', 'RUAS JALAN TETAR - LUNYUK ', 11.00, 6.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'SU', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (300, '42.108.073.0 ', 'BRANG BAI ', 'RUAS JALAN TETAR - LUNYUK ', 113.00, 6.00, 2.00, 'RBA', 2.00, 'B', 1.00, 'SU', 1.00, 'TA', 2.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (301, '42.109.001.0.11 ', 'BRANG BARA ', 'JALAN SULTAN KAHARUDIN (SUMBAWA) ', 92.50, 6.00, 2.00, 'RBA', 2.00, 'B', 1.00, 'SU', 1.00, 'TA', 2.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (302, '42.109.002.0 ', 'SEMONGKAT I ', 'RUAS JALAN SUMBAWA BESAR - SEMONGKAT - BATU DULANG ', 6.20, 7.00, 1.00, 'ETI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (303, '42.109.003.0 ', 'SEMONGKAT II ', 'RUAS JALAN SUMBAWA BESAR - SEMONGKAT - BATU DULANG ', 10.70, 6.30, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (304, '42.109.004.0 ', 'SEMONGKAT III ', 'RUAS JALAN SUMBAWA BESAR - SEMONGKAT - BATU DULANG ', 3.00, 7.00, 1.00, 'ETI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (305, '42.109.005.0 ', 'SEMONGKAT IV ', 'RUAS JALAN SUMBAWA BESAR - SEMONGKAT - BATU DULANG ', 6.70, 7.90, 1.00, 'ETI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (306, '42.109.006.0 ', 'SETANGO ', 'RUAS JALAN SUMBAWA BESAR - SEMONGKAT - BATU DULANG ', 18.00, 6.40, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (307, '42.109.007.0 ', 'BATU LATEH I ', 'RUAS JALAN SUMBAWA BESAR - SEMONGKAT - BATU DULANG ', 6.00, 6.60, 1.00, 'GTI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (308, '42.109.008.0 ', 'BATU LATEH II ', 'RUAS JALAN SUMBAWA BESAR - SEMONGKAT - BATU DULANG ', 6.00, 7.00, 1.00, 'GTI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (309, '42.110.001.0 ', 'RABERAS I ', 'RUAS JALAN SUMBAWA - SEBEWE - LUA AIR ', 10.00, 6.30, 1.00, 'GTI', 1.00, 'B', 1.00, 'SU', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (310, '42.110.002.0 ', 'RABERAS II ', 'RUAS JALAN SUMBAWA - SEBEWE - LUA AIR ', 21.50, 6.20, 1.00, 'GTI', 1.00, 'B', 1.00, 'SU', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (311, '42.110.003.0 ', 'TAHAN ', 'RUAS JALAN SUMBAWA - SEBEWE - LUA AIR ', 45.20, 3.90, 3.00, 'GTI', 3.00, 'B', 1.00, 'SU', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (312, '42.111.001.0 ', 'Brang Moyo ', 'RUAS JALAN SIMPANG NEGARA - MOYO - LUA AIR ', 38.00, 6.50, 2.00, 'GTI', 1.00, 'B', 1.00, 'SU', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (313, '42.111.002.0 ', 'Berare I ', 'RUAS JALAN SIMPANG NEGARA - MOYO - LUA AIR ', 37.50, 6.50, 2.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (314, '42.111.003.0 ', 'Berare II ', 'RUAS JALAN SIMPANG NEGARA - MOYO - LUA AIR ', 9.00, 4.00, 2.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (315, '42.112.001.A.1 ', 'BRANG BOAK A ', 'RUAS JALAN PAL. IV - LENANGGUAR ', 13.80, 6.50, 1.00, 'GTI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (316, '42.112.001.B.1 ', 'BRANG BOAK B ', 'RUAS JALAN PAL. IV - LENANGGUAR ', 10.60, 4.60, 2.00, 'ETI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (317, '42.112.002.A.1 ', 'KOKAR KATOMPO A ', 'RUAS JALAN PAL. IV - LENANGGUAR ', 16.80, 7.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (318, '42.112.002.B.1 ', 'KOKAR KATOMPO B ', 'RUAS JALAN PAL. IV - LENANGGUAR ', 14.50, 3.60, 2.00, 'ETI', 2.00, 'B', 1.00, 'LS', 3.00, 'TA', 2.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (319, '42.112.003.7.1 ', 'BATAN JUAT ', 'RUAS JALAN PAL. IV - LENANGGUAR ', 6.50, 8.50, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (320, '42.112.003.A.1 ', 'KOKAR LESANG A ', 'RUAS JALAN PAL. IV - LENANGGUAR ', 16.20, 4.00, 2.00, 'ETI', 2.00, 'B', 1.00, 'LS', 2.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (321, '42.112.003.B.1 ', 'KOKAR LESANG B ', 'RUAS JALAN PAL. IV - LENANGGUAR ', 18.70, 6.20, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (322, '42.112.004.0.1 ', 'KOKAR BALAI AIR ', 'RUAS JALAN PAL. IV - LENANGGUAR ', 16.50, 7.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (323, '42.112.005.0.1 ', 'KOKAR ALING ', 'RUAS JALAN PAL. IV - LENANGGUAR ', 6.00, 8.30, 1.00, 'ETI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (324, '42.112.006.0.1 ', 'KOKAR NEISA ', 'RUAS JALAN PAL. IV - LENANGGUAR ', 6.80, 6.00, 1.00, 'ETI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (325, '42.112.007.0.1 ', 'UMA BELO ', 'RUAS JALAN PAL. IV - LENANGGUAR ', 16.90, 6.20, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (326, '42.112.008.0.1 ', 'BATU PASAK ', 'RUAS JALAN PAL. IV - LENANGGUAR ', 6.50, 7.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (327, '42.112.009.0.1 ', 'UMA LANGKE ', 'RUAS JALAN PAL. IV - LENANGGUAR ', 14.30, 6.30, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (328, '42.112.010.0.1 ', 'KOKAR KASIO ', 'RUAS JALAN PAL. IV - LENANGGUAR ', 30.30, 6.00, 1.00, 'GBA', 2.00, 'B', 1.00, 'SU', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (329, '42.112.010.5.1 ', 'AI LAGI ', 'RUAS JALAN PAL. IV - LENANGGUAR ', 5.60, 6.00, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (330, '42.112.011.0.2 ', 'KEMANG KUNING ', 'RUAS JALAN PAL. IV - LENANGGUAR ', 7.90, 7.00, 1.00, 'GTI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (331, '42.112.011.6.1 ', 'LITOK I ', 'RUAS JALAN PAL. IV - LENANGGUAR ', 4.50, 6.00, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (332, '42.112.011.A.1 ', 'LITOK IIA ', 'RUAS JALAN PAL. IV - LENANGGUAR ', 8.50, 4.00, 2.00, 'ETI', 2.00, 'B', 1.00, 'LS', 2.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (333, '42.112.011.B.1 ', 'LITOK IIB ', 'RUAS JALAN PAL. IV - LENANGGUAR ', 9.80, 6.10, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (334, '42.112.012.0.1 ', 'LITOK III ', 'RUAS JALAN PAL. IV - LENANGGUAR ', 3.00, 3.50, 1.00, 'PTI', 0.00, 'B', 0.00, 'LS', 0.00, 'TA', 0.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (335, '42.112.012.1.1 ', 'LITOK IV ', 'RUAS JALAN PAL. IV - LENANGGUAR ', 9.00, 7.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (336, '42.112.012.8.1 ', 'PEN BONYO ', 'RUAS JALAN PAL. IV - LENANGGUAR ', 13.80, 6.40, 1.00, 'GTI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (337, '42.112.013.0.1 ', 'LANAK I ', 'RUAS JALAN PAL. IV - LENANGGUAR ', 6.00, 6.80, 1.00, 'GBI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (338, '42.112.014.0.1 ', 'LANAK II ', 'RUAS JALAN PAL. IV - LENANGGUAR ', 6.00, 5.80, 1.00, 'ETI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (339, '42.112.015.0.1 ', 'KOKAR ALI ', 'RUAS JALAN PAL. IV - LENANGGUAR ', 10.00, 6.00, 1.00, 'GTI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (340, '42.112.016.0.1 ', 'KOKAR BALISU ', 'RUAS JALAN PAL. IV - LENANGGUAR ', 10.00, 7.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (341, '42.112.017.0.1 ', 'POLA II ', 'RUAS JALAN PAL. IV - LENANGGUAR ', 7.50, 6.50, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (342, '42.112.018.0.1 ', 'BRANG PENEMUNG ', 'RUAS JALAN PAL. IV - LENANGGUAR ', 45.70, 6.00, 1.00, 'RBR', 1.00, 'B', 1.00, 'SU', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (343, '42.112.001.0.2 ', 'LEDANG I (AI NANGKA) ', 'RUAS JALAN LENANGGUAR - LUNYUK ', 4.60, 6.60, 2.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (344, '42.112.002.0.2 ', 'LEDANG II (BALEMAN) ', 'RUAS JALAN LENANGGUAR - LUNYUK ', 13.70, 6.40, 2.00, 'ETI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (345, '42.112.003.0.2 ', 'LEDANG III ', 'RUAS JALAN LENANGGUAR - LUNYUK ', 4.80, 6.30, 2.00, 'ETI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (346, '42.112.004.0.2 ', 'LEDANG IV ', 'RUAS JALAN LENANGGUAR - LUNYUK ', 2.00, 3.50, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (347, '42.112.005.0.2 ', 'LEDANG V ', 'RUAS JALAN LENANGGUAR - LUNYUK ', 5.30, 7.30, 1.00, 'ETI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (348, '42.112.006.0.2 ', 'LEDANG VI ', 'RUAS JALAN LENANGGUAR - LUNYUK ', 2.20, 3.50, 1.00, 'ETI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 2.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (349, '42.112.007.0.2 ', 'AI TUMANG I ', 'RUAS JALAN LENANGGUAR - LUNYUK ', 6.20, 6.60, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (350, '42.112.008.0.2 ', 'AI TUMANG II ', 'RUAS JALAN LENANGGUAR - LUNYUK ', 6.80, 6.70, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (351, '42.112.010.0.2 ', 'LEDANG VIII ', 'RUAS JALAN LENANGGUAR - LUNYUK ', 3.00, 4.80, 1.00, 'GBA', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (352, '42.112.011.0.2 ', 'LEDANG IX ', 'RUAS JALAN LENANGGUAR - LUNYUK ', 5.00, 5.50, 1.00, 'GTI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (353, '42.112.012.0.2 ', 'LEDANG X ', 'RUAS JALAN LENANGGUAR - LUNYUK ', 4.70, 9.10, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (354, '42.112.012.5.2 ', 'AIK LEDANG ', 'RUAS JALAN LENANGGUAR - LUNYUK ', 4.00, 6.70, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (355, '42.112.013.0.2 ', 'LEDANG XI ', 'RUAS JALAN LENANGGUAR - LUNYUK ', 19.10, 6.40, 1.00, 'GBI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (356, '42.112.014.0.2 ', 'LEDANG XII ', 'RUAS JALAN LENANGGUAR - LUNYUK ', 7.70, 6.40, 1.00, 'ETI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (357, '42.112.015.0.2 ', 'LEDANG XIV ', 'RUAS JALAN LENANGGUAR - LUNYUK ', 8.60, 6.40, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (358, '42.112.016.0.2 ', 'LEDANG XV ', 'RUAS JALAN LENANGGUAR - LUNYUK ', 39.90, 6.90, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (359, '42.112.017.0.2 ', 'LEDANG XVI ', 'RUAS JALAN LENANGGUAR - LUNYUK ', 9.00, 6.30, 1.00, 'GTI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (360, '42.112.018.0.2 ', 'LEDANG XVII ', 'RUAS JALAN LENANGGUAR - LUNYUK ', 6.10, 6.90, 1.00, 'RBR', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (361, '42.112.019.0.2 ', 'LEDANG XVIII ', 'RUAS JALAN LENANGGUAR - LUNYUK ', 3.00, 4.00, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (362, '42.112.020.0.2 ', 'LEDANG XIX ', 'RUAS JALAN LENANGGUAR - LUNYUK ', 9.90, 6.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (363, '42.112.021.0.2 ', 'LEDANG XX ', 'RUAS JALAN LENANGGUAR - LUNYUK ', 50.00, 6.00, 1.00, 'PTI', 1.00, 'B', 1.00, 'SU', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (364, '42.112.022.0.2 ', 'BINONG I ', 'RUAS JALAN LENANGGUAR - LUNYUK ', 6.00, 6.60, 1.00, 'PTI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (365, '42.112.023.0.2 ', 'BINONG II ', 'RUAS JALAN LENANGGUAR - LUNYUK ', 5.60, 6.50, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (366, '42.112.024.0.2 ', 'BINONG III ', 'RUAS JALAN LENANGGUAR - LUNYUK ', 7.00, 6.00, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (367, '42.112.025.0.2 ', 'BINONG IV ', 'RUAS JALAN LENANGGUAR - LUNYUK ', 7.50, 6.80, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (368, '42.112.026.0.2 ', 'SOGA I ', 'RUAS JALAN LENANGGUAR - LUNYUK ', 5.00, 4.00, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (369, '42.112.027.0.2 ', 'SOGA II ', 'RUAS JALAN LENANGGUAR - LUNYUK ', 5.00, 4.00, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (370, '42.112.028.0.2 ', 'PANAN ', 'RUAS JALAN LENANGGUAR - LUNYUK ', 5.80, 6.30, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (371, '42.112.029.0.2 ', 'BEAT ', 'RUAS JALAN LENANGGUAR - LUNYUK ', 6.00, 6.10, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (372, '42.112.029.3.2 ', 'TAWAR I ', 'RUAS JALAN LENANGGUAR - LUNYUK ', 5.30, 6.90, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (373, '42.112.030.0.2 ', 'TAWAR II ', 'RUAS JALAN LENANGGUAR - LUNYUK ', 8.20, 6.60, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (374, '42.112.031.0.2 ', 'MELUNG I ', 'RUAS JALAN LENANGGUAR - LUNYUK ', 8.00, 6.00, 2.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (375, '42.112.032.0.2 ', 'MELUNG II ', 'RUAS JALAN LENANGGUAR - LUNYUK ', 8.00, 6.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (376, '42.112.033.0.2 ', 'KOMAS I ', 'RUAS JALAN LENANGGUAR - LUNYUK ', 6.00, 6.60, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 2.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (377, '42.112.034.0.2 ', 'KOMAS II ', 'RUAS JALAN LENANGGUAR - LUNYUK ', 8.00, 7.50, 2.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (378, '42.112.035.0.2 ', 'KOMAS III ', 'RUAS JALAN LENANGGUAR - LUNYUK ', 8.00, 7.50, 1.00, 'GTI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 2.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (379, '42.112.036.0.2 ', 'KOMAS IV ', 'RUAS JALAN LENANGGUAR - LUNYUK ', 6.00, 6.50, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (380, '42.112.037.0.2 ', 'KOMAS V ', 'RUAS JALAN LENANGGUAR - LUNYUK ', 4.40, 4.00, 1.00, 'PTI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (381, '42.112.038.0.2 ', 'KOMAS VI ', 'RUAS JALAN LENANGGUAR - LUNYUK ', 2.70, 4.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (382, '42.112.039.0.2 ', 'KOMAS VII ', 'RUAS JALAN LENANGGUAR - LUNYUK ', 2.70, 4.00, 1.00, 'RBB', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (383, '42.112.040.0.2 ', 'KOMAS VIII ', 'RUAS JALAN LENANGGUAR - LUNYUK ', 2.00, 4.00, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (384, '42.112.041.0.2 ', 'KOMAS IX ', 'RUAS JALAN LENANGGUAR - LUNYUK ', 2.00, 4.00, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (385, '42.112.042.0.2 ', 'LIAN (MALAKE) ', 'RUAS JALAN LENANGGUAR - LUNYUK ', 25.30, 6.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (386, '42.112.043.0.2 ', 'KOKAR LOBONG ', 'RUAS JALAN LENANGGUAR - LUNYUK ', 9.50, 6.50, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (387, '42.112.044.0.2 ', 'LIAN I ', 'RUAS JALAN LENANGGUAR - LUNYUK ', 2.70, 4.00, 1.00, 'GBI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (388, '42.112.045.0.2 ', 'LIAN II ', 'RUAS JALAN LENANGGUAR - LUNYUK ', 2.00, 4.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (389, '42.112.046.0.2 ', 'KOKAR WENA ', 'RUAS JALAN LENANGGUAR - LUNYUK ', 8.10, 6.00, 1.00, 'PTI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 2.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (390, '42.112.047.0.2 ', 'KENANGAS I ', 'RUAS JALAN LENANGGUAR - LUNYUK ', 9.00, 6.00, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (391, '42.112.048.0.2 ', 'AIR TERJUN DARURAT ', 'RUAS JALAN LENANGGUAR - LUNYUK ', 9.00, 5.50, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'LS', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (392, '42.112.049.0.2 ', 'KENANGAS II ', 'RUAS JALAN LENANGGUAR - LUNYUK ', 6.00, 6.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (393, '42.112.050.0.2 ', 'KENANGAS III ', 'RUAS JALAN LENANGGUAR - LUNYUK ', 6.50, 6.00, 1.00, 'GTI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (394, '42.112.051.0.2 ', 'KENANGAS IV ', 'RUAS JALAN LENANGGUAR - LUNYUK ', 6.50, 6.50, 1.00, 'GTI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (395, '42.112.052.0.2 ', 'AIR MIRA ', 'RUAS JALAN LENANGGUAR - LUNYUK ', 8.00, 6.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (396, '42.112.053.0.2 ', 'SAMPANG II ', 'RUAS JALAN LENANGGUAR - LUNYUK ', 3.00, 6.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (397, '42.112.054.0.2 ', 'BATU NAMPAR ', 'RUAS JALAN LENANGGUAR - LUNYUK ', 6.00, 6.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (398, '42.112.055.0.2 ', 'GENTING I ', 'RUAS JALAN LENANGGUAR - LUNYUK ', 8.50, 6.00, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (399, '42.112.056.0.2 ', 'SAMPANG I ', 'RUAS JALAN LENANGGUAR - LUNYUK ', 10.50, 6.50, 1.00, 'PTI', 3.00, 'B', 1.00, 'LS', 1.00, 'TA', 2.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (400, '42.112.057.0.2 ', 'BERINGIN ', 'RUAS JALAN LENANGGUAR - LUNYUK ', 6.50, 6.50, 1.00, 'PTI', 2.00, 'B', 3.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (401, '42.112.058.0.2 ', 'KOKAR PELAS  ', 'RUAS JALAN LENANGGUAR - LUNYUK ', 6.50, 6.70, 1.00, 'PTI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (402, '42.112.059.0.2 ', 'CADAS PISAK ', 'RUAS JALAN LENANGGUAR - LUNYUK ', 8.10, 6.00, 1.00, 'ETI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (403, '42.112.060.0.2 ', 'SAMPARAU I ', 'RUAS JALAN LENANGGUAR - LUNYUK ', 4.00, 3.90, 1.00, 'ETI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (404, '42.112.061.0.2 ', 'SAMPARAU II ', 'RUAS JALAN LENANGGUAR - LUNYUK ', 6.00, 5.70, 1.00, 'GBA', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (405, '42.112.062.0.2 ', 'RONTONG I ', 'RUAS JALAN LENANGGUAR - LUNYUK ', 5.00, 6.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (406, '42.112.063.0.2 ', 'RONTONG II ', 'RUAS JALAN LENANGGUAR - LUNYUK ', 19.80, 6.70, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (407, '42.112.064.0.2 ', 'PLARA I ', 'RUAS JALAN LENANGGUAR - LUNYUK ', 7.00, 6.40, 1.00, 'ETI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (408, '42.112.065.0.2 ', 'PLARA II ', 'RUAS JALAN LENANGGUAR - LUNYUK ', 4.50, 7.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (409, '42.112.066.0.2 ', 'SEKAMANG I ', 'RUAS JALAN LENANGGUAR - LUNYUK ', 4.70, 7.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (410, '42.112.067.0.2 ', 'SEKAMANG II ', 'RUAS JALAN LENANGGUAR - LUNYUK ', 4.70, 7.00, 1.00, 'GBI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (411, '42.112.068.0.2 ', 'SEKAMANG III ', 'RUAS JALAN LENANGGUAR - LUNYUK ', 5.40, 4.00, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (412, '42.112.069.0.2 ', 'SEKAMANG IV ', 'RUAS JALAN LENANGGUAR - LUNYUK ', 4.30, 4.00, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (413, '42.112.070.0.2 ', 'KUKIN ', 'RUAS JALAN LENANGGUAR - LUNYUK ', 2.70, 4.00, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (414, '42.112.071.0.2 ', 'PLAS I ', 'RUAS JALAN LENANGGUAR - LUNYUK ', 8.10, 7.00, 1.00, 'GTI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (415, '42.112.072.0.2 ', 'PLAS II ', 'RUAS JALAN LENANGGUAR - LUNYUK ', 5.00, 6.00, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (416, '42.112.073.0.2 ', 'KESI ', 'RUAS JALAN LENANGGUAR - LUNYUK ', 8.00, 6.00, 1.00, 'ETI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (417, '42.112.074.0.2 ', 'BRORA ', 'RUAS JALAN LENANGGUAR - LUNYUK ', 5.50, 6.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (418, '42.112.075.0.2 ', 'BERINGIN ', 'RUAS JALAN LENANGGUAR - LUNYUK ', 2.00, 3.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (419, '42.112.076.0.2 ', 'BOMONG ', 'RUAS JALAN LENANGGUAR - LUNYUK ', 10.00, 6.50, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (420, '42.112.077.0.2 ', 'LUNYUK ', 'RUAS JALAN LENANGGUAR - LUNYUK ', 25.00, 7.00, 1.00, 'ETI', 3.00, 'B', 1.00, 'SU', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (421, '42.113.011.0 ', 'RANAN ', 'RUAS JALAN LUNYUK - ROPANG ', 8.00, 0.00, 4.00, 'BTI', 5.00, '0.00 ', 0.00, '0.00 ', 0.00, '0.00 ', 5.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (422, '42.113.012.0 ', 'LABANGKAR ', 'RUAS JALAN LUNYUK - ROPANG ', 20.00, 0.00, 1.00, 'WXX', 5.00, '0.00 ', 0.00, '0.00 ', 0.00, '0.00 ', 5.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (423, '42.113.013.0 ', 'LELA MASE ', 'RUAS JALAN LUNYUK - ROPANG ', 8.00, 0.00, 1.00, 'WXX', 5.00, '0.00 ', 0.00, '0.00 ', 0.00, '0.00 ', 5.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (424, '42.113.014.0 ', 'PAMULEN ', 'RUAS JALAN LUNYUK - ROPANG ', 20.00, 0.00, 1.00, 'WXX', 5.00, '0.00 ', 0.00, '0.00 ', 0.00, '0.00 ', 5.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (425, '42.113.015.0 ', 'KELEBE ', 'RUAS JALAN LUNYUK - ROPANG ', 8.00, 0.00, 1.00, 'WXX', 5.00, '0.00 ', 0.00, '0.00 ', 0.00, '0.00 ', 5.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (426, '42.113.016.0 ', 'SELAMPONG ', 'RUAS JALAN LUNYUK - ROPANG ', 18.00, 0.00, 1.00, 'WXX', 5.00, '0.00 ', 0.00, '0.00 ', 0.00, '0.00 ', 5.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (427, '42.113.017.0 ', 'JALET BRANG I ', 'RUAS JALAN LUNYUK - ROPANG ', 8.00, 0.00, 1.00, 'WXX', 5.00, '0.00 ', 0.00, '0.00 ', 0.00, '0.00 ', 5.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (428, '42.113.018.0 ', 'JALET BRANG II ', 'RUAS JALAN LUNYUK - ROPANG ', 30.00, 0.00, 1.00, 'WXX', 5.00, '0.00 ', 0.00, '0.00 ', 0.00, '0.00 ', 5.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (429, '42.113.019.0 ', 'JALET SELEBUK I ', 'RUAS JALAN LUNYUK - ROPANG ', 10.00, 0.00, 1.00, 'WXX', 5.00, '0.00 ', 0.00, '0.00 ', 0.00, '0.00 ', 5.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (430, '42.113.020.0 ', 'JALET SELEBUK II ', 'RUAS JALAN LUNYUK - ROPANG ', 12.00, 0.00, 1.00, 'WXX', 5.00, '0.00 ', 0.00, '0.00 ', 0.00, '0.00 ', 5.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (431, '42.113.021.0 ', 'LAMPUI I ', 'RUAS JALAN LUNYUK - ROPANG ', 18.00, 0.00, 1.00, 'WXX', 5.00, '0.00 ', 0.00, '0.00 ', 0.00, '0.00 ', 5.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (432, '42.113.022.0 ', 'TIU BARU ', 'RUAS JALAN LUNYUK - ROPANG ', 15.00, 0.00, 1.00, 'WXX', 5.00, '0.00 ', 0.00, '0.00 ', 0.00, '0.00 ', 5.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (433, '42.113.001.0.1 ', 'LABANGKA III ', 'RUAS JALAN ROPANG - SEKOKAT ', 51.30, 6.00, 1.00, 'RBR', 3.00, 'B', 1.00, 'SU', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (434, '42.113.002.0.1 ', 'LABANGKA IV ', 'RUAS JALAN ROPANG - SEKOKAT ', 30.50, 4.20, 1.00, 'RBS', 3.00, 'B', 1.00, 'SU', 1.00, 'K', 3.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (435, '42.113.003.0.1 ', 'LABANGKA V ', 'RUAS JALAN ROPANG - SEKOKAT ', 30.50, 4.20, 1.00, 'RBS', 3.00, 'B', 1.00, 'SU', 1.00, 'K', 3.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (436, '42.113.004.0.1 ', 'NANGA POLA ', 'RUAS JALAN ROPANG - SEKOKAT ', 25.50, 6.10, 1.00, 'GBL', 3.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (437, '42.113.005.0.1 ', 'SEBEKIL ', 'RUAS JALAN ROPANG - SEKOKAT ', 50.00, 0.00, 1.00, 'WXX', 5.00, '0.00 ', 0.00, '0.00 ', 0.00, '0.00 ', 5.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (438, '42.113.006.0.1 ', 'BIAU ', 'RUAS JALAN ROPANG - SEKOKAT ', 30.00, 6.00, 1.00, 'RBR', 1.00, 'B', 1.00, 'SU', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (439, '42.113.007.0.1 ', 'SENDA ', 'RUAS JALAN ROPANG - SEKOKAT ', 8.00, 0.00, 1.00, 'WXX', 5.00, '0.00 ', 0.00, '0.00 ', 0.00, '0.00 ', 5.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (440, '42.113.008.0.1 ', 'PARALENG ', 'RUAS JALAN ROPANG - SEKOKAT ', 10.00, 0.00, 1.00, 'WXX', 5.00, '0.00 ', 0.00, '0.00 ', 0.00, '0.00 ', 5.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (441, '42.113.009.0.1 ', 'SOSO\' BATU ', 'RUAS JALAN ROPANG - SEKOKAT ', 8.00, 0.00, 1.00, 'WXX', 5.00, '0.00 ', 0.00, '0.00 ', 0.00, '0.00 ', 5.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (442, '42.113.010.0.1 ', 'NOOK ', 'RUAS JALAN ROPANG - SEKOKAT ', 8.00, 0.00, 1.00, 'WXX', 5.00, '0.00 ', 0.00, '0.00 ', 0.00, '0.00 ', 5.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (443, '42.113.023.0.2 ', 'KOKAR LABANGKA 3 ', 'RUAS JALAN SEKOKAT - MBAWI ', 20.00, 0.00, 1.00, 'WXX', 5.00, '0.00 ', 0.00, '0.00 ', 0.00, '0.00 ', 5.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (444, '42.113.023.0.2 ', 'BRANG LEPU I ', 'RUAS JALAN SEKOKAT - MBAWI ', 20.00, 0.00, 1.00, 'WXX', 5.00, '0.00 ', 0.00, '0.00 ', 0.00, '0.00 ', 5.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (445, '42.113.023.0.2 ', 'BRANG LEPU II ', 'RUAS JALAN SEKOKAT - MBAWI ', 10.00, 0.00, 1.00, 'WXX', 5.00, '0.00 ', 0.00, '0.00 ', 0.00, '0.00 ', 5.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (446, '42.113.026.0.2 ', 'KOKAR UDANG ', 'RUAS JALAN SEKOKAT - MBAWI ', 60.00, 0.00, 1.00, 'WXX', 5.00, '0.00 ', 0.00, '0.00 ', 0.00, '0.00 ', 5.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (447, '42.113.027.0.2 ', 'KOKAR BORANG I ', 'RUAS JALAN SEKOKAT - MBAWI ', 150.00, 0.00, 1.00, 'WXX', 5.00, '0.00 ', 0.00, '0.00 ', 0.00, '0.00 ', 5.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (448, '42.113.028.0.2 ', 'BRANG BORANG II ', 'RUAS JALAN SEKOKAT - MBAWI ', 100.00, 0.00, 1.00, 'WXX', 5.00, '0.00 ', 0.00, '0.00 ', 0.00, '0.00 ', 5.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (449, '42.113.029.0.2 ', 'KOKAR TAMPAR ODE II ', 'RUAS JALAN SEKOKAT - MBAWI ', 20.00, 0.00, 1.00, 'WXX', 5.00, '0.00 ', 0.00, '0.00 ', 0.00, '0.00 ', 5.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (450, '42.113.030.0.2 ', 'KOKAR TAMPAR ODE II ', 'RUAS JALAN SEKOKAT - MBAWI ', 25.00, 0.00, 1.00, 'WXX', 5.00, '0.00 ', 0.00, '0.00 ', 0.00, '0.00 ', 5.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (451, '42.113.031.0.2 ', 'KOKAR TAMPAR ODE III ', 'RUAS JALAN SEKOKAT - MBAWI ', 25.00, 0.00, 1.00, 'WXX', 5.00, '0.00 ', 0.00, '0.00 ', 0.00, '0.00 ', 5.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (452, '42.113.032.0.2 ', 'KOKAR JORENG I ', 'RUAS JALAN SEKOKAT - MBAWI ', 20.00, 0.00, 1.00, 'WXX', 5.00, '0.00 ', 0.00, '0.00 ', 0.00, '0.00 ', 5.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (453, '42.113.033.0.2 ', 'KOKAR JORENG II ', 'RUAS JALAN SEKOKAT - MBAWI ', 20.00, 0.00, 1.00, 'WXX', 5.00, '0.00 ', 0.00, '0.00 ', 0.00, '0.00 ', 5.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (454, '42.113.034.0.2 ', 'KOKAR JORENG II ', 'RUAS JALAN SEKOKAT - MBAWI ', 20.00, 0.00, 1.00, 'WXX', 5.00, '0.00 ', 0.00, '0.00 ', 0.00, '0.00 ', 5.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (455, '42.113.035.0.2 ', 'BRANG BETINGGAL I ', 'RUAS JALAN SEKOKAT - MBAWI ', 100.00, 0.00, 1.00, 'WXX', 5.00, '0.00 ', 0.00, '0.00 ', 0.00, '0.00 ', 5.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (456, '42.113.036.0.2 ', 'BRANG BETINGGAL II ', 'RUAS JALAN SEKOKAT - MBAWI ', 15.00, 0.00, 1.00, 'WXX', 5.00, '0.00 ', 0.00, '0.00 ', 0.00, '0.00 ', 5.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (457, '42.113.037.0.2 ', 'BRANG BETINGGAL III ', 'RUAS JALAN SEKOKAT - MBAWI ', 10.00, 0.00, 1.00, 'WXX', 5.00, '0.00 ', 0.00, '0.00 ', 0.00, '0.00 ', 5.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (458, '42.113.038.0.2 ', 'BRANG BETINGGAL IV ', 'RUAS JALAN SEKOKAT - MBAWI ', 200.00, 0.00, 1.00, 'WXX', 5.00, '0.00 ', 0.00, '0.00 ', 0.00, '0.00 ', 5.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (459, '42.113.039.0.2 ', 'BRANG BETINGGAL V ', 'RUAS JALAN SEKOKAT - MBAWI ', 50.00, 0.00, 1.00, 'WXX', 5.00, '0.00 ', 0.00, '0.00 ', 0.00, '0.00 ', 5.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (460, '42.113.040.0.2 ', 'BRANG GALUNI ', 'RUAS JALAN SEKOKAT - MBAWI ', 100.00, 0.00, 1.00, 'WXX', 5.00, '0.00 ', 0.00, '0.00 ', 0.00, '0.00 ', 5.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (461, '42.113.041.0.2 ', 'BRANG TAMPAR BAGIK I ', 'RUAS JALAN SEKOKAT - MBAWI ', 100.00, 0.00, 1.00, 'WXX', 5.00, '0.00 ', 0.00, '0.00 ', 0.00, '0.00 ', 5.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (462, '42.113.042.0.2 ', 'BRANG TAMPAR BAGIK II ', 'RUAS JALAN SEKOKAT - MBAWI ', 20.00, 0.00, 1.00, 'WXX', 5.00, '0.00 ', 0.00, '0.00 ', 0.00, '0.00 ', 5.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (463, '42.113.043.0.2 ', 'BRANG AIK MUMIL I ', 'RUAS JALAN SEKOKAT - MBAWI ', 150.00, 0.00, 1.00, 'WXX', 5.00, '0.00 ', 0.00, '0.00 ', 0.00, '0.00 ', 5.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (464, '42.113.044.0.2 ', 'KOKAR AIK MUMIL II ', 'RUAS JALAN SEKOKAT - MBAWI ', 25.00, 0.00, 1.00, 'WXX', 5.00, '0.00 ', 0.00, '0.00 ', 0.00, '0.00 ', 5.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (465, '42.113.045.0.2 ', 'BRANG MUMIL III ', 'RUAS JALAN SEKOKAT - MBAWI ', 50.00, 0.00, 1.00, 'WXX', 5.00, '0.00 ', 0.00, '0.00 ', 0.00, '0.00 ', 5.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (466, '42.113.046.0.2 ', 'BRANG MUMIL IV ', 'RUAS JALAN SEKOKAT - MBAWI ', 50.00, 0.00, 1.00, 'WXX', 5.00, '0.00 ', 0.00, '0.00 ', 0.00, '0.00 ', 5.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (467, '42.113.047.0.2 ', 'KOKAR AI PANAN ', 'RUAS JALAN SEKOKAT - MBAWI ', 20.00, 0.00, 1.00, 'WXX', 5.00, '0.00 ', 0.00, '0.00 ', 0.00, '0.00 ', 5.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (468, '42.113.048.0.2 ', 'KOKAR JUNG RUSAK I ', 'RUAS JALAN SEKOKAT - MBAWI ', 20.00, 0.00, 1.00, 'WXX', 5.00, '0.00 ', 0.00, '0.00 ', 0.00, '0.00 ', 5.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (469, '42.113.049.0.2 ', 'KOKAR JUNG RUSAK II ', 'RUAS JALAN SEKOKAT - MBAWI ', 20.00, 0.00, 1.00, 'WXX', 5.00, '0.00 ', 0.00, '0.00 ', 0.00, '0.00 ', 5.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (470, '42.113.050.0.2 ', 'KOKAR BARU I ', 'RUAS JALAN SEKOKAT - MBAWI ', 20.00, 0.00, 1.00, 'WXX', 5.00, '0.00 ', 0.00, '0.00 ', 0.00, '0.00 ', 5.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (471, '42.113.051.0.2 ', 'KOKAR BARU II ', 'RUAS JALAN SEKOKAT - MBAWI ', 150.00, 0.00, 1.00, 'WXX', 5.00, '0.00 ', 0.00, '0.00 ', 0.00, '0.00 ', 5.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (472, '42.113.052.0.2 ', 'KOKAR TAMPAR PISAK I ', 'RUAS JALAN SEKOKAT - MBAWI ', 10.00, 0.00, 1.00, 'WXX', 5.00, '0.00 ', 0.00, '0.00 ', 0.00, '0.00 ', 5.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (473, '42.113.053.0.2 ', 'KOKAR TAMPAR PISAK II ', 'RUAS JALAN SEKOKAT - MBAWI ', 10.00, 0.00, 1.00, 'WXX', 5.00, '0.00 ', 0.00, '0.00 ', 0.00, '0.00 ', 5.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (474, '42.113.054.0.2 ', 'KOKAR TAMPAR PISAK III ', 'RUAS JALAN SEKOKAT - MBAWI ', 60.00, 0.00, 1.00, 'WXX', 5.00, '0.00 ', 0.00, '0.00 ', 0.00, '0.00 ', 5.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (475, '42.113.055.0.2 ', 'BRANG BATU ANAR I ', 'RUAS JALAN SEKOKAT - MBAWI ', 50.00, 0.00, 1.00, 'WXX', 5.00, '0.00 ', 0.00, '0.00 ', 0.00, '0.00 ', 5.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (476, '42.113.056.0.2 ', 'KOKAR BATU ANAR II ', 'RUAS JALAN SEKOKAT - MBAWI ', 20.00, 0.00, 1.00, 'WXX', 5.00, '0.00 ', 0.00, '0.00 ', 0.00, '0.00 ', 5.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (477, '42.113.057.0.2 ', 'BRANG BATU ANAR III ', 'RUAS JALAN SEKOKAT - MBAWI ', 120.00, 0.00, 1.00, 'WXX', 5.00, '0.00 ', 0.00, '0.00 ', 0.00, '0.00 ', 5.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (478, '42.113.058.0.2 ', 'KOKAR BURUK ', 'RUAS JALAN SEKOKAT - MBAWI ', 25.00, 0.00, 1.00, 'WXX', 5.00, '0.00 ', 0.00, '0.00 ', 0.00, '0.00 ', 5.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (479, '42.113.059.0.2 ', 'KOKAR TAKAT REAK I ', 'RUAS JALAN SEKOKAT - MBAWI ', 20.00, 0.00, 1.00, 'WXX', 5.00, '0.00 ', 0.00, '0.00 ', 0.00, '0.00 ', 5.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (480, '42.113.060.0.2 ', 'BRANG TAKAT REAK II ', 'RUAS JALAN SEKOKAT - MBAWI ', 50.00, 0.00, 1.00, 'WXX', 5.00, '0.00 ', 0.00, '0.00 ', 0.00, '0.00 ', 5.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (481, '42.113.061.0.2 ', 'BRANG TAMPAR DALAM I ', 'RUAS JALAN SEKOKAT - MBAWI ', 50.00, 0.00, 1.00, 'WXX', 5.00, '0.00 ', 0.00, '0.00 ', 0.00, '0.00 ', 5.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (482, '42.113.062.0.2 ', 'BRANG TAMPAR DALAM II ', 'RUAS JALAN SEKOKAT - MBAWI ', 15.00, 0.00, 1.00, 'WXX', 5.00, '0.00 ', 0.00, '0.00 ', 0.00, '0.00 ', 5.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (483, '42.113.063.0.2 ', 'BRANG TAMPAR DALAM III ', 'RUAS JALAN SEKOKAT - MBAWI ', 10.00, 0.00, 1.00, 'WXX', 5.00, '0.00 ', 0.00, '0.00 ', 0.00, '0.00 ', 5.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (484, '42.113.064.0.2 ', 'BRANG TAMPAR DALAM IV ', 'RUAS JALAN SEKOKAT - MBAWI ', 50.00, 0.00, 1.00, 'WXX', 5.00, '0.00 ', 0.00, '0.00 ', 0.00, '0.00 ', 5.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (485, '42.113.065.0.2 ', 'BRANG KELIMUTU I ', 'RUAS JALAN SEKOKAT - MBAWI ', 50.00, 0.00, 1.00, 'WXX', 5.00, '0.00 ', 0.00, '0.00 ', 0.00, '0.00 ', 5.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (486, '42.113.066.0.2 ', 'BRANG KELIMUTU II ', 'RUAS JALAN SEKOKAT - MBAWI ', 50.00, 0.00, 1.00, 'WXX', 5.00, '0.00 ', 0.00, '0.00 ', 0.00, '0.00 ', 5.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (487, '42.113.067.0.2 ', 'BRANG KELIMUTU III ', 'RUAS JALAN SEKOKAT - MBAWI ', 50.00, 0.00, 1.00, 'WXX', 5.00, '0.00 ', 0.00, '0.00 ', 0.00, '0.00 ', 5.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (488, '42.113.068.0.2 ', 'BRANG KELIMUTU IV ', 'RUAS JALAN SEKOKAT - MBAWI ', 50.00, 0.00, 1.00, 'WXX', 5.00, '0.00 ', 0.00, '0.00 ', 0.00, '0.00 ', 5.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (489, '42.113.069.0.2 ', 'BRANG TRENG I ', 'RUAS JALAN SEKOKAT - MBAWI ', 50.00, 0.00, 1.00, 'WXX', 5.00, '0.00 ', 0.00, '0.00 ', 0.00, '0.00 ', 5.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (490, '42.113.070.0.2 ', 'BRANG TRENG II ', 'RUAS JALAN SEKOKAT - MBAWI ', 50.00, 0.00, 1.00, 'WXX', 5.00, '0.00 ', 0.00, '0.00 ', 0.00, '0.00 ', 5.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (491, '42.113.071.0.2 ', 'KOKAR ODE I ', 'RUAS JALAN SEKOKAT - MBAWI ', 10.00, 0.00, 1.00, 'WXX', 5.00, '0.00 ', 0.00, '0.00 ', 0.00, '0.00 ', 5.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (492, '42.113.072.0.2 ', 'BRANG ODE II ', 'RUAS JALAN SEKOKAT - MBAWI ', 50.00, 0.00, 1.00, 'WXX', 5.00, '0.00 ', 0.00, '0.00 ', 0.00, '0.00 ', 5.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (493, '42.113.073.0.2 ', 'BRANG ODE III ', 'RUAS JALAN SEKOKAT - MBAWI ', 50.00, 0.00, 1.00, 'WXX', 5.00, '0.00 ', 0.00, '0.00 ', 0.00, '0.00 ', 5.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (494, '42.113.074.0.2 ', 'KOKAR ODE IV ', 'RUAS JALAN SEKOKAT - MBAWI ', 10.00, 0.00, 1.00, 'WXX', 5.00, '0.00 ', 0.00, '0.00 ', 0.00, '0.00 ', 5.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (495, '42.113.075.0.2 ', 'KOKAR ODE V ', 'RUAS JALAN SEKOKAT - MBAWI ', 5.00, 0.00, 1.00, 'WXX', 5.00, '0.00 ', 0.00, '0.00 ', 0.00, '0.00 ', 5.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (496, '42.113.076.0.2 ', 'BRANG BATU BULAN I ', 'RUAS JALAN SEKOKAT - MBAWI ', 100.00, 0.00, 1.00, 'WXX', 5.00, '0.00 ', 0.00, '0.00 ', 0.00, '0.00 ', 5.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (497, '42.113.077.0.2 ', 'BRANG BATU BULAN II ', 'RUAS JALAN SEKOKAT - MBAWI ', 50.00, 0.00, 1.00, 'WXX', 5.00, '0.00 ', 0.00, '0.00 ', 0.00, '0.00 ', 5.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (498, '42.113.078.0.2 ', 'KOKAR BATU BOLONG I ', 'RUAS JALAN SEKOKAT - MBAWI ', 15.00, 0.00, 1.00, 'WXX', 5.00, '0.00 ', 0.00, '0.00 ', 0.00, '0.00 ', 5.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (499, '42.113.079.0.2 ', 'KOKAR BATU BOLONG II ', 'RUAS JALAN SEKOKAT - MBAWI ', 10.00, 0.00, 1.00, 'WXX', 5.00, '0.00 ', 0.00, '0.00 ', 0.00, '0.00 ', 5.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (500, '42.113.080.0.2 ', 'KOKAR BATU BOLONG III ', 'RUAS JALAN SEKOKAT - MBAWI ', 20.00, 0.00, 1.00, 'WXX', 5.00, '0.00 ', 0.00, '0.00 ', 0.00, '0.00 ', 5.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (501, '42.113.081.0.2 ', 'KOKAR BATU BOLONG IV ', 'RUAS JALAN SEKOKAT - MBAWI ', 10.00, 0.00, 1.00, 'WXX', 5.00, '0.00 ', 0.00, '0.00 ', 0.00, '0.00 ', 5.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (502, '42.113.082.0.2 ', 'BRANG ODEK I ', 'RUAS JALAN SEKOKAT - MBAWI ', 50.00, 0.00, 1.00, 'WXX', 5.00, '0.00 ', 0.00, '0.00 ', 0.00, '0.00 ', 5.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (503, '42.113.083.0.2 ', 'KOKAR ODEK II ', 'RUAS JALAN SEKOKAT - MBAWI ', 10.00, 0.00, 1.00, 'WXX', 5.00, '0.00 ', 0.00, '0.00 ', 0.00, '0.00 ', 5.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (504, '42.113.084.0.2 ', 'KOKAR ODEK III ', 'RUAS JALAN SEKOKAT - MBAWI ', 10.00, 0.00, 1.00, 'WXX', 5.00, '0.00 ', 0.00, '0.00 ', 0.00, '0.00 ', 5.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (505, '42.113.085.0.2 ', 'KOKAR ODEK IV ', 'RUAS JALAN SEKOKAT - MBAWI ', 10.00, 0.00, 1.00, 'WXX', 5.00, '0.00 ', 0.00, '0.00 ', 0.00, '0.00 ', 5.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (506, '42.113.086.0.2 ', 'KOKAR RUKU ', 'RUAS JALAN SEKOKAT - MBAWI ', 25.00, 0.00, 1.00, 'WXX', 5.00, '0.00 ', 0.00, '0.00 ', 0.00, '0.00 ', 5.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (507, '42.113.087.0.2 ', 'KOKAR KAJAH I ', 'RUAS JALAN SEKOKAT - MBAWI ', 20.00, 0.00, 1.00, 'WXX', 5.00, '0.00 ', 0.00, '0.00 ', 0.00, '0.00 ', 5.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (508, '42.113.088.0.2 ', 'KOKAR KAJAH II ', 'RUAS JALAN SEKOKAT - MBAWI ', 10.00, 0.00, 1.00, 'WXX', 5.00, '0.00 ', 0.00, '0.00 ', 0.00, '0.00 ', 5.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (509, '42.113.089.0.2 ', 'KOKAR KAJAH III ', 'RUAS JALAN SEKOKAT - MBAWI ', 15.00, 0.00, 1.00, 'WXX', 5.00, '0.00 ', 0.00, '0.00 ', 0.00, '0.00 ', 5.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (510, '42.113.090.0.2 ', 'KOKAR IPIL ', 'RUAS JALAN SEKOKAT - MBAWI ', 10.00, 0.00, 1.00, 'WXX', 5.00, '0.00 ', 0.00, '0.00 ', 0.00, '0.00 ', 5.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (511, '42.113.091.0.2 ', 'BRANG BUA ', 'RUAS JALAN SEKOKAT - MBAWI ', 60.00, 0.00, 1.00, 'WXX', 5.00, '0.00 ', 0.00, '0.00 ', 0.00, '0.00 ', 5.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (512, '42.113.092.0.2 ', 'BRANG KAJAH IV ', 'RUAS JALAN SEKOKAT - MBAWI ', 100.00, 0.00, 1.00, 'WXX', 5.00, '0.00 ', 0.00, '0.00 ', 0.00, '0.00 ', 5.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (513, '42.113.093.0.2 ', 'KOKAR SEKADUNG I ', 'RUAS JALAN SEKOKAT - MBAWI ', 25.00, 0.00, 1.00, 'WXX', 5.00, '0.00 ', 0.00, '0.00 ', 0.00, '0.00 ', 5.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (514, '42.113.094.0.2 ', 'KOKAR SEKADUNG II ', 'RUAS JALAN SEKOKAT - MBAWI ', 25.00, 0.00, 1.00, 'WXX', 5.00, '0.00 ', 0.00, '0.00 ', 0.00, '0.00 ', 5.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (515, '42.113.095.0.2 ', 'BRANG GELUMPANG I ', 'RUAS JALAN SEKOKAT - MBAWI ', 50.00, 0.00, 1.00, 'WXX', 5.00, '0.00 ', 0.00, '0.00 ', 0.00, '0.00 ', 5.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (516, '42.113.096.0.2 ', 'BRANG GELUMPANG II ', 'RUAS JALAN SEKOKAT - MBAWI ', 20.00, 0.00, 1.00, 'WXX', 5.00, '0.00 ', 0.00, '0.00 ', 0.00, '0.00 ', 5.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (517, '42.113.097.0.2 ', 'KOKAR TERO I ', 'RUAS JALAN SEKOKAT - MBAWI ', 10.00, 0.00, 1.00, 'WXX', 5.00, '0.00 ', 0.00, '0.00 ', 0.00, '0.00 ', 5.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (518, '42.113.098.0.2 ', 'KOKAR TERO II ', 'RUAS JALAN SEKOKAT - MBAWI ', 20.00, 0.00, 1.00, 'WXX', 5.00, '0.00 ', 0.00, '0.00 ', 0.00, '0.00 ', 5.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (519, '42.113.099.0.2 ', 'KOKAR MEJO ', 'RUAS JALAN SEKOKAT - MBAWI ', 10.00, 0.00, 1.00, 'WXX', 5.00, '0.00 ', 0.00, '0.00 ', 0.00, '0.00 ', 5.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (520, '42.113.100.0.2 ', 'KOKAR TERO III ', 'RUAS JALAN SEKOKAT - MBAWI ', 20.00, 0.00, 1.00, 'WXX', 5.00, '0.00 ', 0.00, '0.00 ', 0.00, '0.00 ', 5.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (521, '42.113.101.0.2 ', 'KOKAR IMO ', 'RUAS JALAN SEKOKAT - MBAWI ', 20.00, 0.00, 1.00, 'WXX', 5.00, '0.00 ', 0.00, '0.00 ', 0.00, '0.00 ', 5.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (522, '42.115.001.0 ', 'SELANTE I ', 'RUAS JALAN PLAMPANG - SEKOKAT ', 5.30, 6.00, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (523, '42.115.002.0 ', 'SELANTE II ', 'RUAS JALAN PLAMPANG - SEKOKAT ', 33.20, 6.40, 2.00, 'GTI', 2.00, 'B', 1.00, 'SU', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (524, '42.115.003.0 ', 'PRUAK NELOKA ', 'RUAS JALAN PLAMPANG - SEKOKAT ', 15.60, 6.30, 1.00, 'GTI', 3.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (525, '42.115.004.0 ', 'UNTIR RENGA ', 'RUAS JALAN PLAMPANG - SEKOKAT ', 12.90, 6.30, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (526, '42.115.005.0 ', 'BRANG BARU ', 'RUAS JALAN PLAMPANG - SEKOKAT ', 15.80, 6.30, 1.00, 'GTI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (527, '42.115.006.0 ', 'LABANGKA I ', 'RUAS JALAN PLAMPANG - SEKOKAT ', 15.60, 6.50, 2.00, 'BTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (528, '42.115.007.0 ', 'MATA GELUNING ', 'RUAS JALAN PLAMPANG - SEKOKAT ', 20.80, 6.00, 1.00, 'GTI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (529, '42.115.007.1 ', 'KOKAR LABANGKA ', 'RUAS JALAN PLAMPANG - SEKOKAT ', 6.50, 6.10, 1.00, 'GTI', 3.00, 'B', 1.00, 'LS', 1.00, 'TA', 3.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (530, '42.115.008.0 ', 'LABANGKA II ', 'RUAS JALAN PLAMPANG - SEKOKAT ', 11.00, 6.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (531, '42.115.009.0 ', 'SEKOKAT ', 'RUAS JALAN PLAMPANG - SEKOKAT ', 25.60, 4.60, 1.00, 'GTI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (532, '42.044.010.0 ', 'HUU BESAR ', 'RUAS JALAN DOMPU - HU\'U ', 50.00, 6.00, 1.00, 'RBA', 2.00, 'B', 1.00, 'SU', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (533, '42.117.001.0 ', 'SORI SANTE ', 'RUAS JALAN SIMPANG KEMPO - SIMPANG KORE ', 6.10, 6.20, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (534, '42.117.002.0 ', 'LANCI ', 'RUAS JALAN SIMPANG KEMPO - SIMPANG KORE ', 4.80, 4.70, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (535, '42.117.003.0 ', 'KENU ', 'RUAS JALAN SIMPANG KEMPO - SIMPANG KORE ', 6.00, 4.70, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (536, '42.117.004.0 ', 'WADU NAE ', 'RUAS JALAN SIMPANG KEMPO - SIMPANG KORE ', 6.00, 5.50, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (537, '42.117.005.0 ', 'MPOLO ', 'RUAS JALAN SIMPANG KEMPO - SIMPANG KORE ', 11.90, 6.20, 1.00, 'GTI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (538, '42.117.006.0 ', 'NISA I ', 'RUAS JALAN SIMPANG KEMPO - SIMPANG KORE ', 10.10, 6.30, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (539, '42.117.007.0 ', 'NISA II ', 'RUAS JALAN SIMPANG KEMPO - SIMPANG KORE ', 8.10, 6.80, 1.00, 'GTI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (540, '42.118.001.0.1 ', 'KAMBU ', 'RUAS JALAN SIMPANG KORE - KIWU ', 30.50, 6.00, 1.00, 'RBB', 2.00, 'B', 1.00, 'TP', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (541, '42.118.002.0.1 ', 'MBUJU ', 'RUAS JALAN SIMPANG KORE - KIWU ', 12.70, 6.40, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (542, '42.118.003.0.1 ', 'SORI LO ', 'RUAS JALAN SIMPANG KORE - KIWU ', 10.80, 6.40, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (543, '42.118.004.0.1 ', 'ENCA I ', 'RUAS JALAN SIMPANG KORE - KIWU ', 18.90, 6.30, 1.00, 'GTI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (544, '42.118.005.0.1 ', 'ENCA II ', 'RUAS JALAN SIMPANG KORE - KIWU ', 3.10, 3.80, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (545, '42.118.006.0.1 ', 'ENCA III ', 'RUAS JALAN SIMPANG KORE - KIWU ', 5.20, 6.00, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (546, '42.118.007.0.1 ', 'PATULA ', 'RUAS JALAN SIMPANG KORE - KIWU ', 41.60, 4.00, 2.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (547, '42.120.000.2 ', 'OI TOSI ', 'RUAS JALAN HU\'U - PARADO ', 5.00, 4.90, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (548, '42.120.001.1 ', 'LAKEY I ', 'RUAS JALAN HU\'U - PARADO ', 6.90, 4.90, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (549, '42.120.002.1 ', 'LAKEY II ', 'RUAS JALAN HU\'U - PARADO ', 10.50, 4.80, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (550, '42.120.003.0 ', 'NCANGA ', 'RUAS JALAN HU\'U - PARADO ', 14.80, 4.70, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (551, '42.120.004.0 ', 'WADU NAE ', 'RUAS JALAN HU\'U - PARADO ', 10.50, 4.80, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (552, '42.120.005.0 ', 'SUPA ', 'RUAS JALAN HU\'U - PARADO ', 10.70, 4.70, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (553, '42.120.006.0 ', 'TANTE\'E ', 'RUAS JALAN HU\'U - PARADO ', 8.80, 4.70, 1.00, 'GTI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (554, '42.120.007.0 ', 'NANGA DORO I ', 'RUAS JALAN HU\'U - PARADO ', 50.00, 6.00, 1.00, 'WXX', 5.00, '0.00 ', 0.00, '0.00 ', 0.00, '0.00 ', 5.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (555, '42.120.008.0 ', 'NANGA DORO II ', 'RUAS JALAN HU\'U - PARADO ', 12.80, 5.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (556, '42.120.009.0 ', 'NANGA DORO III ', 'RUAS JALAN HU\'U - PARADO ', 30.00, 7.00, 1.00, 'RBR', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (557, '42.120.010.0 ', 'MATITI ', 'RUAS JALAN HU\'U - PARADO ', 30.00, 7.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (558, '42.120.011.0 ', 'CEKUNGAN DALAM ', 'RUAS JALAN HU\'U - PARADO ', 40.00, 0.00, 1.00, 'WXX', 5.00, '0.00 ', 0.00, '0.00 ', 0.00, '0.00 ', 5.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (559, '42.120.012.0 ', 'TEROLULU I ', 'RUAS JALAN HU\'U - PARADO ', 30.00, 0.00, 1.00, 'WXX', 5.00, '0.00 ', 0.00, '0.00 ', 0.00, '0.00 ', 5.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (560, '42.120.013.0 ', 'TEROLULU II ', 'RUAS JALAN HU\'U - PARADO ', 30.00, 0.00, 1.00, 'WXX', 5.00, '0.00 ', 0.00, '0.00 ', 0.00, '0.00 ', 5.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (561, '42.120.014.0 ', 'TEROLULU III ', 'RUAS JALAN HU\'U - PARADO ', 30.00, 7.00, 1.00, 'RBR', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (562, '42.120.015.0 ', 'L A M E A  ', 'RUAS JALAN HU\'U - PARADO ', 25.00, 0.00, 1.00, 'WXX', 5.00, '0.00 ', 0.00, '0.00 ', 0.00, '0.00 ', 5.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (563, '42.120.016.0 ', 'S A M A I ', 'RUAS JALAN HU\'U - PARADO ', 15.00, 0.00, 1.00, 'WXX', 5.00, '0.00 ', 0.00, '0.00 ', 0.00, '0.00 ', 5.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (564, '42.120.017.0 ', 'S A M A II ', 'RUAS JALAN HU\'U - PARADO ', 30.00, 0.00, 1.00, 'WXX', 5.00, '0.00 ', 0.00, '0.00 ', 0.00, '0.00 ', 5.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (565, '42.120.018.0 ', 'SADIDI RANGGE I ', 'RUAS JALAN HU\'U - PARADO ', 25.00, 0.00, 1.00, 'WXX', 5.00, '0.00 ', 0.00, '0.00 ', 0.00, '0.00 ', 5.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (566, '42.120.019.0 ', 'SADIDI RANGGE II ', 'RUAS JALAN HU\'U - PARADO ', 25.00, 0.00, 1.00, 'WXX', 5.00, '0.00 ', 0.00, '0.00 ', 0.00, '0.00 ', 5.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (567, '42.116.064.0.1 ', 'LB. KENANGA ', 'RUAS JALAN KAWINDA TO\'I - LB. KENANGA (BTS. KOTA DOMPU) ', 30.00, 3.10, 1.00, 'RBR', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (568, '42.116.065.0.1 ', 'SORI JATI I ', 'RUAS JALAN KAWINDA TO\'I - LB. KENANGA (BTS. KOTA DOMPU) ', 10.60, 5.30, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (569, '42.116.066.0.1 ', 'SORI JATI II ', 'RUAS JALAN KAWINDA TO\'I - LB. KENANGA (BTS. KOTA DOMPU) ', 10.00, 6.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (570, '42.116.067.0.1 ', 'SORI BURA  ', 'RUAS JALAN KAWINDA TO\'I - LB. KENANGA (BTS. KOTA DOMPU) ', 30.00, 6.00, 2.00, 'GTI', 1.00, 'B', 1.00, 'SU', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (571, '42.116.068.0.1 ', 'KAWINDA NAE ', 'RUAS JALAN KAWINDA TO\'I - LB. KENANGA (BTS. KOTA DOMPU) ', 25.60, 6.20, 1.00, 'GBL', 3.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (572, '42.116.069.0.1 ', 'SORI PANIHI ', 'RUAS JALAN KAWINDA TO\'I - LB. KENANGA (BTS. KOTA DOMPU) ', 25.60, 6.20, 1.00, 'GBL', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (573, '42.116.070.0.1 ', 'LABU BILI ', 'RUAS JALAN KAWINDA TO\'I - LB. KENANGA (BTS. KOTA DOMPU) ', 22.00, 5.00, 1.00, 'WXX', 5.00, '0.00 ', 0.00, '0.00 ', 0.00, '0.00 ', 5.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (574, '42.116.071.0.1 ', 'DOROMBOLO ', 'RUAS JALAN KAWINDA TO\'I - LB. KENANGA (BTS. KOTA DOMPU) ', 15.80, 6.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'SU', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (575, '42.116.072.0.1 ', 'DOROMBOLO I/KAWINDA ', 'RUAS JALAN KAWINDA TO\'I - LB. KENANGA (BTS. KOTA DOMPU) ', 30.00, 0.00, 1.00, 'WXX', 5.00, '0.00 ', 0.00, '0.00 ', 0.00, '0.00 ', 5.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (576, '42.116.073.0.1 ', 'DOROMBOLO II/KAWINDA V ', 'RUAS JALAN KAWINDA TO\'I - LB. KENANGA (BTS. KOTA DOMPU) ', 30.00, 0.00, 1.00, 'WXX', 5.00, '0.00 ', 0.00, '0.00 ', 0.00, '0.00 ', 5.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (577, '42.116.074.0.1 ', 'DOROMBOLO III/KAWINDA ', 'RUAS JALAN KAWINDA TO\'I - LB. KENANGA (BTS. KOTA DOMPU) ', 17.00, 0.00, 1.00, 'WXX', 5.00, '0.00 ', 0.00, '0.00 ', 0.00, '0.00 ', 5.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (578, '42.116.075.0.1 ', 'DOROMBOLO IV/KAWINDA X ', 'RUAS JALAN KAWINDA TO\'I - LB. KENANGA (BTS. KOTA DOMPU) ', 15.00, 0.00, 1.00, 'WXX', 5.00, '0.00 ', 0.00, '0.00 ', 0.00, '0.00 ', 5.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (579, '42.116.076.0.1 ', 'DOROMBOLO V/KAWINDA ', 'RUAS JALAN KAWINDA TO\'I - LB. KENANGA (BTS. KOTA DOMPU) ', 60.00, 0.00, 1.00, 'WXX', 5.00, '0.00 ', 0.00, '0.00 ', 0.00, '0.00 ', 5.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (580, '42.116.077.0.1 ', 'DOROMBOLO VI/KAWINDA ', 'RUAS JALAN KAWINDA TO\'I - LB. KENANGA (BTS. KOTA DOMPU) ', 15.00, 0.00, 1.00, 'WXX', 5.00, '0.00 ', 0.00, '0.00 ', 0.00, '0.00 ', 5.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (581, '42.116.078.0.1 ', 'DOROMBOLO VII/KAWINDA ', 'RUAS JALAN KAWINDA TO\'I - LB. KENANGA (BTS. KOTA DOMPU) ', 15.00, 0.00, 1.00, 'WXX', 5.00, '0.00 ', 0.00, '0.00 ', 0.00, '0.00 ', 5.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (582, '42.116.079.0.1 ', 'OI MORI I ', 'RUAS JALAN KAWINDA TO\'I - LB. KENANGA (BTS. KOTA DOMPU) ', 20.00, 0.00, 1.00, 'WXX', 5.00, '0.00 ', 0.00, '0.00 ', 0.00, '0.00 ', 5.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (583, '42.116.080.0.1 ', 'OI MORI II ', 'RUAS JALAN KAWINDA TO\'I - LB. KENANGA (BTS. KOTA DOMPU) ', 15.00, 0.00, 1.00, 'WXX', 5.00, '0.00 ', 0.00, '0.00 ', 0.00, '0.00 ', 5.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (584, '42.116.081.0.1 ', 'OI MORI III ', 'RUAS JALAN KAWINDA TO\'I - LB. KENANGA (BTS. KOTA DOMPU) ', 20.00, 0.00, 1.00, 'WXX', 5.00, '0.00 ', 0.00, '0.00 ', 0.00, '0.00 ', 5.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (585, '42.116.082.0.1 ', 'KAWINDA ', 'RUAS JALAN KAWINDA TO\'I - LB. KENANGA (BTS. KOTA DOMPU) ', 15.00, 0.00, 1.00, 'WXX', 5.00, '0.00 ', 0.00, '0.00 ', 0.00, '0.00 ', 5.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (586, '42.116.083.0.2 ', 'OI KETUPA ', 'RUAS JALAN PIONG - KAWINDA TO\'I ', 20.00, 0.00, 1.00, 'WXX', 5.00, '0.00 ', 0.00, '0.00 ', 0.00, '0.00 ', 5.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (587, '42.116.084.0.2 ', 'PIONG I/PIONG VI ', 'RUAS JALAN PIONG - KAWINDA TO\'I ', 15.00, 0.00, 1.00, 'WXX', 5.00, '0.00 ', 0.00, '0.00 ', 0.00, '0.00 ', 5.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (588, '42.116.085.0.2 ', 'PIONG II/PIONG V ', 'RUAS JALAN PIONG - KAWINDA TO\'I ', 20.00, 0.00, 1.00, 'WXX', 5.00, '0.00 ', 0.00, '0.00 ', 0.00, '0.00 ', 5.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (589, '42.116.086.0.2 ', 'PIONG III/PIONG IV ', 'RUAS JALAN PIONG - KAWINDA TO\'I ', 25.00, 0.00, 1.00, 'WXX', 5.00, '0.00 ', 0.00, '0.00 ', 0.00, '0.00 ', 5.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (590, '42.116.087.0.2 ', 'PIONG IV/PIONG III ', 'RUAS JALAN PIONG - KAWINDA TO\'I ', 25.00, 0.00, 1.00, 'WXX', 5.00, '0.00 ', 0.00, '0.00 ', 0.00, '0.00 ', 5.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (591, '42.116.088.0.2 ', 'PIONG V/PIONG II ', 'RUAS JALAN PIONG - KAWINDA TO\'I ', 20.00, 0.00, 1.00, 'WXX', 5.00, '0.00 ', 0.00, '0.00 ', 0.00, '0.00 ', 5.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (592, '42.116.089.0.2 ', 'PONG VI/PIONG I ', 'RUAS JALAN PIONG - KAWINDA TO\'I ', 45.00, 0.00, 1.00, 'WXX', 5.00, '0.00 ', 0.00, '0.00 ', 0.00, '0.00 ', 5.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (593, '42.116.090.0.2 ', 'PIONG VII/PIONG IB ', 'RUAS JALAN PIONG - KAWINDA TO\'I ', 15.00, 0.00, 1.00, 'WXX', 5.00, '0.00 ', 0.00, '0.00 ', 0.00, '0.00 ', 5.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (594, '42.116.091.0.2 ', 'PIONG VIII/PIONG IA ', 'RUAS JALAN PIONG - KAWINDA TO\'I ', 15.00, 0.00, 1.00, 'WXX', 5.00, '0.00 ', 0.00, '0.00 ', 0.00, '0.00 ', 5.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (595, '42.118.008.0.2 ', 'SORI LUMBA ', 'RUAS JALAN KIWU - SAMPUNGU ', 20.00, 0.00, 1.00, 'WXX', 5.00, '0.00 ', 0.00, '0.00 ', 0.00, '0.00 ', 5.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (596, '42.118.009.0.2 ', 'SORI LAMPIUL ', 'RUAS JALAN KIWU - SAMPUNGU ', 25.00, 0.00, 1.00, 'WXX', 5.00, '0.00 ', 0.00, '0.00 ', 0.00, '0.00 ', 5.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (597, '42.118.010.0.2 ', 'SORI KENANGA ', 'RUAS JALAN KIWU - SAMPUNGU ', 35.00, 0.00, 1.00, 'WXX', 5.00, '0.00 ', 0.00, '0.00 ', 0.00, '0.00 ', 5.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (598, '42.118.011.0.2 ', 'SAMPUNGU I ', 'RUAS JALAN KIWU - SAMPUNGU ', 15.00, 0.00, 1.00, 'WXX', 5.00, '0.00 ', 0.00, '0.00 ', 0.00, '0.00 ', 5.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (599, '42.118.012.0.2 ', 'SAMPUNGU II ', 'RUAS JALAN KIWU - SAMPUNGU ', 35.00, 0.00, 1.00, 'WXX', 5.00, '0.00 ', 0.00, '0.00 ', 0.00, '0.00 ', 5.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (600, '42.118.013.0.3 ', 'LAPA BAJO ', 'RUAS JALAN BAJO - SAMPUNGU ', 5.10, 5.20, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (601, '42.118.014.0.3 ', 'SARITA I ', 'RUAS JALAN BAJO - SAMPUNGU ', 14.60, 3.90, 3.00, 'PTI', 3.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (602, '42.118.015.0.3 ', 'SARITA II ', 'RUAS JALAN BAJO - SAMPUNGU ', 6.50, 4.20, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (603, '42.118.016.0.3 ', 'SARITA III ', 'RUAS JALAN BAJO - SAMPUNGU ', 10.20, 4.30, 1.00, 'GTI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (604, '42.118.017.0.3 ', 'SORI KOMBA I ', 'RUAS JALAN BAJO - SAMPUNGU ', 4.00, 4.60, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (605, '42.118.017.2.3 ', 'SORI KOMBA II ', 'RUAS JALAN BAJO - SAMPUNGU ', 4.00, 4.60, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (606, '42.118.018.0.3 ', 'SORI PUNTI ', 'RUAS JALAN BAJO - SAMPUNGU ', 12.10, 6.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (607, '42.118.019.0.3 ', 'NOTI I ', 'RUAS JALAN BAJO - SAMPUNGU ', 5.00, 4.30, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (608, '42.118.020.0.3 ', 'NOTI II ', 'RUAS JALAN BAJO - SAMPUNGU ', 12.30, 4.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (609, '42.118.021.0.3 ', 'SORI LIA ', 'RUAS JALAN BAJO - SAMPUNGU ', 10.00, 4.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (610, '42.118.022.0.3 ', 'MORI ', 'RUAS JALAN BAJO - SAMPUNGU ', 10.20, 4.70, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (611, '42.118.023.0.3 ', 'LAPA MORI ', 'RUAS JALAN BAJO - SAMPUNGU ', 2.50, 5.30, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (612, '42.118.024.0.3 ', 'DIWU JARA ', 'RUAS JALAN BAJO - SAMPUNGU ', 12.00, 5.00, 1.00, 'WXX', 5.00, '0.00 ', 0.00, '0.00 ', 0.00, '0.00 ', 5.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (613, '42.118.025.0.3 ', 'SORI SOWA ', 'RUAS JALAN BAJO - SAMPUNGU ', 10.00, 5.00, 1.00, 'WXX', 5.00, '0.00 ', 0.00, '0.00 ', 0.00, '0.00 ', 5.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (614, '42.118.026.0.3 ', 'SORI WONTU I ', 'RUAS JALAN BAJO - SAMPUNGU ', 10.00, 5.00, 1.00, 'WXX', 5.00, '0.00 ', 0.00, '0.00 ', 0.00, '0.00 ', 5.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (615, '42.118.027.0.3 ', 'SORI WONTU II ', 'RUAS JALAN BAJO - SAMPUNGU ', 17.00, 0.00, 1.00, 'WXX', 5.00, '0.00 ', 0.00, '0.00 ', 0.00, '0.00 ', 5.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (616, '42.118.028.0.3 ', 'SORI WONTU III ', 'RUAS JALAN BAJO - SAMPUNGU ', 20.00, 0.00, 1.00, 'WXX', 5.00, '0.00 ', 0.00, '0.00 ', 0.00, '0.00 ', 5.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (617, '42.118.029.0.3 ', 'SORI WONTU IV ', 'RUAS JALAN BAJO - SAMPUNGU ', 15.00, 0.00, 1.00, 'WXX', 5.00, '0.00 ', 0.00, '0.00 ', 0.00, '0.00 ', 5.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (618, '42.118.030.0.3 ', 'SORI WONTU V ', 'RUAS JALAN BAJO - SAMPUNGU ', 50.00, 0.00, 1.00, 'WXX', 5.00, '0.00 ', 0.00, '0.00 ', 0.00, '0.00 ', 5.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (619, '42.118.031.0.3 ', 'SORI SAI BESAR ', 'RUAS JALAN BAJO - SAMPUNGU ', 80.00, 0.00, 1.00, 'WXX', 5.00, '0.00 ', 0.00, '0.00 ', 0.00, '0.00 ', 5.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (620, '42.118.032.0.3 ', 'SORI LAMBE ', 'RUAS JALAN BAJO - SAMPUNGU ', 10.00, 0.00, 1.00, 'WXX', 5.00, '0.00 ', 0.00, '0.00 ', 0.00, '0.00 ', 5.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (621, '42.118.033.0.3 ', 'SORI LUPUS ', 'RUAS JALAN BAJO - SAMPUNGU ', 30.00, 0.00, 1.00, 'WXX', 5.00, '0.00 ', 0.00, '0.00 ', 0.00, '0.00 ', 5.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (622, '42.118.034.0.3 ', 'SORI ENGGOSE ', 'RUAS JALAN BAJO - SAMPUNGU ', 25.00, 0.00, 1.00, 'WXX', 5.00, '0.00 ', 0.00, '0.00 ', 0.00, '0.00 ', 5.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (623, '42.118.035.0.3 ', 'SORI PONTE ', 'RUAS JALAN BAJO - SAMPUNGU ', 25.00, 0.00, 1.00, 'WXX', 5.00, '0.00 ', 0.00, '0.00 ', 0.00, '0.00 ', 5.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (624, '42.119.001.0 ', 'KENANGA I ', 'RUAS JALAN SILA - BAJO ', 11.90, 6.20, 1.00, 'GTI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (625, '42.119.001.1 ', 'KENANGA II ', 'RUAS JALAN SILA - BAJO ', 8.10, 6.10, 1.00, 'GTI', 2.00, 'B', 1.00, 'LS', 2.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (626, '42.119.001.3 ', 'TOMPU ', 'RUAS JALAN SILA - BAJO ', 6.10, 6.30, 1.00, 'GTI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (627, '42.119.001.7 ', 'RADA ', 'RUAS JALAN SILA - BAJO ', 2.00, 5.80, 1.00, 'ETI', 2.00, 'B', 2.00, 'LS', 2.00, 'TA', 2.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (628, '42.119.002.0 ', 'NGGEMBE ', 'RUAS JALAN SILA - BAJO ', 12.60, 6.20, 1.00, 'GTI', 2.00, 'B', 1.00, 'LS', 2.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (629, '42.119.003.0 ', 'OIWONTU ', 'RUAS JALAN SILA - BAJO ', 10.00, 7.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (630, '42.119.003.1 ', 'LEWI DEWA ', 'RUAS JALAN SILA - BAJO ', 7.10, 6.30, 1.00, 'GTI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (631, '42.119.003.6 ', 'LEWI NTANA ', 'RUAS JALAN SILA - BAJO ', 7.10, 6.20, 1.00, 'GTI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 2.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (632, '42.119.004.0 ', 'BAJO ', 'RUAS JALAN SILA - BAJO ', 8.00, 6.00, 1.00, 'GTI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (633, '42.121.001.0.11 ', 'RANGGO  I ', 'JALAN DATUK DIBANTA - BTS. KOTA BIMA ', 10.10, 4.70, 2.00, 'BTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (634, '42.121.001.2.11 ', 'RANGGO  II ', 'JALAN DATUK DIBANTA - BTS. KOTA BIMA ', 3.00, 5.20, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (635, '42.121.002.0.11 ', 'JATIWANGI ', 'JALAN DATUK DIBANTA - BTS. KOTA BIMA ', 12.00, 5.50, 1.00, 'GTI', 3.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (636, '42.121.003.0.11 ', 'LELA ', 'JALAN DATUK DIBANTA - BTS. KOTA BIMA ', 8.80, 6.00, 1.00, 'GTI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (637, '42.121.003.1.11 ', 'DESA I ', 'JALAN DATUK DIBANTA - BTS. KOTA BIMA ', 5.70, 6.70, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (638, '42.121.003.2.11 ', 'DESA II ', 'JALAN DATUK DIBANTA - BTS. KOTA BIMA ', 5.00, 6.20, 1.00, 'ETI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (639, '42.121.001.0 ', 'SORI KALELI ', 'RUAS JALAN BIMA - TAWALI ', 25.40, 6.00, 1.00, 'GBA', 1.00, 'B', 1.00, 'SU', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (640, '42.121.002.0 ', 'SORI KELI ', 'RUAS JALAN BIMA - TAWALI ', 10.00, 5.40, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (641, '42.121.002.3 ', 'SORI LUMBA ', 'RUAS JALAN BIMA - TAWALI ', 5.40, 3.30, 1.00, 'ETI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (642, '42.121.003.0 ', 'AMADAREHO ', 'RUAS JALAN BIMA - TAWALI ', 30.50, 6.10, 1.00, 'GBA', 1.00, 'B', 1.00, 'TP', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (643, '42.121.004.0 ', 'NIPA I ', 'RUAS JALAN BIMA - TAWALI ', 8.00, 6.30, 1.00, 'ETI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (644, '42.121.005.0 ', 'NIPA II ', 'RUAS JALAN BIMA - TAWALI ', 8.40, 6.00, 1.00, 'GTI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (645, '42.121.005.5 ', 'SANOSO ', 'RUAS JALAN BIMA - TAWALI ', 4.30, 7.00, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (646, '42.121.005.6 ', 'DUNDU HEA ', 'RUAS JALAN BIMA - TAWALI ', 4.60, 7.00, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (647, '42.121.006.0 ', 'TOLOLAI ', 'RUAS JALAN BIMA - TAWALI ', 24.00, 6.00, 2.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (648, '42.121.006.1 ', 'LALUNE ', 'RUAS JALAN BIMA - TAWALI ', 6.00, 4.00, 1.00, 'GTI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (649, '42.121.007.0 ', 'AMBALAWI ', 'RUAS JALAN BIMA - TAWALI ', 10.50, 5.00, 1.00, 'GTI', 3.00, 'B', 1.00, 'LS', 1.00, 'TA', 2.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (650, '42.121.007.4 ', 'AMA TETO ', 'RUAS JALAN BIMA - TAWALI ', 4.00, 5.40, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (651, '42.121.008.0 ', 'SORI MAWU ', 'RUAS JALAN BIMA - TAWALI ', 12.30, 5.20, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (652, '42.121.008.6 ', 'LAWESI ', 'RUAS JALAN BIMA - TAWALI ', 4.30, 5.20, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (653, '42.121.009.0 ', 'NANGA NDAWA ', 'RUAS JALAN BIMA - TAWALI ', 20.40, 6.00, 1.00, 'GBA', 1.00, 'B', 1.00, 'SU', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (654, '42.121.009.4 ', 'OI MPONU I ', 'RUAS JALAN BIMA - TAWALI ', 3.20, 4.40, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (655, '42.121.009.7 ', 'DINDI TELI ', 'RUAS JALAN BIMA - TAWALI ', 3.20, 5.20, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (656, '42.121.010.0 ', 'KAMOSO ', 'RUAS JALAN BIMA - TAWALI ', 7.80, 4.50, 1.00, 'GTI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (657, '42.121.011.0 ', 'SORI APU ', 'RUAS JALAN BIMA - TAWALI ', 7.30, 7.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (658, '42.121.011.1 ', 'MENTAU/MASA ', 'RUAS JALAN BIMA - TAWALI ', 3.30, 5.50, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (659, '42.121.011.6 ', 'TUNDON  ', 'RUAS JALAN BIMA - TAWALI ', 4.30, 5.30, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (660, '42.121.011.8 ', 'RAJU  ', 'RUAS JALAN BIMA - TAWALI ', 4.40, 5.30, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (661, '42.121.012.0 ', 'SORI BANTA I ', 'RUAS JALAN BIMA - TAWALI ', 7.50, 4.70, 1.00, 'GTI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (662, '42.121.012.1 ', 'SORI BANTA II ', 'RUAS JALAN BIMA - TAWALI ', 15.00, 4.80, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (663, '42.121.012.3 ', 'SORI PATO ', 'RUAS JALAN BIMA - TAWALI ', 4.50, 4.80, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (664, '42.121.012.9 ', 'RO\'O MALI ', 'RUAS JALAN BIMA - TAWALI ', 2.00, 5.30, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (665, '42.121.013.0 ', 'SORI BOTE ', 'RUAS JALAN BIMA - TAWALI ', 6.50, 4.80, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (666, '42.121.013.1 ', 'OI JEKE ', 'RUAS JALAN BIMA - TAWALI ', 3.40, 5.30, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (667, '42.121.013.2 ', 'MANGGO MAWU ', 'RUAS JALAN BIMA - TAWALI ', 3.40, 5.40, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (668, '42.121.014.0 ', 'SORI SANCARA ', 'RUAS JALAN BIMA - TAWALI ', 7.50, 4.70, 1.00, 'GTI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (669, '42.121.015.0 ', 'SORI TAWALI ', 'RUAS JALAN BIMA - TAWALI ', 84.00, 6.00, 2.00, 'RBA', 2.00, 'B', 1.00, 'SU', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (670, '42.121.016.0 ', 'KALAMPA ', 'RUAS JALAN BIMA - TAWALI ', 4.00, 4.20, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (671, '42.121.001.0 ', 'SORI NDOLO ', 'RUAS JALAN TAWALI - SAPE ', 8.00, 4.40, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (672, '42.121.002.0 ', 'AMA TAMI ', 'RUAS JALAN TAWALI - SAPE ', 6.00, 4.70, 1.00, 'PTI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (673, '42.121.003.0 ', 'MALI ', 'RUAS JALAN TAWALI - SAPE ', 5.00, 4.10, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TR', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (674, '42.121.004.0 ', 'SORI KANAHI ', 'RUAS JALAN TAWALI - SAPE ', 7.00, 4.20, 1.00, 'GTI', 3.00, 'B', 1.00, 'LS', 3.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (675, '42.121.005.0 ', 'TALAGA ', 'RUAS JALAN TAWALI - SAPE ', 8.00, 4.30, 1.00, 'GTI', 3.00, 'B', 3.00, 'LS', 3.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (676, '42.121.006.0 ', 'SORI WUWU ', 'RUAS JALAN TAWALI - SAPE ', 4.20, 5.00, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (677, '42.121.007.0 ', 'SORI PETO ', 'RUAS JALAN TAWALI - SAPE ', 9.80, 4.70, 1.00, 'GTI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (678, '42.121.008.0 ', 'OI POU ', 'RUAS JALAN TAWALI - SAPE ', 15.00, 4.00, 4.00, 'PTI', 3.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (679, '42.121.009.0 ', 'OI MORO ', 'RUAS JALAN TAWALI - SAPE ', 4.00, 4.00, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (680, '42.121.010.0 ', 'OI BOMBU ', 'RUAS JALAN TAWALI - SAPE ', 8.40, 4.80, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (681, '42.121.011.0 ', 'SAMIA ', 'RUAS JALAN TAWALI - SAPE ', 5.00, 4.70, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (682, '42.121.012.0 ', 'SORI MANGO ', 'RUAS JALAN TAWALI - SAPE ', 15.00, 3.80, 4.00, 'PTI', 3.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (683, '42.121.013.0 ', 'SORI TENGGE ', 'RUAS JALAN TAWALI - SAPE ', 9.00, 4.20, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (684, '42.121.014.0 ', 'SORI NANGA NAE ', 'RUAS JALAN TAWALI - SAPE ', 10.10, 4.70, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (685, '42.121.015.0 ', 'TOLO MILA ', 'RUAS JALAN TAWALI - SAPE ', 19.70, 4.70, 2.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (686, '42.121.016.0 ', 'KAMBOI ', 'RUAS JALAN TAWALI - SAPE ', 4.10, 4.10, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (687, '42.121.017.0 ', 'RABA WONTU ', 'RUAS JALAN TAWALI - SAPE ', 9.00, 4.20, 1.00, 'GTI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (688, '42.121.018.0 ', 'KAPILO I ', 'RUAS JALAN TAWALI - SAPE ', 4.00, 4.50, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (689, '42.121.019.0 ', 'KAPILO II ', 'RUAS JALAN TAWALI - SAPE ', 3.20, 4.20, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (690, '42.121.020.0 ', 'NCIRI ', 'RUAS JALAN TAWALI - SAPE ', 5.00, 4.50, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (691, '42.121.021.0 ', 'POJA ', 'RUAS JALAN TAWALI - SAPE ', 4.00, 4.30, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (692, '42.121.022.0 ', 'SORI LIA ', 'RUAS JALAN TAWALI - SAPE ', 3.00, 4.00, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (693, '42.121.023.0 ', 'SORI NDAO ', 'RUAS JALAN TAWALI - SAPE ', 5.20, 4.30, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (694, '42.121.024.0 ', 'SORI NTIMU ', 'RUAS JALAN TAWALI - SAPE ', 5.00, 4.30, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (695, '42.121.025.0 ', 'SORI KOWO ', 'RUAS JALAN TAWALI - SAPE ', 9.10, 5.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (696, '42.121.026.0 ', 'SORI NAE ', 'RUAS JALAN TAWALI - SAPE ', 24.00, 4.50, 2.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (697, '42.122.001.0.1 ', 'TENTE I ', 'RUAS JALAN TALABIU - SIMPASAI ', 24.00, 7.90, 2.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (698, '42.122.001.2.1 ', 'TENTE II ', 'RUAS JALAN TALABIU - SIMPASAI ', 6.50, 6.20, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (699, '42.122.002.0.1 ', 'SAKURU ', 'RUAS JALAN TALABIU - SIMPASAI ', 6.50, 6.30, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'AT', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (700, '42.122.002.4.1 ', 'TANGGA ', 'RUAS JALAN TALABIU - SIMPASAI ', 3.80, 7.40, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (701, '42.122.002.6.1 ', 'SORI LEU ', 'RUAS JALAN TALABIU - SIMPASAI ', 3.80, 6.40, 1.00, 'ETI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (702, '42.122.002.7.1 ', 'WADU LECO ', 'RUAS JALAN TALABIU - SIMPASAI ', 3.50, 5.20, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (703, '42.122.002.8.1 ', 'SORI RIDA ', 'RUAS JALAN TALABIU - SIMPASAI ', 5.90, 6.20, 1.00, 'ETI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (704, '42.122.002.9.1 ', 'WADU LAWA ', 'RUAS JALAN TALABIU - SIMPASAI ', 3.00, 7.90, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (705, '42.122.003.0.1 ', 'SORI UMA ', 'RUAS JALAN TALABIU - SIMPASAI ', 11.10, 6.40, 1.00, 'ETI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (706, '42.122.004.0.1 ', 'NGGERU/DUNDU HEA ', 'RUAS JALAN TALABIU - SIMPASAI ', 9.20, 6.50, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (707, '42.122.005.0.1 ', 'PELA ', 'RUAS JALAN TALABIU - SIMPASAI ', 40.00, 6.40, 2.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'AT', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (708, '42.122.006.0.1 ', 'DAE LAWARU ', 'RUAS JALAN TALABIU - SIMPASAI ', 9.50, 6.30, 1.00, 'ETI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (709, '42.122.007.0.2 ', 'SORI KARA  ', 'RUAS JALAN SIMPASAI - PARADO ', 20.60, 7.20, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (710, '42.122.007.5.2 ', 'PO\'O TANDANDA ', 'RUAS JALAN SIMPASAI - PARADO ', 5.20, 5.20, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (711, '42.122.008.0.2 ', 'DANA ME\'E ', 'RUAS JALAN SIMPASAI - PARADO ', 9.40, 6.40, 1.00, 'GTI', 3.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (712, '42.122.009.0.2 ', 'PARADO ', 'RUAS JALAN SIMPASAI - PARADO ', 14.50, 6.50, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (713, '42.120.020.0 ', 'LERE I ', 'RUAS JALAN HU\'U - PARADO ', 15.50, 4.70, 1.00, 'GTI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (714, '42.120.021.0 ', 'LERE II ', 'RUAS JALAN HU\'U - PARADO ', 5.00, 4.80, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (715, '42.120.022.0 ', 'LERE III ', 'RUAS JALAN HU\'U - PARADO ', 62.00, 4.20, 2.00, 'RBS', 3.00, 'B', 1.00, 'SU', 1.00, 'K', 3.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (716, '42.120.023.0 ', 'LERE IV ', 'RUAS JALAN HU\'U - PARADO ', 10.00, 4.50, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (717, '42.120.024.0 ', 'LERE V ', 'RUAS JALAN HU\'U - PARADO ', 30.50, 4.20, 1.00, 'RBS', 3.00, 'B', 1.00, 'LS', 1.00, 'K', 3.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (718, '42.120.025.0 ', 'TAHINAE I ', 'RUAS JALAN HU\'U - PARADO ', 6.90, 3.90, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (719, '42.120.026.0 ', 'TAHINAE II ', 'RUAS JALAN HU\'U - PARADO ', 16.00, 4.50, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (720, '42.120.027.0 ', 'TAHINAE III ', 'RUAS JALAN HU\'U - PARADO ', 28.00, 4.50, 2.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (721, '42.120.028.0 ', 'TANAH AWU I ', 'RUAS JALAN HU\'U - PARADO ', 6.00, 4.50, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (722, '42.120.029.0 ', 'TANAH AWU II ', 'RUAS JALAN HU\'U - PARADO ', 16.00, 4.50, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (723, '42.120.030.0 ', 'TANAH AWU III ', 'RUAS JALAN HU\'U - PARADO ', 30.00, 4.20, 1.00, 'RBS', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (724, '42.123.001.0.1 ', 'SIMPASAI ', 'RUAS JALAN SIMPASAI - WILAMACI ', 21.40, 6.00, 2.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (725, '42.123.002.0.1 ', 'LAJU ', 'RUAS JALAN SIMPASAI - WILAMACI ', 10.10, 4.70, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (726, '42.123.003.0.2 ', 'DORO O\'O I ', 'RUAS JALAN WILAMACI - KARUMBU ', 5.00, 8.80, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (727, '42.123.004.0.2 ', 'DORO O\'O II ', 'RUAS JALAN WILAMACI - KARUMBU ', 13.00, 4.50, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (728, '42.123.005.0.2 ', 'DORO O\'O III ', 'RUAS JALAN WILAMACI - KARUMBU ', 14.10, 5.00, 3.00, 'BTI', 1.00, 'B', 0.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (729, '42.123.006.0.2 ', 'DORO O\'O IV ', 'RUAS JALAN WILAMACI - KARUMBU ', 6.00, 4.10, 1.00, 'PTI', 1.00, 'B', 2.00, 'LS', 3.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (730, '42.123.007.0.2 ', 'NAWA LAPA ', 'RUAS JALAN WILAMACI - KARUMBU ', 5.50, 4.50, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (731, '42.123.008.0.2 ', 'KONCA ', 'RUAS JALAN WILAMACI - KARUMBU ', 20.30, 4.20, 2.00, 'GTI', 1.00, 'B', 2.00, 'LS', 3.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (732, '42.123.009.0.2 ', 'SORI NGONCO ', 'RUAS JALAN WILAMACI - KARUMBU ', 6.00, 6.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (733, '42.123.010.0.2 ', 'RIMBA ', 'RUAS JALAN WILAMACI - KARUMBU ', 8.00, 6.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (734, '42.123.011.0.2 ', 'RABA BUSI I ', 'RUAS JALAN WILAMACI - KARUMBU ', 6.30, 8.20, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (735, '42.123.011.2.3 ', 'RABA BUSI II ', 'RUAS JALAN KARUMBU - SAPE ', 6.30, 8.20, 1.00, 'PTI', 2.00, 'B', 2.00, 'LS', 3.00, 'TA', 2.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (736, '42.123.012.0.3 ', 'SORI MANGO ', 'RUAS JALAN KARUMBU - SAPE ', 16.50, 6.50, 2.00, 'GTI', 1.00, 'B', 1.00, 'LS', 2.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (737, '42.123.013.0.3 ', 'RUPE ', 'RUAS JALAN KARUMBU - SAPE ', 5.50, 5.50, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (738, '42.123.014.0.3 ', 'SAMBANE ', 'RUAS JALAN KARUMBU - SAPE ', 5.30, 6.20, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (739, '42.123.015.0.3 ', 'RORE ', 'RUAS JALAN KARUMBU - SAPE ', 6.90, 4.30, 1.00, 'GTI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (740, '42.123.016.0.3 ', 'DUMU I ', 'RUAS JALAN KARUMBU - SAPE ', 4.00, 4.90, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (741, '42.123.016.4.3 ', 'SORI DUMU III ', 'RUAS JALAN KARUMBU - SAPE ', 4.00, 6.00, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (742, '42.123.017.0.3 ', 'DUMU II ', 'RUAS JALAN KARUMBU - SAPE ', 5.50, 5.00, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 0.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (743, '42.123.018.0.3 ', 'MANGGE I ', 'RUAS JALAN KARUMBU - SAPE ', 4.00, 5.20, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (744, '42.123.019.0.3 ', 'MANGGE II ', 'RUAS JALAN KARUMBU - SAPE ', 4.00, 5.00, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (745, '42.123.020.0.3 ', 'MANGGE III ', 'RUAS JALAN KARUMBU - SAPE ', 4.00, 5.00, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (746, '42.123.021.0.3 ', 'MANGGE IV ', 'RUAS JALAN KARUMBU - SAPE ', 4.00, 4.70, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (747, '42.123.022.0.3 ', 'MANGGE V ', 'RUAS JALAN KARUMBU - SAPE ', 5.00, 6.20, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (748, '42.123.023.0.3 ', 'MANGGE VI ', 'RUAS JALAN KARUMBU - SAPE ', 8.50, 4.50, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (749, '42.123.023.0.3 ', 'MANGGE VI.1 ', 'RUAS JALAN KARUMBU - SAPE ', 8.00, 4.50, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (750, '42.123.024.0.3 ', 'MANGGE VII ', 'RUAS JALAN KARUMBU - SAPE ', 4.50, 6.50, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (751, '42.123.025.0.3 ', 'SUMI ', 'RUAS JALAN KARUMBU - SAPE ', 8.10, 4.60, 1.00, 'GTI', 1.00, 'B', 2.00, 'LS', 3.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (752, '42.123.026.0.3 ', 'SUMI ', 'RUAS JALAN KARUMBU - SAPE ', 10.00, 6.00, 1.00, 'GTI', 1.00, 'B', 1.00, 'SU', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (753, '42.123.027.0.3 ', 'SORO II ', 'RUAS JALAN KARUMBU - SAPE ', 12.10, 6.40, 1.00, 'GTI', 2.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (754, '42.123.028.0.3 ', 'BUGIS ', 'RUAS JALAN KARUMBU - SAPE ', 7.00, 6.00, 2.00, 'BTI', 1.00, 'B', 1.00, 'LS', 2.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (755, '42.125.001.0.11 ', 'KAWINDA ', 'JALAN GAJAH MADA (KOTA BIMA) ', 11.50, 5.60, 3.00, 'ETI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (756, '42.125.002.0.11 ', 'SALO ', 'JALAN GAJAH MADA (KOTA BIMA) ', 20.10, 6.20, 4.00, 'BTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (757, '42.125.003.0.11 ', 'DANA MBARI ', 'JALAN GAJAH MADA (KOTA BIMA) ', 5.50, 7.20, 1.00, 'ETI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (758, '42.125.004.0.11 ', 'NA\'E ', 'JALAN GAJAH MADA (KOTA BIMA) ', 4.00, 6.00, 1.00, 'PTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (759, '42.126.001.0.11 ', 'SANTI ', 'JALAN GATOT SUBROTO (KOTA BIMA) ', 5.10, 11.60, 1.00, 'ETI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (760, '42.126.002.0.11 ', 'SADIA ', 'JALAN GATOT SUBROTO (KOTA BIMA) ', 13.10, 8.50, 1.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);
INSERT INTO `jembatan` VALUES (761, '42.126.003.0.11 ', 'SAMBI NAE ', 'JALAN GATOT SUBROTO (KOTA BIMA) ', 24.40, 12.20, 2.00, 'GTI', 1.00, 'B', 1.00, 'LS', 1.00, 'TA', 1.00, '', NULL, NULL, NULL, NULL, 'admin', NULL, NULL);

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
) ENGINE = InnoDB AUTO_INCREMENT = 331 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

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
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

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
INSERT INTO `migrations` VALUES (22, '2020_06_25_094247_create_jembatan_table', 2);

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
INSERT INTO `pengguna` VALUES ('admin', 'Administrator', '$2y$10$KdwMkM/05.9AYsd/n0n/8u5nBAa2EXVDtppyKavVhiG2yiOmgBr9.', NULL, 1, NULL, 'wFY3YtO58wfxZgS0Fk1PmPtBY58kD9NTDXTUftfNdfllWmMkPjClaNNjotlh', '2020-06-19 10:45:42', '2020-06-19 10:45:42', NULL);
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
