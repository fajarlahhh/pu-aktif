/*
 Navicat Premium Data Transfer

 Source Server         : Localhost 57
 Source Server Type    : MySQL
 Source Server Version : 50730
 Source Host           : localhost:3306
 Source Schema         : aktif

 Target Server Type    : MySQL
 Target Server Version : 50730
 File Encoding         : 65001

 Date: 25/06/2020 10:53:24
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
  `properties` json NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `activity_log_log_name_index`(`log_name`) USING BTREE,
  INDEX `subject`(`subject_id`, `subject_type`) USING BTREE,
  INDEX `causer`(`causer_id`, `causer_type`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 34 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of activity_log
-- ----------------------------
INSERT INTO `activity_log` VALUES (1, 'default', 'created', '1', 'App\\LuasanDI', 'admin', 'App\\Pengguna', '[]', '2020-06-25 08:07:49', '2020-06-25 08:07:49');
INSERT INTO `activity_log` VALUES (2, 'default', 'updated', '1', 'App\\LuasanDI', 'admin', 'App\\Pengguna', '[]', '2020-06-25 08:08:47', '2020-06-25 08:08:47');
INSERT INTO `activity_log` VALUES (3, 'default', 'created', '1', 'App\\Bendungan', 'admin', 'App\\Pengguna', '[]', '2020-06-25 08:25:44', '2020-06-25 08:25:44');
INSERT INTO `activity_log` VALUES (4, 'default', 'created', '1', 'App\\MataAir', 'admin', 'App\\Pengguna', '[]', '2020-06-25 08:31:25', '2020-06-25 08:31:25');
INSERT INTO `activity_log` VALUES (5, 'default', 'created', '2', 'App\\MataAir', 'admin', 'App\\Pengguna', '[]', '2020-06-25 08:38:22', '2020-06-25 08:38:22');
INSERT INTO `activity_log` VALUES (6, 'default', 'updated', '1', 'App\\Bendungan', 'admin', 'App\\Pengguna', '[]', '2020-06-25 08:38:45', '2020-06-25 08:38:45');
INSERT INTO `activity_log` VALUES (7, 'default', 'created', '3', 'App\\MataAir', 'admin', 'App\\Pengguna', '[]', '2020-06-25 08:39:07', '2020-06-25 08:39:07');
INSERT INTO `activity_log` VALUES (8, 'default', 'deleted', '3', 'App\\MataAir', 'admin', 'App\\Pengguna', '[]', '2020-06-25 08:39:17', '2020-06-25 08:39:17');
INSERT INTO `activity_log` VALUES (9, 'default', 'deleted', '2', 'App\\MataAir', 'admin', 'App\\Pengguna', '[]', '2020-06-25 08:39:19', '2020-06-25 08:39:19');
INSERT INTO `activity_log` VALUES (10, 'default', 'created', '1', 'App\\Das', 'admin', 'App\\Pengguna', '[]', '2020-06-25 08:52:34', '2020-06-25 08:52:34');
INSERT INTO `activity_log` VALUES (11, 'default', 'created', '1', 'App\\Embung', 'admin', 'App\\Pengguna', '[]', '2020-06-25 08:53:05', '2020-06-25 08:53:05');
INSERT INTO `activity_log` VALUES (12, 'default', 'updated', '1', 'App\\Embung', 'admin', 'App\\Pengguna', '[]', '2020-06-25 09:12:55', '2020-06-25 09:12:55');
INSERT INTO `activity_log` VALUES (13, 'default', 'deleted', '1', 'App\\LuasanDI', 'admin', 'App\\Pengguna', '[]', '2020-06-25 09:16:58', '2020-06-25 09:16:58');
INSERT INTO `activity_log` VALUES (14, 'default', 'created', '2', 'App\\LuasanDI', 'admin', 'App\\Pengguna', '[]', '2020-06-25 09:17:03', '2020-06-25 09:17:03');
INSERT INTO `activity_log` VALUES (15, 'default', 'created', '4', 'App\\MataAir', 'admin', 'App\\Pengguna', '[]', '2020-06-25 09:17:52', '2020-06-25 09:17:52');
INSERT INTO `activity_log` VALUES (16, 'default', 'created', '1', 'App\\PosHidrologi', 'admin', 'App\\Pengguna', '[]', '2020-06-25 09:26:08', '2020-06-25 09:26:08');
INSERT INTO `activity_log` VALUES (17, 'default', 'updated', '1', 'App\\PosHidrologi', 'admin', 'App\\Pengguna', '[]', '2020-06-25 09:27:04', '2020-06-25 09:27:04');
INSERT INTO `activity_log` VALUES (18, 'default', 'created', '1', 'App\\Sumur', 'admin', 'App\\Pengguna', '[]', '2020-06-25 09:31:03', '2020-06-25 09:31:03');
INSERT INTO `activity_log` VALUES (19, 'default', 'updated', '1', 'App\\Sumur', 'admin', 'App\\Pengguna', '[]', '2020-06-25 09:31:11', '2020-06-25 09:31:11');
INSERT INTO `activity_log` VALUES (20, 'default', 'updated', '1', 'App\\Sumur', 'admin', 'App\\Pengguna', '[]', '2020-06-25 09:31:18', '2020-06-25 09:31:18');
INSERT INTO `activity_log` VALUES (21, 'default', 'updated', '1', 'App\\Sumur', 'admin', 'App\\Pengguna', '[]', '2020-06-25 09:31:58', '2020-06-25 09:31:58');
INSERT INTO `activity_log` VALUES (22, 'default', 'created', '1', 'App\\DaerahIrigasi', 'admin', 'App\\Pengguna', '[]', '2020-06-25 09:39:55', '2020-06-25 09:39:55');
INSERT INTO `activity_log` VALUES (23, 'default', 'updated', '1', 'App\\DaerahIrigasi', 'admin', 'App\\Pengguna', '[]', '2020-06-25 09:40:01', '2020-06-25 09:40:01');
INSERT INTO `activity_log` VALUES (24, 'default', 'deleted', '1', 'App\\DaerahIrigasi', 'admin', 'App\\Pengguna', '[]', '2020-06-25 09:40:52', '2020-06-25 09:40:52');
INSERT INTO `activity_log` VALUES (25, 'default', 'created', '2', 'App\\DaerahIrigasi', 'admin', 'App\\Pengguna', '[]', '2020-06-25 09:40:58', '2020-06-25 09:40:58');
INSERT INTO `activity_log` VALUES (26, 'default', 'deleted', '1', 'App\\PosHidrologi', 'admin', 'App\\Pengguna', '[]', '2020-06-25 09:41:58', '2020-06-25 09:41:58');
INSERT INTO `activity_log` VALUES (27, 'default', 'deleted', '1', 'App\\Sumur', 'admin', 'App\\Pengguna', '[]', '2020-06-25 09:42:03', '2020-06-25 09:42:03');
INSERT INTO `activity_log` VALUES (28, 'default', 'created', '2', 'App\\Sumur', 'admin', 'App\\Pengguna', '[]', '2020-06-25 09:42:08', '2020-06-25 09:42:08');
INSERT INTO `activity_log` VALUES (29, 'default', 'created', '1', 'App\\Jalan', 'admin', 'App\\Pengguna', '[]', '2020-06-25 10:00:42', '2020-06-25 10:00:42');
INSERT INTO `activity_log` VALUES (30, 'default', 'created', '2', 'App\\Jalan', 'admin', 'App\\Pengguna', '[]', '2020-06-25 10:05:15', '2020-06-25 10:05:15');
INSERT INTO `activity_log` VALUES (31, 'default', 'created', '2', 'App\\PosHidrologi', 'admin', 'App\\Pengguna', '[]', '2020-06-25 10:09:24', '2020-06-25 10:09:24');
INSERT INTO `activity_log` VALUES (32, 'default', 'created', '1', 'App\\Jembatan', 'admin', 'App\\Pengguna', '[]', '2020-06-25 10:32:52', '2020-06-25 10:32:52');
INSERT INTO `activity_log` VALUES (33, 'default', 'updated', '1', 'App\\Jembatan', 'admin', 'App\\Pengguna', '[]', '2020-06-25 10:40:00', '2020-06-25 10:40:00');

-- ----------------------------
-- Table structure for bendungan
-- ----------------------------
DROP TABLE IF EXISTS `bendungan`;
CREATE TABLE `bendungan`  (
  `bendungan_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `bendungan_nama` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `bendungan_tahun_pembuatan` int(11) NULL DEFAULT NULL,
  `bendungan_biaya_pembuatan` decimal(15, 2) NULL DEFAULT 0.00,
  `bendungan_keterangan` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `bendungan_kelas` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `marker` point NULL,
  `polyline` linestring NULL,
  `polygon` polygon NULL,
  `kelurahan_desa_id` bigint(20) UNSIGNED NULL DEFAULT NULL,
  `pengguna_id` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`bendungan_id`) USING BTREE,
  INDEX `bendungan_pengguna_id_foreign`(`pengguna_id`) USING BTREE,
  INDEX `bendungan_kelurahan_desa_id_foreign`(`kelurahan_desa_id`) USING BTREE,
  CONSTRAINT `bendungan_kelurahan_desa_id_foreign` FOREIGN KEY (`kelurahan_desa_id`) REFERENCES `kelurahan_desa` (`kelurahan_desa_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `bendungan_pengguna_id_foreign` FOREIGN KEY (`pengguna_id`) REFERENCES `pengguna` (`pengguna_id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bendungan
-- ----------------------------
INSERT INTO `bendungan` VALUES (1, 'asd', 2020, 0.00, '23asdfasd', 'asdfasdf', ST_GeomFromText('POINT(117.22973474516 -8.7493655008488)'), NULL, ST_GeomFromText('POLYGON((116.98802846723 -8.6733483866187, 117.13085490419 -8.9339136247041, 117.4110144536 -8.8090823530521, 117.4165077781 -8.6190410189221, 117.36706785762 -8.5864528495942, 116.98802846723 -8.6733483866187))'), 253, 'admin', '2020-06-25 08:25:44', '2020-06-25 08:38:45');

-- ----------------------------
-- Table structure for berita
-- ----------------------------
DROP TABLE IF EXISTS `berita`;
CREATE TABLE `berita`  (
  `berita_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `berita_judul` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `berita_deskripsi` decimal(12, 2) NOT NULL,
  `berita_gambar` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `operator` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`berita_id`) USING BTREE,
  UNIQUE INDEX `berita_berita_judul_unique`(`berita_judul`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for daerah_irigasi
-- ----------------------------
DROP TABLE IF EXISTS `daerah_irigasi`;
CREATE TABLE `daerah_irigasi`  (
  `daerah_irigasi_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `daerah_irigasi_nama` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `daerah_irigasi_tahun_pembuatan` int(11) NULL DEFAULT NULL,
  `daerah_irigasi_biaya_pembuatan` decimal(15, 2) NULL DEFAULT 0.00,
  `daerah_irigasi_keterangan` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `marker` point NULL,
  `polyline` linestring NULL,
  `polygon` polygon NULL,
  `kelurahan_desa_id` bigint(20) UNSIGNED NULL DEFAULT NULL,
  `pengguna_id` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`daerah_irigasi_id`) USING BTREE,
  INDEX `daerah_irigasi_pengguna_id_foreign`(`pengguna_id`) USING BTREE,
  INDEX `daerah_irigasi_kelurahan_desa_id_foreign`(`kelurahan_desa_id`) USING BTREE,
  CONSTRAINT `daerah_irigasi_kelurahan_desa_id_foreign` FOREIGN KEY (`kelurahan_desa_id`) REFERENCES `kelurahan_desa` (`kelurahan_desa_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `daerah_irigasi_pengguna_id_foreign` FOREIGN KEY (`pengguna_id`) REFERENCES `pengguna` (`pengguna_id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of daerah_irigasi
-- ----------------------------
INSERT INTO `daerah_irigasi` VALUES (2, 'asdf', 2020, 2.00, '4asdf', NULL, NULL, NULL, NULL, 'admin', '2020-06-25 09:40:58', '2020-06-25 09:40:58');

-- ----------------------------
-- Table structure for das
-- ----------------------------
DROP TABLE IF EXISTS `das`;
CREATE TABLE `das`  (
  `das_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `das_kode` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `das_nama` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `das_tahun_pembuatan` int(11) NULL DEFAULT NULL,
  `das_biaya_pembuatan` decimal(15, 2) NULL DEFAULT 0.00,
  `das_keterangan` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `marker` point NULL,
  `polyline` linestring NULL,
  `polygon` polygon NULL,
  `kelurahan_desa_id` bigint(20) UNSIGNED NULL DEFAULT NULL,
  `pengguna_id` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`das_id`) USING BTREE,
  INDEX `das_pengguna_id_foreign`(`pengguna_id`) USING BTREE,
  INDEX `das_kelurahan_desa_id_foreign`(`kelurahan_desa_id`) USING BTREE,
  CONSTRAINT `das_kelurahan_desa_id_foreign` FOREIGN KEY (`kelurahan_desa_id`) REFERENCES `kelurahan_desa` (`kelurahan_desa_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `das_pengguna_id_foreign` FOREIGN KEY (`pengguna_id`) REFERENCES `pengguna` (`pengguna_id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of das
-- ----------------------------
INSERT INTO `das` VALUES (1, 'ag', 'sdfgs', 2020, 45345435.00, 'sdfgsdfg', NULL, NULL, NULL, NULL, 'admin', '2020-06-25 08:52:34', '2020-06-25 08:52:34');

-- ----------------------------
-- Table structure for embung
-- ----------------------------
DROP TABLE IF EXISTS `embung`;
CREATE TABLE `embung`  (
  `embung_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `embung_nama` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `embung_tahun_pembuatan` int(11) NULL DEFAULT NULL,
  `embung_biaya_pembuatan` decimal(15, 2) NULL DEFAULT 0.00,
  `embung_keterangan` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `embung_kelas` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
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
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of embung
-- ----------------------------
INSERT INTO `embung` VALUES (1, 'dfasdfa', 2020, 3412.00, 'asf', 'asdf', ST_GeomFromText('POINT(117.18578814917 -8.7385068601892)'), NULL, NULL, NULL, 'admin', '2020-06-25 08:53:05', '2020-06-25 09:12:55');

-- ----------------------------
-- Table structure for jalan
-- ----------------------------
DROP TABLE IF EXISTS `jalan`;
CREATE TABLE `jalan`  (
  `jalan_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `jalan_ruas_lama` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `jalan_subruas_lama` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `jalan_ruas_baru` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `jalan_subruas_baru` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `jalan_nama` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `jalan_tahun_pembuatan` int(11) NULL DEFAULT NULL,
  `jalan_biaya_pembuatan` decimal(15, 2) NULL DEFAULT 0.00,
  `jalan_keterangan` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `marker` point NULL,
  `polyline` linestring NULL,
  `polygon` polygon NULL,
  `kelurahan_desa_id` bigint(20) UNSIGNED NULL DEFAULT NULL,
  `pengguna_id` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`jalan_id`) USING BTREE,
  INDEX `jalan_pengguna_id_foreign`(`pengguna_id`) USING BTREE,
  INDEX `jalan_kelurahan_desa_id_foreign`(`kelurahan_desa_id`) USING BTREE,
  CONSTRAINT `jalan_kelurahan_desa_id_foreign` FOREIGN KEY (`kelurahan_desa_id`) REFERENCES `kelurahan_desa` (`kelurahan_desa_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `jalan_pengguna_id_foreign` FOREIGN KEY (`pengguna_id`) REFERENCES `pengguna` (`pengguna_id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of jalan
-- ----------------------------
INSERT INTO `jalan` VALUES (1, '11', '22', '33', '44', 'Nama Jalan', 2020, 33.00, 'Keterangan', ST_GeomFromText('POINT(116.34521484375 -8.4778054618082)'), ST_GeomFromText('LINESTRING(116.34959220886 -8.4822198631205, 116.33860588074 -8.4822198631205, 116.34075164795 -8.4770414256647, 116.3560295105 -8.4722873888798)'), NULL, NULL, 'admin', '2020-06-25 10:00:42', '2020-06-25 10:00:42');
INSERT INTO `jalan` VALUES (2, '12', '442', '1241', '151', 'Jalan', 2020, 0.00, 'Keterangan', ST_GeomFromText('POINT(116.95907592773 -8.7873682465562)'), ST_GeomFromText('LINESTRING(117.00096130371 -8.8016182726262, 116.95907592773 -8.7948326143104, 116.95907592773 -8.7595451888361, 116.97898864746 -8.7439362200841)'), NULL, NULL, 'admin', '2020-06-25 10:05:15', '2020-06-25 10:05:15');

-- ----------------------------
-- Table structure for jembatan
-- ----------------------------
DROP TABLE IF EXISTS `jembatan`;
CREATE TABLE `jembatan`  (
  `jembatan_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `jembatan_nomor` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `jembatan_nama` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `jalan_id` bigint(20) UNSIGNED NULL DEFAULT NULL,
  `jembatan_tahun_pembuatan` int(11) NULL DEFAULT NULL,
  `jembatan_biaya_pembuatan` decimal(15, 2) NULL DEFAULT 0.00,
  `jembatan_keterangan` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `marker` point NULL,
  `polyline` linestring NULL,
  `polygon` polygon NULL,
  `pengguna_id` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`jembatan_id`) USING BTREE,
  INDEX `jembatan_pengguna_id_foreign`(`pengguna_id`) USING BTREE,
  INDEX `jembatan_jalan_id_foreign`(`jalan_id`) USING BTREE,
  CONSTRAINT `jembatan_jalan_id_foreign` FOREIGN KEY (`jalan_id`) REFERENCES `jalan` (`jalan_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `jembatan_pengguna_id_foreign` FOREIGN KEY (`pengguna_id`) REFERENCES `pengguna` (`pengguna_id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of jembatan
-- ----------------------------
INSERT INTO `jembatan` VALUES (1, 'asdfsadf', 'asdfsadf', 2, 2020, 33.00, 'asdfasdf', ST_GeomFromText('POINT(117.18029482467 -8.6896390681277)'), ST_GeomFromText('LINESTRING(117.1745967865 -8.6833604517312, 117.18489646912 -8.6920147334008)'), NULL, 'admin', '2020-06-25 10:32:52', '2020-06-25 10:39:59');

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
INSERT INTO `kabupaten_kota` VALUES (2, 'Kabupaten Bima', 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kabupaten_kota` VALUES (3, 'Kabupaten Dompu', 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kabupaten_kota` VALUES (4, 'Kabupaten Lombok Barat', 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kabupaten_kota` VALUES (5, 'Kabupaten Lombok Tengah', 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kabupaten_kota` VALUES (6, 'Kabupaten Lombok Timur', 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kabupaten_kota` VALUES (7, 'Kabupaten Lombok Utara', 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kabupaten_kota` VALUES (8, 'Kabupaten Sumbawa', 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kabupaten_kota` VALUES (9, 'Kabupaten Sumbawa Barat', 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kabupaten_kota` VALUES (10, 'Kota Bima', 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kabupaten_kota` VALUES (11, 'Kota Mataram', 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');

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
INSERT INTO `kecamatan` VALUES (1, 'Ambalawi', 2, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kecamatan` VALUES (2, 'Belo', 2, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kecamatan` VALUES (3, 'Bolo', 2, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kecamatan` VALUES (4, 'Donggo', 2, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kecamatan` VALUES (7, 'Lambitu', 2, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kecamatan` VALUES (10, 'Lambu', 2, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kecamatan` VALUES (13, 'Langgudu', 2, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kecamatan` VALUES (16, 'Mada Pangga', 2, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kecamatan` VALUES (19, 'Monta', 2, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kecamatan` VALUES (22, 'Palibelo', 2, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kecamatan` VALUES (25, 'Parado', 2, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kecamatan` VALUES (28, 'Sanggar', 2, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kecamatan` VALUES (31, 'Sape', 2, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kecamatan` VALUES (34, 'Soromandi', 2, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kecamatan` VALUES (37, 'Tambora', 2, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kecamatan` VALUES (40, 'Wawo', 2, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kecamatan` VALUES (43, 'Wera', 2, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kecamatan` VALUES (46, 'Woha', 2, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kecamatan` VALUES (50, 'Dompu', 3, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kecamatan` VALUES (51, 'Kempo', 3, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kecamatan` VALUES (64, 'Hu\'u', 3, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kecamatan` VALUES (77, 'Kilo', 3, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kecamatan` VALUES (88, 'Woja', 3, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kecamatan` VALUES (108, 'Pekat', 3, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kecamatan` VALUES (125, 'Manggelewa', 3, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kecamatan` VALUES (142, 'Pajo', 3, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');

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
INSERT INTO `kelurahan_desa` VALUES (114, 'Kole', 1, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (115, 'Mawu', 1, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (116, 'Nipa', 1, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (117, 'Rite', 1, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (118, 'Talapiti', 1, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (119, 'Tolowata', 1, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (120, 'Diha', 2, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (121, 'Cenggu', 2, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (122, 'Lido', 2, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (123, 'Ncera', 2, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (124, 'Ngali', 2, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (125, 'Renda', 2, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (126, 'Roka', 2, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (127, 'Runggu', 2, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (128, 'Soki', 2, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (129, 'Bontokape', 3, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (130, 'Darussalam', 3, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (131, 'Kananga', 3, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (132, 'Kara', 3, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (133, 'Leu', 3, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (134, 'Nggembe', 3, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (135, 'Rada', 3, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (136, 'Rasabau', 3, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (137, 'Rato', 3, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (138, 'Sanolo', 3, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (139, 'Sondosia', 3, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (140, 'Tambe', 3, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (141, 'Timu', 3, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (142, 'Tumpu', 3, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (143, 'Bumi Pajo', 4, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (144, 'Doridungga', 4, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (145, 'Kala', 4, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (146, 'Mbawa', 4, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (147, 'Mpili', 4, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (148, 'Ndano Na\'e', 4, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (149, 'O\'o', 4, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (150, 'Palama', 4, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (151, 'Rora', 4, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (152, 'Kaboro', 7, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (153, 'Kaowa', 7, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (154, 'Kuta', 7, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (155, 'Londu', 7, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (156, 'Sambori', 7, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (157, 'Teta', 7, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (158, 'Hidirasa', 10, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (159, 'Kaleo', 10, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (160, 'Lambu', 10, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (161, 'Lanta', 10, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (162, 'Lanta Barat', 10, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (163, 'Mangge', 10, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (164, 'Melayu', 10, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (165, 'Monta Baru', 10, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (166, 'Nggelu', 10, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (167, 'Rato', 10, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (168, 'Sangga', 10, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (169, 'Simpasai', 10, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (170, 'Soro', 10, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (171, 'Sumi', 10, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (172, 'Doro O\'o', 13, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (173, 'Dumu', 13, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (174, 'Kalodu', 13, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (175, 'Kangga', 13, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (176, 'Karampi', 13, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (177, 'Karumbu', 13, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (178, 'Kawuwu', 13, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (179, 'Laju', 13, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (180, 'Pusu', 13, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (181, 'Rompo', 13, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (182, 'Rupe', 13, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (183, 'Sambane', 13, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (184, 'Sarae Ruma', 13, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (185, 'Wadu Ruka', 13, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (186, 'Waworada', 13, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (187, 'Bolo', 16, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (188, 'Campa', 16, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (189, 'Dena', 16, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (190, 'Mandawau', 16, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (191, 'Monggo', 16, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (192, 'Mpuri', 16, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (193, 'Ncandi', 16, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (194, 'Ndano', 16, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (195, 'Rade', 16, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (196, 'Tonda', 16, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (197, 'Woro', 16, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (198, 'Baralau', 19, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (199, 'Monta', 19, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (200, 'Nontotera', 19, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (201, 'Pela', 19, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (202, 'Sekuru', 19, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (203, 'Sie', 19, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (204, 'Simpasai', 19, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (205, 'Sondo', 19, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (206, 'Tangga', 19, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (207, 'Tangga Baru', 19, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (208, 'Tolotangga', 19, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (209, 'Tolouwi', 19, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (210, 'Waro', 19, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (211, 'Willamaci', 19, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (212, 'Belo', 22, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (213, 'Bre', 22, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (214, 'Dore', 22, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (215, 'Nata', 22, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (216, 'Ntonggu', 22, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (217, 'Panda', 22, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (218, 'Padolo', 22, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (219, 'Ragi', 22, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (220, 'Roi', 22, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (221, 'Teke', 22, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (222, 'Tolongondoa', 22, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (223, 'Tonggorisa', 22, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (224, 'Kanca', 25, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (225, 'Kuta', 25, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (226, 'Lere', 25, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (227, 'Paradorato', 25, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (228, 'Paradowane', 25, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (229, 'Boro', 28, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (230, 'Kore', 28, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (231, 'Oi Saro', 28, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (232, 'Piong', 28, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (233, 'Sandue', 28, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (234, 'Taloko', 28, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (235, 'Bajo Pulau', 31, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (236, 'Boke', 31, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (237, 'Bugis', 31, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (238, 'Buncu', 31, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (239, 'Jia', 31, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (240, 'Kowo', 31, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (241, 'Lamere', 31, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (242, 'Nae', 31, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (243, 'Naru Barat', 31, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (244, 'Naru Timur', 31, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (245, 'Oi Maci', 31, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (246, 'Parangina', 31, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (247, 'Poja', 31, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (248, 'Rai Oi', 31, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (249, 'Rasabou', 31, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (250, 'Sangia', 31, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (251, 'Sari', 31, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (252, 'Tanah Putih', 31, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (253, 'Bajo', 34, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (254, 'Kananta', 34, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (255, 'Lewintana', 34, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (256, 'Punti', 34, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (257, 'Sai', 34, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (258, 'Sampungu', 34, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (259, 'Wadukopa', 34, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (260, 'Kawinda Nae', 37, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (261, 'Kawinda Toi', 37, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (262, 'Labuhan Kananga', 37, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (263, 'Oi Bura', 37, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (264, 'Oi Katupa', 37, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (265, 'Oi Panihi', 37, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (266, 'Rasabou', 37, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (267, 'Kambilo', 40, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (268, 'Kombo', 40, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (269, 'Maria', 40, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (270, 'Maria Utara', 40, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (271, 'Ntori', 40, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (272, 'Pesa', 40, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (273, 'Raba', 40, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (274, 'Riamau', 40, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (275, 'Tarlawi', 40, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (276, 'Bala', 43, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (277, 'Hidirasa', 43, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (278, 'Kalajena', 43, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (279, 'Mandala', 43, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (280, 'Nanga Wera', 43, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (281, 'Ntoke', 43, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (282, 'Nunggi', 43, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (283, 'Oitui', 43, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (284, 'Pai', 43, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (285, 'Ranggasolo', 43, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (286, 'Sangiang', 43, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (287, 'Tadewa', 43, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (288, 'Tawali', 43, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (289, 'Wora', 43, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (290, 'Dadibou', 46, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (291, 'Donggobolo', 46, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (292, 'Kalampa', 46, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (293, 'Keli', 46, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (294, 'Naru', 46, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (295, 'Nisa', 46, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (296, 'Pandai', 46, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (297, 'Penapali', 46, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (298, 'Rabakodo', 46, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (299, 'Risa', 46, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (300, 'Samili', 46, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (301, 'Talabiu', 46, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (302, 'Tenga', 46, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (303, 'Tente', 46, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (304, 'Waduwani', 46, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (305, 'Dore Bara', 50, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (306, 'Katua', 50, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (307, 'Karamabura', 50, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (308, 'Kareke', 50, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (309, 'Mangge Nae', 50, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (310, 'Manggeasi', 50, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (311, 'Mbawi', 50, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (312, 'O\'o', 50, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (313, 'Sori Sakolo', 50, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (314, 'Bada', 50, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (315, 'Bali', 50, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (316, 'Karijawa', 50, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (317, 'Potu', 50, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (318, 'Dora Tangga', 50, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (319, 'Kandai I', 50, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (320, 'Doro Kobo', 51, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (321, 'Kempo', 51, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (322, 'Konte', 51, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (323, 'Songgaja', 51, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (324, 'Soro', 51, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (325, 'Soro Barat', 51, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (326, 'Ta\'a', 51, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (327, 'Tolo Kalo', 51, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (328, 'Adu', 64, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (329, 'Cempi Jaya', 64, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (330, 'Daha', 64, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (331, 'Hu\'u', 64, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (332, 'Jala', 64, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (333, 'Merada', 64, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (334, 'Rasa Bou', 64, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (335, 'Sawe', 64, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (336, 'Kiwu', 77, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (337, 'Kramat', 77, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (338, 'Lasi', 77, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (339, 'Malaju', 77, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (340, 'Mbuju', 77, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (341, 'Taropo', 77, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (342, 'Baka Jaya', 88, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (343, 'Bara', 88, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (344, 'Mada Prama', 88, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (345, 'Matua', 88, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (346, 'Nowa', 88, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (347, 'Mumbu', 88, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (348, 'Raba Baka', 88, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (349, 'Riwo', 88, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (350, 'Saneo', 88, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (351, 'Sera Kapi', 88, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (352, 'Wawonduru', 88, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (353, 'Kandai II', 88, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (354, 'Monta Baru', 88, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (355, 'Simpasai', 88, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (356, 'Beringin Jaya', 108, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (357, 'Calabai', 108, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (358, 'Doro Peti', 108, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (359, 'Pekat', 108, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (360, 'Kadindi', 108, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (361, 'Kadindi Barat', 108, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (362, 'Karombo', 108, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (363, 'Nangakara', 108, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (364, 'Nangamiro', 108, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (365, 'Sori Nomo', 108, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (366, 'Sori Tatanga', 108, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (367, 'Tambora', 108, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (368, 'Anamina', 125, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (369, 'Banggo', 125, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (370, 'Doromelo', 125, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (371, 'Kampasi Meci', 125, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (372, 'Kwangko', 125, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (373, 'Lanci Jaya', 125, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (374, 'Nangatumpu', 125, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (375, 'Nusa Jaya', 125, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (376, 'Soriutu', 125, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (377, 'Suka Damai', 125, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (378, 'Tanju', 125, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (379, 'Teka Sire', 125, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (380, 'Jambu', 142, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (381, 'Lepadi', 142, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (382, 'Lune', 142, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (383, 'Ranggo', 142, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (384, 'Temba Lae', 142, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');
INSERT INTO `kelurahan_desa` VALUES (385, 'UPT. Woko', 142, 'admin', '2020-06-22 00:00:00', '2020-06-22 00:00:00');

-- ----------------------------
-- Table structure for mata_air
-- ----------------------------
DROP TABLE IF EXISTS `mata_air`;
CREATE TABLE `mata_air`  (
  `mata_air_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `mata_air_nama` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `mata_air_keterangan` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `marker` point NULL,
  `polyline` linestring NULL,
  `polygon` polygon NULL,
  `kelurahan_desa_id` bigint(20) UNSIGNED NULL DEFAULT NULL,
  `pengguna_id` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`mata_air_id`) USING BTREE,
  INDEX `mata_air_pengguna_id_foreign`(`pengguna_id`) USING BTREE,
  INDEX `mata_air_kelurahan_desa_id_foreign`(`kelurahan_desa_id`) USING BTREE,
  CONSTRAINT `mata_air_kelurahan_desa_id_foreign` FOREIGN KEY (`kelurahan_desa_id`) REFERENCES `kelurahan_desa` (`kelurahan_desa_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `mata_air_pengguna_id_foreign` FOREIGN KEY (`pengguna_id`) REFERENCES `pengguna` (`pengguna_id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mata_air
-- ----------------------------
INSERT INTO `mata_air` VALUES (1, 'asdf', 'asdf', ST_GeomFromText('POINT(117.35407233082 -8.8382586750104)'), NULL, ST_GeomFromText('POLYGON((117.34875067271 -8.835544695883, 117.35956565531 -8.8387675438716, 117.35784899141 -8.8424992273773, 117.34909400549 -8.8409726341486, 117.34875067271 -8.835544695883))'), NULL, 'admin', '2020-06-25 08:31:25', '2020-06-25 08:31:25');
INSERT INTO `mata_air` VALUES (4, 'asdf', 'asdf', NULL, NULL, NULL, NULL, 'admin', '2020-06-25 09:17:52', '2020-06-25 09:17:52');

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (1, '2020_01_20_000513_create_pengguna_table', 1);
INSERT INTO `migrations` VALUES (2, '2020_01_20_000858_create_permission_tables', 1);
INSERT INTO `migrations` VALUES (3, '2020_01_20_023620_create_activity_log_table', 1);
INSERT INTO `migrations` VALUES (4, '2020_02_17_141830_create_berita_table', 1);
INSERT INTO `migrations` VALUES (5, '2020_06_18_081121_create_kabupaten_kota_table', 1);
INSERT INTO `migrations` VALUES (6, '2020_06_18_081131_create_kecamatan_table', 1);
INSERT INTO `migrations` VALUES (7, '2020_06_18_081141_create_kelurahan_desa_table', 1);
INSERT INTO `migrations` VALUES (8, '2020_06_18_081154_create_tipe_konstruksi_table', 1);
INSERT INTO `migrations` VALUES (9, '2020_06_18_081209_create_bendungan_table', 1);
INSERT INTO `migrations` VALUES (10, '2020_06_24_223249_create_das_table', 1);
INSERT INTO `migrations` VALUES (11, '2020_06_25_055119_create_embung_table', 1);
INSERT INTO `migrations` VALUES (13, '2020_06_25_081442_create_mata_air_table', 3);
INSERT INTO `migrations` VALUES (14, '2020_06_25_083951_create_pos_hidrologi_table', 4);
INSERT INTO `migrations` VALUES (15, '2020_06_25_084001_create_sumur_table', 4);
INSERT INTO `migrations` VALUES (16, '2020_06_25_080159_create_daerah_irigasi_table', 5);
INSERT INTO `migrations` VALUES (17, '2020_06_25_094239_create_jalan_table', 6);
INSERT INTO `migrations` VALUES (19, '2020_06_25_094247_create_jembatan_table', 7);

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
INSERT INTO `pengguna` VALUES ('admin', 'Administrator', '$2y$10$NhHRKC0P2Hlw3HY0zz5JoOFfv1vminzTi.wo2IIALAqig4/HPFula', NULL, 1, NULL, 'VEBwcYr71K', '2020-06-25 07:55:42', '2020-06-25 07:55:42', NULL);

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
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of permissions
-- ----------------------------
INSERT INTO `permissions` VALUES (1, 'dashboard', 'web', '2020-06-25 07:55:42', '2020-06-25 07:55:42');
INSERT INTO `permissions` VALUES (2, 'datamaster', 'web', '2020-06-25 07:55:42', '2020-06-25 07:55:42');
INSERT INTO `permissions` VALUES (3, 'tipekonstruksi', 'web', '2020-06-25 07:55:42', '2020-06-25 07:55:42');
INSERT INTO `permissions` VALUES (4, 'infrastruktur', 'web', '2020-06-25 07:55:42', '2020-06-25 07:55:42');
INSERT INTO `permissions` VALUES (5, 'jalan', 'web', '2020-06-25 07:55:42', '2020-06-25 07:55:42');
INSERT INTO `permissions` VALUES (6, 'jembatan', 'web', '2020-06-25 07:55:42', '2020-06-25 07:55:42');
INSERT INTO `permissions` VALUES (7, 'bendungan', 'web', '2020-06-25 07:55:42', '2020-06-25 07:55:42');
INSERT INTO `permissions` VALUES (8, 'das', 'web', '2020-06-25 07:55:42', '2020-06-25 07:55:42');
INSERT INTO `permissions` VALUES (9, 'embung', 'web', '2020-06-25 07:55:42', '2020-06-25 07:55:42');
INSERT INTO `permissions` VALUES (10, 'luasandi', 'web', '2020-06-25 07:55:42', '2020-06-25 07:55:42');
INSERT INTO `permissions` VALUES (11, 'mataair', 'web', '2020-06-25 07:55:42', '2020-06-25 07:55:42');
INSERT INTO `permissions` VALUES (12, 'poshidrologi', 'web', '2020-06-25 07:55:42', '2020-06-25 07:55:42');
INSERT INTO `permissions` VALUES (13, 'sumur', 'web', '2020-06-25 07:55:42', '2020-06-25 07:55:42');
INSERT INTO `permissions` VALUES (14, 'isda', 'web', '2020-06-25 07:55:42', '2020-06-25 07:55:42');
INSERT INTO `permissions` VALUES (15, 'setup', 'web', '2020-06-25 07:55:42', '2020-06-25 07:55:42');
INSERT INTO `permissions` VALUES (16, 'pengguna', 'web', '2020-06-25 07:55:42', '2020-06-25 07:55:42');
INSERT INTO `permissions` VALUES (17, 'wilayah', 'web', '2020-06-25 07:55:42', '2020-06-25 07:55:42');
INSERT INTO `permissions` VALUES (18, 'kabupatenkota', 'web', '2020-06-25 07:55:42', '2020-06-25 07:55:42');
INSERT INTO `permissions` VALUES (19, 'kecamatan', 'web', '2020-06-25 07:55:42', '2020-06-25 07:55:42');
INSERT INTO `permissions` VALUES (20, 'kelurahandesa', 'web', '2020-06-25 07:55:42', '2020-06-25 07:55:42');

-- ----------------------------
-- Table structure for pos_hidrologi
-- ----------------------------
DROP TABLE IF EXISTS `pos_hidrologi`;
CREATE TABLE `pos_hidrologi`  (
  `pos_hidrologi_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `pos_hidrologi_nama_hw` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `pos_hidrologi_operator_hw` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `pos_hidrologi_pengelola_aset` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `pos_hidrologi_no_hp` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `pos_hidrologi_tahun_pembuatan` int(11) NULL DEFAULT NULL,
  `pos_hidrologi_biaya_pembuatan` decimal(15, 2) NULL DEFAULT 0.00,
  `pos_hidrologi_keterangan` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `marker` point NULL,
  `polyline` linestring NULL,
  `polygon` polygon NULL,
  `kelurahan_desa_id` bigint(20) UNSIGNED NULL DEFAULT NULL,
  `pengguna_id` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`pos_hidrologi_id`) USING BTREE,
  INDEX `pos_hidrologi_pengguna_id_foreign`(`pengguna_id`) USING BTREE,
  INDEX `pos_hidrologi_kelurahan_desa_id_foreign`(`kelurahan_desa_id`) USING BTREE,
  CONSTRAINT `pos_hidrologi_kelurahan_desa_id_foreign` FOREIGN KEY (`kelurahan_desa_id`) REFERENCES `kelurahan_desa` (`kelurahan_desa_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `pos_hidrologi_pengguna_id_foreign` FOREIGN KEY (`pengguna_id`) REFERENCES `pengguna` (`pengguna_id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pos_hidrologi
-- ----------------------------
INSERT INTO `pos_hidrologi` VALUES (2, 'sdfg', '234234', 'sdfg', 'sdfg', 2020, 0.00, 'sdf', ST_GeomFromText('POINT(116.94946289063 -8.6950691380526)'), NULL, ST_GeomFromText('POLYGON((116.90002441406 -8.6461956811819, 116.94946289063 -8.7927968925655, 116.98791503906 -8.7222183061987, 116.99340820313 -8.6407649050851, 116.90002441406 -8.6461956811819))'), NULL, 'admin', '2020-06-25 10:09:24', '2020-06-25 10:09:24');

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
INSERT INTO `roles` VALUES (1, 'super-admin', 'web', '2020-06-25 07:55:42', '2020-06-25 07:55:42');
INSERT INTO `roles` VALUES (2, 'supervisor', 'web', '2020-06-25 07:55:42', '2020-06-25 07:55:42');
INSERT INTO `roles` VALUES (3, 'user', 'web', '2020-06-25 07:55:42', '2020-06-25 07:55:42');
INSERT INTO `roles` VALUES (4, 'guest', 'web', '2020-06-25 07:55:42', '2020-06-25 07:55:42');

-- ----------------------------
-- Table structure for sumur
-- ----------------------------
DROP TABLE IF EXISTS `sumur`;
CREATE TABLE `sumur`  (
  `sumur_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `sumur_kode` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `sumur_tahun_pembuatan` int(11) NULL DEFAULT NULL,
  `sumur_biaya_pembuatan` decimal(15, 2) NULL DEFAULT 0.00,
  `sumur_keterangan` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `marker` point NULL,
  `polyline` linestring NULL,
  `polygon` polygon NULL,
  `kelurahan_desa_id` bigint(20) UNSIGNED NULL DEFAULT NULL,
  `pengguna_id` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`sumur_id`) USING BTREE,
  INDEX `sumur_pengguna_id_foreign`(`pengguna_id`) USING BTREE,
  INDEX `sumur_kelurahan_desa_id_foreign`(`kelurahan_desa_id`) USING BTREE,
  CONSTRAINT `sumur_kelurahan_desa_id_foreign` FOREIGN KEY (`kelurahan_desa_id`) REFERENCES `kelurahan_desa` (`kelurahan_desa_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `sumur_pengguna_id_foreign` FOREIGN KEY (`pengguna_id`) REFERENCES `pengguna` (`pengguna_id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sumur
-- ----------------------------
INSERT INTO `sumur` VALUES (2, '21312', 2020, 0.00, 'asdf', NULL, NULL, NULL, NULL, 'admin', '2020-06-25 09:42:08', '2020-06-25 09:42:08');

-- ----------------------------
-- Table structure for tipe_konstruksi
-- ----------------------------
DROP TABLE IF EXISTS `tipe_konstruksi`;
CREATE TABLE `tipe_konstruksi`  (
  `tipe_konstruksi_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `tipe_konstruksi_nama` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `pengguna_id` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`tipe_konstruksi_id`) USING BTREE,
  INDEX `tipe_konstruksi_pengguna_id_foreign`(`pengguna_id`) USING BTREE,
  CONSTRAINT `tipe_konstruksi_pengguna_id_foreign` FOREIGN KEY (`pengguna_id`) REFERENCES `pengguna` (`pengguna_id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
