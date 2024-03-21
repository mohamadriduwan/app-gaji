-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 21 Mar 2024 pada 14.12
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `app-gaji`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `absensi`
--

CREATE TABLE `absensi` (
  `id` int(11) NOT NULL,
  `nip` varchar(15) NOT NULL,
  `nama_guru` varchar(256) NOT NULL,
  `hari` varchar(25) NOT NULL,
  `tanggal` varchar(200) NOT NULL,
  `status` varchar(50) NOT NULL,
  `jam_masuk` varchar(50) NOT NULL,
  `jam_pulang` varchar(50) NOT NULL,
  `waktu_kerja` varchar(256) NOT NULL,
  `keterangan` varchar(256) NOT NULL,
  `sumber` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_absensi`
--

CREATE TABLE `data_absensi` (
  `id` int(11) NOT NULL,
  `kode` varchar(10) NOT NULL,
  `nama` varchar(256) NOT NULL,
  `hari` varchar(50) NOT NULL,
  `tanggal` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  `jam_masuk` varchar(100) NOT NULL,
  `jam_pulang` varchar(100) NOT NULL,
  `waktu_kerja` varchar(100) NOT NULL,
  `keterangan` varchar(2) NOT NULL,
  `sumber` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `data_absensi`
--

INSERT INTO `data_absensi` (`id`, `kode`, `nama`, `hari`, `tanggal`, `status`, `jam_masuk`, `jam_pulang`, `waktu_kerja`, `keterangan`, `sumber`) VALUES
(1, '72', 'AFITRI RAHMA WATI', 'Kamis', '29 Maret 2024', 'Hadir', '05:43:04 AM', '01:13:14 PM', '7 jam 30 menit', '', 'SPT Fingerprint'),
(2, '72', 'AFITRI RAHMA WATI', 'Rabu', '28 Pebruari 2024', 'Hadir', '07:00:00 AM', '01:06:32 PM', '6 jam 6 menit', '', 'SPT Fingerprint'),
(3, '72', 'AFITRI RAHMA WATI', 'Selasa', '27 Pebruari 2024', 'Hadir', '06:45:30 AM', '05:00:00 PM', '10 jam 14 menit', '', 'SPT Fingerprint'),
(4, '72', 'AFITRI RAHMA WATI', 'Senin', '26 Pebruari 2024', 'Hadir', '05:44:06 AM', '01:04:34 PM', '7 jam 20 menit', '', 'SPT Fingerprint'),
(5, '72', 'AFITRI RAHMA WATI', 'Sabtu', '24 Pebruari 2024', 'Hadir', '06:59:22 AM', '01:04:24 PM', '6 jam 5 menit', '', 'SPT Fingerprint'),
(6, '72', 'AFITRI RAHMA WATI', 'Kamis', '22 Pebruari 2024', 'Hadir', '07:00:25 AM', '01:25:20 PM', '6 jam 24 menit', '', 'SPT Fingerprint'),
(7, '72', 'AFITRI RAHMA WATI', 'Rabu', '21 Pebruari 2024', 'Hadir', '06:56:38 AM', '01:32:06 PM', '6 jam 35 menit', '', 'SPT Fingerprint'),
(8, '72', 'AFITRI RAHMA WATI', 'Selasa', '20 Pebruari 2024', 'Hadir', '06:59:43 AM', '01:00:53 PM', '6 jam 1 menit', '', 'SPT Fingerprint'),
(9, '72', 'AFITRI RAHMA WATI', 'Sabtu', '17 Pebruari 2024', 'Hadir', '06:46:10 AM', '12:22:42 PM', '5 jam 36 menit', '', 'SPT Fingerprint'),
(10, '72', 'AFITRI RAHMA WATI', 'Jum\'at', '16 Pebruari 2024', 'Hadir', '06:58:37 AM', '10:40:23 AM', '3 jam 41 menit', '', 'SPT Fingerprint'),
(11, '72', 'AFITRI RAHMA WATI', 'Selasa', '13 Pebruari 2024', 'Hadir', '06:55:01 AM', '01:08:24 PM', '6 jam 13 menit', '', 'SPT Fingerprint'),
(12, '72', 'AFITRI RAHMA WATI', 'Senin', '12 Pebruari 2024', 'Hadir', '05:47:59 AM', '01:03:37 PM', '7 jam 15 menit', '', 'SPT Fingerprint'),
(13, '72', 'AFITRI RAHMA WATI', 'Kamis', '08 Pebruari 2024', 'Hadir', '06:42:10 AM', '05:00:00 PM', '10 jam 17 menit', '', 'SPT Fingerprint'),
(14, '72', 'AFITRI RAHMA WATI', 'Selasa', '06 Pebruari 2024', 'Hadir', '06:59:47 AM', '03:07:10 PM', '8 jam 7 menit', '', 'SPT Fingerprint'),
(15, '72', 'AFITRI RAHMA WATI', 'Senin', '05 Pebruari 2024', 'Hadir', '05:58:42 AM', '01:04:09 PM', '7 jam 5 menit', '', 'SPT Fingerprint'),
(16, '72', 'AFITRI RAHMA WATI', 'Sabtu', '03 Pebruari 2024', 'Hadir', '07:00:14 AM', '12:25:15 PM', '5 jam 25 menit', '', 'SPT Fingerprint'),
(17, '72', 'AFITRI RAHMA WATI', 'Jum\'at', '02 Pebruari 2024', 'Hadir', '07:00:46 AM', '11:56:25 AM', '4 jam 55 menit', '', 'SPT Fingerprint'),
(18, '48', 'AFWIN ULVIA', 'Kamis', '29 Pebruari 2024', 'Hadir', '06:57:41 AM', '02:16:45 PM', '7 jam 19 menit', '', 'SPT Fingerprint'),
(19, '48', 'AFWIN ULVIA', 'Rabu', '28 Pebruari 2024', 'Hadir', '06:55:35 AM', '01:22:16 PM', '6 jam 26 menit', '', 'SPT Fingerprint'),
(20, '48', 'AFWIN ULVIA', 'Senin', '26 Pebruari 2024', 'Hadir', '06:58:38 AM', '01:00:19 PM', '6 jam 1 menit', '', 'SPT Fingerprint'),
(21, '48', 'AFWIN ULVIA', 'Sabtu', '24 Pebruari 2024', 'Hadir', '06:51:53 AM', '12:23:54 PM', '5 jam 32 menit', '', 'SPT Fingerprint'),
(22, '48', 'AFWIN ULVIA', 'Jum\'at', '23 Pebruari 2024', 'Hadir', '07:00:32 AM', '10:32:40 AM', '3 jam 32 menit', '', 'SPT Fingerprint'),
(23, '48', 'AFWIN ULVIA', 'Kamis', '22 Pebruari 2024', 'Hadir', '05:49:22 AM', '01:18:19 PM', '7 jam 28 menit', '', 'SPT Fingerprint'),
(24, '48', 'AFWIN ULVIA', 'Rabu', '21 Pebruari 2024', 'Hadir', '06:52:57 AM', '01:25:17 PM', '6 jam 32 menit', '', 'SPT Fingerprint'),
(25, '48', 'AFWIN ULVIA', 'Selasa', '20 Pebruari 2024', 'Hadir', '06:59:38 AM', '01:10:40 PM', '6 jam 11 menit', '', 'SPT Fingerprint'),
(26, '48', 'AFWIN ULVIA', 'Senin', '19 Pebruari 2024', 'Hadir', '06:57:35 AM', '03:45:15 PM', '8 jam 47 menit', '', 'SPT Fingerprint'),
(27, '48', 'AFWIN ULVIA', 'Sabtu', '17 Pebruari 2024', 'Hadir', '05:49:59 AM', '12:35:49 PM', '6 jam 45 menit', '', 'SPT Fingerprint'),
(28, '48', 'AFWIN ULVIA', 'Jum\'at', '16 Pebruari 2024', 'Hadir', '06:58:54 AM', '10:32:52 AM', '3 jam 33 menit', '', 'SPT Fingerprint'),
(29, '48', 'AFWIN ULVIA', 'Kamis', '15 Pebruari 2024', 'Hadir', '05:59:37 AM', '01:01:20 PM', '7 jam 1 menit', '', 'SPT Fingerprint'),
(30, '48', 'AFWIN ULVIA', 'Senin', '12 Pebruari 2024', 'Hadir', '06:59:11 AM', '01:01:55 PM', '6 jam 2 menit', '', 'SPT Fingerprint'),
(31, '48', 'AFWIN ULVIA', 'Jum\'at', '09 Pebruari 2024', 'Hadir', '06:52:57 AM', '10:57:33 AM', '4 jam 4 menit', '', 'SPT Fingerprint'),
(32, '48', 'AFWIN ULVIA', 'Kamis', '08 Pebruari 2024', 'Hadir', '06:36:09 AM', '01:07:37 PM', '6 jam 31 menit', '', 'SPT Fingerprint'),
(33, '48', 'AFWIN ULVIA', 'Sabtu', '03 Pebruari 2024', 'Hadir', '06:53:14 AM', '12:23:57 PM', '5 jam 30 menit', '', 'SPT Fingerprint'),
(34, '48', 'AFWIN ULVIA', 'Jum\'at', '02 Pebruari 2024', 'Hadir', '06:54:03 AM', '10:33:14 AM', '3 jam 39 menit', '', 'SPT Fingerprint'),
(35, '48', 'AFWIN ULVIA', 'Kamis', '01 Pebruari 2024', 'Hadir', '06:56:24 AM', '01:18:49 PM', '6 jam 22 menit', '', 'SPT Fingerprint'),
(36, '93', 'AHMAD SIRRI', 'Kamis', '29 Pebruari 2024', 'Hadir', '05:35:54 AM', '01:10:09 PM', '7 jam 34 menit', '', 'SPT Fingerprint'),
(37, '93', 'AHMAD SIRRI', 'Rabu', '28 Pebruari 2024', 'Hadir', '05:31:50 AM', '01:11:52 PM', '7 jam 40 menit', '', 'SPT Fingerprint'),
(38, '93', 'AHMAD SIRRI', 'Selasa', '27 Pebruari 2024', 'Hadir', '05:39:34 AM', '01:14:32 PM', '7 jam 34 menit', '', 'SPT Fingerprint'),
(39, '93', 'AHMAD SIRRI', 'Senin', '26 Pebruari 2024', 'Hadir', '05:58:43 AM', '01:48:26 PM', '7 jam 49 menit', '', 'SPT Fingerprint'),
(40, '93', 'AHMAD SIRRI', 'Sabtu', '24 Pebruari 2024', 'Hadir', '05:33:35 AM', '12:33:18 PM', '6 jam 59 menit', '', 'SPT Fingerprint'),
(41, '93', 'AHMAD SIRRI', 'Jum\'at', '23 Pebruari 2024', 'Hadir', '05:38:00 AM', '10:45:53 AM', '5 jam 7 menit', '', 'SPT Fingerprint'),
(42, '93', 'AHMAD SIRRI', 'Kamis', '22 Pebruari 2024', 'Hadir', '05:47:58 AM', '01:14:43 PM', '7 jam 26 menit', '', 'SPT Fingerprint'),
(43, '93', 'AHMAD SIRRI', 'Rabu', '21 Pebruari 2024', 'Hadir', '05:49:40 AM', '03:31:38 PM', '9 jam 41 menit', '', 'SPT Fingerprint'),
(44, '93', 'AHMAD SIRRI', 'Selasa', '20 Pebruari 2024', 'Hadir', '05:53:03 AM', '03:38:11 PM', '9 jam 45 menit', '', 'SPT Fingerprint'),
(45, '93', 'AHMAD SIRRI', 'Senin', '19 Pebruari 2024', 'Hadir', '05:56:28 AM', '01:11:13 PM', '7 jam 14 menit', '', 'SPT Fingerprint'),
(46, '93', 'AHMAD SIRRI', 'Sabtu', '17 Pebruari 2024', 'Hadir', '05:50:20 AM', '12:39:26 PM', '6 jam 49 menit', '', 'SPT Fingerprint'),
(47, '93', 'AHMAD SIRRI', 'Jum\'at', '16 Pebruari 2024', 'Hadir', '05:52:28 AM', '01:44:24 PM', '7 jam 51 menit', '', 'SPT Fingerprint'),
(48, '93', 'AHMAD SIRRI', 'Kamis', '15 Pebruari 2024', 'Hadir', '05:36:43 AM', '01:18:52 PM', '7 jam 42 menit', '', 'SPT Fingerprint'),
(49, '93', 'AHMAD SIRRI', 'Selasa', '13 Pebruari 2024', 'Hadir', '05:49:57 AM', '01:15:46 PM', '7 jam 25 menit', '', 'SPT Fingerprint'),
(50, '93', 'AHMAD SIRRI', 'Senin', '12 Pebruari 2024', 'Hadir', '05:37:38 AM', '01:24:51 PM', '7 jam 47 menit', '', 'SPT Fingerprint'),
(51, '93', 'AHMAD SIRRI', 'Jum\'at', '09 Pebruari 2024', 'Hadir', '06:06:23 AM', '10:30:12 AM', '4 jam 23 menit', '', 'SPT Fingerprint'),
(52, '93', 'AHMAD SIRRI', 'Kamis', '08 Pebruari 2024', 'Hadir', '05:47:16 AM', '05:00:00 PM', '11 jam 12 menit', '', 'SPT Fingerprint'),
(53, '93', 'AHMAD SIRRI', 'Rabu', '07 Pebruari 2024', 'Hadir', '05:42:14 AM', '01:00:36 PM', '7 jam 18 menit', '', 'SPT Fingerprint'),
(54, '93', 'AHMAD SIRRI', 'Selasa', '06 Pebruari 2024', 'Hadir', '05:32:59 AM', '01:20:26 PM', '7 jam 47 menit', '', 'SPT Fingerprint'),
(55, '93', 'AHMAD SIRRI', 'Senin', '05 Pebruari 2024', 'Hadir', '05:42:50 AM', '01:15:08 PM', '7 jam 32 menit', '', 'SPT Fingerprint'),
(56, '93', 'AHMAD SIRRI', 'Sabtu', '03 Pebruari 2024', 'Hadir', '05:42:28 AM', '12:34:24 PM', '6 jam 51 menit', '', 'SPT Fingerprint'),
(57, '93', 'AHMAD SIRRI', 'Jum\'at', '02 Pebruari 2024', 'Hadir', '05:41:51 AM', '10:49:27 AM', '5 jam 7 menit', '', 'SPT Fingerprint'),
(58, '93', 'AHMAD SIRRI', 'Kamis', '01 Pebruari 2024', 'Hadir', '05:38:14 AM', '01:14:54 PM', '7 jam 36 menit', '', 'SPT Fingerprint'),
(59, '51', 'ARFAN NURUFANA', 'Rabu', '21 Pebruari 2024', 'Hadir', '06:51:48 AM', '05:00:00 PM', '10 jam 8 menit', '', 'SPT Fingerprint'),
(60, '51', 'ARFAN NURUFANA', 'Selasa', '13 Pebruari 2024', 'Hadir', '06:56:52 AM', '05:00:00 PM', '10 jam 3 menit', '', 'SPT Fingerprint'),
(61, '36', 'ARIF FATONI', 'Senin', '26 Pebruari 2024', 'Hadir', '06:54:54 AM', '01:13:59 PM', '6 jam 19 menit', '', 'SPT Fingerprint'),
(62, '36', 'ARIF FATONI', 'Sabtu', '24 Pebruari 2024', 'Hadir', '07:00:42 AM', '12:30:23 PM', '5 jam 29 menit', '', 'SPT Fingerprint'),
(63, '36', 'ARIF FATONI', 'Jum\'at', '23 Pebruari 2024', 'Hadir', '06:56:41 AM', '10:40:23 AM', '3 jam 43 menit', '', 'SPT Fingerprint'),
(64, '36', 'ARIF FATONI', 'Kamis', '22 Pebruari 2024', 'Hadir', '06:57:02 AM', '01:00:48 PM', '6 jam 3 menit', '', 'SPT Fingerprint'),
(65, '36', 'ARIF FATONI', 'Rabu', '21 Pebruari 2024', 'Hadir', '05:59:37 AM', '01:14:09 PM', '7 jam 14 menit', '', 'SPT Fingerprint'),
(66, '36', 'ARIF FATONI', 'Selasa', '20 Pebruari 2024', 'Hadir', '06:58:24 AM', '01:14:29 PM', '6 jam 16 menit', '', 'SPT Fingerprint'),
(67, '36', 'ARIF FATONI', 'Senin', '19 Pebruari 2024', 'Hadir', '06:07:44 AM', '01:14:00 PM', '7 jam 6 menit', '', 'SPT Fingerprint'),
(68, '36', 'ARIF FATONI', 'Sabtu', '17 Pebruari 2024', 'Hadir', '06:59:56 AM', '05:00:00 PM', '10 jam 0 menit', '', 'SPT Fingerprint'),
(69, '36', 'ARIF FATONI', 'Jum\'at', '16 Pebruari 2024', 'Hadir', '06:34:45 AM', '10:41:10 AM', '4 jam 6 menit', '', 'SPT Fingerprint'),
(70, '36', 'ARIF FATONI', 'Kamis', '15 Pebruari 2024', 'Hadir', '06:36:17 AM', '01:21:10 PM', '6 jam 44 menit', '', 'SPT Fingerprint'),
(71, '36', 'ARIF FATONI', 'Selasa', '13 Pebruari 2024', 'Hadir', '06:50:51 AM', '01:32:34 PM', '6 jam 41 menit', '', 'SPT Fingerprint'),
(72, '36', 'ARIF FATONI', 'Sabtu', '03 Pebruari 2024', 'Hadir', '06:59:27 AM', '01:06:40 PM', '6 jam 7 menit', '', 'SPT Fingerprint'),
(73, '36', 'ARIF FATONI', 'Jum\'at', '02 Pebruari 2024', 'Hadir', '06:57:44 AM', '10:48:02 AM', '3 jam 50 menit', '', 'SPT Fingerprint'),
(74, '36', 'ARIF FATONI', 'Kamis', '01 Pebruari 2024', 'Hadir', '06:55:10 AM', '01:13:01 PM', '6 jam 17 menit', '', 'SPT Fingerprint'),
(75, '89', 'ARLISA MAI NINGTIYAS', 'Rabu', '28 Pebruari 2024', 'Hadir', '06:54:28 AM', '01:00:03 PM', '6 jam 5 menit', '', 'SPT Fingerprint'),
(76, '89', 'ARLISA MAI NINGTIYAS', 'Selasa', '27 Pebruari 2024', 'Hadir', '06:54:27 AM', '01:00:55 PM', '6 jam 6 menit', '', 'SPT Fingerprint'),
(77, '89', 'ARLISA MAI NINGTIYAS', 'Jum\'at', '23 Pebruari 2024', 'Hadir', '06:45:03 AM', '10:30:42 AM', '3 jam 45 menit', '', 'SPT Fingerprint'),
(78, '89', 'ARLISA MAI NINGTIYAS', 'Rabu', '21 Pebruari 2024', 'Hadir', '06:50:29 AM', '01:00:06 PM', '6 jam 9 menit', '', 'SPT Fingerprint'),
(79, '89', 'ARLISA MAI NINGTIYAS', 'Selasa', '20 Pebruari 2024', 'Hadir', '06:53:35 AM', '01:00:27 PM', '6 jam 6 menit', '', 'SPT Fingerprint'),
(80, '89', 'ARLISA MAI NINGTIYAS', 'Jum\'at', '16 Pebruari 2024', 'Hadir', '06:44:25 AM', '10:30:16 AM', '3 jam 45 menit', '', 'SPT Fingerprint'),
(81, '89', 'ARLISA MAI NINGTIYAS', 'Selasa', '13 Pebruari 2024', 'Hadir', '06:57:23 AM', '01:00:08 PM', '6 jam 2 menit', '', 'SPT Fingerprint'),
(82, '89', 'ARLISA MAI NINGTIYAS', 'Jum\'at', '09 Pebruari 2024', 'Hadir', '06:59:25 AM', '10:30:10 AM', '3 jam 30 menit', '', 'SPT Fingerprint'),
(83, '89', 'ARLISA MAI NINGTIYAS', 'Rabu', '07 Pebruari 2024', 'Hadir', '06:56:03 AM', '01:16:15 PM', '6 jam 20 menit', '', 'SPT Fingerprint'),
(84, '89', 'ARLISA MAI NINGTIYAS', 'Selasa', '06 Pebruari 2024', 'Hadir', '06:57:18 AM', '01:23:48 PM', '6 jam 26 menit', '', 'SPT Fingerprint'),
(85, '89', 'ARLISA MAI NINGTIYAS', 'Jum\'at', '02 Pebruari 2024', 'Hadir', '06:40:53 AM', '05:00:00 PM', '10 jam 19 menit', '', 'SPT Fingerprint'),
(86, '96', 'BERLIANA NUR LAILI', 'Rabu', '28 Pebruari 2024', 'Hadir', '06:56:36 AM', '01:03:10 PM', '6 jam 6 menit', '', 'SPT Fingerprint'),
(87, '96', 'BERLIANA NUR LAILI', 'Selasa', '27 Pebruari 2024', 'Hadir', '06:58:01 AM', '01:35:49 PM', '6 jam 37 menit', '', 'SPT Fingerprint'),
(88, '96', 'BERLIANA NUR LAILI', 'Sabtu', '24 Pebruari 2024', 'Hadir', '06:58:18 AM', '12:33:58 PM', '5 jam 35 menit', '', 'SPT Fingerprint'),
(89, '96', 'BERLIANA NUR LAILI', 'Jum\'at', '23 Pebruari 2024', 'Hadir', '06:45:54 AM', '10:30:48 AM', '3 jam 44 menit', '', 'SPT Fingerprint'),
(90, '96', 'BERLIANA NUR LAILI', 'Rabu', '21 Pebruari 2024', 'Hadir', '06:50:57 AM', '01:02:56 PM', '6 jam 11 menit', '', 'SPT Fingerprint'),
(91, '96', 'BERLIANA NUR LAILI', 'Selasa', '20 Pebruari 2024', 'Hadir', '06:52:50 AM', '01:34:06 PM', '6 jam 41 menit', '', 'SPT Fingerprint'),
(92, '96', 'BERLIANA NUR LAILI', 'Sabtu', '17 Pebruari 2024', 'Hadir', '06:50:33 AM', '12:37:01 PM', '5 jam 46 menit', '', 'SPT Fingerprint'),
(93, '96', 'BERLIANA NUR LAILI', 'Jum\'at', '16 Pebruari 2024', 'Hadir', '06:50:01 AM', '10:31:16 AM', '3 jam 41 menit', '', 'SPT Fingerprint'),
(94, '96', 'BERLIANA NUR LAILI', 'Kamis', '15 Pebruari 2024', 'Hadir', '06:52:43 AM', '01:01:54 PM', '6 jam 9 menit', '', 'SPT Fingerprint'),
(95, '96', 'BERLIANA NUR LAILI', 'Selasa', '13 Pebruari 2024', 'Hadir', '06:53:49 AM', '01:24:32 PM', '6 jam 30 menit', '', 'SPT Fingerprint'),
(96, '96', 'BERLIANA NUR LAILI', 'Jum\'at', '09 Pebruari 2024', 'Hadir', '06:57:17 AM', '05:00:00 PM', '10 jam 2 menit', '', 'SPT Fingerprint'),
(97, '96', 'BERLIANA NUR LAILI', 'Kamis', '08 Pebruari 2024', 'Hadir', '06:36:24 AM', '05:00:00 PM', '10 jam 23 menit', '', 'SPT Fingerprint'),
(98, '96', 'BERLIANA NUR LAILI', 'Rabu', '07 Pebruari 2024', 'Hadir', '06:52:19 AM', '01:45:56 PM', '6 jam 53 menit', '', 'SPT Fingerprint'),
(99, '96', 'BERLIANA NUR LAILI', 'Selasa', '06 Pebruari 2024', 'Hadir', '06:51:37 AM', '01:28:18 PM', '6 jam 36 menit', '', 'SPT Fingerprint'),
(100, '96', 'BERLIANA NUR LAILI', 'Sabtu', '03 Pebruari 2024', 'Hadir', '06:55:39 AM', '12:34:06 PM', '5 jam 38 menit', '', 'SPT Fingerprint'),
(101, '96', 'BERLIANA NUR LAILI', 'Jum\'at', '02 Pebruari 2024', 'Hadir', '06:40:02 AM', '10:30:20 AM', '3 jam 50 menit', '', 'SPT Fingerprint'),
(102, '96', 'BERLIANA NUR LAILI', 'Kamis', '01 Pebruari 2024', 'Hadir', '06:50:45 AM', '01:01:25 PM', '6 jam 10 menit', '', 'SPT Fingerprint'),
(103, '68', 'CHOIROTUN NIKMAH', 'Kamis', '29 Pebruari 2024', 'Hadir', '06:57:15 AM', '01:03:24 PM', '6 jam 6 menit', '', 'SPT Fingerprint'),
(104, '68', 'CHOIROTUN NIKMAH', 'Rabu', '28 Pebruari 2024', 'Hadir', '06:56:00 AM', '01:00:08 PM', '6 jam 4 menit', '', 'SPT Fingerprint'),
(105, '68', 'CHOIROTUN NIKMAH', 'Selasa', '27 Pebruari 2024', 'Hadir', '06:57:11 AM', '02:01:56 PM', '7 jam 4 menit', '', 'SPT Fingerprint'),
(106, '68', 'CHOIROTUN NIKMAH', 'Senin', '26 Pebruari 2024', 'Hadir', '06:55:34 AM', '02:35:18 PM', '7 jam 39 menit', '', 'SPT Fingerprint'),
(107, '68', 'CHOIROTUN NIKMAH', 'Jum\'at', '23 Pebruari 2024', 'Hadir', '06:09:01 AM', '10:32:27 AM', '4 jam 23 menit', '', 'SPT Fingerprint'),
(108, '68', 'CHOIROTUN NIKMAH', 'Kamis', '22 Pebruari 2024', 'Hadir', '06:58:41 AM', '01:02:02 PM', '6 jam 3 menit', '', 'SPT Fingerprint'),
(109, '68', 'CHOIROTUN NIKMAH', 'Rabu', '21 Pebruari 2024', 'Hadir', '05:47:42 AM', '01:00:08 PM', '7 jam 12 menit', '', 'SPT Fingerprint'),
(110, '68', 'CHOIROTUN NIKMAH', 'Selasa', '20 Pebruari 2024', 'Hadir', '07:00:35 AM', '03:15:22 PM', '8 jam 14 menit', '', 'SPT Fingerprint'),
(111, '68', 'CHOIROTUN NIKMAH', 'Senin', '19 Pebruari 2024', 'Hadir', '05:47:55 AM', '01:01:06 PM', '7 jam 13 menit', '', 'SPT Fingerprint'),
(112, '68', 'CHOIROTUN NIKMAH', 'Sabtu', '17 Pebruari 2024', 'Hadir', '06:59:47 AM', '12:24:01 PM', '5 jam 24 menit', '', 'SPT Fingerprint'),
(113, '68', 'CHOIROTUN NIKMAH', 'Jum\'at', '16 Pebruari 2024', 'Hadir', '06:57:24 AM', '10:33:29 AM', '3 jam 36 menit', '', 'SPT Fingerprint'),
(114, '68', 'CHOIROTUN NIKMAH', 'Kamis', '15 Pebruari 2024', 'Hadir', '06:58:27 AM', '01:01:17 PM', '6 jam 2 menit', '', 'SPT Fingerprint'),
(115, '68', 'CHOIROTUN NIKMAH', 'Selasa', '13 Pebruari 2024', 'Hadir', '06:54:16 AM', '02:36:29 PM', '7 jam 42 menit', '', 'SPT Fingerprint'),
(116, '68', 'CHOIROTUN NIKMAH', 'Senin', '12 Pebruari 2024', 'Hadir', '06:55:13 AM', '02:54:44 PM', '7 jam 59 menit', '', 'SPT Fingerprint'),
(117, '68', 'CHOIROTUN NIKMAH', 'Rabu', '07 Pebruari 2024', 'Hadir', '06:58:29 AM', '01:00:04 PM', '6 jam 1 menit', '', 'SPT Fingerprint'),
(118, '68', 'CHOIROTUN NIKMAH', 'Selasa', '06 Pebruari 2024', 'Hadir', '06:58:22 AM', '03:39:52 PM', '8 jam 41 menit', '', 'SPT Fingerprint'),
(119, '68', 'CHOIROTUN NIKMAH', 'Senin', '05 Pebruari 2024', 'Hadir', '06:56:46 AM', '03:49:37 PM', '8 jam 52 menit', '', 'SPT Fingerprint'),
(120, '68', 'CHOIROTUN NIKMAH', 'Sabtu', '03 Pebruari 2024', 'Hadir', '06:59:23 AM', '12:22:24 PM', '5 jam 23 menit', '', 'SPT Fingerprint'),
(121, '68', 'CHOIROTUN NIKMAH', 'Jum\'at', '02 Pebruari 2024', 'Hadir', '06:57:01 AM', '10:32:32 AM', '3 jam 35 menit', '', 'SPT Fingerprint'),
(122, '68', 'CHOIROTUN NIKMAH', 'Kamis', '01 Pebruari 2024', 'Hadir', '06:55:26 AM', '01:02:55 PM', '6 jam 7 menit', '', 'SPT Fingerprint'),
(123, '30', 'DINA NISWATI', 'Kamis', '29 Pebruari 2024', 'Hadir', '06:08:25 AM', '01:57:30 PM', '7 jam 49 menit', '', 'SPT Fingerprint'),
(124, '30', 'DINA NISWATI', 'Rabu', '28 Pebruari 2024', 'Hadir', '06:22:43 AM', '01:36:06 PM', '7 jam 13 menit', '', 'SPT Fingerprint'),
(125, '30', 'DINA NISWATI', 'Selasa', '27 Pebruari 2024', 'Hadir', '06:20:18 AM', '01:22:24 PM', '7 jam 2 menit', '', 'SPT Fingerprint'),
(126, '30', 'DINA NISWATI', 'Senin', '26 Pebruari 2024', 'Hadir', '06:52:38 AM', '01:16:49 PM', '6 jam 24 menit', '', 'SPT Fingerprint'),
(127, '30', 'DINA NISWATI', 'Sabtu', '24 Pebruari 2024', 'Hadir', '06:57:10 AM', '12:40:35 PM', '5 jam 43 menit', '', 'SPT Fingerprint'),
(128, '30', 'DINA NISWATI', 'Jum\'at', '23 Pebruari 2024', 'Hadir', '06:06:01 AM', '11:47:34 AM', '5 jam 41 menit', '', 'SPT Fingerprint'),
(129, '30', 'DINA NISWATI', 'Kamis', '22 Pebruari 2024', 'Hadir', '06:03:53 AM', '01:09:22 PM', '7 jam 5 menit', '', 'SPT Fingerprint'),
(130, '30', 'DINA NISWATI', 'Rabu', '21 Pebruari 2024', 'Hadir', '06:04:46 AM', '01:31:46 PM', '7 jam 27 menit', '', 'SPT Fingerprint'),
(131, '30', 'DINA NISWATI', 'Selasa', '20 Pebruari 2024', 'Hadir', '06:53:22 AM', '02:00:12 PM', '7 jam 6 menit', '', 'SPT Fingerprint'),
(132, '30', 'DINA NISWATI', 'Senin', '19 Pebruari 2024', 'Hadir', '06:58:19 AM', '01:28:16 PM', '6 jam 29 menit', '', 'SPT Fingerprint'),
(133, '30', 'DINA NISWATI', 'Sabtu', '17 Pebruari 2024', 'Hadir', '05:52:46 AM', '12:39:05 PM', '6 jam 46 menit', '', 'SPT Fingerprint'),
(134, '30', 'DINA NISWATI', 'Jum\'at', '16 Pebruari 2024', 'Hadir', '06:54:37 AM', '01:26:58 PM', '6 jam 32 menit', '', 'SPT Fingerprint'),
(135, '30', 'DINA NISWATI', 'Kamis', '15 Pebruari 2024', 'Hadir', '06:28:15 AM', '01:29:51 PM', '7 jam 1 menit', '', 'SPT Fingerprint'),
(136, '30', 'DINA NISWATI', 'Selasa', '13 Pebruari 2024', 'Hadir', '06:31:00 AM', '01:11:32 PM', '6 jam 40 menit', '', 'SPT Fingerprint'),
(137, '30', 'DINA NISWATI', 'Senin', '12 Pebruari 2024', 'Hadir', '06:53:35 AM', '02:17:22 PM', '7 jam 23 menit', '', 'SPT Fingerprint'),
(138, '30', 'DINA NISWATI', 'Jum\'at', '09 Pebruari 2024', 'Hadir', '06:34:38 AM', '12:13:43 PM', '5 jam 39 menit', '', 'SPT Fingerprint'),
(139, '30', 'DINA NISWATI', 'Rabu', '07 Pebruari 2024', 'Hadir', '06:39:46 AM', '01:24:59 PM', '6 jam 45 menit', '', 'SPT Fingerprint'),
(140, '30', 'DINA NISWATI', 'Selasa', '06 Pebruari 2024', 'Hadir', '06:24:59 AM', '01:03:01 PM', '6 jam 38 menit', '', 'SPT Fingerprint'),
(141, '30', 'DINA NISWATI', 'Sabtu', '03 Pebruari 2024', 'Hadir', '06:23:21 AM', '01:45:06 PM', '7 jam 21 menit', '', 'SPT Fingerprint'),
(142, '30', 'DINA NISWATI', 'Jum\'at', '02 Pebruari 2024', 'Hadir', '06:19:16 AM', '10:39:47 AM', '4 jam 20 menit', '', 'SPT Fingerprint'),
(143, '30', 'DINA NISWATI', 'Kamis', '01 Pebruari 2024', 'Hadir', '06:58:42 AM', '02:18:01 PM', '7 jam 19 menit', '', 'SPT Fingerprint'),
(144, '46', 'DWI KURNIAWATI', 'Jum\'at', '16 Pebruari 2024', 'Hadir', '06:53:48 AM', '10:35:32 AM', '3 jam 41 menit', '', 'SPT Fingerprint'),
(145, '46', 'DWI KURNIAWATI', 'Kamis', '15 Pebruari 2024', 'Hadir', '06:46:37 AM', '01:00:53 PM', '6 jam 14 menit', '', 'SPT Fingerprint'),
(146, '46', 'DWI KURNIAWATI', 'Kamis', '08 Pebruari 2024', 'Hadir', '06:55:59 AM', '05:00:00 PM', '10 jam 4 menit', '', 'SPT Fingerprint'),
(147, '46', 'DWI KURNIAWATI', 'Rabu', '07 Pebruari 2024', 'Hadir', '05:59:23 AM', '01:19:19 PM', '7 jam 19 menit', '', 'SPT Fingerprint'),
(148, '46', 'DWI KURNIAWATI', 'Senin', '05 Pebruari 2024', 'Hadir', '06:10:06 AM', '01:03:36 PM', '6 jam 53 menit', '', 'SPT Fingerprint'),
(149, '77', 'ERFIN RUDIONO', 'Rabu', '28 Pebruari 2024', 'Hadir', '06:52:20 AM', '01:00:25 PM', '6 jam 8 menit', '', 'SPT Fingerprint'),
(150, '77', 'ERFIN RUDIONO', 'Senin', '26 Pebruari 2024', 'Hadir', '06:55:14 AM', '01:01:12 PM', '6 jam 5 menit', '', 'SPT Fingerprint'),
(151, '77', 'ERFIN RUDIONO', 'Jum\'at', '23 Pebruari 2024', 'Hadir', '06:56:56 AM', '10:32:48 AM', '3 jam 35 menit', '', 'SPT Fingerprint'),
(152, '77', 'ERFIN RUDIONO', 'Rabu', '21 Pebruari 2024', 'Hadir', '06:47:18 AM', '01:00:23 PM', '6 jam 13 menit', '', 'SPT Fingerprint'),
(153, '77', 'ERFIN RUDIONO', 'Senin', '19 Pebruari 2024', 'Hadir', '06:57:19 AM', '01:00:17 PM', '6 jam 2 menit', '', 'SPT Fingerprint'),
(154, '77', 'ERFIN RUDIONO', 'Jum\'at', '16 Pebruari 2024', 'Hadir', '06:55:24 AM', '10:33:20 AM', '3 jam 37 menit', '', 'SPT Fingerprint'),
(155, '77', 'ERFIN RUDIONO', 'Senin', '12 Pebruari 2024', 'Hadir', '06:58:27 AM', '05:00:00 PM', '10 jam 1 menit', '', 'SPT Fingerprint'),
(156, '77', 'ERFIN RUDIONO', 'Rabu', '07 Pebruari 2024', 'Hadir', '06:56:38 AM', '01:00:43 PM', '6 jam 4 menit', '', 'SPT Fingerprint'),
(157, '77', 'ERFIN RUDIONO', 'Selasa', '06 Pebruari 2024', 'Hadir', '06:58:55 AM', '01:03:11 PM', '6 jam 4 menit', '', 'SPT Fingerprint'),
(158, '77', 'ERFIN RUDIONO', 'Senin', '05 Pebruari 2024', 'Hadir', '06:50:25 AM', '01:18:24 PM', '6 jam 27 menit', '', 'SPT Fingerprint'),
(159, '77', 'ERFIN RUDIONO', 'Jum\'at', '02 Pebruari 2024', 'Hadir', '06:59:02 AM', '10:32:41 AM', '3 jam 33 menit', '', 'SPT Fingerprint'),
(160, '77', 'ERFIN RUDIONO', 'Kamis', '01 Pebruari 2024', 'Hadir', '06:56:12 AM', '05:00:00 PM', '10 jam 3 menit', '', 'SPT Fingerprint'),
(161, '74', 'ERNI LAILA MUSFINAH', 'Kamis', '29 Pebruari 2024', 'Hadir', '06:46:01 AM', '01:16:22 PM', '6 jam 30 menit', '', 'SPT Fingerprint'),
(162, '74', 'ERNI LAILA MUSFINAH', 'Rabu', '28 Pebruari 2024', 'Hadir', '06:49:16 AM', '01:07:46 PM', '6 jam 18 menit', '', 'SPT Fingerprint'),
(163, '74', 'ERNI LAILA MUSFINAH', 'Selasa', '27 Pebruari 2024', 'Hadir', '06:41:01 AM', '01:13:31 PM', '6 jam 32 menit', '', 'SPT Fingerprint'),
(164, '74', 'ERNI LAILA MUSFINAH', 'Senin', '26 Pebruari 2024', 'Hadir', '06:45:54 AM', '01:16:32 PM', '6 jam 30 menit', '', 'SPT Fingerprint'),
(165, '74', 'ERNI LAILA MUSFINAH', 'Sabtu', '24 Pebruari 2024', 'Hadir', '06:50:01 AM', '12:28:31 PM', '5 jam 38 menit', '', 'SPT Fingerprint'),
(166, '74', 'ERNI LAILA MUSFINAH', 'Jum\'at', '23 Pebruari 2024', 'Hadir', '06:52:36 AM', '10:43:22 AM', '3 jam 50 menit', '', 'SPT Fingerprint'),
(167, '74', 'ERNI LAILA MUSFINAH', 'Kamis', '22 Pebruari 2024', 'Hadir', '06:49:38 AM', '01:15:57 PM', '6 jam 26 menit', '', 'SPT Fingerprint'),
(168, '74', 'ERNI LAILA MUSFINAH', 'Rabu', '21 Pebruari 2024', 'Hadir', '06:49:52 AM', '01:19:07 PM', '6 jam 29 menit', '', 'SPT Fingerprint'),
(169, '74', 'ERNI LAILA MUSFINAH', 'Selasa', '20 Pebruari 2024', 'Hadir', '06:50:39 AM', '01:20:12 PM', '6 jam 29 menit', '', 'SPT Fingerprint'),
(170, '74', 'ERNI LAILA MUSFINAH', 'Senin', '19 Pebruari 2024', 'Hadir', '06:48:47 AM', '01:15:26 PM', '6 jam 26 menit', '', 'SPT Fingerprint'),
(171, '74', 'ERNI LAILA MUSFINAH', 'Sabtu', '17 Pebruari 2024', 'Hadir', '06:57:32 AM', '12:38:03 PM', '5 jam 40 menit', '', 'SPT Fingerprint'),
(172, '74', 'ERNI LAILA MUSFINAH', 'Jum\'at', '16 Pebruari 2024', 'Hadir', '06:41:48 AM', '01:45:39 PM', '7 jam 3 menit', '', 'SPT Fingerprint'),
(173, '74', 'ERNI LAILA MUSFINAH', 'Kamis', '15 Pebruari 2024', 'Hadir', '06:52:51 AM', '02:32:51 PM', '7 jam 40 menit', '', 'SPT Fingerprint'),
(174, '74', 'ERNI LAILA MUSFINAH', 'Selasa', '13 Pebruari 2024', 'Hadir', '06:56:02 AM', '01:11:00 PM', '6 jam 14 menit', '', 'SPT Fingerprint'),
(175, '74', 'ERNI LAILA MUSFINAH', 'Senin', '12 Pebruari 2024', 'Hadir', '06:40:25 AM', '01:04:34 PM', '6 jam 24 menit', '', 'SPT Fingerprint'),
(176, '74', 'ERNI LAILA MUSFINAH', 'Jum\'at', '09 Pebruari 2024', 'Hadir', '07:00:49 AM', '10:30:32 AM', '3 jam 29 menit', '', 'SPT Fingerprint'),
(177, '74', 'ERNI LAILA MUSFINAH', 'Kamis', '08 Pebruari 2024', 'Hadir', '06:12:09 AM', '01:00:49 PM', '6 jam 48 menit', '', 'SPT Fingerprint'),
(178, '74', 'ERNI LAILA MUSFINAH', 'Rabu', '07 Pebruari 2024', 'Hadir', '06:49:45 AM', '01:04:49 PM', '6 jam 15 menit', '', 'SPT Fingerprint'),
(179, '74', 'ERNI LAILA MUSFINAH', 'Selasa', '06 Pebruari 2024', 'Hadir', '06:47:13 AM', '01:08:36 PM', '6 jam 21 menit', '', 'SPT Fingerprint'),
(180, '74', 'ERNI LAILA MUSFINAH', 'Senin', '05 Pebruari 2024', 'Hadir', '06:52:34 AM', '01:11:03 PM', '6 jam 18 menit', '', 'SPT Fingerprint'),
(181, '74', 'ERNI LAILA MUSFINAH', 'Sabtu', '03 Pebruari 2024', 'Hadir', '06:48:17 AM', '12:37:07 PM', '5 jam 48 menit', '', 'SPT Fingerprint'),
(182, '74', 'ERNI LAILA MUSFINAH', 'Jum\'at', '02 Pebruari 2024', 'Hadir', '06:50:30 AM', '11:23:15 AM', '4 jam 32 menit', '', 'SPT Fingerprint'),
(183, '74', 'ERNI LAILA MUSFINAH', 'Kamis', '01 Pebruari 2024', 'Hadir', '06:44:47 AM', '02:41:32 PM', '7 jam 56 menit', '', 'SPT Fingerprint'),
(184, '25', 'FAFIK NURUL HUDA', 'Kamis', '29 Pebruari 2024', 'Hadir', '06:21:55 AM', '01:00:52 PM', '6 jam 38 menit', '', 'SPT Fingerprint'),
(185, '25', 'FAFIK NURUL HUDA', 'Rabu', '28 Pebruari 2024', 'Hadir', '06:21:42 AM', '01:00:45 PM', '6 jam 39 menit', '', 'SPT Fingerprint'),
(186, '25', 'FAFIK NURUL HUDA', 'Selasa', '27 Pebruari 2024', 'Hadir', '06:22:34 AM', '01:00:58 PM', '6 jam 38 menit', '', 'SPT Fingerprint'),
(187, '25', 'FAFIK NURUL HUDA', 'Senin', '26 Pebruari 2024', 'Hadir', '06:21:41 AM', '01:01:26 PM', '6 jam 39 menit', '', 'SPT Fingerprint'),
(188, '25', 'FAFIK NURUL HUDA', 'Sabtu', '24 Pebruari 2024', 'Hadir', '06:22:35 AM', '12:21:33 PM', '5 jam 58 menit', '', 'SPT Fingerprint'),
(189, '25', 'FAFIK NURUL HUDA', 'Jum\'at', '23 Pebruari 2024', 'Hadir', '06:25:51 AM', '11:45:45 AM', '5 jam 19 menit', '', 'SPT Fingerprint'),
(190, '25', 'FAFIK NURUL HUDA', 'Kamis', '22 Pebruari 2024', 'Hadir', '06:43:04 AM', '01:01:09 PM', '6 jam 18 menit', '', 'SPT Fingerprint'),
(191, '25', 'FAFIK NURUL HUDA', 'Rabu', '21 Pebruari 2024', 'Hadir', '06:26:07 AM', '01:00:00 PM', '6 jam 33 menit', '', 'SPT Fingerprint'),
(192, '25', 'FAFIK NURUL HUDA', 'Selasa', '20 Pebruari 2024', 'Hadir', '06:19:44 AM', '01:01:50 PM', '6 jam 42 menit', '', 'SPT Fingerprint'),
(193, '25', 'FAFIK NURUL HUDA', 'Senin', '19 Pebruari 2024', 'Hadir', '06:52:16 AM', '01:00:47 PM', '6 jam 8 menit', '', 'SPT Fingerprint'),
(194, '25', 'FAFIK NURUL HUDA', 'Sabtu', '17 Pebruari 2024', 'Hadir', '06:20:02 AM', '12:34:56 PM', '6 jam 14 menit', '', 'SPT Fingerprint'),
(195, '25', 'FAFIK NURUL HUDA', 'Jum\'at', '16 Pebruari 2024', 'Hadir', '06:22:56 AM', '10:30:33 AM', '4 jam 7 menit', '', 'SPT Fingerprint'),
(196, '25', 'FAFIK NURUL HUDA', 'Kamis', '15 Pebruari 2024', 'Hadir', '06:18:55 AM', '01:00:39 PM', '6 jam 41 menit', '', 'SPT Fingerprint'),
(197, '25', 'FAFIK NURUL HUDA', 'Selasa', '13 Pebruari 2024', 'Hadir', '06:33:58 AM', '01:01:03 PM', '6 jam 27 menit', '', 'SPT Fingerprint'),
(198, '25', 'FAFIK NURUL HUDA', 'Senin', '12 Pebruari 2024', 'Hadir', '06:51:42 AM', '01:00:03 PM', '6 jam 8 menit', '', 'SPT Fingerprint'),
(199, '25', 'FAFIK NURUL HUDA', 'Jum\'at', '09 Pebruari 2024', 'Hadir', '06:39:56 AM', '10:30:00 AM', '3 jam 50 menit', '', 'SPT Fingerprint'),
(200, '25', 'FAFIK NURUL HUDA', 'Kamis', '08 Pebruari 2024', 'Hadir', '06:13:06 AM', '05:00:00 PM', '10 jam 46 menit', '', 'SPT Fingerprint'),
(201, '25', 'FAFIK NURUL HUDA', 'Rabu', '07 Pebruari 2024', 'Hadir', '06:48:39 AM', '01:00:01 PM', '6 jam 11 menit', '', 'SPT Fingerprint'),
(202, '25', 'FAFIK NURUL HUDA', 'Selasa', '06 Pebruari 2024', 'Hadir', '06:45:57 AM', '03:18:53 PM', '8 jam 32 menit', '', 'SPT Fingerprint'),
(203, '25', 'FAFIK NURUL HUDA', 'Senin', '05 Pebruari 2024', 'Hadir', '06:44:03 AM', '01:01:21 PM', '6 jam 17 menit', '', 'SPT Fingerprint'),
(204, '25', 'FAFIK NURUL HUDA', 'Sabtu', '03 Pebruari 2024', 'Hadir', '06:21:22 AM', '12:21:14 PM', '5 jam 59 menit', '', 'SPT Fingerprint'),
(205, '25', 'FAFIK NURUL HUDA', 'Jum\'at', '02 Pebruari 2024', 'Hadir', '06:18:03 AM', '10:30:23 AM', '4 jam 12 menit', '', 'SPT Fingerprint'),
(206, '25', 'FAFIK NURUL HUDA', 'Kamis', '01 Pebruari 2024', 'Hadir', '06:17:50 AM', '05:00:00 PM', '10 jam 42 menit', '', 'SPT Fingerprint'),
(207, '12', 'FARUQ RIFQI', 'Senin', '26 Pebruari 2024', 'Hadir', '07:00:18 AM', '05:00:00 PM', '9 jam 59 menit', '', 'SPT Fingerprint'),
(208, '12', 'FARUQ RIFQI', 'Selasa', '20 Pebruari 2024', 'Hadir', '06:53:39 AM', '05:00:00 PM', '10 jam 6 menit', '', 'SPT Fingerprint'),
(209, '12', 'FARUQ RIFQI', 'Rabu', '07 Pebruari 2024', 'Hadir', '06:53:21 AM', '01:20:35 PM', '6 jam 27 menit', '', 'SPT Fingerprint'),
(210, '12', 'FARUQ RIFQI', 'Jum\'at', '02 Pebruari 2024', 'Hadir', '06:58:23 AM', '10:33:45 AM', '3 jam 35 menit', '', 'SPT Fingerprint'),
(211, '12', 'FARUQ RIFQI', 'Kamis', '01 Pebruari 2024', 'Hadir', '06:57:02 AM', '05:00:00 PM', '10 jam 2 menit', '', 'SPT Fingerprint'),
(212, '75', 'HENDRA BURHANUDIN', 'Kamis', '29 Pebruari 2024', 'Hadir', '06:59:19 AM', '03:15:57 PM', '8 jam 16 menit', '', 'SPT Fingerprint'),
(213, '75', 'HENDRA BURHANUDIN', 'Rabu', '28 Pebruari 2024', 'Hadir', '06:06:51 AM', '02:55:35 PM', '8 jam 48 menit', '', 'SPT Fingerprint'),
(214, '75', 'HENDRA BURHANUDIN', 'Selasa', '27 Pebruari 2024', 'Hadir', '05:38:40 AM', '03:38:46 PM', '10 jam 0 menit', '', 'SPT Fingerprint'),
(215, '75', 'HENDRA BURHANUDIN', 'Senin', '26 Pebruari 2024', 'Hadir', '06:54:01 AM', '03:13:18 PM', '8 jam 19 menit', '', 'SPT Fingerprint'),
(216, '75', 'HENDRA BURHANUDIN', 'Sabtu', '24 Pebruari 2024', 'Hadir', '06:59:12 AM', '05:00:00 PM', '10 jam 0 menit', '', 'SPT Fingerprint'),
(217, '75', 'HENDRA BURHANUDIN', 'Jum\'at', '23 Pebruari 2024', 'Hadir', '05:58:03 AM', '10:32:04 AM', '4 jam 34 menit', '', 'SPT Fingerprint'),
(218, '75', 'HENDRA BURHANUDIN', 'Kamis', '22 Pebruari 2024', 'Hadir', '05:52:23 AM', '03:07:05 PM', '9 jam 14 menit', '', 'SPT Fingerprint'),
(219, '75', 'HENDRA BURHANUDIN', 'Rabu', '21 Pebruari 2024', 'Hadir', '05:35:13 AM', '05:00:00 PM', '11 jam 24 menit', '', 'SPT Fingerprint'),
(220, '75', 'HENDRA BURHANUDIN', 'Selasa', '20 Pebruari 2024', 'Hadir', '05:43:55 AM', '03:07:43 PM', '9 jam 23 menit', '', 'SPT Fingerprint'),
(221, '75', 'HENDRA BURHANUDIN', 'Senin', '19 Pebruari 2024', 'Hadir', '07:00:28 AM', '03:12:30 PM', '8 jam 12 menit', '', 'SPT Fingerprint'),
(222, '75', 'HENDRA BURHANUDIN', 'Sabtu', '17 Pebruari 2024', 'Hadir', '05:37:13 AM', '05:00:00 PM', '11 jam 22 menit', '', 'SPT Fingerprint'),
(223, '75', 'HENDRA BURHANUDIN', 'Jum\'at', '16 Pebruari 2024', 'Hadir', '05:57:04 AM', '10:34:23 AM', '4 jam 37 menit', '', 'SPT Fingerprint'),
(224, '75', 'HENDRA BURHANUDIN', 'Kamis', '15 Pebruari 2024', 'Hadir', '06:59:10 AM', '01:05:03 PM', '6 jam 5 menit', '', 'SPT Fingerprint'),
(225, '75', 'HENDRA BURHANUDIN', 'Selasa', '13 Pebruari 2024', 'Hadir', '05:57:42 AM', '01:03:43 PM', '7 jam 6 menit', '', 'SPT Fingerprint'),
(226, '75', 'HENDRA BURHANUDIN', 'Senin', '12 Pebruari 2024', 'Hadir', '05:43:31 AM', '03:27:23 PM', '9 jam 43 menit', '', 'SPT Fingerprint'),
(227, '75', 'HENDRA BURHANUDIN', 'Jum\'at', '09 Pebruari 2024', 'Hadir', '06:03:01 AM', '05:00:00 PM', '10 jam 56 menit', '', 'SPT Fingerprint'),
(228, '75', 'HENDRA BURHANUDIN', 'Kamis', '08 Pebruari 2024', 'Hadir', '05:49:51 AM', '05:00:00 PM', '11 jam 10 menit', '', 'SPT Fingerprint'),
(229, '75', 'HENDRA BURHANUDIN', 'Rabu', '07 Pebruari 2024', 'Hadir', '05:40:33 AM', '05:00:00 PM', '11 jam 19 menit', '', 'SPT Fingerprint'),
(230, '75', 'HENDRA BURHANUDIN', 'Selasa', '06 Pebruari 2024', 'Hadir', '05:45:46 AM', '01:02:30 PM', '7 jam 16 menit', '', 'SPT Fingerprint'),
(231, '75', 'HENDRA BURHANUDIN', 'Senin', '05 Pebruari 2024', 'Hadir', '06:54:18 AM', '03:44:10 PM', '8 jam 49 menit', '', 'SPT Fingerprint'),
(232, '75', 'HENDRA BURHANUDIN', 'Sabtu', '03 Pebruari 2024', 'Hadir', '06:53:39 AM', '03:38:21 PM', '8 jam 44 menit', '', 'SPT Fingerprint'),
(233, '75', 'HENDRA BURHANUDIN', 'Kamis', '01 Pebruari 2024', 'Hadir', '06:52:41 AM', '01:04:39 PM', '6 jam 11 menit', '', 'SPT Fingerprint'),
(234, '24', 'IKFINA', 'Kamis', '29 Pebruari 2024', 'Hadir', '06:44:56 AM', '01:02:29 PM', '6 jam 17 menit', '', 'SPT Fingerprint'),
(235, '24', 'IKFINA', 'Rabu', '28 Pebruari 2024', 'Hadir', '06:49:01 AM', '01:00:10 PM', '6 jam 11 menit', '', 'SPT Fingerprint'),
(236, '24', 'IKFINA', 'Selasa', '27 Pebruari 2024', 'Hadir', '06:54:31 AM', '01:43:11 PM', '6 jam 48 menit', '', 'SPT Fingerprint'),
(237, '24', 'IKFINA', 'Senin', '26 Pebruari 2024', 'Hadir', '06:49:26 AM', '01:03:24 PM', '6 jam 13 menit', '', 'SPT Fingerprint'),
(238, '24', 'IKFINA', 'Sabtu', '24 Pebruari 2024', 'Hadir', '06:48:50 AM', '12:20:53 PM', '5 jam 32 menit', '', 'SPT Fingerprint'),
(239, '24', 'IKFINA', 'Jum\'at', '23 Pebruari 2024', 'Hadir', '06:46:46 AM', '10:34:11 AM', '3 jam 47 menit', '', 'SPT Fingerprint'),
(240, '24', 'IKFINA', 'Kamis', '22 Pebruari 2024', 'Hadir', '06:51:12 AM', '01:03:52 PM', '6 jam 12 menit', '', 'SPT Fingerprint'),
(241, '24', 'IKFINA', 'Rabu', '21 Pebruari 2024', 'Hadir', '06:43:25 AM', '01:00:16 PM', '6 jam 16 menit', '', 'SPT Fingerprint'),
(242, '24', 'IKFINA', 'Selasa', '20 Pebruari 2024', 'Hadir', '06:47:10 AM', '01:00:35 PM', '6 jam 13 menit', '', 'SPT Fingerprint'),
(243, '24', 'IKFINA', 'Senin', '19 Pebruari 2024', 'Hadir', '06:01:28 AM', '01:16:38 PM', '7 jam 15 menit', '', 'SPT Fingerprint'),
(244, '24', 'IKFINA', 'Sabtu', '17 Pebruari 2024', 'Hadir', '05:44:04 AM', '12:23:32 PM', '6 jam 39 menit', '', 'SPT Fingerprint'),
(245, '24', 'IKFINA', 'Kamis', '15 Pebruari 2024', 'Hadir', '06:51:06 AM', '01:11:09 PM', '6 jam 20 menit', '', 'SPT Fingerprint'),
(246, '24', 'IKFINA', 'Selasa', '13 Pebruari 2024', 'Hadir', '05:46:52 AM', '01:01:40 PM', '7 jam 14 menit', '', 'SPT Fingerprint'),
(247, '24', 'IKFINA', 'Senin', '12 Pebruari 2024', 'Hadir', '06:50:35 AM', '01:02:58 PM', '6 jam 12 menit', '', 'SPT Fingerprint'),
(248, '24', 'IKFINA', 'Jum\'at', '09 Pebruari 2024', 'Hadir', '06:49:47 AM', '05:00:00 PM', '10 jam 10 menit', '', 'SPT Fingerprint'),
(249, '24', 'IKFINA', 'Rabu', '07 Pebruari 2024', 'Hadir', '06:41:16 AM', '01:15:20 PM', '6 jam 34 menit', '', 'SPT Fingerprint'),
(250, '24', 'IKFINA', 'Selasa', '06 Pebruari 2024', 'Hadir', '06:53:09 AM', '01:32:29 PM', '6 jam 39 menit', '', 'SPT Fingerprint'),
(251, '24', 'IKFINA', 'Senin', '05 Pebruari 2024', 'Hadir', '06:50:34 AM', '01:15:20 PM', '6 jam 24 menit', '', 'SPT Fingerprint'),
(252, '24', 'IKFINA', 'Sabtu', '03 Pebruari 2024', 'Hadir', '06:42:13 AM', '12:31:06 PM', '5 jam 48 menit', '', 'SPT Fingerprint'),
(253, '24', 'IKFINA', 'Jum\'at', '02 Pebruari 2024', 'Hadir', '06:51:18 AM', '10:46:38 AM', '3 jam 55 menit', '', 'SPT Fingerprint'),
(254, '24', 'IKFINA', 'Kamis', '01 Pebruari 2024', 'Hadir', '06:48:36 AM', '01:09:06 PM', '6 jam 20 menit', '', 'SPT Fingerprint'),
(255, '92', 'INTAN BAEDURI', 'Senin', '26 Pebruari 2024', 'Hadir', '07:00:42 AM', '05:00:00 PM', '9 jam 59 menit', '', 'SPT Fingerprint'),
(256, '92', 'INTAN BAEDURI', 'Sabtu', '24 Pebruari 2024', 'Hadir', '06:59:42 AM', '12:33:50 PM', '5 jam 34 menit', '', 'SPT Fingerprint'),
(257, '92', 'INTAN BAEDURI', 'Rabu', '21 Pebruari 2024', 'Hadir', '06:55:51 AM', '05:00:00 PM', '10 jam 4 menit', '', 'SPT Fingerprint'),
(258, '92', 'INTAN BAEDURI', 'Senin', '19 Pebruari 2024', 'Hadir', '06:57:42 AM', '03:21:16 PM', '8 jam 23 menit', '', 'SPT Fingerprint'),
(259, '92', 'INTAN BAEDURI', 'Sabtu', '17 Pebruari 2024', 'Hadir', '06:57:38 AM', '05:00:00 PM', '10 jam 2 menit', '', 'SPT Fingerprint'),
(260, '92', 'INTAN BAEDURI', 'Senin', '12 Pebruari 2024', 'Hadir', '06:58:15 AM', '01:12:34 PM', '6 jam 14 menit', '', 'SPT Fingerprint'),
(261, '92', 'INTAN BAEDURI', 'Jum\'at', '09 Pebruari 2024', 'Hadir', '06:55:08 AM', '05:00:00 PM', '10 jam 4 menit', '', 'SPT Fingerprint'),
(262, '92', 'INTAN BAEDURI', 'Rabu', '07 Pebruari 2024', 'Hadir', '06:59:51 AM', '01:45:51 PM', '6 jam 46 menit', '', 'SPT Fingerprint'),
(263, '92', 'INTAN BAEDURI', 'Senin', '05 Pebruari 2024', 'Hadir', '06:59:09 AM', '02:58:38 PM', '7 jam 59 menit', '', 'SPT Fingerprint'),
(264, '92', 'INTAN BAEDURI', 'Sabtu', '03 Pebruari 2024', 'Hadir', '06:54:20 AM', '12:32:04 PM', '5 jam 37 menit', '', 'SPT Fingerprint'),
(265, '33', 'ISA ASROFI', 'Kamis', '29 Pebruari 2024', 'Hadir', '05:36:07 AM', '03:34:34 PM', '9 jam 58 menit', '', 'SPT Fingerprint'),
(266, '33', 'ISA ASROFI', 'Rabu', '28 Pebruari 2024', 'Hadir', '05:45:52 AM', '01:09:09 PM', '7 jam 23 menit', '', 'SPT Fingerprint'),
(267, '33', 'ISA ASROFI', 'Selasa', '27 Pebruari 2024', 'Hadir', '06:59:52 AM', '05:00:00 PM', '10 jam 0 menit', '', 'SPT Fingerprint'),
(268, '33', 'ISA ASROFI', 'Senin', '26 Pebruari 2024', 'Hadir', '06:32:31 AM', '01:07:57 PM', '6 jam 35 menit', '', 'SPT Fingerprint'),
(269, '33', 'ISA ASROFI', 'Sabtu', '24 Pebruari 2024', 'Hadir', '06:55:21 AM', '01:08:10 PM', '6 jam 12 menit', '', 'SPT Fingerprint'),
(270, '33', 'ISA ASROFI', 'Jum\'at', '23 Pebruari 2024', 'Hadir', '06:37:52 AM', '12:46:28 PM', '6 jam 8 menit', '', 'SPT Fingerprint'),
(271, '33', 'ISA ASROFI', 'Kamis', '22 Pebruari 2024', 'Hadir', '06:54:20 AM', '05:00:00 PM', '10 jam 5 menit', '', 'SPT Fingerprint'),
(272, '33', 'ISA ASROFI', 'Rabu', '21 Pebruari 2024', 'Hadir', '05:39:32 AM', '01:12:28 PM', '7 jam 32 menit', '', 'SPT Fingerprint'),
(273, '33', 'ISA ASROFI', 'Selasa', '20 Pebruari 2024', 'Hadir', '05:42:09 AM', '02:04:32 PM', '8 jam 22 menit', '', 'SPT Fingerprint'),
(274, '33', 'ISA ASROFI', 'Senin', '19 Pebruari 2024', 'Hadir', '06:57:45 AM', '02:10:51 PM', '7 jam 13 menit', '', 'SPT Fingerprint'),
(275, '33', 'ISA ASROFI', 'Sabtu', '17 Pebruari 2024', 'Hadir', '06:57:54 AM', '05:00:00 PM', '10 jam 2 menit', '', 'SPT Fingerprint'),
(276, '33', 'ISA ASROFI', 'Jum\'at', '16 Pebruari 2024', 'Hadir', '06:27:53 AM', '05:00:00 PM', '10 jam 32 menit', '', 'SPT Fingerprint'),
(277, '33', 'ISA ASROFI', 'Kamis', '15 Pebruari 2024', 'Hadir', '06:59:31 AM', '01:02:22 PM', '6 jam 2 menit', '', 'SPT Fingerprint'),
(278, '33', 'ISA ASROFI', 'Selasa', '13 Pebruari 2024', 'Hadir', '05:43:49 AM', '02:15:51 PM', '8 jam 32 menit', '', 'SPT Fingerprint'),
(279, '33', 'ISA ASROFI', 'Senin', '12 Pebruari 2024', 'Hadir', '05:41:57 AM', '01:00:08 PM', '7 jam 18 menit', '', 'SPT Fingerprint'),
(280, '33', 'ISA ASROFI', 'Rabu', '07 Pebruari 2024', 'Hadir', '05:46:03 AM', '01:00:29 PM', '7 jam 14 menit', '', 'SPT Fingerprint'),
(281, '33', 'ISA ASROFI', 'Selasa', '06 Pebruari 2024', 'Hadir', '05:53:41 AM', '02:14:18 PM', '8 jam 20 menit', '', 'SPT Fingerprint'),
(282, '33', 'ISA ASROFI', 'Senin', '05 Pebruari 2024', 'Hadir', '05:47:07 AM', '02:33:46 PM', '8 jam 46 menit', '', 'SPT Fingerprint'),
(283, '33', 'ISA ASROFI', 'Sabtu', '03 Pebruari 2024', 'Hadir', '06:57:33 AM', '12:21:54 PM', '5 jam 24 menit', '', 'SPT Fingerprint'),
(284, '33', 'ISA ASROFI', 'Jum\'at', '02 Pebruari 2024', 'Hadir', '06:26:49 AM', '12:35:00 PM', '6 jam 8 menit', '', 'SPT Fingerprint'),
(285, '33', 'ISA ASROFI', 'Kamis', '01 Pebruari 2024', 'Hadir', '05:41:08 AM', '02:49:48 PM', '9 jam 8 menit', '', 'SPT Fingerprint'),
(286, '18', 'ISTIQOMAH', 'Kamis', '29 Pebruari 2024', 'Hadir', '06:55:59 AM', '01:11:30 PM', '6 jam 15 menit', '', 'SPT Fingerprint'),
(287, '18', 'ISTIQOMAH', 'Senin', '26 Pebruari 2024', 'Hadir', '06:55:27 AM', '01:11:55 PM', '6 jam 16 menit', '', 'SPT Fingerprint'),
(288, '18', 'ISTIQOMAH', 'Sabtu', '24 Pebruari 2024', 'Hadir', '06:54:22 AM', '12:25:54 PM', '5 jam 31 menit', '', 'SPT Fingerprint'),
(289, '18', 'ISTIQOMAH', 'Jum\'at', '23 Pebruari 2024', 'Hadir', '06:57:33 AM', '10:33:41 AM', '3 jam 36 menit', '', 'SPT Fingerprint'),
(290, '18', 'ISTIQOMAH', 'Kamis', '22 Pebruari 2024', 'Hadir', '06:58:19 AM', '01:00:11 PM', '6 jam 1 menit', '', 'SPT Fingerprint'),
(291, '18', 'ISTIQOMAH', 'Rabu', '21 Pebruari 2024', 'Hadir', '06:57:56 AM', '01:11:53 PM', '6 jam 13 menit', '', 'SPT Fingerprint'),
(292, '18', 'ISTIQOMAH', 'Senin', '19 Pebruari 2024', 'Hadir', '06:58:33 AM', '01:03:45 PM', '6 jam 5 menit', '', 'SPT Fingerprint'),
(293, '18', 'ISTIQOMAH', 'Sabtu', '17 Pebruari 2024', 'Hadir', '06:50:29 AM', '12:24:04 PM', '5 jam 33 menit', '', 'SPT Fingerprint'),
(294, '18', 'ISTIQOMAH', 'Jum\'at', '16 Pebruari 2024', 'Hadir', '06:52:09 AM', '10:34:22 AM', '3 jam 42 menit', '', 'SPT Fingerprint'),
(295, '18', 'ISTIQOMAH', 'Senin', '12 Pebruari 2024', 'Hadir', '06:42:53 AM', '01:05:32 PM', '6 jam 22 menit', '', 'SPT Fingerprint'),
(296, '18', 'ISTIQOMAH', 'Rabu', '07 Pebruari 2024', 'Hadir', '06:58:04 AM', '01:17:35 PM', '6 jam 19 menit', '', 'SPT Fingerprint'),
(297, '18', 'ISTIQOMAH', 'Selasa', '06 Pebruari 2024', 'Hadir', '06:57:50 AM', '02:39:49 PM', '7 jam 41 menit', '', 'SPT Fingerprint'),
(298, '18', 'ISTIQOMAH', 'Senin', '05 Pebruari 2024', 'Hadir', '06:56:21 AM', '01:23:58 PM', '6 jam 27 menit', '', 'SPT Fingerprint'),
(299, '18', 'ISTIQOMAH', 'Sabtu', '03 Pebruari 2024', 'Hadir', '06:53:05 AM', '12:23:41 PM', '5 jam 30 menit', '', 'SPT Fingerprint'),
(300, '18', 'ISTIQOMAH', 'Jum\'at', '02 Pebruari 2024', 'Hadir', '06:56:29 AM', '10:35:41 AM', '3 jam 39 menit', '', 'SPT Fingerprint'),
(301, '18', 'ISTIQOMAH', 'Kamis', '01 Pebruari 2024', 'Hadir', '06:55:21 AM', '01:12:40 PM', '6 jam 17 menit', '', 'SPT Fingerprint'),
(302, '73', 'JAUHAROTUL MAKNUNAH', 'Selasa', '27 Pebruari 2024', 'Hadir', '06:56:38 AM', '01:00:24 PM', '6 jam 3 menit', '', 'SPT Fingerprint'),
(303, '73', 'JAUHAROTUL MAKNUNAH', 'Senin', '26 Pebruari 2024', 'Hadir', '06:54:26 AM', '01:05:38 PM', '6 jam 11 menit', '', 'SPT Fingerprint'),
(304, '73', 'JAUHAROTUL MAKNUNAH', 'Sabtu', '24 Pebruari 2024', 'Hadir', '06:59:56 AM', '12:27:31 PM', '5 jam 27 menit', '', 'SPT Fingerprint'),
(305, '73', 'JAUHAROTUL MAKNUNAH', 'Jum\'at', '23 Pebruari 2024', 'Hadir', '06:57:40 AM', '10:34:52 AM', '3 jam 37 menit', '', 'SPT Fingerprint'),
(306, '73', 'JAUHAROTUL MAKNUNAH', 'Kamis', '22 Pebruari 2024', 'Hadir', '06:57:32 AM', '01:01:06 PM', '6 jam 3 menit', '', 'SPT Fingerprint'),
(307, '73', 'JAUHAROTUL MAKNUNAH', 'Rabu', '21 Pebruari 2024', 'Hadir', '06:54:04 AM', '01:00:31 PM', '6 jam 6 menit', '', 'SPT Fingerprint'),
(308, '73', 'JAUHAROTUL MAKNUNAH', 'Selasa', '20 Pebruari 2024', 'Hadir', '06:32:28 AM', '01:01:05 PM', '6 jam 28 menit', '', 'SPT Fingerprint'),
(309, '73', 'JAUHAROTUL MAKNUNAH', 'Senin', '19 Pebruari 2024', 'Hadir', '06:54:05 AM', '01:06:26 PM', '6 jam 12 menit', '', 'SPT Fingerprint'),
(310, '73', 'JAUHAROTUL MAKNUNAH', 'Sabtu', '17 Pebruari 2024', 'Hadir', '06:52:13 AM', '12:46:56 PM', '5 jam 54 menit', '', 'SPT Fingerprint'),
(311, '73', 'JAUHAROTUL MAKNUNAH', 'Jum\'at', '16 Pebruari 2024', 'Hadir', '06:58:46 AM', '10:33:22 AM', '3 jam 34 menit', '', 'SPT Fingerprint'),
(312, '73', 'JAUHAROTUL MAKNUNAH', 'Kamis', '15 Pebruari 2024', 'Hadir', '06:34:12 AM', '01:00:38 PM', '6 jam 26 menit', '', 'SPT Fingerprint'),
(313, '73', 'JAUHAROTUL MAKNUNAH', 'Selasa', '13 Pebruari 2024', 'Hadir', '06:55:20 AM', '01:02:11 PM', '6 jam 6 menit', '', 'SPT Fingerprint'),
(314, '73', 'JAUHAROTUL MAKNUNAH', 'Senin', '12 Pebruari 2024', 'Hadir', '06:58:25 AM', '01:01:01 PM', '6 jam 2 menit', '', 'SPT Fingerprint'),
(315, '73', 'JAUHAROTUL MAKNUNAH', 'Rabu', '07 Pebruari 2024', 'Hadir', '06:58:27 AM', '05:00:00 PM', '10 jam 1 menit', '', 'SPT Fingerprint'),
(316, '73', 'JAUHAROTUL MAKNUNAH', 'Selasa', '06 Pebruari 2024', 'Hadir', '06:52:45 AM', '01:00:15 PM', '6 jam 7 menit', '', 'SPT Fingerprint'),
(317, '73', 'JAUHAROTUL MAKNUNAH', 'Senin', '05 Pebruari 2024', 'Hadir', '06:57:50 AM', '01:03:43 PM', '6 jam 5 menit', '', 'SPT Fingerprint'),
(318, '73', 'JAUHAROTUL MAKNUNAH', 'Jum\'at', '02 Pebruari 2024', 'Hadir', '06:58:55 AM', '10:33:21 AM', '3 jam 34 menit', '', 'SPT Fingerprint'),
(319, '73', 'JAUHAROTUL MAKNUNAH', 'Kamis', '01 Pebruari 2024', 'Hadir', '06:57:07 AM', '01:09:55 PM', '6 jam 12 menit', '', 'SPT Fingerprint'),
(320, '55', 'KHUSNUL WARDATI', 'Kamis', '29 Pebruari 2024', 'Hadir', '06:30:36 AM', '01:53:42 PM', '7 jam 23 menit', '', 'SPT Fingerprint'),
(321, '55', 'KHUSNUL WARDATI', 'Rabu', '28 Pebruari 2024', 'Hadir', '06:40:16 AM', '01:02:39 PM', '6 jam 22 menit', '', 'SPT Fingerprint'),
(322, '55', 'KHUSNUL WARDATI', 'Selasa', '27 Pebruari 2024', 'Hadir', '06:55:20 AM', '01:30:15 PM', '6 jam 34 menit', '', 'SPT Fingerprint'),
(323, '55', 'KHUSNUL WARDATI', 'Senin', '26 Pebruari 2024', 'Hadir', '06:50:52 AM', '01:02:44 PM', '6 jam 11 menit', '', 'SPT Fingerprint'),
(324, '55', 'KHUSNUL WARDATI', 'Sabtu', '24 Pebruari 2024', 'Hadir', '06:55:30 AM', '12:25:19 PM', '5 jam 29 menit', '', 'SPT Fingerprint'),
(325, '55', 'KHUSNUL WARDATI', 'Jum\'at', '23 Pebruari 2024', 'Hadir', '06:58:09 AM', '05:00:00 PM', '10 jam 1 menit', '', 'SPT Fingerprint'),
(326, '55', 'KHUSNUL WARDATI', 'Kamis', '22 Pebruari 2024', 'Hadir', '06:45:43 AM', '03:06:13 PM', '8 jam 20 menit', '', 'SPT Fingerprint'),
(327, '55', 'KHUSNUL WARDATI', 'Rabu', '21 Pebruari 2024', 'Hadir', '06:57:24 AM', '01:03:38 PM', '6 jam 6 menit', '', 'SPT Fingerprint'),
(328, '55', 'KHUSNUL WARDATI', 'Selasa', '20 Pebruari 2024', 'Hadir', '07:00:24 AM', '01:03:19 PM', '6 jam 2 menit', '', 'SPT Fingerprint'),
(329, '55', 'KHUSNUL WARDATI', 'Senin', '19 Pebruari 2024', 'Hadir', '06:58:25 AM', '12:59:19 PM', '6 jam 0 menit', '', 'SPT Fingerprint'),
(330, '55', 'KHUSNUL WARDATI', 'Sabtu', '17 Pebruari 2024', 'Hadir', '06:08:46 AM', '12:57:45 PM', '6 jam 48 menit', '', 'SPT Fingerprint'),
(331, '55', 'KHUSNUL WARDATI', 'Kamis', '15 Pebruari 2024', 'Hadir', '06:50:54 AM', '02:21:26 PM', '7 jam 30 menit', '', 'SPT Fingerprint'),
(332, '55', 'KHUSNUL WARDATI', 'Selasa', '13 Pebruari 2024', 'Hadir', '06:49:28 AM', '01:04:07 PM', '6 jam 14 menit', '', 'SPT Fingerprint'),
(333, '55', 'KHUSNUL WARDATI', 'Senin', '12 Pebruari 2024', 'Hadir', '06:55:44 AM', '01:13:19 PM', '6 jam 17 menit', '', 'SPT Fingerprint'),
(334, '55', 'KHUSNUL WARDATI', 'Kamis', '08 Pebruari 2024', 'Hadir', '06:42:13 AM', '05:00:00 PM', '10 jam 17 menit', '', 'SPT Fingerprint'),
(335, '55', 'KHUSNUL WARDATI', 'Senin', '05 Pebruari 2024', 'Hadir', '06:58:23 AM', '01:02:39 PM', '6 jam 4 menit', '', 'SPT Fingerprint'),
(336, '55', 'KHUSNUL WARDATI', 'Sabtu', '03 Pebruari 2024', 'Hadir', '06:53:34 AM', '12:45:02 PM', '5 jam 51 menit', '', 'SPT Fingerprint'),
(337, '55', 'KHUSNUL WARDATI', 'Kamis', '01 Pebruari 2024', 'Hadir', '06:51:50 AM', '01:00:07 PM', '6 jam 8 menit', '', 'SPT Fingerprint'),
(338, '69', 'LAELATUS SA`ADAH', 'Rabu', '28 Pebruari 2024', 'Hadir', '06:55:23 AM', '01:00:00 PM', '6 jam 4 menit', '', 'SPT Fingerprint'),
(339, '69', 'LAELATUS SA`ADAH', 'Kamis', '22 Pebruari 2024', 'Hadir', '06:55:19 AM', '01:08:30 PM', '6 jam 13 menit', '', 'SPT Fingerprint'),
(340, '69', 'LAELATUS SA`ADAH', 'Rabu', '21 Pebruari 2024', 'Hadir', '06:55:02 AM', '01:00:10 PM', '6 jam 5 menit', '', 'SPT Fingerprint'),
(341, '69', 'LAELATUS SA`ADAH', 'Selasa', '20 Pebruari 2024', 'Hadir', '06:55:44 AM', '01:01:55 PM', '6 jam 6 menit', '', 'SPT Fingerprint'),
(342, '69', 'LAELATUS SA`ADAH', 'Jum\'at', '16 Pebruari 2024', 'Hadir', '06:52:16 AM', '10:32:58 AM', '3 jam 40 menit', '', 'SPT Fingerprint'),
(343, '69', 'LAELATUS SA`ADAH', 'Selasa', '13 Pebruari 2024', 'Hadir', '06:54:26 AM', '01:00:02 PM', '6 jam 5 menit', '', 'SPT Fingerprint'),
(344, '69', 'LAELATUS SA`ADAH', 'Senin', '12 Pebruari 2024', 'Hadir', '06:57:37 AM', '01:01:07 PM', '6 jam 3 menit', '', 'SPT Fingerprint'),
(345, '69', 'LAELATUS SA`ADAH', 'Rabu', '07 Pebruari 2024', 'Hadir', '06:55:58 AM', '01:00:21 PM', '6 jam 4 menit', '', 'SPT Fingerprint'),
(346, '69', 'LAELATUS SA`ADAH', 'Jum\'at', '02 Pebruari 2024', 'Hadir', '06:52:27 AM', '10:49:24 AM', '3 jam 56 menit', '', 'SPT Fingerprint'),
(347, '69', 'LAELATUS SA`ADAH', 'Kamis', '01 Pebruari 2024', 'Hadir', '06:47:40 AM', '01:00:05 PM', '6 jam 12 menit', '', 'SPT Fingerprint'),
(348, '64', 'LENI STIAWATI', 'Kamis', '29 Pebruari 2024', 'Hadir', '06:56:41 AM', '05:00:00 PM', '10 jam 3 menit', '', 'SPT Fingerprint'),
(349, '64', 'LENI STIAWATI', 'Rabu', '28 Pebruari 2024', 'Hadir', '06:54:31 AM', '01:13:17 PM', '6 jam 18 menit', '', 'SPT Fingerprint'),
(350, '64', 'LENI STIAWATI', 'Selasa', '27 Pebruari 2024', 'Hadir', '06:49:07 AM', '01:00:28 PM', '6 jam 11 menit', '', 'SPT Fingerprint'),
(351, '64', 'LENI STIAWATI', 'Senin', '26 Pebruari 2024', 'Hadir', '05:52:41 AM', '05:00:00 PM', '11 jam 7 menit', '', 'SPT Fingerprint'),
(352, '64', 'LENI STIAWATI', 'Sabtu', '24 Pebruari 2024', 'Hadir', '06:44:13 AM', '12:25:10 PM', '5 jam 40 menit', '', 'SPT Fingerprint'),
(353, '64', 'LENI STIAWATI', 'Jum\'at', '23 Pebruari 2024', 'Hadir', '06:51:38 AM', '10:32:57 AM', '3 jam 41 menit', '', 'SPT Fingerprint'),
(354, '64', 'LENI STIAWATI', 'Kamis', '22 Pebruari 2024', 'Hadir', '06:53:18 AM', '03:51:49 PM', '8 jam 58 menit', '', 'SPT Fingerprint'),
(355, '64', 'LENI STIAWATI', 'Rabu', '21 Pebruari 2024', 'Hadir', '06:58:20 AM', '01:43:37 PM', '6 jam 45 menit', '', 'SPT Fingerprint'),
(356, '64', 'LENI STIAWATI', 'Selasa', '20 Pebruari 2024', 'Hadir', '05:45:17 AM', '01:01:44 PM', '7 jam 16 menit', '', 'SPT Fingerprint'),
(357, '64', 'LENI STIAWATI', 'Senin', '19 Pebruari 2024', 'Hadir', '05:47:44 AM', '12:59:23 PM', '7 jam 11 menit', '', 'SPT Fingerprint'),
(358, '64', 'LENI STIAWATI', 'Jum\'at', '16 Pebruari 2024', 'Hadir', '06:54:31 AM', '03:55:23 PM', '9 jam 0 menit', '', 'SPT Fingerprint'),
(359, '64', 'LENI STIAWATI', 'Kamis', '15 Pebruari 2024', 'Hadir', '06:54:39 AM', '01:01:58 PM', '6 jam 7 menit', '', 'SPT Fingerprint'),
(360, '64', 'LENI STIAWATI', 'Selasa', '13 Pebruari 2024', 'Hadir', '06:55:54 AM', '01:03:16 PM', '6 jam 7 menit', '', 'SPT Fingerprint'),
(361, '64', 'LENI STIAWATI', 'Senin', '12 Pebruari 2024', 'Hadir', '06:49:06 AM', '01:04:54 PM', '6 jam 15 menit', '', 'SPT Fingerprint');
INSERT INTO `data_absensi` (`id`, `kode`, `nama`, `hari`, `tanggal`, `status`, `jam_masuk`, `jam_pulang`, `waktu_kerja`, `keterangan`, `sumber`) VALUES
(362, '64', 'LENI STIAWATI', 'Kamis', '08 Pebruari 2024', 'Hadir', '05:54:24 AM', '01:40:51 PM', '7 jam 46 menit', '', 'SPT Fingerprint'),
(363, '64', 'LENI STIAWATI', 'Rabu', '07 Pebruari 2024', 'Hadir', '06:55:18 AM', '05:00:00 PM', '10 jam 4 menit', '', 'SPT Fingerprint'),
(364, '64', 'LENI STIAWATI', 'Selasa', '06 Pebruari 2024', 'Hadir', '06:48:43 AM', '01:01:15 PM', '6 jam 12 menit', '', 'SPT Fingerprint'),
(365, '64', 'LENI STIAWATI', 'Senin', '05 Pebruari 2024', 'Hadir', '06:39:08 AM', '01:04:22 PM', '6 jam 25 menit', '', 'SPT Fingerprint'),
(366, '64', 'LENI STIAWATI', 'Sabtu', '03 Pebruari 2024', 'Hadir', '06:52:59 AM', '12:58:44 PM', '6 jam 5 menit', '', 'SPT Fingerprint'),
(367, '64', 'LENI STIAWATI', 'Jum\'at', '02 Pebruari 2024', 'Hadir', '06:51:04 AM', '11:12:47 AM', '4 jam 21 menit', '', 'SPT Fingerprint'),
(368, '64', 'LENI STIAWATI', 'Kamis', '01 Pebruari 2024', 'Hadir', '06:51:24 AM', '01:02:16 PM', '6 jam 10 menit', '', 'SPT Fingerprint'),
(369, '4', 'MAHSUN ALIFI', 'Selasa', '27 Pebruari 2024', 'Hadir', '06:57:50 AM', '01:28:43 PM', '6 jam 30 menit', '', 'SPT Fingerprint'),
(370, '4', 'MAHSUN ALIFI', 'Senin', '26 Pebruari 2024', 'Hadir', '06:57:17 AM', '01:08:02 PM', '6 jam 10 menit', '', 'SPT Fingerprint'),
(371, '4', 'MAHSUN ALIFI', 'Selasa', '20 Pebruari 2024', 'Hadir', '06:57:43 AM', '01:09:53 PM', '6 jam 12 menit', '', 'SPT Fingerprint'),
(372, '4', 'MAHSUN ALIFI', 'Senin', '19 Pebruari 2024', 'Hadir', '06:55:59 AM', '01:00:44 PM', '6 jam 4 menit', '', 'SPT Fingerprint'),
(373, '4', 'MAHSUN ALIFI', 'Selasa', '13 Pebruari 2024', 'Hadir', '06:56:29 AM', '05:00:00 PM', '10 jam 3 menit', '', 'SPT Fingerprint'),
(374, '4', 'MAHSUN ALIFI', 'Senin', '12 Pebruari 2024', 'Hadir', '06:57:49 AM', '02:13:52 PM', '7 jam 16 menit', '', 'SPT Fingerprint'),
(375, '4', 'MAHSUN ALIFI', 'Selasa', '06 Pebruari 2024', 'Hadir', '07:00:06 AM', '01:25:42 PM', '6 jam 25 menit', '', 'SPT Fingerprint'),
(376, '4', 'MAHSUN ALIFI', 'Senin', '05 Pebruari 2024', 'Hadir', '07:00:28 AM', '01:10:04 PM', '6 jam 9 menit', '', 'SPT Fingerprint'),
(377, '4', 'MAHSUN ALIFI', 'Sabtu', '03 Pebruari 2024', 'Hadir', '06:59:05 AM', '12:30:23 PM', '5 jam 31 menit', '', 'SPT Fingerprint'),
(378, '54', 'MARIA ULFA', 'Kamis', '29 Pebruari 2024', 'Hadir', '06:47:22 AM', '01:03:04 PM', '6 jam 15 menit', '', 'SPT Fingerprint'),
(379, '54', 'MARIA ULFA', 'Jum\'at', '23 Pebruari 2024', 'Hadir', '07:00:19 AM', '10:38:01 AM', '3 jam 37 menit', '', 'SPT Fingerprint'),
(380, '7', 'MASNGUD', 'Kamis', '29 Pebruari 2024', 'Hadir', '06:26:47 AM', '01:07:50 PM', '6 jam 41 menit', '', 'SPT Fingerprint'),
(381, '7', 'MASNGUD', 'Rabu', '28 Pebruari 2024', 'Hadir', '06:38:32 AM', '01:03:00 PM', '6 jam 24 menit', '', 'SPT Fingerprint'),
(382, '7', 'MASNGUD', 'Senin', '26 Pebruari 2024', 'Hadir', '06:24:17 AM', '01:03:30 PM', '6 jam 39 menit', '', 'SPT Fingerprint'),
(383, '7', 'MASNGUD', 'Kamis', '22 Pebruari 2024', 'Hadir', '06:28:07 AM', '01:03:40 PM', '6 jam 35 menit', '', 'SPT Fingerprint'),
(384, '7', 'MASNGUD', 'Rabu', '21 Pebruari 2024', 'Hadir', '06:34:20 AM', '01:02:45 PM', '6 jam 28 menit', '', 'SPT Fingerprint'),
(385, '7', 'MASNGUD', 'Senin', '19 Pebruari 2024', 'Hadir', '06:31:23 AM', '01:03:57 PM', '6 jam 32 menit', '', 'SPT Fingerprint'),
(386, '7', 'MASNGUD', 'Kamis', '15 Pebruari 2024', 'Hadir', '06:32:23 AM', '01:06:35 PM', '6 jam 34 menit', '', 'SPT Fingerprint'),
(387, '7', 'MASNGUD', 'Senin', '12 Pebruari 2024', 'Hadir', '06:34:35 AM', '01:42:05 PM', '7 jam 7 menit', '', 'SPT Fingerprint'),
(388, '7', 'MASNGUD', 'Rabu', '07 Pebruari 2024', 'Hadir', '06:32:54 AM', '01:02:51 PM', '6 jam 29 menit', '', 'SPT Fingerprint'),
(389, '7', 'MASNGUD', 'Senin', '05 Pebruari 2024', 'Hadir', '06:34:49 AM', '01:03:40 PM', '6 jam 28 menit', '', 'SPT Fingerprint'),
(390, '7', 'MASNGUD', 'Kamis', '01 Pebruari 2024', 'Hadir', '06:28:06 AM', '01:02:00 PM', '6 jam 33 menit', '', 'SPT Fingerprint'),
(391, '91', 'MAULANA PURWA RIMBA', 'Kamis', '29 Pebruari 2024', 'Hadir', '06:00:55 AM', '01:00:41 PM', '6 jam 59 menit', '', 'SPT Fingerprint'),
(392, '91', 'MAULANA PURWA RIMBA', 'Rabu', '28 Pebruari 2024', 'Hadir', '05:58:20 AM', '02:02:47 PM', '8 jam 4 menit', '', 'SPT Fingerprint'),
(393, '91', 'MAULANA PURWA RIMBA', 'Selasa', '27 Pebruari 2024', 'Hadir', '05:56:03 AM', '01:03:51 PM', '7 jam 7 menit', '', 'SPT Fingerprint'),
(394, '91', 'MAULANA PURWA RIMBA', 'Senin', '26 Pebruari 2024', 'Hadir', '06:10:22 AM', '01:02:06 PM', '6 jam 51 menit', '', 'SPT Fingerprint'),
(395, '91', 'MAULANA PURWA RIMBA', 'Rabu', '21 Pebruari 2024', 'Hadir', '05:59:08 AM', '01:31:07 PM', '7 jam 31 menit', '', 'SPT Fingerprint'),
(396, '91', 'MAULANA PURWA RIMBA', 'Selasa', '20 Pebruari 2024', 'Hadir', '05:56:18 AM', '01:07:41 PM', '7 jam 11 menit', '', 'SPT Fingerprint'),
(397, '91', 'MAULANA PURWA RIMBA', 'Senin', '19 Pebruari 2024', 'Hadir', '06:05:39 AM', '05:00:00 PM', '10 jam 54 menit', '', 'SPT Fingerprint'),
(398, '91', 'MAULANA PURWA RIMBA', 'Jum\'at', '16 Pebruari 2024', 'Hadir', '06:09:50 AM', '05:00:00 PM', '10 jam 50 menit', '', 'SPT Fingerprint'),
(399, '91', 'MAULANA PURWA RIMBA', 'Selasa', '13 Pebruari 2024', 'Hadir', '05:52:04 AM', '05:00:00 PM', '11 jam 7 menit', '', 'SPT Fingerprint'),
(400, '91', 'MAULANA PURWA RIMBA', 'Rabu', '07 Pebruari 2024', 'Hadir', '06:51:21 AM', '02:41:36 PM', '7 jam 50 menit', '', 'SPT Fingerprint'),
(401, '91', 'MAULANA PURWA RIMBA', 'Senin', '05 Pebruari 2024', 'Hadir', '05:57:37 AM', '02:33:51 PM', '8 jam 36 menit', '', 'SPT Fingerprint'),
(402, '91', 'MAULANA PURWA RIMBA', 'Jum\'at', '02 Pebruari 2024', 'Hadir', '06:03:58 AM', '11:12:16 AM', '5 jam 8 menit', '', 'SPT Fingerprint'),
(403, '91', 'MAULANA PURWA RIMBA', 'Kamis', '01 Pebruari 2024', 'Hadir', '05:50:31 AM', '01:03:49 PM', '7 jam 13 menit', '', 'SPT Fingerprint'),
(404, '61', 'MAYA HIDAYATULLOH', 'Kamis', '29 Pebruari 2024', 'Hadir', '06:58:49 AM', '01:02:09 PM', '6 jam 3 menit', '', 'SPT Fingerprint'),
(405, '61', 'MAYA HIDAYATULLOH', 'Rabu', '28 Pebruari 2024', 'Hadir', '06:52:51 AM', '01:50:22 PM', '6 jam 57 menit', '', 'SPT Fingerprint'),
(406, '61', 'MAYA HIDAYATULLOH', 'Selasa', '27 Pebruari 2024', 'Hadir', '06:57:54 AM', '01:02:31 PM', '6 jam 4 menit', '', 'SPT Fingerprint'),
(407, '61', 'MAYA HIDAYATULLOH', 'Senin', '26 Pebruari 2024', 'Hadir', '06:49:56 AM', '01:47:11 PM', '6 jam 57 menit', '', 'SPT Fingerprint'),
(408, '61', 'MAYA HIDAYATULLOH', 'Sabtu', '24 Pebruari 2024', 'Hadir', '06:53:47 AM', '12:40:41 PM', '5 jam 46 menit', '', 'SPT Fingerprint'),
(409, '61', 'MAYA HIDAYATULLOH', 'Kamis', '22 Pebruari 2024', 'Hadir', '06:50:50 AM', '01:02:43 PM', '6 jam 11 menit', '', 'SPT Fingerprint'),
(410, '61', 'MAYA HIDAYATULLOH', 'Rabu', '21 Pebruari 2024', 'Hadir', '06:44:17 AM', '01:15:19 PM', '6 jam 31 menit', '', 'SPT Fingerprint'),
(411, '61', 'MAYA HIDAYATULLOH', 'Selasa', '20 Pebruari 2024', 'Hadir', '06:09:42 AM', '01:02:31 PM', '6 jam 52 menit', '', 'SPT Fingerprint'),
(412, '61', 'MAYA HIDAYATULLOH', 'Senin', '19 Pebruari 2024', 'Hadir', '06:46:19 AM', '01:49:52 PM', '7 jam 3 menit', '', 'SPT Fingerprint'),
(413, '61', 'MAYA HIDAYATULLOH', 'Sabtu', '17 Pebruari 2024', 'Hadir', '06:55:04 AM', '03:13:55 PM', '8 jam 18 menit', '', 'SPT Fingerprint'),
(414, '61', 'MAYA HIDAYATULLOH', 'Selasa', '13 Pebruari 2024', 'Hadir', '06:21:24 AM', '01:03:07 PM', '6 jam 41 menit', '', 'SPT Fingerprint'),
(415, '61', 'MAYA HIDAYATULLOH', 'Senin', '12 Pebruari 2024', 'Hadir', '06:55:53 AM', '01:00:50 PM', '6 jam 4 menit', '', 'SPT Fingerprint'),
(416, '61', 'MAYA HIDAYATULLOH', 'Kamis', '08 Pebruari 2024', 'Hadir', '06:48:59 AM', '02:20:13 PM', '7 jam 31 menit', '', 'SPT Fingerprint'),
(417, '61', 'MAYA HIDAYATULLOH', 'Rabu', '07 Pebruari 2024', 'Hadir', '06:50:40 AM', '01:00:34 PM', '6 jam 9 menit', '', 'SPT Fingerprint'),
(418, '61', 'MAYA HIDAYATULLOH', 'Selasa', '06 Pebruari 2024', 'Hadir', '06:48:55 AM', '05:00:00 PM', '10 jam 11 menit', '', 'SPT Fingerprint'),
(419, '61', 'MAYA HIDAYATULLOH', 'Senin', '05 Pebruari 2024', 'Hadir', '06:50:29 AM', '01:11:34 PM', '6 jam 21 menit', '', 'SPT Fingerprint'),
(420, '61', 'MAYA HIDAYATULLOH', 'Sabtu', '03 Pebruari 2024', 'Hadir', '06:54:43 AM', '01:02:05 PM', '6 jam 7 menit', '', 'SPT Fingerprint'),
(421, '61', 'MAYA HIDAYATULLOH', 'Kamis', '01 Pebruari 2024', 'Hadir', '06:57:11 AM', '01:02:32 PM', '6 jam 5 menit', '', 'SPT Fingerprint'),
(422, '60', 'MITA AQUARISTA RATNA W.', 'Kamis', '29 Pebruari 2024', 'Hadir', '06:43:49 AM', '01:10:16 PM', '6 jam 26 menit', '', 'SPT Fingerprint'),
(423, '60', 'MITA AQUARISTA RATNA W.', 'Sabtu', '24 Pebruari 2024', 'Hadir', '06:52:05 AM', '01:04:09 PM', '6 jam 12 menit', '', 'SPT Fingerprint'),
(424, '60', 'MITA AQUARISTA RATNA W.', 'Rabu', '21 Pebruari 2024', 'Hadir', '06:51:20 AM', '01:20:14 PM', '6 jam 28 menit', '', 'SPT Fingerprint'),
(425, '60', 'MITA AQUARISTA RATNA W.', 'Sabtu', '17 Pebruari 2024', 'Hadir', '06:55:32 AM', '12:39:30 PM', '5 jam 43 menit', '', 'SPT Fingerprint'),
(426, '60', 'MITA AQUARISTA RATNA W.', 'Jum\'at', '16 Pebruari 2024', 'Hadir', '06:53:03 AM', '05:00:00 PM', '10 jam 6 menit', '', 'SPT Fingerprint'),
(427, '60', 'MITA AQUARISTA RATNA W.', 'Kamis', '15 Pebruari 2024', 'Hadir', '06:01:53 AM', '05:00:00 PM', '10 jam 58 menit', '', 'SPT Fingerprint'),
(428, '60', 'MITA AQUARISTA RATNA W.', 'Kamis', '01 Pebruari 2024', 'Hadir', '06:54:19 AM', '01:23:21 PM', '6 jam 29 menit', '', 'SPT Fingerprint'),
(429, '45', 'MOHAMAD RIDUWAN', 'Kamis', '29 Pebruari 2024', 'Hadir', '06:45:06 AM', '01:00:48 PM', '6 jam 15 menit', '', 'SPT Fingerprint'),
(430, '45', 'MOHAMAD RIDUWAN', 'Rabu', '28 Pebruari 2024', 'Hadir', '06:50:14 AM', '01:02:42 PM', '6 jam 12 menit', '', 'SPT Fingerprint'),
(431, '45', 'MOHAMAD RIDUWAN', 'Selasa', '27 Pebruari 2024', 'Hadir', '06:55:09 AM', '01:01:15 PM', '6 jam 6 menit', '', 'SPT Fingerprint'),
(432, '45', 'MOHAMAD RIDUWAN', 'Senin', '26 Pebruari 2024', 'Hadir', '06:52:05 AM', '02:05:47 PM', '7 jam 13 menit', '', 'SPT Fingerprint'),
(433, '45', 'MOHAMAD RIDUWAN', 'Sabtu', '24 Pebruari 2024', 'Hadir', '06:53:33 AM', '12:22:29 PM', '5 jam 28 menit', '', 'SPT Fingerprint'),
(434, '45', 'MOHAMAD RIDUWAN', 'Jum\'at', '23 Pebruari 2024', 'Hadir', '06:42:34 AM', '10:34:05 AM', '3 jam 51 menit', '', 'SPT Fingerprint'),
(435, '45', 'MOHAMAD RIDUWAN', 'Kamis', '22 Pebruari 2024', 'Hadir', '06:42:19 AM', '01:09:03 PM', '6 jam 26 menit', '', 'SPT Fingerprint'),
(436, '45', 'MOHAMAD RIDUWAN', 'Rabu', '21 Pebruari 2024', 'Hadir', '06:42:01 AM', '01:00:52 PM', '6 jam 18 menit', '', 'SPT Fingerprint'),
(437, '45', 'MOHAMAD RIDUWAN', 'Selasa', '20 Pebruari 2024', 'Hadir', '06:44:31 AM', '01:00:41 PM', '6 jam 16 menit', '', 'SPT Fingerprint'),
(438, '45', 'MOHAMAD RIDUWAN', 'Senin', '19 Pebruari 2024', 'Hadir', '06:44:23 AM', '01:01:47 PM', '6 jam 17 menit', '', 'SPT Fingerprint'),
(439, '45', 'MOHAMAD RIDUWAN', 'Sabtu', '17 Pebruari 2024', 'Hadir', '06:42:36 AM', '12:26:34 PM', '5 jam 43 menit', '', 'SPT Fingerprint'),
(440, '45', 'MOHAMAD RIDUWAN', 'Jum\'at', '16 Pebruari 2024', 'Hadir', '06:51:39 AM', '10:34:48 AM', '3 jam 43 menit', '', 'SPT Fingerprint'),
(441, '45', 'MOHAMAD RIDUWAN', 'Kamis', '15 Pebruari 2024', 'Hadir', '06:50:59 AM', '01:01:41 PM', '6 jam 10 menit', '', 'SPT Fingerprint'),
(442, '45', 'MOHAMAD RIDUWAN', 'Selasa', '13 Pebruari 2024', 'Hadir', '06:51:32 AM', '01:01:22 PM', '6 jam 9 menit', '', 'SPT Fingerprint'),
(443, '45', 'MOHAMAD RIDUWAN', 'Senin', '12 Pebruari 2024', 'Hadir', '06:48:05 AM', '01:45:25 PM', '6 jam 57 menit', '', 'SPT Fingerprint'),
(444, '45', 'MOHAMAD RIDUWAN', 'Jum\'at', '09 Pebruari 2024', 'Hadir', '06:50:13 AM', '10:52:29 AM', '4 jam 2 menit', '', 'SPT Fingerprint'),
(445, '45', 'MOHAMAD RIDUWAN', 'Kamis', '08 Pebruari 2024', 'Hadir', '05:56:24 AM', '01:14:09 PM', '7 jam 17 menit', '', 'SPT Fingerprint'),
(446, '45', 'MOHAMAD RIDUWAN', 'Rabu', '07 Pebruari 2024', 'Hadir', '06:01:10 AM', '01:52:34 PM', '7 jam 51 menit', '', 'SPT Fingerprint'),
(447, '45', 'MOHAMAD RIDUWAN', 'Selasa', '06 Pebruari 2024', 'Hadir', '06:55:14 AM', '01:03:05 PM', '6 jam 7 menit', '', 'SPT Fingerprint'),
(448, '45', 'MOHAMAD RIDUWAN', 'Jum\'at', '02 Pebruari 2024', 'Hadir', '06:47:16 AM', '10:32:26 AM', '3 jam 45 menit', '', 'SPT Fingerprint'),
(449, '45', 'MOHAMAD RIDUWAN', 'Kamis', '01 Pebruari 2024', 'Hadir', '06:55:00 AM', '01:01:15 PM', '6 jam 6 menit', '', 'SPT Fingerprint'),
(450, '44', 'MOHAMMAD HAMZAH BAIHAQI', 'Jum\'at', '16 Pebruari 2024', 'Hadir', '06:53:58 AM', '10:33:56 AM', '3 jam 39 menit', '', 'SPT Fingerprint'),
(451, '44', 'MOHAMMAD HAMZAH BAIHAQI', 'Kamis', '15 Pebruari 2024', 'Hadir', '06:47:27 AM', '01:00:07 PM', '6 jam 12 menit', '', 'SPT Fingerprint'),
(452, '44', 'MOHAMMAD HAMZAH BAIHAQI', 'Senin', '05 Pebruari 2024', 'Hadir', '06:10:11 AM', '01:20:06 PM', '7 jam 9 menit', '', 'SPT Fingerprint'),
(453, '44', 'MOHAMMAD HAMZAH BAIHAQI', 'Kamis', '01 Pebruari 2024', 'Hadir', '06:55:02 AM', '01:10:23 PM', '6 jam 15 menit', '', 'SPT Fingerprint'),
(454, '97', 'MOHAMMAD LUTFI EFENDI', 'Kamis', '29 Pebruari 2024', 'Hadir', '06:17:21 AM', '01:40:58 PM', '7 jam 23 menit', '', 'SPT Fingerprint'),
(455, '97', 'MOHAMMAD LUTFI EFENDI', 'Rabu', '28 Pebruari 2024', 'Hadir', '05:35:49 AM', '01:31:09 PM', '7 jam 55 menit', '', 'SPT Fingerprint'),
(456, '97', 'MOHAMMAD LUTFI EFENDI', 'Selasa', '27 Pebruari 2024', 'Hadir', '06:20:23 AM', '01:09:13 PM', '6 jam 48 menit', '', 'SPT Fingerprint'),
(457, '97', 'MOHAMMAD LUTFI EFENDI', 'Senin', '26 Pebruari 2024', 'Hadir', '06:27:47 AM', '01:12:41 PM', '6 jam 44 menit', '', 'SPT Fingerprint'),
(458, '97', 'MOHAMMAD LUTFI EFENDI', 'Sabtu', '24 Pebruari 2024', 'Hadir', '06:23:49 AM', '12:31:21 PM', '6 jam 7 menit', '', 'SPT Fingerprint'),
(459, '97', 'MOHAMMAD LUTFI EFENDI', 'Kamis', '22 Pebruari 2024', 'Hadir', '06:28:11 AM', '01:13:13 PM', '6 jam 45 menit', '', 'SPT Fingerprint'),
(460, '97', 'MOHAMMAD LUTFI EFENDI', 'Rabu', '21 Pebruari 2024', 'Hadir', '06:30:13 AM', '01:11:59 PM', '6 jam 41 menit', '', 'SPT Fingerprint'),
(461, '97', 'MOHAMMAD LUTFI EFENDI', 'Selasa', '20 Pebruari 2024', 'Hadir', '06:31:29 AM', '01:12:05 PM', '6 jam 40 menit', '', 'SPT Fingerprint'),
(462, '97', 'MOHAMMAD LUTFI EFENDI', 'Senin', '19 Pebruari 2024', 'Hadir', '06:54:28 AM', '01:19:18 PM', '6 jam 24 menit', '', 'SPT Fingerprint'),
(463, '97', 'MOHAMMAD LUTFI EFENDI', 'Sabtu', '17 Pebruari 2024', 'Hadir', '06:48:49 AM', '12:46:32 PM', '5 jam 57 menit', '', 'SPT Fingerprint'),
(464, '97', 'MOHAMMAD LUTFI EFENDI', 'Kamis', '15 Pebruari 2024', 'Hadir', '05:39:22 AM', '01:23:46 PM', '7 jam 44 menit', '', 'SPT Fingerprint'),
(465, '97', 'MOHAMMAD LUTFI EFENDI', 'Selasa', '13 Pebruari 2024', 'Hadir', '06:24:14 AM', '01:08:56 PM', '6 jam 44 menit', '', 'SPT Fingerprint'),
(466, '97', 'MOHAMMAD LUTFI EFENDI', 'Senin', '12 Pebruari 2024', 'Hadir', '06:40:03 AM', '01:17:39 PM', '6 jam 37 menit', '', 'SPT Fingerprint'),
(467, '97', 'MOHAMMAD LUTFI EFENDI', 'Selasa', '06 Pebruari 2024', 'Hadir', '06:53:18 AM', '01:18:36 PM', '6 jam 25 menit', '', 'SPT Fingerprint'),
(468, '97', 'MOHAMMAD LUTFI EFENDI', 'Senin', '05 Pebruari 2024', 'Hadir', '06:50:42 AM', '01:18:14 PM', '6 jam 27 menit', '', 'SPT Fingerprint'),
(469, '97', 'MOHAMMAD LUTFI EFENDI', 'Sabtu', '03 Pebruari 2024', 'Hadir', '06:49:35 AM', '12:33:23 PM', '5 jam 43 menit', '', 'SPT Fingerprint'),
(470, '95', 'MOHAMMAD NASRULLAH KHOIRUL FAHMI', 'Kamis', '29 Pebruari 2024', 'Hadir', '05:56:19 AM', '01:14:27 PM', '7 jam 18 menit', '', 'SPT Fingerprint'),
(471, '95', 'MOHAMMAD NASRULLAH KHOIRUL FAHMI', 'Rabu', '28 Pebruari 2024', 'Hadir', '06:07:27 AM', '01:15:34 PM', '7 jam 8 menit', '', 'SPT Fingerprint'),
(472, '95', 'MOHAMMAD NASRULLAH KHOIRUL FAHMI', 'Selasa', '27 Pebruari 2024', 'Hadir', '06:08:47 AM', '01:16:55 PM', '7 jam 8 menit', '', 'SPT Fingerprint'),
(473, '95', 'MOHAMMAD NASRULLAH KHOIRUL FAHMI', 'Senin', '26 Pebruari 2024', 'Hadir', '06:05:50 AM', '03:29:51 PM', '9 jam 24 menit', '', 'SPT Fingerprint'),
(474, '95', 'MOHAMMAD NASRULLAH KHOIRUL FAHMI', 'Sabtu', '24 Pebruari 2024', 'Hadir', '06:00:16 AM', '12:35:25 PM', '6 jam 35 menit', '', 'SPT Fingerprint'),
(475, '95', 'MOHAMMAD NASRULLAH KHOIRUL FAHMI', 'Jum\'at', '23 Pebruari 2024', 'Hadir', '06:02:02 AM', '10:46:29 AM', '4 jam 44 menit', '', 'SPT Fingerprint'),
(476, '95', 'MOHAMMAD NASRULLAH KHOIRUL FAHMI', 'Kamis', '22 Pebruari 2024', 'Hadir', '06:13:05 AM', '01:16:11 PM', '7 jam 3 menit', '', 'SPT Fingerprint'),
(477, '95', 'MOHAMMAD NASRULLAH KHOIRUL FAHMI', 'Rabu', '21 Pebruari 2024', 'Hadir', '06:09:26 AM', '03:31:21 PM', '9 jam 21 menit', '', 'SPT Fingerprint'),
(478, '95', 'MOHAMMAD NASRULLAH KHOIRUL FAHMI', 'Selasa', '20 Pebruari 2024', 'Hadir', '06:01:48 AM', '03:38:14 PM', '9 jam 36 menit', '', 'SPT Fingerprint'),
(479, '95', 'MOHAMMAD NASRULLAH KHOIRUL FAHMI', 'Senin', '19 Pebruari 2024', 'Hadir', '06:09:51 AM', '01:13:02 PM', '7 jam 3 menit', '', 'SPT Fingerprint'),
(480, '95', 'MOHAMMAD NASRULLAH KHOIRUL FAHMI', 'Sabtu', '17 Pebruari 2024', 'Hadir', '06:44:11 AM', '12:39:34 PM', '5 jam 55 menit', '', 'SPT Fingerprint'),
(481, '95', 'MOHAMMAD NASRULLAH KHOIRUL FAHMI', 'Jum\'at', '16 Pebruari 2024', 'Hadir', '06:09:18 AM', '02:45:19 PM', '8 jam 36 menit', '', 'SPT Fingerprint'),
(482, '95', 'MOHAMMAD NASRULLAH KHOIRUL FAHMI', 'Kamis', '15 Pebruari 2024', 'Hadir', '06:07:32 AM', '01:18:54 PM', '7 jam 11 menit', '', 'SPT Fingerprint'),
(483, '95', 'MOHAMMAD NASRULLAH KHOIRUL FAHMI', 'Selasa', '13 Pebruari 2024', 'Hadir', '06:08:36 AM', '01:16:12 PM', '7 jam 7 menit', '', 'SPT Fingerprint'),
(484, '95', 'MOHAMMAD NASRULLAH KHOIRUL FAHMI', 'Senin', '12 Pebruari 2024', 'Hadir', '06:08:55 AM', '02:07:47 PM', '7 jam 58 menit', '', 'SPT Fingerprint'),
(485, '95', 'MOHAMMAD NASRULLAH KHOIRUL FAHMI', 'Jum\'at', '09 Pebruari 2024', 'Hadir', '06:13:41 AM', '10:30:20 AM', '4 jam 16 menit', '', 'SPT Fingerprint'),
(486, '95', 'MOHAMMAD NASRULLAH KHOIRUL FAHMI', 'Rabu', '07 Pebruari 2024', 'Hadir', '06:13:21 AM', '01:00:39 PM', '6 jam 47 menit', '', 'SPT Fingerprint'),
(487, '95', 'MOHAMMAD NASRULLAH KHOIRUL FAHMI', 'Selasa', '06 Pebruari 2024', 'Hadir', '06:04:33 AM', '01:20:30 PM', '7 jam 15 menit', '', 'SPT Fingerprint'),
(488, '95', 'MOHAMMAD NASRULLAH KHOIRUL FAHMI', 'Senin', '05 Pebruari 2024', 'Hadir', '05:53:31 AM', '01:16:31 PM', '7 jam 23 menit', '', 'SPT Fingerprint'),
(489, '95', 'MOHAMMAD NASRULLAH KHOIRUL FAHMI', 'Sabtu', '03 Pebruari 2024', 'Hadir', '05:55:45 AM', '12:34:26 PM', '6 jam 38 menit', '', 'SPT Fingerprint'),
(490, '95', 'MOHAMMAD NASRULLAH KHOIRUL FAHMI', 'Kamis', '01 Pebruari 2024', 'Hadir', '06:07:41 AM', '01:17:04 PM', '7 jam 9 menit', '', 'SPT Fingerprint'),
(491, '86', 'MUCH SINWAN ALIYAFI', 'Kamis', '29 Pebruari 2024', 'Hadir', '06:54:47 AM', '01:03:50 PM', '6 jam 9 menit', '', 'SPT Fingerprint'),
(492, '86', 'MUCH SINWAN ALIYAFI', 'Rabu', '28 Pebruari 2024', 'Hadir', '06:52:23 AM', '01:03:39 PM', '6 jam 11 menit', '', 'SPT Fingerprint'),
(493, '86', 'MUCH SINWAN ALIYAFI', 'Selasa', '27 Pebruari 2024', 'Hadir', '06:50:09 AM', '05:00:00 PM', '10 jam 9 menit', '', 'SPT Fingerprint'),
(494, '86', 'MUCH SINWAN ALIYAFI', 'Senin', '26 Pebruari 2024', 'Hadir', '06:58:43 AM', '01:02:13 PM', '6 jam 3 menit', '', 'SPT Fingerprint'),
(495, '86', 'MUCH SINWAN ALIYAFI', 'Sabtu', '24 Pebruari 2024', 'Hadir', '06:53:05 AM', '12:20:51 PM', '5 jam 27 menit', '', 'SPT Fingerprint'),
(496, '86', 'MUCH SINWAN ALIYAFI', 'Jum\'at', '23 Pebruari 2024', 'Hadir', '06:59:16 AM', '10:49:30 AM', '3 jam 50 menit', '', 'SPT Fingerprint'),
(497, '86', 'MUCH SINWAN ALIYAFI', 'Kamis', '22 Pebruari 2024', 'Hadir', '06:53:42 AM', '01:03:49 PM', '6 jam 10 menit', '', 'SPT Fingerprint'),
(498, '86', 'MUCH SINWAN ALIYAFI', 'Rabu', '21 Pebruari 2024', 'Hadir', '06:44:06 AM', '01:02:35 PM', '6 jam 18 menit', '', 'SPT Fingerprint'),
(499, '86', 'MUCH SINWAN ALIYAFI', 'Selasa', '20 Pebruari 2024', 'Hadir', '06:51:17 AM', '02:17:35 PM', '7 jam 26 menit', '', 'SPT Fingerprint'),
(500, '86', 'MUCH SINWAN ALIYAFI', 'Senin', '19 Pebruari 2024', 'Hadir', '06:57:26 AM', '01:05:16 PM', '6 jam 7 menit', '', 'SPT Fingerprint'),
(501, '86', 'MUCH SINWAN ALIYAFI', 'Sabtu', '17 Pebruari 2024', 'Hadir', '06:41:20 AM', '12:33:50 PM', '5 jam 52 menit', '', 'SPT Fingerprint'),
(502, '86', 'MUCH SINWAN ALIYAFI', 'Selasa', '13 Pebruari 2024', 'Hadir', '06:55:56 AM', '01:03:54 PM', '6 jam 7 menit', '', 'SPT Fingerprint'),
(503, '86', 'MUCH SINWAN ALIYAFI', 'Senin', '12 Pebruari 2024', 'Hadir', '06:36:33 AM', '01:04:12 PM', '6 jam 27 menit', '', 'SPT Fingerprint'),
(504, '86', 'MUCH SINWAN ALIYAFI', 'Rabu', '07 Pebruari 2024', 'Hadir', '06:40:51 AM', '01:53:44 PM', '7 jam 12 menit', '', 'SPT Fingerprint'),
(505, '86', 'MUCH SINWAN ALIYAFI', 'Selasa', '06 Pebruari 2024', 'Hadir', '06:47:31 AM', '01:03:16 PM', '6 jam 15 menit', '', 'SPT Fingerprint'),
(506, '86', 'MUCH SINWAN ALIYAFI', 'Senin', '05 Pebruari 2024', 'Hadir', '07:00:15 AM', '01:03:15 PM', '6 jam 3 menit', '', 'SPT Fingerprint'),
(507, '86', 'MUCH SINWAN ALIYAFI', 'Sabtu', '03 Pebruari 2024', 'Hadir', '06:55:18 AM', '12:27:03 PM', '5 jam 31 menit', '', 'SPT Fingerprint'),
(508, '86', 'MUCH SINWAN ALIYAFI', 'Jum\'at', '02 Pebruari 2024', 'Hadir', '06:59:04 AM', '10:46:10 AM', '3 jam 47 menit', '', 'SPT Fingerprint'),
(509, '86', 'MUCH SINWAN ALIYAFI', 'Kamis', '01 Pebruari 2024', 'Hadir', '06:46:56 AM', '01:02:38 PM', '6 jam 15 menit', '', 'SPT Fingerprint'),
(510, '82', 'MUFIDATUZ ZAHRO`IN', 'Kamis', '29 Pebruari 2024', 'Hadir', '06:53:47 AM', '01:05:25 PM', '6 jam 11 menit', '', 'SPT Fingerprint'),
(511, '82', 'MUFIDATUZ ZAHRO`IN', 'Rabu', '28 Pebruari 2024', 'Hadir', '06:23:42 AM', '01:06:28 PM', '6 jam 42 menit', '', 'SPT Fingerprint'),
(512, '82', 'MUFIDATUZ ZAHRO`IN', 'Selasa', '27 Pebruari 2024', 'Hadir', '06:49:34 AM', '01:00:17 PM', '6 jam 10 menit', '', 'SPT Fingerprint'),
(513, '82', 'MUFIDATUZ ZAHRO`IN', 'Senin', '26 Pebruari 2024', 'Hadir', '06:52:21 AM', '01:06:39 PM', '6 jam 14 menit', '', 'SPT Fingerprint'),
(514, '82', 'MUFIDATUZ ZAHRO`IN', 'Sabtu', '24 Pebruari 2024', 'Hadir', '06:53:26 AM', '12:27:06 PM', '5 jam 33 menit', '', 'SPT Fingerprint'),
(515, '82', 'MUFIDATUZ ZAHRO`IN', 'Jum\'at', '23 Pebruari 2024', 'Hadir', '06:52:18 AM', '10:34:46 AM', '3 jam 42 menit', '', 'SPT Fingerprint'),
(516, '82', 'MUFIDATUZ ZAHRO`IN', 'Kamis', '22 Pebruari 2024', 'Hadir', '06:55:55 AM', '01:07:54 PM', '6 jam 11 menit', '', 'SPT Fingerprint'),
(517, '82', 'MUFIDATUZ ZAHRO`IN', 'Rabu', '21 Pebruari 2024', 'Hadir', '06:24:24 AM', '01:09:18 PM', '6 jam 44 menit', '', 'SPT Fingerprint'),
(518, '82', 'MUFIDATUZ ZAHRO`IN', 'Selasa', '20 Pebruari 2024', 'Hadir', '06:51:02 AM', '01:00:15 PM', '6 jam 9 menit', '', 'SPT Fingerprint'),
(519, '82', 'MUFIDATUZ ZAHRO`IN', 'Senin', '19 Pebruari 2024', 'Hadir', '06:54:09 AM', '01:06:21 PM', '6 jam 12 menit', '', 'SPT Fingerprint'),
(520, '82', 'MUFIDATUZ ZAHRO`IN', 'Jum\'at', '16 Pebruari 2024', 'Hadir', '06:49:48 AM', '10:30:05 AM', '3 jam 40 menit', '', 'SPT Fingerprint'),
(521, '82', 'MUFIDATUZ ZAHRO`IN', 'Selasa', '13 Pebruari 2024', 'Hadir', '06:51:40 AM', '01:00:07 PM', '6 jam 8 menit', '', 'SPT Fingerprint'),
(522, '82', 'MUFIDATUZ ZAHRO`IN', 'Senin', '12 Pebruari 2024', 'Hadir', '06:55:21 AM', '01:06:39 PM', '6 jam 11 menit', '', 'SPT Fingerprint'),
(523, '82', 'MUFIDATUZ ZAHRO`IN', 'Rabu', '07 Pebruari 2024', 'Hadir', '06:28:34 AM', '01:00:08 PM', '6 jam 31 menit', '', 'SPT Fingerprint'),
(524, '82', 'MUFIDATUZ ZAHRO`IN', 'Selasa', '06 Pebruari 2024', 'Hadir', '06:52:24 AM', '01:00:02 PM', '6 jam 7 menit', '', 'SPT Fingerprint'),
(525, '82', 'MUFIDATUZ ZAHRO`IN', 'Senin', '05 Pebruari 2024', 'Hadir', '06:53:27 AM', '01:09:43 PM', '6 jam 16 menit', '', 'SPT Fingerprint'),
(526, '82', 'MUFIDATUZ ZAHRO`IN', 'Sabtu', '03 Pebruari 2024', 'Hadir', '06:50:21 AM', '12:29:11 PM', '5 jam 38 menit', '', 'SPT Fingerprint'),
(527, '82', 'MUFIDATUZ ZAHRO`IN', 'Jum\'at', '02 Pebruari 2024', 'Hadir', '06:55:22 AM', '10:35:16 AM', '3 jam 39 menit', '', 'SPT Fingerprint'),
(528, '82', 'MUFIDATUZ ZAHRO`IN', 'Kamis', '01 Pebruari 2024', 'Hadir', '06:50:53 AM', '01:08:11 PM', '6 jam 17 menit', '', 'SPT Fingerprint'),
(529, '80', 'MUHAMMAD ASRIL', 'Senin', '26 Pebruari 2024', 'Hadir', '06:55:54 AM', '02:33:56 PM', '7 jam 38 menit', '', 'SPT Fingerprint'),
(530, '80', 'MUHAMMAD ASRIL', 'Sabtu', '24 Pebruari 2024', 'Hadir', '06:42:30 AM', '12:29:14 PM', '5 jam 46 menit', '', 'SPT Fingerprint'),
(531, '80', 'MUHAMMAD ASRIL', 'Jum\'at', '23 Pebruari 2024', 'Hadir', '06:40:41 AM', '05:00:00 PM', '10 jam 19 menit', '', 'SPT Fingerprint'),
(532, '80', 'MUHAMMAD ASRIL', 'Sabtu', '17 Pebruari 2024', 'Hadir', '06:40:11 AM', '05:00:00 PM', '10 jam 19 menit', '', 'SPT Fingerprint'),
(533, '80', 'MUHAMMAD ASRIL', 'Kamis', '15 Pebruari 2024', 'Hadir', '06:39:56 AM', '01:04:01 PM', '6 jam 24 menit', '', 'SPT Fingerprint'),
(534, '80', 'MUHAMMAD ASRIL', 'Sabtu', '03 Pebruari 2024', 'Hadir', '06:39:42 AM', '12:26:49 PM', '5 jam 47 menit', '', 'SPT Fingerprint'),
(535, '80', 'MUHAMMAD ASRIL', 'Jum\'at', '02 Pebruari 2024', 'Hadir', '06:35:33 AM', '05:00:00 PM', '10 jam 24 menit', '', 'SPT Fingerprint'),
(536, '80', 'MUHAMMAD ASRIL', 'Kamis', '01 Pebruari 2024', 'Hadir', '06:52:02 AM', '01:03:40 PM', '6 jam 11 menit', '', 'SPT Fingerprint'),
(537, '21', 'MUSLIH', 'Kamis', '29 Pebruari 2024', 'Hadir', '05:36:21 AM', '01:05:02 PM', '7 jam 28 menit', '', 'SPT Fingerprint'),
(538, '21', 'MUSLIH', 'Rabu', '28 Pebruari 2024', 'Hadir', '06:20:37 AM', '01:28:14 PM', '7 jam 7 menit', '', 'SPT Fingerprint'),
(539, '21', 'MUSLIH', 'Selasa', '27 Pebruari 2024', 'Hadir', '06:39:24 AM', '01:00:14 PM', '6 jam 20 menit', '', 'SPT Fingerprint'),
(540, '21', 'MUSLIH', 'Senin', '26 Pebruari 2024', 'Hadir', '05:34:21 AM', '01:00:42 PM', '7 jam 26 menit', '', 'SPT Fingerprint'),
(541, '21', 'MUSLIH', 'Sabtu', '24 Pebruari 2024', 'Hadir', '06:32:57 AM', '05:00:00 PM', '10 jam 27 menit', '', 'SPT Fingerprint'),
(542, '21', 'MUSLIH', 'Jum\'at', '23 Pebruari 2024', 'Hadir', '06:42:14 AM', '10:32:10 AM', '3 jam 49 menit', '', 'SPT Fingerprint'),
(543, '21', 'MUSLIH', 'Kamis', '22 Pebruari 2024', 'Hadir', '05:40:54 AM', '01:00:33 PM', '7 jam 19 menit', '', 'SPT Fingerprint'),
(544, '21', 'MUSLIH', 'Rabu', '21 Pebruari 2024', 'Hadir', '06:26:21 AM', '01:02:40 PM', '6 jam 36 menit', '', 'SPT Fingerprint'),
(545, '21', 'MUSLIH', 'Selasa', '20 Pebruari 2024', 'Hadir', '06:40:28 AM', '01:01:08 PM', '6 jam 20 menit', '', 'SPT Fingerprint'),
(546, '21', 'MUSLIH', 'Senin', '19 Pebruari 2024', 'Hadir', '05:38:45 AM', '01:04:33 PM', '7 jam 25 menit', '', 'SPT Fingerprint'),
(547, '21', 'MUSLIH', 'Sabtu', '17 Pebruari 2024', 'Hadir', '05:47:45 AM', '12:25:05 PM', '6 jam 37 menit', '', 'SPT Fingerprint'),
(548, '21', 'MUSLIH', 'Jum\'at', '16 Pebruari 2024', 'Hadir', '06:49:38 AM', '10:32:19 AM', '3 jam 42 menit', '', 'SPT Fingerprint'),
(549, '21', 'MUSLIH', 'Kamis', '15 Pebruari 2024', 'Hadir', '05:30:54 AM', '01:00:30 PM', '7 jam 29 menit', '', 'SPT Fingerprint'),
(550, '21', 'MUSLIH', 'Selasa', '13 Pebruari 2024', 'Hadir', '06:35:17 AM', '01:15:38 PM', '6 jam 40 menit', '', 'SPT Fingerprint'),
(551, '21', 'MUSLIH', 'Senin', '12 Pebruari 2024', 'Hadir', '06:42:32 AM', '01:46:43 PM', '7 jam 4 menit', '', 'SPT Fingerprint'),
(552, '21', 'MUSLIH', 'Jum\'at', '09 Pebruari 2024', 'Hadir', '05:59:04 AM', '10:31:34 AM', '4 jam 32 menit', '', 'SPT Fingerprint'),
(553, '21', 'MUSLIH', 'Rabu', '07 Pebruari 2024', 'Hadir', '05:40:22 AM', '01:00:52 PM', '7 jam 20 menit', '', 'SPT Fingerprint'),
(554, '21', 'MUSLIH', 'Senin', '05 Pebruari 2024', 'Hadir', '05:46:17 AM', '01:04:00 PM', '7 jam 17 menit', '', 'SPT Fingerprint'),
(555, '21', 'MUSLIH', 'Sabtu', '03 Pebruari 2024', 'Hadir', '06:40:18 AM', '12:26:41 PM', '5 jam 46 menit', '', 'SPT Fingerprint'),
(556, '21', 'MUSLIH', 'Jum\'at', '02 Pebruari 2024', 'Hadir', '06:41:26 AM', '05:00:00 PM', '10 jam 18 menit', '', 'SPT Fingerprint'),
(557, '21', 'MUSLIH', 'Kamis', '01 Pebruari 2024', 'Hadir', '05:31:58 AM', '01:01:00 PM', '7 jam 29 menit', '', 'SPT Fingerprint'),
(558, '28', 'NILA KHOIRUTI', 'Kamis', '29 Pebruari 2024', 'Hadir', '06:40:43 AM', '01:24:25 PM', '6 jam 43 menit', '', 'SPT Fingerprint'),
(559, '28', 'NILA KHOIRUTI', 'Rabu', '28 Pebruari 2024', 'Hadir', '06:41:55 AM', '01:11:18 PM', '6 jam 29 menit', '', 'SPT Fingerprint'),
(560, '28', 'NILA KHOIRUTI', 'Selasa', '27 Pebruari 2024', 'Hadir', '06:56:49 AM', '01:43:48 PM', '6 jam 46 menit', '', 'SPT Fingerprint'),
(561, '28', 'NILA KHOIRUTI', 'Senin', '26 Pebruari 2024', 'Hadir', '06:02:37 AM', '03:49:14 PM', '9 jam 46 menit', '', 'SPT Fingerprint'),
(562, '28', 'NILA KHOIRUTI', 'Sabtu', '24 Pebruari 2024', 'Hadir', '06:57:58 AM', '12:22:56 PM', '5 jam 24 menit', '', 'SPT Fingerprint'),
(563, '28', 'NILA KHOIRUTI', 'Kamis', '22 Pebruari 2024', 'Hadir', '06:46:48 AM', '01:10:38 PM', '6 jam 23 menit', '', 'SPT Fingerprint'),
(564, '28', 'NILA KHOIRUTI', 'Rabu', '21 Pebruari 2024', 'Hadir', '06:40:28 AM', '05:00:00 PM', '10 jam 19 menit', '', 'SPT Fingerprint'),
(565, '28', 'NILA KHOIRUTI', 'Selasa', '20 Pebruari 2024', 'Hadir', '06:04:33 AM', '01:03:51 PM', '6 jam 59 menit', '', 'SPT Fingerprint'),
(566, '28', 'NILA KHOIRUTI', 'Senin', '19 Pebruari 2024', 'Hadir', '06:56:28 AM', '03:17:55 PM', '8 jam 21 menit', '', 'SPT Fingerprint'),
(567, '28', 'NILA KHOIRUTI', 'Jum\'at', '16 Pebruari 2024', 'Hadir', '06:39:39 AM', '10:32:54 AM', '3 jam 53 menit', '', 'SPT Fingerprint'),
(568, '28', 'NILA KHOIRUTI', 'Selasa', '13 Pebruari 2024', 'Hadir', '06:58:15 AM', '01:02:54 PM', '6 jam 4 menit', '', 'SPT Fingerprint'),
(569, '28', 'NILA KHOIRUTI', 'Senin', '12 Pebruari 2024', 'Hadir', '06:16:48 AM', '01:03:08 PM', '6 jam 46 menit', '', 'SPT Fingerprint'),
(570, '28', 'NILA KHOIRUTI', 'Jum\'at', '09 Pebruari 2024', 'Hadir', '06:56:50 AM', '03:46:27 PM', '8 jam 49 menit', '', 'SPT Fingerprint'),
(571, '28', 'NILA KHOIRUTI', 'Rabu', '07 Pebruari 2024', 'Hadir', '06:40:42 AM', '01:03:17 PM', '6 jam 22 menit', '', 'SPT Fingerprint'),
(572, '28', 'NILA KHOIRUTI', 'Selasa', '06 Pebruari 2024', 'Hadir', '06:57:06 AM', '03:27:19 PM', '8 jam 30 menit', '', 'SPT Fingerprint'),
(573, '28', 'NILA KHOIRUTI', 'Senin', '05 Pebruari 2024', 'Hadir', '06:33:48 AM', '01:02:48 PM', '6 jam 29 menit', '', 'SPT Fingerprint'),
(574, '28', 'NILA KHOIRUTI', 'Sabtu', '03 Pebruari 2024', 'Hadir', '06:57:21 AM', '12:23:08 PM', '5 jam 25 menit', '', 'SPT Fingerprint'),
(575, '28', 'NILA KHOIRUTI', 'Jum\'at', '02 Pebruari 2024', 'Hadir', '06:59:17 AM', '10:33:18 AM', '3 jam 34 menit', '', 'SPT Fingerprint'),
(576, '28', 'NILA KHOIRUTI', 'Kamis', '01 Pebruari 2024', 'Hadir', '06:40:46 AM', '01:04:09 PM', '6 jam 23 menit', '', 'SPT Fingerprint'),
(577, '58', 'NOVI DIANA RATNA WULANDARI', 'Kamis', '29 Pebruari 2024', 'Hadir', '06:58:53 AM', '01:28:53 PM', '6 jam 30 menit', '', 'SPT Fingerprint'),
(578, '58', 'NOVI DIANA RATNA WULANDARI', 'Rabu', '28 Pebruari 2024', 'Hadir', '06:56:40 AM', '01:03:05 PM', '6 jam 6 menit', '', 'SPT Fingerprint'),
(579, '58', 'NOVI DIANA RATNA WULANDARI', 'Selasa', '27 Pebruari 2024', 'Hadir', '06:56:30 AM', '01:35:07 PM', '6 jam 38 menit', '', 'SPT Fingerprint'),
(580, '58', 'NOVI DIANA RATNA WULANDARI', 'Sabtu', '24 Pebruari 2024', 'Hadir', '06:59:52 AM', '12:50:52 PM', '5 jam 51 menit', '', 'SPT Fingerprint'),
(581, '58', 'NOVI DIANA RATNA WULANDARI', 'Jum\'at', '23 Pebruari 2024', 'Hadir', '06:56:18 AM', '10:33:16 AM', '3 jam 36 menit', '', 'SPT Fingerprint'),
(582, '58', 'NOVI DIANA RATNA WULANDARI', 'Kamis', '22 Pebruari 2024', 'Hadir', '06:57:14 AM', '01:25:56 PM', '6 jam 28 menit', '', 'SPT Fingerprint'),
(583, '58', 'NOVI DIANA RATNA WULANDARI', 'Rabu', '21 Pebruari 2024', 'Hadir', '06:56:01 AM', '01:00:03 PM', '6 jam 4 menit', '', 'SPT Fingerprint'),
(584, '58', 'NOVI DIANA RATNA WULANDARI', 'Selasa', '20 Pebruari 2024', 'Hadir', '06:55:48 AM', '01:35:14 PM', '6 jam 39 menit', '', 'SPT Fingerprint'),
(585, '58', 'NOVI DIANA RATNA WULANDARI', 'Senin', '19 Pebruari 2024', 'Hadir', '06:58:00 AM', '01:13:17 PM', '6 jam 15 menit', '', 'SPT Fingerprint'),
(586, '58', 'NOVI DIANA RATNA WULANDARI', 'Sabtu', '17 Pebruari 2024', 'Hadir', '06:57:14 AM', '12:29:28 PM', '5 jam 32 menit', '', 'SPT Fingerprint'),
(587, '58', 'NOVI DIANA RATNA WULANDARI', 'Jum\'at', '16 Pebruari 2024', 'Hadir', '06:58:13 AM', '10:31:26 AM', '3 jam 33 menit', '', 'SPT Fingerprint'),
(588, '58', 'NOVI DIANA RATNA WULANDARI', 'Kamis', '15 Pebruari 2024', 'Hadir', '06:58:29 AM', '02:23:28 PM', '7 jam 24 menit', '', 'SPT Fingerprint'),
(589, '58', 'NOVI DIANA RATNA WULANDARI', 'Selasa', '13 Pebruari 2024', 'Hadir', '06:56:56 AM', '01:18:26 PM', '6 jam 21 menit', '', 'SPT Fingerprint'),
(590, '58', 'NOVI DIANA RATNA WULANDARI', 'Senin', '12 Pebruari 2024', 'Hadir', '06:59:57 AM', '01:03:19 PM', '6 jam 3 menit', '', 'SPT Fingerprint'),
(591, '58', 'NOVI DIANA RATNA WULANDARI', 'Rabu', '07 Pebruari 2024', 'Hadir', '06:58:42 AM', '01:03:45 PM', '6 jam 5 menit', '', 'SPT Fingerprint'),
(592, '58', 'NOVI DIANA RATNA WULANDARI', 'Selasa', '06 Pebruari 2024', 'Hadir', '06:57:53 AM', '01:01:23 PM', '6 jam 3 menit', '', 'SPT Fingerprint'),
(593, '58', 'NOVI DIANA RATNA WULANDARI', 'Senin', '05 Pebruari 2024', 'Hadir', '07:00:56 AM', '01:03:07 PM', '6 jam 2 menit', '', 'SPT Fingerprint'),
(594, '58', 'NOVI DIANA RATNA WULANDARI', 'Sabtu', '03 Pebruari 2024', 'Hadir', '06:56:59 AM', '12:26:17 PM', '5 jam 29 menit', '', 'SPT Fingerprint'),
(595, '58', 'NOVI DIANA RATNA WULANDARI', 'Jum\'at', '02 Pebruari 2024', 'Hadir', '06:57:47 AM', '10:31:32 AM', '3 jam 33 menit', '', 'SPT Fingerprint'),
(596, '66', 'NOVIANA PUSPITASARI', 'Selasa', '13 Pebruari 2024', 'Hadir', '06:56:21 AM', '05:00:00 PM', '10 jam 3 menit', '', 'SPT Fingerprint'),
(597, '66', 'NOVIANA PUSPITASARI', 'Senin', '12 Pebruari 2024', 'Hadir', '05:52:56 AM', '01:05:25 PM', '7 jam 12 menit', '', 'SPT Fingerprint'),
(598, '66', 'NOVIANA PUSPITASARI', 'Kamis', '08 Pebruari 2024', 'Hadir', '06:53:08 AM', '05:00:00 PM', '10 jam 6 menit', '', 'SPT Fingerprint'),
(599, '66', 'NOVIANA PUSPITASARI', 'Selasa', '06 Pebruari 2024', 'Hadir', '06:59:18 AM', '05:00:00 PM', '10 jam 0 menit', '', 'SPT Fingerprint'),
(600, '17', 'NUR MUDHOLIFAH', 'Kamis', '29 Pebruari 2024', 'Hadir', '06:49:50 AM', '01:00:35 PM', '6 jam 10 menit', '', 'SPT Fingerprint'),
(601, '17', 'NUR MUDHOLIFAH', 'Rabu', '28 Pebruari 2024', 'Hadir', '06:59:14 AM', '01:07:00 PM', '6 jam 7 menit', '', 'SPT Fingerprint'),
(602, '17', 'NUR MUDHOLIFAH', 'Selasa', '27 Pebruari 2024', 'Hadir', '06:57:20 AM', '01:09:32 PM', '6 jam 12 menit', '', 'SPT Fingerprint'),
(603, '17', 'NUR MUDHOLIFAH', 'Senin', '26 Pebruari 2024', 'Hadir', '06:53:16 AM', '01:48:23 PM', '6 jam 55 menit', '', 'SPT Fingerprint'),
(604, '17', 'NUR MUDHOLIFAH', 'Jum\'at', '23 Pebruari 2024', 'Hadir', '06:54:15 AM', '10:36:20 AM', '3 jam 42 menit', '', 'SPT Fingerprint'),
(605, '17', 'NUR MUDHOLIFAH', 'Kamis', '22 Pebruari 2024', 'Hadir', '06:57:36 AM', '01:10:34 PM', '6 jam 12 menit', '', 'SPT Fingerprint'),
(606, '17', 'NUR MUDHOLIFAH', 'Rabu', '21 Pebruari 2024', 'Hadir', '06:56:55 AM', '01:14:54 PM', '6 jam 17 menit', '', 'SPT Fingerprint'),
(607, '17', 'NUR MUDHOLIFAH', 'Selasa', '20 Pebruari 2024', 'Hadir', '06:57:19 AM', '01:10:36 PM', '6 jam 13 menit', '', 'SPT Fingerprint'),
(608, '17', 'NUR MUDHOLIFAH', 'Sabtu', '17 Pebruari 2024', 'Hadir', '06:52:55 AM', '12:27:01 PM', '5 jam 34 menit', '', 'SPT Fingerprint'),
(609, '17', 'NUR MUDHOLIFAH', 'Jum\'at', '16 Pebruari 2024', 'Hadir', '06:50:37 AM', '10:42:14 AM', '3 jam 51 menit', '', 'SPT Fingerprint'),
(610, '17', 'NUR MUDHOLIFAH', 'Kamis', '15 Pebruari 2024', 'Hadir', '06:55:40 AM', '01:05:11 PM', '6 jam 9 menit', '', 'SPT Fingerprint'),
(611, '17', 'NUR MUDHOLIFAH', 'Selasa', '13 Pebruari 2024', 'Hadir', '06:54:41 AM', '01:14:34 PM', '6 jam 19 menit', '', 'SPT Fingerprint'),
(612, '17', 'NUR MUDHOLIFAH', 'Senin', '12 Pebruari 2024', 'Hadir', '06:55:33 AM', '01:08:59 PM', '6 jam 13 menit', '', 'SPT Fingerprint'),
(613, '17', 'NUR MUDHOLIFAH', 'Rabu', '07 Pebruari 2024', 'Hadir', '06:53:16 AM', '01:01:09 PM', '6 jam 7 menit', '', 'SPT Fingerprint'),
(614, '17', 'NUR MUDHOLIFAH', 'Selasa', '06 Pebruari 2024', 'Hadir', '06:53:13 AM', '01:23:41 PM', '6 jam 30 menit', '', 'SPT Fingerprint'),
(615, '17', 'NUR MUDHOLIFAH', 'Sabtu', '03 Pebruari 2024', 'Hadir', '06:56:26 AM', '12:24:05 PM', '5 jam 27 menit', '', 'SPT Fingerprint'),
(616, '17', 'NUR MUDHOLIFAH', 'Jum\'at', '02 Pebruari 2024', 'Hadir', '06:57:51 AM', '10:43:05 AM', '3 jam 45 menit', '', 'SPT Fingerprint'),
(617, '17', 'NUR MUDHOLIFAH', 'Kamis', '01 Pebruari 2024', 'Hadir', '06:58:19 AM', '01:09:46 PM', '6 jam 11 menit', '', 'SPT Fingerprint'),
(618, '79', 'RIDA IRFA`IYATI', 'Kamis', '29 Pebruari 2024', 'Hadir', '05:36:30 AM', '01:20:29 PM', '7 jam 43 menit', '', 'SPT Fingerprint'),
(619, '79', 'RIDA IRFA`IYATI', 'Rabu', '28 Pebruari 2024', 'Hadir', '05:47:51 AM', '01:14:41 PM', '7 jam 26 menit', '', 'SPT Fingerprint'),
(620, '79', 'RIDA IRFA`IYATI', 'Selasa', '27 Pebruari 2024', 'Hadir', '06:02:14 AM', '01:14:59 PM', '7 jam 12 menit', '', 'SPT Fingerprint'),
(621, '79', 'RIDA IRFA`IYATI', 'Senin', '26 Pebruari 2024', 'Hadir', '06:11:41 AM', '01:24:55 PM', '7 jam 13 menit', '', 'SPT Fingerprint'),
(622, '79', 'RIDA IRFA`IYATI', 'Sabtu', '24 Pebruari 2024', 'Hadir', '06:20:54 AM', '01:02:23 PM', '6 jam 41 menit', '', 'SPT Fingerprint'),
(623, '79', 'RIDA IRFA`IYATI', 'Jum\'at', '23 Pebruari 2024', 'Hadir', '06:09:47 AM', '10:55:55 AM', '4 jam 46 menit', '', 'SPT Fingerprint'),
(624, '79', 'RIDA IRFA`IYATI', 'Kamis', '22 Pebruari 2024', 'Hadir', '06:24:30 AM', '01:12:23 PM', '6 jam 47 menit', '', 'SPT Fingerprint'),
(625, '79', 'RIDA IRFA`IYATI', 'Rabu', '21 Pebruari 2024', 'Hadir', '05:50:02 AM', '01:55:58 PM', '8 jam 5 menit', '', 'SPT Fingerprint'),
(626, '79', 'RIDA IRFA`IYATI', 'Selasa', '20 Pebruari 2024', 'Hadir', '06:00:54 AM', '01:19:18 PM', '7 jam 18 menit', '', 'SPT Fingerprint'),
(627, '79', 'RIDA IRFA`IYATI', 'Senin', '19 Pebruari 2024', 'Hadir', '05:52:39 AM', '01:19:04 PM', '7 jam 26 menit', '', 'SPT Fingerprint'),
(628, '79', 'RIDA IRFA`IYATI', 'Sabtu', '17 Pebruari 2024', 'Hadir', '06:17:29 AM', '01:54:33 PM', '7 jam 37 menit', '', 'SPT Fingerprint'),
(629, '79', 'RIDA IRFA`IYATI', 'Kamis', '15 Pebruari 2024', 'Hadir', '06:21:01 AM', '01:18:31 PM', '6 jam 57 menit', '', 'SPT Fingerprint'),
(630, '79', 'RIDA IRFA`IYATI', 'Selasa', '13 Pebruari 2024', 'Hadir', '05:50:50 AM', '01:41:10 PM', '7 jam 50 menit', '', 'SPT Fingerprint'),
(631, '79', 'RIDA IRFA`IYATI', 'Rabu', '07 Pebruari 2024', 'Hadir', '06:55:29 AM', '01:00:55 PM', '6 jam 5 menit', '', 'SPT Fingerprint'),
(632, '79', 'RIDA IRFA`IYATI', 'Selasa', '06 Pebruari 2024', 'Hadir', '06:59:58 AM', '02:39:03 PM', '7 jam 39 menit', '', 'SPT Fingerprint'),
(633, '79', 'RIDA IRFA`IYATI', 'Senin', '05 Pebruari 2024', 'Hadir', '06:08:07 AM', '02:56:50 PM', '8 jam 48 menit', '', 'SPT Fingerprint'),
(634, '79', 'RIDA IRFA`IYATI', 'Sabtu', '03 Pebruari 2024', 'Hadir', '05:49:05 AM', '12:30:07 PM', '6 jam 41 menit', '', 'SPT Fingerprint'),
(635, '79', 'RIDA IRFA`IYATI', 'Jum\'at', '02 Pebruari 2024', 'Hadir', '06:20:13 AM', '11:21:23 AM', '5 jam 1 menit', '', 'SPT Fingerprint'),
(636, '79', 'RIDA IRFA`IYATI', 'Kamis', '01 Pebruari 2024', 'Hadir', '05:45:59 AM', '01:51:49 PM', '8 jam 5 menit', '', 'SPT Fingerprint'),
(637, '70', 'RIFQIA KARTIKA NINGRUM', 'Rabu', '28 Pebruari 2024', 'Hadir', '06:58:57 AM', '01:02:29 PM', '6 jam 3 menit', '', 'SPT Fingerprint'),
(638, '70', 'RIFQIA KARTIKA NINGRUM', 'Senin', '26 Pebruari 2024', 'Hadir', '06:59:48 AM', '01:04:27 PM', '6 jam 4 menit', '', 'SPT Fingerprint'),
(639, '70', 'RIFQIA KARTIKA NINGRUM', 'Sabtu', '24 Pebruari 2024', 'Hadir', '06:58:51 AM', '12:23:44 PM', '5 jam 24 menit', '', 'SPT Fingerprint'),
(640, '70', 'RIFQIA KARTIKA NINGRUM', 'Jum\'at', '23 Pebruari 2024', 'Hadir', '06:58:48 AM', '10:32:20 AM', '3 jam 33 menit', '', 'SPT Fingerprint'),
(641, '70', 'RIFQIA KARTIKA NINGRUM', 'Kamis', '22 Pebruari 2024', 'Hadir', '06:57:55 AM', '01:00:05 PM', '6 jam 2 menit', '', 'SPT Fingerprint'),
(642, '70', 'RIFQIA KARTIKA NINGRUM', 'Rabu', '21 Pebruari 2024', 'Hadir', '06:58:11 AM', '01:02:18 PM', '6 jam 4 menit', '', 'SPT Fingerprint'),
(643, '70', 'RIFQIA KARTIKA NINGRUM', 'Selasa', '20 Pebruari 2024', 'Hadir', '06:57:29 AM', '01:00:18 PM', '6 jam 2 menit', '', 'SPT Fingerprint'),
(644, '70', 'RIFQIA KARTIKA NINGRUM', 'Senin', '19 Pebruari 2024', 'Hadir', '06:59:05 AM', '01:07:09 PM', '6 jam 8 menit', '', 'SPT Fingerprint'),
(645, '70', 'RIFQIA KARTIKA NINGRUM', 'Sabtu', '17 Pebruari 2024', 'Hadir', '06:53:08 AM', '12:25:44 PM', '5 jam 32 menit', '', 'SPT Fingerprint'),
(646, '70', 'RIFQIA KARTIKA NINGRUM', 'Jum\'at', '16 Pebruari 2024', 'Hadir', '06:58:41 AM', '10:34:03 AM', '3 jam 35 menit', '', 'SPT Fingerprint'),
(647, '70', 'RIFQIA KARTIKA NINGRUM', 'Jum\'at', '09 Pebruari 2024', 'Hadir', '06:59:18 AM', '11:11:08 AM', '4 jam 11 menit', '', 'SPT Fingerprint'),
(648, '70', 'RIFQIA KARTIKA NINGRUM', 'Senin', '05 Pebruari 2024', 'Hadir', '06:57:47 AM', '01:04:41 PM', '6 jam 6 menit', '', 'SPT Fingerprint'),
(649, '70', 'RIFQIA KARTIKA NINGRUM', 'Sabtu', '03 Pebruari 2024', 'Hadir', '06:58:24 AM', '12:27:06 PM', '5 jam 28 menit', '', 'SPT Fingerprint'),
(650, '70', 'RIFQIA KARTIKA NINGRUM', 'Jum\'at', '02 Pebruari 2024', 'Hadir', '06:59:09 AM', '10:33:07 AM', '3 jam 33 menit', '', 'SPT Fingerprint'),
(651, '70', 'RIFQIA KARTIKA NINGRUM', 'Kamis', '01 Pebruari 2024', 'Hadir', '06:56:35 AM', '01:00:00 PM', '6 jam 3 menit', '', 'SPT Fingerprint'),
(652, '15', 'RUMISAH', 'Kamis', '29 Pebruari 2024', 'Hadir', '06:42:48 AM', '01:00:06 PM', '6 jam 17 menit', '', 'SPT Fingerprint'),
(653, '15', 'RUMISAH', 'Rabu', '28 Pebruari 2024', 'Hadir', '06:40:12 AM', '01:00:33 PM', '6 jam 20 menit', '', 'SPT Fingerprint'),
(654, '15', 'RUMISAH', 'Selasa', '27 Pebruari 2024', 'Hadir', '06:42:46 AM', '01:13:35 PM', '6 jam 30 menit', '', 'SPT Fingerprint'),
(655, '15', 'RUMISAH', 'Senin', '26 Pebruari 2024', 'Hadir', '06:40:40 AM', '01:04:14 PM', '6 jam 23 menit', '', 'SPT Fingerprint'),
(656, '15', 'RUMISAH', 'Jum\'at', '23 Pebruari 2024', 'Hadir', '06:39:48 AM', '10:30:51 AM', '3 jam 51 menit', '', 'SPT Fingerprint'),
(657, '15', 'RUMISAH', 'Kamis', '22 Pebruari 2024', 'Hadir', '06:43:21 AM', '01:00:22 PM', '6 jam 17 menit', '', 'SPT Fingerprint'),
(658, '15', 'RUMISAH', 'Rabu', '21 Pebruari 2024', 'Hadir', '06:37:01 AM', '01:00:12 PM', '6 jam 23 menit', '', 'SPT Fingerprint'),
(659, '15', 'RUMISAH', 'Selasa', '20 Pebruari 2024', 'Hadir', '06:40:11 AM', '01:38:49 PM', '6 jam 58 menit', '', 'SPT Fingerprint'),
(660, '15', 'RUMISAH', 'Senin', '19 Pebruari 2024', 'Hadir', '06:52:25 AM', '01:11:36 PM', '6 jam 19 menit', '', 'SPT Fingerprint'),
(661, '15', 'RUMISAH', 'Sabtu', '17 Pebruari 2024', 'Hadir', '06:19:08 AM', '12:35:44 PM', '6 jam 16 menit', '', 'SPT Fingerprint'),
(662, '15', 'RUMISAH', 'Jum\'at', '16 Pebruari 2024', 'Hadir', '06:53:14 AM', '10:34:52 AM', '3 jam 41 menit', '', 'SPT Fingerprint'),
(663, '15', 'RUMISAH', 'Kamis', '15 Pebruari 2024', 'Hadir', '06:38:49 AM', '01:07:02 PM', '6 jam 28 menit', '', 'SPT Fingerprint'),
(664, '15', 'RUMISAH', 'Selasa', '13 Pebruari 2024', 'Hadir', '07:00:07 AM', '01:07:32 PM', '6 jam 7 menit', '', 'SPT Fingerprint'),
(665, '15', 'RUMISAH', 'Senin', '12 Pebruari 2024', 'Hadir', '06:34:07 AM', '01:04:22 PM', '6 jam 30 menit', '', 'SPT Fingerprint'),
(666, '15', 'RUMISAH', 'Jum\'at', '09 Pebruari 2024', 'Hadir', '06:57:05 AM', '10:30:07 AM', '3 jam 33 menit', '', 'SPT Fingerprint'),
(667, '15', 'RUMISAH', 'Rabu', '07 Pebruari 2024', 'Hadir', '06:40:57 AM', '05:00:00 PM', '10 jam 19 menit', '', 'SPT Fingerprint'),
(668, '15', 'RUMISAH', 'Selasa', '06 Pebruari 2024', 'Hadir', '06:43:04 AM', '01:08:39 PM', '6 jam 25 menit', '', 'SPT Fingerprint'),
(669, '15', 'RUMISAH', 'Sabtu', '03 Pebruari 2024', 'Hadir', '06:14:21 AM', '12:43:06 PM', '6 jam 28 menit', '', 'SPT Fingerprint'),
(670, '15', 'RUMISAH', 'Jum\'at', '02 Pebruari 2024', 'Hadir', '06:39:46 AM', '10:45:07 AM', '4 jam 5 menit', '', 'SPT Fingerprint'),
(671, '15', 'RUMISAH', 'Kamis', '01 Pebruari 2024', 'Hadir', '06:10:25 AM', '01:05:13 PM', '6 jam 54 menit', '', 'SPT Fingerprint'),
(672, '88', 'SHOFIA WARDAH', 'Kamis', '29 Pebruari 2024', 'Hadir', '05:47:35 AM', '01:14:11 PM', '7 jam 26 menit', '', 'SPT Fingerprint'),
(673, '88', 'SHOFIA WARDAH', 'Rabu', '28 Pebruari 2024', 'Hadir', '05:46:37 AM', '01:08:26 PM', '7 jam 21 menit', '', 'SPT Fingerprint'),
(674, '88', 'SHOFIA WARDAH', 'Selasa', '27 Pebruari 2024', 'Hadir', '05:50:14 AM', '01:03:47 PM', '7 jam 13 menit', '', 'SPT Fingerprint'),
(675, '88', 'SHOFIA WARDAH', 'Senin', '26 Pebruari 2024', 'Hadir', '06:50:35 AM', '01:01:24 PM', '6 jam 10 menit', '', 'SPT Fingerprint'),
(676, '88', 'SHOFIA WARDAH', 'Jum\'at', '23 Pebruari 2024', 'Hadir', '06:56:43 AM', '10:34:16 AM', '3 jam 37 menit', '', 'SPT Fingerprint'),
(677, '88', 'SHOFIA WARDAH', 'Kamis', '22 Pebruari 2024', 'Hadir', '05:47:23 AM', '01:15:07 PM', '7 jam 27 menit', '', 'SPT Fingerprint'),
(678, '88', 'SHOFIA WARDAH', 'Rabu', '21 Pebruari 2024', 'Hadir', '05:45:23 AM', '01:06:59 PM', '7 jam 21 menit', '', 'SPT Fingerprint'),
(679, '88', 'SHOFIA WARDAH', 'Selasa', '20 Pebruari 2024', 'Hadir', '05:42:20 AM', '01:03:26 PM', '7 jam 21 menit', '', 'SPT Fingerprint'),
(680, '88', 'SHOFIA WARDAH', 'Senin', '19 Pebruari 2024', 'Hadir', '06:48:17 AM', '12:59:44 PM', '6 jam 11 menit', '', 'SPT Fingerprint'),
(681, '88', 'SHOFIA WARDAH', 'Jum\'at', '16 Pebruari 2024', 'Hadir', '06:57:32 AM', '10:40:07 AM', '3 jam 42 menit', '', 'SPT Fingerprint'),
(682, '88', 'SHOFIA WARDAH', 'Kamis', '15 Pebruari 2024', 'Hadir', '05:44:16 AM', '01:08:42 PM', '7 jam 24 menit', '', 'SPT Fingerprint'),
(683, '88', 'SHOFIA WARDAH', 'Senin', '12 Pebruari 2024', 'Hadir', '06:47:26 AM', '01:01:12 PM', '6 jam 13 menit', '', 'SPT Fingerprint'),
(684, '88', 'SHOFIA WARDAH', 'Jum\'at', '09 Pebruari 2024', 'Hadir', '06:56:17 AM', '10:30:36 AM', '3 jam 34 menit', '', 'SPT Fingerprint'),
(685, '88', 'SHOFIA WARDAH', 'Kamis', '08 Pebruari 2024', 'Hadir', '06:33:46 AM', '05:00:00 PM', '10 jam 26 menit', '', 'SPT Fingerprint'),
(686, '88', 'SHOFIA WARDAH', 'Rabu', '07 Pebruari 2024', 'Hadir', '05:41:57 AM', '01:01:16 PM', '7 jam 19 menit', '', 'SPT Fingerprint'),
(687, '88', 'SHOFIA WARDAH', 'Selasa', '06 Pebruari 2024', 'Hadir', '05:41:14 AM', '01:24:27 PM', '7 jam 43 menit', '', 'SPT Fingerprint'),
(688, '88', 'SHOFIA WARDAH', 'Senin', '05 Pebruari 2024', 'Hadir', '06:51:13 AM', '01:02:25 PM', '6 jam 11 menit', '', 'SPT Fingerprint'),
(689, '88', 'SHOFIA WARDAH', 'Jum\'at', '02 Pebruari 2024', 'Hadir', '06:54:49 AM', '10:41:58 AM', '3 jam 47 menit', '', 'SPT Fingerprint'),
(690, '88', 'SHOFIA WARDAH', 'Kamis', '01 Pebruari 2024', 'Hadir', '05:36:55 AM', '01:11:12 PM', '7 jam 34 menit', '', 'SPT Fingerprint'),
(691, '5', 'SITI MUYASAROH', 'Kamis', '29 Pebruari 2024', 'Hadir', '06:52:27 AM', '01:21:33 PM', '6 jam 29 menit', '', 'SPT Fingerprint'),
(692, '5', 'SITI MUYASAROH', 'Rabu', '28 Pebruari 2024', 'Hadir', '06:59:09 AM', '01:23:24 PM', '6 jam 24 menit', '', 'SPT Fingerprint'),
(693, '5', 'SITI MUYASAROH', 'Selasa', '27 Pebruari 2024', 'Hadir', '06:54:56 AM', '02:40:51 PM', '7 jam 45 menit', '', 'SPT Fingerprint'),
(694, '5', 'SITI MUYASAROH', 'Kamis', '22 Pebruari 2024', 'Hadir', '06:55:50 AM', '01:42:36 PM', '6 jam 46 menit', '', 'SPT Fingerprint'),
(695, '5', 'SITI MUYASAROH', 'Rabu', '21 Pebruari 2024', 'Hadir', '06:53:35 AM', '01:08:46 PM', '6 jam 15 menit', '', 'SPT Fingerprint'),
(696, '5', 'SITI MUYASAROH', 'Selasa', '20 Pebruari 2024', 'Hadir', '06:56:30 AM', '02:27:41 PM', '7 jam 31 menit', '', 'SPT Fingerprint'),
(697, '5', 'SITI MUYASAROH', 'Sabtu', '17 Pebruari 2024', 'Hadir', '06:59:40 AM', '12:35:12 PM', '5 jam 35 menit', '', 'SPT Fingerprint'),
(698, '5', 'SITI MUYASAROH', 'Kamis', '01 Pebruari 2024', 'Hadir', '06:56:44 AM', '01:07:47 PM', '6 jam 11 menit', '', 'SPT Fingerprint'),
(699, '6', 'SRI WENING', 'Rabu', '28 Pebruari 2024', 'Hadir', '06:54:25 AM', '01:04:47 PM', '6 jam 10 menit', '', 'SPT Fingerprint'),
(700, '6', 'SRI WENING', 'Selasa', '27 Pebruari 2024', 'Hadir', '06:53:42 AM', '01:04:15 PM', '6 jam 10 menit', '', 'SPT Fingerprint'),
(701, '6', 'SRI WENING', 'Senin', '26 Pebruari 2024', 'Hadir', '06:52:34 AM', '01:04:56 PM', '6 jam 12 menit', '', 'SPT Fingerprint'),
(702, '6', 'SRI WENING', 'Sabtu', '24 Pebruari 2024', 'Hadir', '06:48:16 AM', '12:20:14 PM', '5 jam 31 menit', '', 'SPT Fingerprint'),
(703, '6', 'SRI WENING', 'Jum\'at', '23 Pebruari 2024', 'Hadir', '06:53:31 AM', '10:31:03 AM', '3 jam 37 menit', '', 'SPT Fingerprint'),
(704, '6', 'SRI WENING', 'Kamis', '22 Pebruari 2024', 'Hadir', '06:52:39 AM', '01:04:08 PM', '6 jam 11 menit', '', 'SPT Fingerprint'),
(705, '6', 'SRI WENING', 'Rabu', '21 Pebruari 2024', 'Hadir', '06:21:40 AM', '01:06:33 PM', '6 jam 44 menit', '', 'SPT Fingerprint'),
(706, '6', 'SRI WENING', 'Selasa', '20 Pebruari 2024', 'Hadir', '06:53:45 AM', '01:05:20 PM', '6 jam 11 menit', '', 'SPT Fingerprint'),
(707, '6', 'SRI WENING', 'Senin', '19 Pebruari 2024', 'Hadir', '06:58:23 AM', '12:59:34 PM', '6 jam 1 menit', '', 'SPT Fingerprint'),
(708, '6', 'SRI WENING', 'Jum\'at', '16 Pebruari 2024', 'Hadir', '06:54:10 AM', '10:30:46 AM', '3 jam 36 menit', '', 'SPT Fingerprint'),
(709, '6', 'SRI WENING', 'Kamis', '15 Pebruari 2024', 'Hadir', '06:53:37 AM', '01:05:19 PM', '6 jam 11 menit', '', 'SPT Fingerprint'),
(710, '6', 'SRI WENING', 'Selasa', '13 Pebruari 2024', 'Hadir', '06:49:44 AM', '01:08:13 PM', '6 jam 18 menit', '', 'SPT Fingerprint'),
(711, '6', 'SRI WENING', 'Senin', '12 Pebruari 2024', 'Hadir', '06:49:30 AM', '01:01:26 PM', '6 jam 11 menit', '', 'SPT Fingerprint'),
(712, '6', 'SRI WENING', 'Rabu', '07 Pebruari 2024', 'Hadir', '06:53:44 AM', '01:00:32 PM', '6 jam 6 menit', '', 'SPT Fingerprint'),
(713, '6', 'SRI WENING', 'Selasa', '06 Pebruari 2024', 'Hadir', '06:54:10 AM', '01:07:08 PM', '6 jam 12 menit', '', 'SPT Fingerprint'),
(714, '6', 'SRI WENING', 'Senin', '05 Pebruari 2024', 'Hadir', '06:50:32 AM', '01:01:24 PM', '6 jam 10 menit', '', 'SPT Fingerprint'),
(715, '6', 'SRI WENING', 'Sabtu', '03 Pebruari 2024', 'Hadir', '06:56:57 AM', '12:32:49 PM', '5 jam 35 menit', '', 'SPT Fingerprint'),
(716, '6', 'SRI WENING', 'Jum\'at', '02 Pebruari 2024', 'Hadir', '06:52:56 AM', '10:35:29 AM', '3 jam 42 menit', '', 'SPT Fingerprint');
INSERT INTO `data_absensi` (`id`, `kode`, `nama`, `hari`, `tanggal`, `status`, `jam_masuk`, `jam_pulang`, `waktu_kerja`, `keterangan`, `sumber`) VALUES
(717, '6', 'SRI WENING', 'Kamis', '01 Pebruari 2024', 'Hadir', '06:50:22 AM', '01:04:31 PM', '6 jam 14 menit', '', 'SPT Fingerprint'),
(718, '13', 'SUNARYO', 'Kamis', '29 Pebruari 2024', 'Hadir', '06:52:48 AM', '01:17:42 PM', '6 jam 24 menit', '', 'SPT Fingerprint'),
(719, '13', 'SUNARYO', 'Rabu', '28 Pebruari 2024', 'Hadir', '05:53:59 AM', '01:04:54 PM', '7 jam 10 menit', '', 'SPT Fingerprint'),
(720, '13', 'SUNARYO', 'Selasa', '27 Pebruari 2024', 'Hadir', '07:00:41 AM', '01:01:52 PM', '6 jam 1 menit', '', 'SPT Fingerprint'),
(721, '13', 'SUNARYO', 'Senin', '26 Pebruari 2024', 'Hadir', '06:50:43 AM', '01:02:54 PM', '6 jam 12 menit', '', 'SPT Fingerprint'),
(722, '13', 'SUNARYO', 'Jum\'at', '23 Pebruari 2024', 'Hadir', '06:55:16 AM', '10:35:02 AM', '3 jam 39 menit', '', 'SPT Fingerprint'),
(723, '13', 'SUNARYO', 'Kamis', '22 Pebruari 2024', 'Hadir', '06:54:17 AM', '01:00:28 PM', '6 jam 6 menit', '', 'SPT Fingerprint'),
(724, '13', 'SUNARYO', 'Rabu', '21 Pebruari 2024', 'Hadir', '06:54:46 AM', '05:00:00 PM', '10 jam 5 menit', '', 'SPT Fingerprint'),
(725, '13', 'SUNARYO', 'Selasa', '20 Pebruari 2024', 'Hadir', '06:57:31 AM', '05:00:00 PM', '10 jam 2 menit', '', 'SPT Fingerprint'),
(726, '13', 'SUNARYO', 'Senin', '19 Pebruari 2024', 'Hadir', '06:55:03 AM', '05:00:00 PM', '10 jam 4 menit', '', 'SPT Fingerprint'),
(727, '13', 'SUNARYO', 'Sabtu', '17 Pebruari 2024', 'Hadir', '06:23:14 AM', '12:25:53 PM', '6 jam 2 menit', '', 'SPT Fingerprint'),
(728, '13', 'SUNARYO', 'Jum\'at', '09 Pebruari 2024', 'Hadir', '05:59:23 AM', '10:32:41 AM', '4 jam 33 menit', '', 'SPT Fingerprint'),
(729, '13', 'SUNARYO', 'Rabu', '07 Pebruari 2024', 'Hadir', '05:39:51 AM', '01:02:22 PM', '7 jam 22 menit', '', 'SPT Fingerprint'),
(730, '13', 'SUNARYO', 'Selasa', '06 Pebruari 2024', 'Hadir', '06:57:57 AM', '01:05:22 PM', '6 jam 7 menit', '', 'SPT Fingerprint'),
(731, '13', 'SUNARYO', 'Senin', '05 Pebruari 2024', 'Hadir', '05:43:53 AM', '01:04:13 PM', '7 jam 20 menit', '', 'SPT Fingerprint'),
(732, '13', 'SUNARYO', 'Jum\'at', '02 Pebruari 2024', 'Hadir', '05:53:35 AM', '10:36:40 AM', '4 jam 43 menit', '', 'SPT Fingerprint'),
(733, '10', 'TATIK ARIZAH', 'Jum\'at', '16 Pebruari 2024', 'Hadir', '05:39:58 AM', '10:40:37 AM', '5 jam 0 menit', '', 'SPT Fingerprint'),
(734, '87', 'TEJO KUNCORO', 'Kamis', '29 Pebruari 2024', 'Hadir', '06:47:58 AM', '01:00:03 PM', '6 jam 12 menit', '', 'SPT Fingerprint'),
(735, '87', 'TEJO KUNCORO', 'Senin', '26 Pebruari 2024', 'Hadir', '06:48:10 AM', '01:02:47 PM', '6 jam 14 menit', '', 'SPT Fingerprint'),
(736, '87', 'TEJO KUNCORO', 'Jum\'at', '23 Pebruari 2024', 'Hadir', '07:00:06 AM', '05:00:00 PM', '9 jam 59 menit', '', 'SPT Fingerprint'),
(737, '87', 'TEJO KUNCORO', 'Kamis', '22 Pebruari 2024', 'Hadir', '06:45:13 AM', '01:02:55 PM', '6 jam 17 menit', '', 'SPT Fingerprint'),
(738, '87', 'TEJO KUNCORO', 'Rabu', '21 Pebruari 2024', 'Hadir', '06:59:08 AM', '02:46:06 PM', '7 jam 46 menit', '', 'SPT Fingerprint'),
(739, '87', 'TEJO KUNCORO', 'Senin', '19 Pebruari 2024', 'Hadir', '06:48:51 AM', '01:04:17 PM', '6 jam 15 menit', '', 'SPT Fingerprint'),
(740, '87', 'TEJO KUNCORO', 'Jum\'at', '16 Pebruari 2024', 'Hadir', '06:52:44 AM', '05:00:00 PM', '10 jam 7 menit', '', 'SPT Fingerprint'),
(741, '87', 'TEJO KUNCORO', 'Kamis', '15 Pebruari 2024', 'Hadir', '06:46:48 AM', '01:29:09 PM', '6 jam 42 menit', '', 'SPT Fingerprint'),
(742, '87', 'TEJO KUNCORO', 'Selasa', '13 Pebruari 2024', 'Hadir', '07:00:46 AM', '01:12:18 PM', '6 jam 11 menit', '', 'SPT Fingerprint'),
(743, '87', 'TEJO KUNCORO', 'Senin', '12 Pebruari 2024', 'Hadir', '06:59:07 AM', '01:03:21 PM', '6 jam 4 menit', '', 'SPT Fingerprint'),
(744, '87', 'TEJO KUNCORO', 'Rabu', '07 Pebruari 2024', 'Hadir', '06:58:32 AM', '01:00:45 PM', '6 jam 2 menit', '', 'SPT Fingerprint'),
(745, '87', 'TEJO KUNCORO', 'Selasa', '06 Pebruari 2024', 'Hadir', '06:59:28 AM', '01:01:04 PM', '6 jam 1 menit', '', 'SPT Fingerprint'),
(746, '87', 'TEJO KUNCORO', 'Senin', '05 Pebruari 2024', 'Hadir', '06:45:35 AM', '01:03:22 PM', '6 jam 17 menit', '', 'SPT Fingerprint'),
(747, '87', 'TEJO KUNCORO', 'Jum\'at', '02 Pebruari 2024', 'Hadir', '06:58:41 AM', '05:00:00 PM', '10 jam 1 menit', '', 'SPT Fingerprint'),
(748, '87', 'TEJO KUNCORO', 'Kamis', '01 Pebruari 2024', 'Hadir', '06:47:05 AM', '03:53:56 PM', '9 jam 6 menit', '', 'SPT Fingerprint'),
(749, '38', 'TUTUS EMY ROHMAWATI', 'Kamis', '29 Pebruari 2024', 'Hadir', '06:59:04 AM', '01:47:33 PM', '6 jam 48 menit', '', 'SPT Fingerprint'),
(750, '38', 'TUTUS EMY ROHMAWATI', 'Rabu', '28 Pebruari 2024', 'Hadir', '06:58:29 AM', '01:19:03 PM', '6 jam 20 menit', '', 'SPT Fingerprint'),
(751, '38', 'TUTUS EMY ROHMAWATI', 'Senin', '26 Pebruari 2024', 'Hadir', '06:58:34 AM', '01:34:56 PM', '6 jam 36 menit', '', 'SPT Fingerprint'),
(752, '38', 'TUTUS EMY ROHMAWATI', 'Sabtu', '24 Pebruari 2024', 'Hadir', '07:00:19 AM', '12:23:14 PM', '5 jam 22 menit', '', 'SPT Fingerprint'),
(753, '38', 'TUTUS EMY ROHMAWATI', 'Kamis', '22 Pebruari 2024', 'Hadir', '06:59:19 AM', '01:57:49 PM', '6 jam 58 menit', '', 'SPT Fingerprint'),
(754, '38', 'TUTUS EMY ROHMAWATI', 'Rabu', '21 Pebruari 2024', 'Hadir', '07:00:00 AM', '01:24:32 PM', '6 jam 24 menit', '', 'SPT Fingerprint'),
(755, '38', 'TUTUS EMY ROHMAWATI', 'Selasa', '20 Pebruari 2024', 'Hadir', '07:00:13 AM', '01:08:08 PM', '6 jam 7 menit', '', 'SPT Fingerprint'),
(756, '38', 'TUTUS EMY ROHMAWATI', 'Senin', '19 Pebruari 2024', 'Hadir', '07:00:25 AM', '01:58:58 PM', '6 jam 58 menit', '', 'SPT Fingerprint'),
(757, '38', 'TUTUS EMY ROHMAWATI', 'Sabtu', '17 Pebruari 2024', 'Hadir', '06:59:25 AM', '02:19:01 PM', '7 jam 19 menit', '', 'SPT Fingerprint'),
(758, '38', 'TUTUS EMY ROHMAWATI', 'Senin', '12 Pebruari 2024', 'Hadir', '06:59:53 AM', '02:14:08 PM', '7 jam 14 menit', '', 'SPT Fingerprint'),
(759, '38', 'TUTUS EMY ROHMAWATI', 'Rabu', '07 Pebruari 2024', 'Hadir', '06:59:06 AM', '01:32:21 PM', '6 jam 33 menit', '', 'SPT Fingerprint'),
(760, '38', 'TUTUS EMY ROHMAWATI', 'Selasa', '06 Pebruari 2024', 'Hadir', '06:59:51 AM', '01:04:24 PM', '6 jam 4 menit', '', 'SPT Fingerprint'),
(761, '38', 'TUTUS EMY ROHMAWATI', 'Senin', '05 Pebruari 2024', 'Hadir', '07:00:12 AM', '03:01:49 PM', '8 jam 1 menit', '', 'SPT Fingerprint'),
(762, '38', 'TUTUS EMY ROHMAWATI', 'Sabtu', '03 Pebruari 2024', 'Hadir', '06:59:21 AM', '12:22:53 PM', '5 jam 23 menit', '', 'SPT Fingerprint'),
(763, '52', 'UCHA UNZILA', 'Kamis', '29 Pebruari 2024', 'Hadir', '06:40:57 AM', '01:03:28 PM', '6 jam 22 menit', '', 'SPT Fingerprint'),
(764, '52', 'UCHA UNZILA', 'Rabu', '28 Pebruari 2024', 'Hadir', '06:48:28 AM', '05:00:00 PM', '10 jam 11 menit', '', 'SPT Fingerprint'),
(765, '52', 'UCHA UNZILA', 'Selasa', '27 Pebruari 2024', 'Hadir', '06:36:41 AM', '01:04:35 PM', '6 jam 27 menit', '', 'SPT Fingerprint'),
(766, '52', 'UCHA UNZILA', 'Senin', '26 Pebruari 2024', 'Hadir', '06:40:26 AM', '01:03:40 PM', '6 jam 23 menit', '', 'SPT Fingerprint'),
(767, '52', 'UCHA UNZILA', 'Sabtu', '24 Pebruari 2024', 'Hadir', '06:32:38 AM', '05:00:00 PM', '10 jam 27 menit', '', 'SPT Fingerprint'),
(768, '52', 'UCHA UNZILA', 'Jum\'at', '23 Pebruari 2024', 'Hadir', '06:37:45 AM', '10:37:49 AM', '4 jam 0 menit', '', 'SPT Fingerprint'),
(769, '52', 'UCHA UNZILA', 'Kamis', '22 Pebruari 2024', 'Hadir', '06:30:27 AM', '01:22:00 PM', '6 jam 51 menit', '', 'SPT Fingerprint'),
(770, '52', 'UCHA UNZILA', 'Rabu', '21 Pebruari 2024', 'Hadir', '06:31:32 AM', '01:00:35 PM', '6 jam 29 menit', '', 'SPT Fingerprint'),
(771, '52', 'UCHA UNZILA', 'Selasa', '20 Pebruari 2024', 'Hadir', '06:45:19 AM', '05:00:00 PM', '10 jam 14 menit', '', 'SPT Fingerprint'),
(772, '52', 'UCHA UNZILA', 'Senin', '19 Pebruari 2024', 'Hadir', '06:41:59 AM', '01:03:31 PM', '6 jam 21 menit', '', 'SPT Fingerprint'),
(773, '52', 'UCHA UNZILA', 'Sabtu', '17 Pebruari 2024', 'Hadir', '06:39:17 AM', '12:24:19 PM', '5 jam 45 menit', '', 'SPT Fingerprint'),
(774, '52', 'UCHA UNZILA', 'Jum\'at', '16 Pebruari 2024', 'Hadir', '06:49:15 AM', '10:34:43 AM', '3 jam 45 menit', '', 'SPT Fingerprint'),
(775, '52', 'UCHA UNZILA', 'Selasa', '13 Pebruari 2024', 'Hadir', '06:40:36 AM', '01:06:51 PM', '6 jam 26 menit', '', 'SPT Fingerprint'),
(776, '52', 'UCHA UNZILA', 'Senin', '12 Pebruari 2024', 'Hadir', '06:49:22 AM', '01:05:19 PM', '6 jam 15 menit', '', 'SPT Fingerprint'),
(777, '52', 'UCHA UNZILA', 'Rabu', '07 Pebruari 2024', 'Hadir', '06:49:52 AM', '01:00:19 PM', '6 jam 10 menit', '', 'SPT Fingerprint'),
(778, '52', 'UCHA UNZILA', 'Selasa', '06 Pebruari 2024', 'Hadir', '06:48:38 AM', '01:03:37 PM', '6 jam 14 menit', '', 'SPT Fingerprint'),
(779, '52', 'UCHA UNZILA', 'Senin', '05 Pebruari 2024', 'Hadir', '06:41:30 AM', '01:03:26 PM', '6 jam 21 menit', '', 'SPT Fingerprint'),
(780, '52', 'UCHA UNZILA', 'Sabtu', '03 Pebruari 2024', 'Hadir', '06:31:30 AM', '12:24:00 PM', '5 jam 52 menit', '', 'SPT Fingerprint'),
(781, '52', 'UCHA UNZILA', 'Jum\'at', '02 Pebruari 2024', 'Hadir', '06:38:56 AM', '10:34:44 AM', '3 jam 55 menit', '', 'SPT Fingerprint'),
(782, '52', 'UCHA UNZILA', 'Kamis', '01 Pebruari 2024', 'Hadir', '06:40:02 AM', '05:00:00 PM', '10 jam 19 menit', '', 'SPT Fingerprint'),
(783, '67', 'ULFI FATIMATUL MUAMANAH', 'Kamis', '29 Pebruari 2024', 'Hadir', '06:58:09 AM', '01:04:26 PM', '6 jam 6 menit', '', 'SPT Fingerprint'),
(784, '67', 'ULFI FATIMATUL MUAMANAH', 'Rabu', '28 Pebruari 2024', 'Hadir', '06:55:43 AM', '02:34:05 PM', '7 jam 38 menit', '', 'SPT Fingerprint'),
(785, '67', 'ULFI FATIMATUL MUAMANAH', 'Selasa', '27 Pebruari 2024', 'Hadir', '06:56:02 AM', '01:00:01 PM', '6 jam 3 menit', '', 'SPT Fingerprint'),
(786, '67', 'ULFI FATIMATUL MUAMANAH', 'Sabtu', '24 Pebruari 2024', 'Hadir', '06:55:03 AM', '12:20:25 PM', '5 jam 25 menit', '', 'SPT Fingerprint'),
(787, '67', 'ULFI FATIMATUL MUAMANAH', 'Jum\'at', '23 Pebruari 2024', 'Hadir', '06:57:25 AM', '10:32:31 AM', '3 jam 35 menit', '', 'SPT Fingerprint'),
(788, '67', 'ULFI FATIMATUL MUAMANAH', 'Kamis', '22 Pebruari 2024', 'Hadir', '06:54:47 AM', '01:09:08 PM', '6 jam 14 menit', '', 'SPT Fingerprint'),
(789, '67', 'ULFI FATIMATUL MUAMANAH', 'Sabtu', '17 Pebruari 2024', 'Hadir', '06:58:10 AM', '12:27:15 PM', '5 jam 29 menit', '', 'SPT Fingerprint'),
(790, '67', 'ULFI FATIMATUL MUAMANAH', 'Jum\'at', '16 Pebruari 2024', 'Hadir', '06:55:14 AM', '10:35:12 AM', '3 jam 39 menit', '', 'SPT Fingerprint'),
(791, '67', 'ULFI FATIMATUL MUAMANAH', 'Kamis', '15 Pebruari 2024', 'Hadir', '06:56:14 AM', '01:08:17 PM', '6 jam 12 menit', '', 'SPT Fingerprint'),
(792, '67', 'ULFI FATIMATUL MUAMANAH', 'Selasa', '13 Pebruari 2024', 'Hadir', '06:49:30 AM', '01:00:04 PM', '6 jam 10 menit', '', 'SPT Fingerprint'),
(793, '67', 'ULFI FATIMATUL MUAMANAH', 'Jum\'at', '09 Pebruari 2024', 'Hadir', '06:54:50 AM', '10:30:26 AM', '3 jam 35 menit', '', 'SPT Fingerprint'),
(794, '67', 'ULFI FATIMATUL MUAMANAH', 'Rabu', '07 Pebruari 2024', 'Hadir', '06:56:34 AM', '01:00:07 PM', '6 jam 3 menit', '', 'SPT Fingerprint'),
(795, '67', 'ULFI FATIMATUL MUAMANAH', 'Selasa', '06 Pebruari 2024', 'Hadir', '06:56:49 AM', '02:34:45 PM', '7 jam 37 menit', '', 'SPT Fingerprint'),
(796, '67', 'ULFI FATIMATUL MUAMANAH', 'Sabtu', '03 Pebruari 2024', 'Hadir', '06:52:38 AM', '12:20:10 PM', '5 jam 27 menit', '', 'SPT Fingerprint'),
(797, '67', 'ULFI FATIMATUL MUAMANAH', 'Jum\'at', '02 Pebruari 2024', 'Hadir', '06:56:12 AM', '10:32:34 AM', '3 jam 36 menit', '', 'SPT Fingerprint'),
(798, '67', 'ULFI FATIMATUL MUAMANAH', 'Kamis', '01 Pebruari 2024', 'Hadir', '06:56:31 AM', '01:02:44 PM', '6 jam 6 menit', '', 'SPT Fingerprint'),
(799, '16', 'UMI ASMU HANISAH', 'Senin', '19 Pebruari 2024', 'Hadir', '06:41:32 AM', '02:44:37 PM', '8 jam 3 menit', '', 'SPT Fingerprint'),
(800, '16', 'UMI ASMU HANISAH', 'Sabtu', '17 Pebruari 2024', 'Hadir', '06:45:14 AM', '01:25:05 PM', '6 jam 39 menit', '', 'SPT Fingerprint'),
(801, '16', 'UMI ASMU HANISAH', 'Jum\'at', '16 Pebruari 2024', 'Hadir', '07:00:44 AM', '05:00:00 PM', '9 jam 59 menit', '', 'SPT Fingerprint'),
(802, '16', 'UMI ASMU HANISAH', 'Selasa', '13 Pebruari 2024', 'Hadir', '06:44:40 AM', '01:02:46 PM', '6 jam 18 menit', '', 'SPT Fingerprint'),
(803, '16', 'UMI ASMU HANISAH', 'Senin', '12 Pebruari 2024', 'Hadir', '06:39:51 AM', '02:08:50 PM', '7 jam 28 menit', '', 'SPT Fingerprint'),
(804, '16', 'UMI ASMU HANISAH', 'Jum\'at', '09 Pebruari 2024', 'Hadir', '06:45:07 AM', '05:00:00 PM', '10 jam 14 menit', '', 'SPT Fingerprint'),
(805, '16', 'UMI ASMU HANISAH', 'Selasa', '06 Pebruari 2024', 'Hadir', '06:42:53 AM', '01:02:48 PM', '6 jam 19 menit', '', 'SPT Fingerprint'),
(806, '16', 'UMI ASMU HANISAH', 'Senin', '05 Pebruari 2024', 'Hadir', '06:38:39 AM', '01:17:45 PM', '6 jam 39 menit', '', 'SPT Fingerprint'),
(807, '19', 'UMI LAILATUR RAHMAH', 'Kamis', '29 Pebruari 2024', 'Hadir', '06:58:33 AM', '05:00:00 PM', '10 jam 1 menit', '', 'SPT Fingerprint'),
(808, '19', 'UMI LAILATUR RAHMAH', 'Rabu', '28 Pebruari 2024', 'Hadir', '06:55:29 AM', '05:00:00 PM', '10 jam 4 menit', '', 'SPT Fingerprint'),
(809, '19', 'UMI LAILATUR RAHMAH', 'Selasa', '27 Pebruari 2024', 'Hadir', '06:51:51 AM', '01:06:29 PM', '6 jam 14 menit', '', 'SPT Fingerprint'),
(810, '19', 'UMI LAILATUR RAHMAH', 'Jum\'at', '23 Pebruari 2024', 'Hadir', '06:58:44 AM', '05:00:00 PM', '10 jam 1 menit', '', 'SPT Fingerprint'),
(811, '19', 'UMI LAILATUR RAHMAH', 'Kamis', '22 Pebruari 2024', 'Hadir', '06:56:18 AM', '05:00:00 PM', '10 jam 3 menit', '', 'SPT Fingerprint'),
(812, '19', 'UMI LAILATUR RAHMAH', 'Selasa', '20 Pebruari 2024', 'Hadir', '06:58:52 AM', '05:00:00 PM', '10 jam 1 menit', '', 'SPT Fingerprint'),
(813, '19', 'UMI LAILATUR RAHMAH', 'Senin', '19 Pebruari 2024', 'Hadir', '06:59:36 AM', '05:00:00 PM', '10 jam 0 menit', '', 'SPT Fingerprint'),
(814, '19', 'UMI LAILATUR RAHMAH', 'Kamis', '15 Pebruari 2024', 'Hadir', '06:55:53 AM', '05:00:00 PM', '10 jam 4 menit', '', 'SPT Fingerprint'),
(815, '19', 'UMI LAILATUR RAHMAH', 'Selasa', '13 Pebruari 2024', 'Hadir', '06:55:51 AM', '05:00:00 PM', '10 jam 4 menit', '', 'SPT Fingerprint'),
(816, '19', 'UMI LAILATUR RAHMAH', 'Senin', '12 Pebruari 2024', 'Hadir', '06:57:10 AM', '05:00:00 PM', '10 jam 2 menit', '', 'SPT Fingerprint'),
(817, '19', 'UMI LAILATUR RAHMAH', 'Senin', '05 Pebruari 2024', 'Hadir', '06:57:58 AM', '01:29:50 PM', '6 jam 31 menit', '', 'SPT Fingerprint'),
(818, '19', 'UMI LAILATUR RAHMAH', 'Jum\'at', '02 Pebruari 2024', 'Hadir', '06:56:41 AM', '10:51:41 AM', '3 jam 55 menit', '', 'SPT Fingerprint'),
(819, '19', 'UMI LAILATUR RAHMAH', 'Kamis', '01 Pebruari 2024', 'Hadir', '06:54:09 AM', '05:00:00 PM', '10 jam 5 menit', '', 'SPT Fingerprint'),
(820, '94', 'VELDA ATHA AURELIA', 'Kamis', '29 Pebruari 2024', 'Hadir', '06:59:51 AM', '01:01:03 PM', '6 jam 1 menit', '', 'SPT Fingerprint'),
(821, '94', 'VELDA ATHA AURELIA', 'Senin', '26 Pebruari 2024', 'Hadir', '06:59:10 AM', '01:05:14 PM', '6 jam 6 menit', '', 'SPT Fingerprint'),
(822, '94', 'VELDA ATHA AURELIA', 'Sabtu', '24 Pebruari 2024', 'Hadir', '07:00:28 AM', '12:23:09 PM', '5 jam 22 menit', '', 'SPT Fingerprint'),
(823, '94', 'VELDA ATHA AURELIA', 'Jum\'at', '23 Pebruari 2024', 'Hadir', '06:59:46 AM', '05:00:00 PM', '10 jam 0 menit', '', 'SPT Fingerprint'),
(824, '94', 'VELDA ATHA AURELIA', 'Senin', '19 Pebruari 2024', 'Hadir', '06:00:23 AM', '01:00:10 PM', '6 jam 59 menit', '', 'SPT Fingerprint'),
(825, '94', 'VELDA ATHA AURELIA', 'Sabtu', '17 Pebruari 2024', 'Hadir', '06:57:20 AM', '12:26:05 PM', '5 jam 28 menit', '', 'SPT Fingerprint'),
(826, '94', 'VELDA ATHA AURELIA', 'Selasa', '13 Pebruari 2024', 'Hadir', '07:00:05 AM', '01:05:28 PM', '6 jam 5 menit', '', 'SPT Fingerprint'),
(827, '94', 'VELDA ATHA AURELIA', 'Senin', '05 Pebruari 2024', 'Hadir', '06:59:21 AM', '01:03:31 PM', '6 jam 4 menit', '', 'SPT Fingerprint'),
(828, '94', 'VELDA ATHA AURELIA', 'Sabtu', '03 Pebruari 2024', 'Hadir', '06:23:02 AM', '12:44:39 PM', '6 jam 21 menit', '', 'SPT Fingerprint'),
(829, '94', 'VELDA ATHA AURELIA', 'Jum\'at', '02 Pebruari 2024', 'Hadir', '06:58:57 AM', '10:33:24 AM', '3 jam 34 menit', '', 'SPT Fingerprint'),
(830, '94', 'VELDA ATHA AURELIA', 'Kamis', '01 Pebruari 2024', 'Hadir', '06:59:06 AM', '01:10:17 PM', '6 jam 11 menit', '', 'SPT Fingerprint'),
(831, '76', 'VIKI AINUR FATMA', 'Kamis', '29 Pebruari 2024', 'Hadir', '06:54:09 AM', '01:00:08 PM', '6 jam 5 menit', '', 'SPT Fingerprint'),
(832, '76', 'VIKI AINUR FATMA', 'Rabu', '28 Pebruari 2024', 'Hadir', '06:31:02 AM', '01:02:47 PM', '6 jam 31 menit', '', 'SPT Fingerprint'),
(833, '76', 'VIKI AINUR FATMA', 'Selasa', '27 Pebruari 2024', 'Hadir', '06:51:33 AM', '01:02:33 PM', '6 jam 11 menit', '', 'SPT Fingerprint'),
(834, '76', 'VIKI AINUR FATMA', 'Senin', '26 Pebruari 2024', 'Hadir', '06:12:51 AM', '01:03:07 PM', '6 jam 50 menit', '', 'SPT Fingerprint'),
(835, '76', 'VIKI AINUR FATMA', 'Sabtu', '24 Pebruari 2024', 'Hadir', '06:13:50 AM', '12:23:02 PM', '6 jam 9 menit', '', 'SPT Fingerprint'),
(836, '76', 'VIKI AINUR FATMA', 'Jum\'at', '23 Pebruari 2024', 'Hadir', '06:56:04 AM', '10:34:09 AM', '3 jam 38 menit', '', 'SPT Fingerprint'),
(837, '76', 'VIKI AINUR FATMA', 'Kamis', '22 Pebruari 2024', 'Hadir', '06:50:59 AM', '01:00:24 PM', '6 jam 9 menit', '', 'SPT Fingerprint'),
(838, '76', 'VIKI AINUR FATMA', 'Rabu', '21 Pebruari 2024', 'Hadir', '06:04:53 AM', '01:03:28 PM', '6 jam 58 menit', '', 'SPT Fingerprint'),
(839, '76', 'VIKI AINUR FATMA', 'Selasa', '20 Pebruari 2024', 'Hadir', '06:54:11 AM', '01:03:44 PM', '6 jam 9 menit', '', 'SPT Fingerprint'),
(840, '76', 'VIKI AINUR FATMA', 'Senin', '19 Pebruari 2024', 'Hadir', '06:49:44 AM', '01:03:35 PM', '6 jam 13 menit', '', 'SPT Fingerprint'),
(841, '76', 'VIKI AINUR FATMA', 'Sabtu', '17 Pebruari 2024', 'Hadir', '06:03:32 AM', '12:26:18 PM', '6 jam 22 menit', '', 'SPT Fingerprint'),
(842, '76', 'VIKI AINUR FATMA', 'Jum\'at', '16 Pebruari 2024', 'Hadir', '06:49:31 AM', '10:30:02 AM', '3 jam 40 menit', '', 'SPT Fingerprint'),
(843, '76', 'VIKI AINUR FATMA', 'Kamis', '15 Pebruari 2024', 'Hadir', '06:51:22 AM', '01:00:17 PM', '6 jam 8 menit', '', 'SPT Fingerprint'),
(844, '76', 'VIKI AINUR FATMA', 'Selasa', '13 Pebruari 2024', 'Hadir', '06:50:09 AM', '01:00:14 PM', '6 jam 10 menit', '', 'SPT Fingerprint'),
(845, '76', 'VIKI AINUR FATMA', 'Senin', '12 Pebruari 2024', 'Hadir', '06:58:22 AM', '01:02:43 PM', '6 jam 4 menit', '', 'SPT Fingerprint'),
(846, '76', 'VIKI AINUR FATMA', 'Jum\'at', '09 Pebruari 2024', 'Hadir', '06:54:48 AM', '10:30:29 AM', '3 jam 35 menit', '', 'SPT Fingerprint'),
(847, '76', 'VIKI AINUR FATMA', 'Sabtu', '03 Pebruari 2024', 'Hadir', '06:54:15 AM', '12:24:22 PM', '5 jam 30 menit', '', 'SPT Fingerprint'),
(848, '76', 'VIKI AINUR FATMA', 'Jum\'at', '02 Pebruari 2024', 'Hadir', '06:53:55 AM', '10:35:56 AM', '3 jam 42 menit', '', 'SPT Fingerprint'),
(849, '76', 'VIKI AINUR FATMA', 'Kamis', '01 Pebruari 2024', 'Hadir', '06:53:38 AM', '01:01:47 PM', '6 jam 8 menit', '', 'SPT Fingerprint'),
(850, '84', 'WAHYUDI', 'Kamis', '29 Pebruari 2024', 'Hadir', '06:59:48 AM', '01:07:39 PM', '6 jam 7 menit', '', 'SPT Fingerprint'),
(851, '84', 'WAHYUDI', 'Rabu', '28 Pebruari 2024', 'Hadir', '06:55:09 AM', '01:00:15 PM', '6 jam 5 menit', '', 'SPT Fingerprint'),
(852, '84', 'WAHYUDI', 'Sabtu', '24 Pebruari 2024', 'Hadir', '07:00:39 AM', '12:25:44 PM', '5 jam 25 menit', '', 'SPT Fingerprint'),
(853, '84', 'WAHYUDI', 'Kamis', '22 Pebruari 2024', 'Hadir', '07:00:27 AM', '01:06:49 PM', '6 jam 6 menit', '', 'SPT Fingerprint'),
(854, '84', 'WAHYUDI', 'Rabu', '21 Pebruari 2024', 'Hadir', '06:46:27 AM', '01:09:00 PM', '6 jam 22 menit', '', 'SPT Fingerprint'),
(855, '84', 'WAHYUDI', 'Rabu', '07 Pebruari 2024', 'Hadir', '06:57:09 AM', '01:20:44 PM', '6 jam 23 menit', '', 'SPT Fingerprint'),
(856, '84', 'WAHYUDI', 'Sabtu', '03 Pebruari 2024', 'Hadir', '06:59:34 AM', '12:24:26 PM', '5 jam 24 menit', '', 'SPT Fingerprint'),
(857, '84', 'WAHYUDI', 'Kamis', '01 Pebruari 2024', 'Hadir', '07:00:59 AM', '01:03:00 PM', '6 jam 2 menit', '', 'SPT Fingerprint'),
(858, '81', 'WUNI NILA CAHYANI', 'Kamis', '29 Pebruari 2024', 'Hadir', '07:00:37 AM', '01:02:21 PM', '6 jam 1 menit', '', 'SPT Fingerprint'),
(859, '81', 'WUNI NILA CAHYANI', 'Rabu', '28 Pebruari 2024', 'Hadir', '06:51:48 AM', '01:00:19 PM', '6 jam 8 menit', '', 'SPT Fingerprint'),
(860, '81', 'WUNI NILA CAHYANI', 'Selasa', '27 Pebruari 2024', 'Hadir', '06:58:26 AM', '01:03:28 PM', '6 jam 5 menit', '', 'SPT Fingerprint'),
(861, '81', 'WUNI NILA CAHYANI', 'Senin', '26 Pebruari 2024', 'Hadir', '07:00:44 AM', '01:06:02 PM', '6 jam 5 menit', '', 'SPT Fingerprint'),
(862, '81', 'WUNI NILA CAHYANI', 'Sabtu', '24 Pebruari 2024', 'Hadir', '06:53:01 AM', '12:23:41 PM', '5 jam 30 menit', '', 'SPT Fingerprint'),
(863, '81', 'WUNI NILA CAHYANI', 'Rabu', '21 Pebruari 2024', 'Hadir', '06:53:05 AM', '01:00:37 PM', '6 jam 7 menit', '', 'SPT Fingerprint'),
(864, '81', 'WUNI NILA CAHYANI', 'Selasa', '20 Pebruari 2024', 'Hadir', '06:59:35 AM', '01:04:18 PM', '6 jam 4 menit', '', 'SPT Fingerprint'),
(865, '81', 'WUNI NILA CAHYANI', 'Senin', '19 Pebruari 2024', 'Hadir', '07:00:02 AM', '01:09:57 PM', '6 jam 9 menit', '', 'SPT Fingerprint'),
(866, '81', 'WUNI NILA CAHYANI', 'Sabtu', '17 Pebruari 2024', 'Hadir', '07:00:04 AM', '12:22:21 PM', '5 jam 22 menit', '', 'SPT Fingerprint'),
(867, '81', 'WUNI NILA CAHYANI', 'Jum\'at', '16 Pebruari 2024', 'Hadir', '07:00:09 AM', '10:34:57 AM', '3 jam 34 menit', '', 'SPT Fingerprint'),
(868, '81', 'WUNI NILA CAHYANI', 'Kamis', '15 Pebruari 2024', 'Hadir', '07:00:11 AM', '01:03:26 PM', '6 jam 3 menit', '', 'SPT Fingerprint'),
(869, '81', 'WUNI NILA CAHYANI', 'Senin', '12 Pebruari 2024', 'Hadir', '07:00:14 AM', '01:06:22 PM', '6 jam 6 menit', '', 'SPT Fingerprint'),
(870, '81', 'WUNI NILA CAHYANI', 'Jum\'at', '09 Pebruari 2024', 'Hadir', '07:00:33 AM', '10:32:30 AM', '3 jam 31 menit', '', 'SPT Fingerprint'),
(871, '81', 'WUNI NILA CAHYANI', 'Rabu', '07 Pebruari 2024', 'Hadir', '06:52:54 AM', '01:00:14 PM', '6 jam 7 menit', '', 'SPT Fingerprint'),
(872, '81', 'WUNI NILA CAHYANI', 'Selasa', '06 Pebruari 2024', 'Hadir', '06:58:44 AM', '01:03:50 PM', '6 jam 5 menit', '', 'SPT Fingerprint'),
(873, '81', 'WUNI NILA CAHYANI', 'Senin', '05 Pebruari 2024', 'Hadir', '07:00:07 AM', '01:05:25 PM', '6 jam 5 menit', '', 'SPT Fingerprint'),
(874, '81', 'WUNI NILA CAHYANI', 'Sabtu', '03 Pebruari 2024', 'Hadir', '06:59:31 AM', '12:24:20 PM', '5 jam 24 menit', '', 'SPT Fingerprint'),
(875, '81', 'WUNI NILA CAHYANI', 'Jum\'at', '02 Pebruari 2024', 'Hadir', '07:00:02 AM', '10:34:12 AM', '3 jam 34 menit', '', 'SPT Fingerprint'),
(876, '81', 'WUNI NILA CAHYANI', 'Kamis', '01 Pebruari 2024', 'Hadir', '06:59:52 AM', '01:03:34 PM', '6 jam 3 menit', '', 'SPT Fingerprint'),
(877, '22', 'ZULFA IKFINA', 'Kamis', '15 Pebruari 2024', 'Hadir', '06:43:47 AM', '01:02:16 PM', '6 jam 18 menit', '', 'SPT Fingerprint'),
(878, '22', 'ZULFA IKFINA', 'Senin', '12 Pebruari 2024', 'Hadir', '06:51:47 AM', '01:11:50 PM', '6 jam 20 menit', '', 'SPT Fingerprint');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_guru`
--

CREATE TABLE `data_guru` (
  `id` int(11) NOT NULL,
  `kode` varchar(10) NOT NULL,
  `nama` varchar(256) NOT NULL,
  `tmt` varchar(25) NOT NULL,
  `lain` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `data_guru`
--

INSERT INTO `data_guru` (`id`, `kode`, `nama`, `tmt`, `lain`) VALUES
(1, '45', 'MOHAMAD RIDUWAN', '2012-07-01', ''),
(2, '75', 'ZAZULI JAZIM', '2024-02-07', ''),
(3, '85', 'AMANDA MANOPO', '2016-01-01', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_jabatan`
--

CREATE TABLE `data_jabatan` (
  `id` int(11) NOT NULL,
  `nama_jabatan` varchar(256) NOT NULL,
  `honor` int(20) NOT NULL,
  `keterangan` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `data_jabatan`
--

INSERT INTO `data_jabatan` (`id`, `nama_jabatan`, `honor`, `keterangan`) VALUES
(3, 'Kepala Madrasah', 2000000, 'Per Bulan'),
(4, 'Staff Bendahara', 500000, 'Per Bulan'),
(5, 'Staff Kurikulum', 750000, 'Per Bulan'),
(6, 'Wali Kelas', 50000, 'Per Bulan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_jtm`
--

CREATE TABLE `data_jtm` (
  `id` int(11) NOT NULL,
  `id_guru` varchar(10) NOT NULL,
  `jumlah_jtm` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `data_jtm`
--

INSERT INTO `data_jtm` (`id`, `id_guru`, `jumlah_jtm`) VALUES
(2, '75', 25),
(3, '85', 18),
(6, '45', 10);

-- --------------------------------------------------------

--
-- Struktur dari tabel `honor_dynamis`
--

CREATE TABLE `honor_dynamis` (
  `id` int(11) NOT NULL,
  `nama_honor` varchar(256) NOT NULL,
  `nominal` int(20) NOT NULL,
  `keterangan` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `honor_dynamis`
--

INSERT INTO `honor_dynamis` (`id`, `nama_honor`, `nominal`, `keterangan`) VALUES
(1, 'Guru', 25000, 'Per JTM'),
(2, 'Transport', 10000, 'Per Hari'),
(3, 'Pengabdian', 15000, 'Per Tahun');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jabatan_guru`
--

CREATE TABLE `jabatan_guru` (
  `id` int(11) NOT NULL,
  `id_pegawai` varchar(25) NOT NULL,
  `id_jabatan` varchar(25) NOT NULL,
  `keterangan` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `jabatan_guru`
--

INSERT INTO `jabatan_guru` (`id`, `id_pegawai`, `id_jabatan`, `keterangan`) VALUES
(2, '45', '5', 'Per Bulan'),
(3, '45', '6', 'Per Bulan'),
(4, '75', '5', 'Per Bulan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `image` varchar(128) NOT NULL,
  `password` varchar(256) NOT NULL,
  `role_id` int(11) NOT NULL,
  `is_active` int(1) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `image`, `password`, `role_id`, `is_active`, `date_created`) VALUES
(5, 'Mohamad Riduwan', 'riduwan@gmail.com', '1520504747_png.png', 'riduwan', 1, 1, 1552120289),
(6, 'Jauharotul Maknunah', 'jauha@gmail.com', 'profile.jpg', '123456', 2, 1, 1552285263);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_access_menu`
--

CREATE TABLE `user_access_menu` (
  `id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `user_access_menu`
--

INSERT INTO `user_access_menu` (`id`, `role_id`, `menu_id`) VALUES
(1, 1, 1),
(3, 2, 2),
(38, 1, 2),
(42, 1, 3),
(43, 1, 9),
(45, 1, 10);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_menu`
--

CREATE TABLE `user_menu` (
  `id` int(11) NOT NULL,
  `menu` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `user_menu`
--

INSERT INTO `user_menu` (`id`, `menu`) VALUES
(1, 'Admin'),
(2, 'User'),
(3, 'Menu'),
(10, 'Penggajian');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_role`
--

CREATE TABLE `user_role` (
  `id` int(11) NOT NULL,
  `role` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `user_role`
--

INSERT INTO `user_role` (`id`, `role`) VALUES
(1, 'Administrator'),
(2, 'Member'),
(3, 'Siswa');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_sub_menu`
--

CREATE TABLE `user_sub_menu` (
  `id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `url` varchar(128) NOT NULL,
  `icon` varchar(128) NOT NULL,
  `is_active` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `user_sub_menu`
--

INSERT INTO `user_sub_menu` (`id`, `menu_id`, `title`, `url`, `icon`, `is_active`) VALUES
(1, 1, 'Dashboard', 'admin', 'fas fa-fw fa-tachometer-alt', 1),
(2, 2, 'My Profile', 'user', 'fas fa-fw fa-user', 1),
(3, 2, 'Edit Profile', 'user/edit', 'fas fa-fw fa-user-edit', 1),
(4, 3, 'Menu Management', 'menu', 'fas fa-fw fa-folder', 1),
(5, 3, 'Submenu Management', 'menu/submenu', 'fas fa-fw fa-folder-open', 1),
(7, 1, 'Role', 'admin/role', 'fas fa-fw fa-user-check', 1),
(8, 2, 'Change Password', 'user/changepassword', 'fas fa-fw fa-key', 1),
(9, 1, 'Users', 'admin/users', 'fas fa-fw fa-solid fa-users', 1),
(11, 10, 'Data Guru', 'penggajian/dataguru', 'fas fa-fw fa-users', 1),
(12, 10, 'Data Honor', 'penggajian/datahonor', 'fas fa-fw fa-money-check-alt', 1),
(13, 10, 'Data JTM', 'penggajian/datajtm', 'fas fa-fw fa-user-clock', 1),
(14, 10, 'Absensi', 'penggajian/absensi', 'fas fa-fw fa-clipboard-list', 1),
(15, 10, 'Laporan', 'penggajian/laporan', 'fas fa-fw fa-poll', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_token`
--

CREATE TABLE `user_token` (
  `id` int(11) NOT NULL,
  `email` varchar(128) NOT NULL,
  `token` varchar(128) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `absensi`
--
ALTER TABLE `absensi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `data_absensi`
--
ALTER TABLE `data_absensi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `data_guru`
--
ALTER TABLE `data_guru`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `data_jabatan`
--
ALTER TABLE `data_jabatan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `data_jtm`
--
ALTER TABLE `data_jtm`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_guru` (`id_guru`);

--
-- Indeks untuk tabel `honor_dynamis`
--
ALTER TABLE `honor_dynamis`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `jabatan_guru`
--
ALTER TABLE `jabatan_guru`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user_access_menu`
--
ALTER TABLE `user_access_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user_menu`
--
ALTER TABLE `user_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user_token`
--
ALTER TABLE `user_token`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `absensi`
--
ALTER TABLE `absensi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `data_absensi`
--
ALTER TABLE `data_absensi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=879;

--
-- AUTO_INCREMENT untuk tabel `data_guru`
--
ALTER TABLE `data_guru`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `data_jabatan`
--
ALTER TABLE `data_jabatan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `data_jtm`
--
ALTER TABLE `data_jtm`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `honor_dynamis`
--
ALTER TABLE `honor_dynamis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `jabatan_guru`
--
ALTER TABLE `jabatan_guru`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `user_access_menu`
--
ALTER TABLE `user_access_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT untuk tabel `user_menu`
--
ALTER TABLE `user_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `user_token`
--
ALTER TABLE `user_token`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
