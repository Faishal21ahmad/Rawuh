-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 27, 2023 at 08:44 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rawuh`
--

-- --------------------------------------------------------

--
-- Table structure for table `adminrms`
--

CREATE TABLE `adminrms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `namarm` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `adminrms`
--

INSERT INTO `adminrms` (`id`, `namarm`, `owner`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Rawuh Warmindo', 'Faishal', 'rawuh@gmail.com', '2023-01-26 20:41:37', '$2y$10$sRf6BDt89iKcNCoChXcxB.VP6p0zbyZLhYs9HD2qfsO2YRmiaPNYq', 'dBelu63y2a', '2023-01-26 20:41:37', '2023-01-26 20:41:37'),
(2, 'Rawuh Mewah', 'Ahmad', 'ahmad@gmail.com', '2023-01-26 20:41:37', '$2y$10$hFKfYxkF16tCdp/YtUYtrulCij8VHwhVrvpwxN3iDVNbsYILjHz.C', 'kmWFHUSaSk', '2023-01-26 20:41:37', '2023-01-26 20:41:37'),
(3, 'Burjo Mewah', 'Pak burjo', 'burjo@gmail.com', '2023-01-26 20:41:37', '$2y$10$n5yElnfzuZ5AWRRIy1sneulDsWqRBjcYsBdiljq2ovfKYimjfIwoO', 'gELKB6134A', '2023-01-26 20:41:37', '2023-01-26 20:41:37');

-- --------------------------------------------------------

--
-- Table structure for table `detail_pesanans`
--

CREATE TABLE `detail_pesanans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pesanan_id` bigint(20) UNSIGNED DEFAULT NULL,
  `menu_id` bigint(20) UNSIGNED NOT NULL,
  `codepesan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jumlah` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subharga` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `detail_pesanans`
--

INSERT INTO `detail_pesanans` (`id`, `pesanan_id`, `menu_id`, `codepesan`, `jumlah`, `subharga`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'qwe123', '1', '18000', '2023-01-26 20:41:37', '2023-01-26 20:41:37'),
(2, 1, 4, 'qwe123', '1', '4000', '2023-01-26 20:41:37', '2023-01-26 20:41:37'),
(3, 2, 7, '321ewq', '1', '15000', '2023-01-26 20:41:37', '2023-01-26 20:41:37'),
(4, 2, 8, '321ewq', '1', '4000', '2023-01-26 20:41:37', '2023-01-26 20:41:37'),
(5, 3, 5, '4324', '1', '18000', '2023-01-26 20:41:37', '2023-01-26 20:41:37'),
(6, 3, 6, '4324', '1', '10000', '2023-01-26 20:41:37', '2023-01-26 20:41:37'),
(7, 3, 7, '4324', '1', '15000', '2023-01-26 20:41:37', '2023-01-26 20:41:37'),
(8, 3, 8, '4324', '1', '4000', '2023-01-26 20:41:37', '2023-01-26 20:41:37'),
(9, 4, 7, '432ter', '1', '15000', '2023-01-26 20:41:37', '2023-01-26 20:41:37'),
(10, 4, 8, '432ter', '1', '4000', '2023-01-26 20:41:37', '2023-01-26 20:41:37'),
(11, 5, 7, 'qwewer', '1', '15000', '2023-01-26 20:41:37', '2023-01-26 20:41:37'),
(12, 5, 8, 'qwewer', '1', '4000', '2023-01-26 20:41:37', '2023-01-26 20:41:37'),
(13, 6, 5, 'dfgdfg', '1', '18000', '2023-01-26 20:41:37', '2023-01-26 20:41:37'),
(14, 6, 6, 'dfgdfg', '1', '10000', '2023-01-26 20:41:37', '2023-01-26 20:41:37'),
(15, 6, 7, 'dfgdfg', '1', '15000', '2023-01-26 20:41:37', '2023-01-26 20:41:37'),
(16, 6, 8, 'dfgdfg', '1', '4000', '2023-01-26 20:41:37', '2023-01-26 20:41:37'),
(17, NULL, 5, '5VZWyW1pFo', '3', '54000', '2023-01-26 21:06:57', '2023-01-26 21:06:57'),
(18, NULL, 6, '5VZWyW1pFo', '3', '30000', '2023-01-26 21:06:57', '2023-01-26 21:06:57');

-- --------------------------------------------------------

--
-- Table structure for table `kategoris`
--

CREATE TABLE `kategoris` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `adminrm_id` bigint(20) UNSIGNED NOT NULL,
  `namakategori` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `published_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kategoris`
--

INSERT INTO `kategoris` (`id`, `adminrm_id`, `namakategori`, `published_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'Makanan', NULL, '2023-01-26 20:41:37', '2023-01-26 20:41:37'),
(2, 1, 'Minuman', NULL, '2023-01-26 20:41:37', '2023-01-26 20:41:37'),
(3, 1, 'Lalapan', NULL, '2023-01-26 20:41:37', '2023-01-26 20:41:37'),
(4, 2, 'Makanan', NULL, '2023-01-26 20:41:37', '2023-01-26 20:41:37'),
(5, 2, 'Minuman', NULL, '2023-01-26 20:41:37', '2023-01-26 20:41:37'),
(6, 2, 'Lalapan', NULL, '2023-01-26 20:41:37', '2023-01-26 20:41:37'),
(7, 3, 'Makanan', NULL, '2023-01-26 20:41:37', '2023-01-26 20:41:37'),
(8, 3, 'Minuman', NULL, '2023-01-26 20:41:37', '2023-01-26 20:41:37'),
(9, 3, 'Lalapan', NULL, '2023-01-26 20:41:37', '2023-01-26 20:41:37');

-- --------------------------------------------------------

--
-- Table structure for table `meja_r_m_s`
--

CREATE TABLE `meja_r_m_s` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `adminrm_id` bigint(20) UNSIGNED NOT NULL,
  `no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pesan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qr` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `published_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `meja_r_m_s`
--

INSERT INTO `meja_r_m_s` (`id`, `adminrm_id`, `no`, `pesan`, `link`, `qr`, `published_at`, `created_at`, `updated_at`) VALUES
(1, 1, '1', 'Scan Untuk Memesan', 'http://127.0.0.1:8000/pesan/1/1', 'qr-code.png', NULL, '2023-01-26 20:41:37', '2023-01-26 20:41:37'),
(2, 1, '2', 'Scan Untuk Memesan', 'http://127.0.0.1:8000/pesan/2/1', 'qr-code.png', NULL, '2023-01-26 20:41:37', '2023-01-26 20:41:37'),
(3, 1, '3', 'Scan Untuk Memesan', 'http://127.0.0.1:8000/pesan/3/1', 'qr-code.png', NULL, '2023-01-26 20:41:37', '2023-01-26 20:41:37'),
(4, 1, '4', 'Scan Untuk Memesan', 'http://127.0.0.1:8000/pesan/4/1', 'qr-code.png', NULL, '2023-01-26 20:41:37', '2023-01-26 20:41:37'),
(5, 1, '5', 'Scan Untuk Memesan', 'http://127.0.0.1:8000/pesan/5/1', 'qr-code.png', NULL, '2023-01-26 20:41:37', '2023-01-26 20:41:37'),
(6, 1, '6', 'Scan Untuk Memesan', 'http://127.0.0.1:8000/pesan/6/1', 'qr-code.png', NULL, '2023-01-26 20:41:37', '2023-01-26 20:41:37'),
(7, 1, '7', 'Scan Untuk Memesan', 'http://127.0.0.1:8000/pesan/7/1', 'qr-code.png', NULL, '2023-01-26 20:41:37', '2023-01-26 20:41:37'),
(8, 1, '8', 'Scan Untuk Memesan', 'http://127.0.0.1:8000/pesan/8/1', 'qr-code.png', NULL, '2023-01-26 20:41:37', '2023-01-26 20:41:37'),
(9, 1, '9', 'Scan Untuk Memesan', 'http://127.0.0.1:8000/pesan/9/1', 'qr-code.png', NULL, '2023-01-26 20:41:37', '2023-01-26 20:41:37'),
(10, 2, '1', 'Scan Untuk Memesan', 'http://127.0.0.1:8000/pesan/1/2', 'qr-code.png', NULL, '2023-01-26 20:41:37', '2023-01-26 20:41:37'),
(11, 2, '2', 'Scan Untuk Memesan', 'http://127.0.0.1:8000/pesan/2/2', 'qr-code.png', NULL, '2023-01-26 20:41:37', '2023-01-26 20:41:37'),
(12, 2, '3', 'Scan Untuk Memesan', 'http://127.0.0.1:8000/pesan/3/2', 'qr-code.png', NULL, '2023-01-26 20:41:37', '2023-01-26 20:41:37'),
(13, 2, '4', 'Scan Untuk Memesan', 'http://127.0.0.1:8000/pesan/4/2', 'qr-code.png', NULL, '2023-01-26 20:41:37', '2023-01-26 20:41:37'),
(14, 2, '5', 'Scan Untuk Memesan', 'http://127.0.0.1:8000/pesan/5/2', 'qr-code.png', NULL, '2023-01-26 20:41:37', '2023-01-26 20:41:37'),
(15, 2, '6', 'Scan Untuk Memesan', 'http://127.0.0.1:8000/pesan/6/2', 'qr-code.png', NULL, '2023-01-26 20:41:37', '2023-01-26 20:41:37'),
(16, 2, '7', 'Scan Untuk Memesan', 'http://127.0.0.1:8000/pesan/7/2', 'qr-code.png', NULL, '2023-01-26 20:41:37', '2023-01-26 20:41:37'),
(17, 2, '8', 'Scan Untuk Memesan', 'http://127.0.0.1:8000/pesan/8/2', 'qr-code.png', NULL, '2023-01-26 20:41:37', '2023-01-26 20:41:37'),
(18, 2, '9', 'Scan Untuk Memesan', 'http://127.0.0.1:8000/pesan/9/2', 'qr-code.png', NULL, '2023-01-26 20:41:37', '2023-01-26 20:41:37'),
(19, 3, '1', 'Scan Untuk Memesan', 'http://127.0.0.1:8000/pesan/1/3', 'qr-code.png', NULL, '2023-01-26 20:41:37', '2023-01-26 20:41:37'),
(20, 3, '2', 'Scan Untuk Memesan', 'http://127.0.0.1:8000/pesan/2/3', 'qr-code.png', NULL, '2023-01-26 20:41:37', '2023-01-26 20:41:37'),
(21, 3, '3', 'Scan Untuk Memesan', 'http://127.0.0.1:8000/pesan/3/3', 'qr-code.png', NULL, '2023-01-26 20:41:37', '2023-01-26 20:41:37'),
(22, 3, '4', 'Scan Untuk Memesan', 'http://127.0.0.1:8000/pesan/4/3', 'qr-code.png', NULL, '2023-01-26 20:41:37', '2023-01-26 20:41:37'),
(23, 3, '5', 'Scan Untuk Memesan', 'http://127.0.0.1:8000/pesan/5/3', 'qr-code.png', NULL, '2023-01-26 20:41:37', '2023-01-26 20:41:37'),
(24, 3, '6', 'Scan Untuk Memesan', 'http://127.0.0.1:8000/pesan/6/3', 'qr-code.png', NULL, '2023-01-26 20:41:37', '2023-01-26 20:41:37'),
(25, 3, '7', 'Scan Untuk Memesan', 'http://127.0.0.1:8000/pesan/7/3', 'qr-code.png', NULL, '2023-01-26 20:41:37', '2023-01-26 20:41:37'),
(26, 3, '8', 'Scan Untuk Memesan', 'http://127.0.0.1:8000/pesan/8/3', 'qr-code.png', NULL, '2023-01-26 20:41:37', '2023-01-26 20:41:37'),
(27, 3, '9', 'Scan Untuk Memesan', 'http://127.0.0.1:8000/pesan/9/3', 'qr-code.png', NULL, '2023-01-26 20:41:37', '2023-01-26 20:41:37');

-- --------------------------------------------------------

--
-- Table structure for table `menu_r_m_s`
--

CREATE TABLE `menu_r_m_s` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `adminrm_id` bigint(20) UNSIGNED NOT NULL,
  `kategori_id` bigint(20) UNSIGNED NOT NULL,
  `menu` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desmenu` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `harga` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('tersedia','taktersedia') COLLATE utf8mb4_unicode_ci NOT NULL,
  `published_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_r_m_s`
--

INSERT INTO `menu_r_m_s` (`id`, `adminrm_id`, `kategori_id`, `menu`, `desmenu`, `harga`, `img`, `status`, `published_at`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Mie Ayam Bakso', 'Mie ayam Bakso, Dengan rasa yang kuat dan pas', '18000', 'menu-img/mie ayam bakso.png', 'tersedia', NULL, '2023-01-26 20:41:37', '2023-01-26 20:41:37'),
(2, 1, 1, 'Mie Ayam', 'Mie ayam, Dengan rasa yang kuat dan pas, terenak sejagat Wonogiri', '10000', 'menu-img/mie ayam1.jpg', 'tersedia', NULL, '2023-01-26 20:41:37', '2023-01-26 20:41:37'),
(3, 1, 1, 'Bakso', 'Bakso, Dengan rasa yang kuat dan pas, terenak sejagat Wonogiri', '15000', 'menu-img/bakso.jpeg', 'taktersedia', NULL, '2023-01-26 20:41:37', '2023-01-26 20:41:37'),
(4, 1, 2, 'Teh Kuli', 'Teh pilihanx dengan porsi kuli', '4000', 'menu-img/teh kuli.jpg', 'taktersedia', NULL, '2023-01-26 20:41:37', '2023-01-26 20:41:37'),
(5, 2, 4, 'Sate', 'Sate dengan daging pilihan dan posrsi pas', '18000', 'menu-img/sate.jpg', 'tersedia', NULL, '2023-01-26 20:41:37', '2023-01-26 20:41:37'),
(6, 2, 4, 'Soto Ayam', 'Soto ter lezzat', '10000', 'menu-img/sotoayam.jpg', 'tersedia', NULL, '2023-01-26 20:41:37', '2023-01-26 20:41:37'),
(7, 2, 4, 'Sop Iga', 'Sop Iga dengan gaging tulang yang pas', '15000', 'menu-img/sop iga.jpg', 'tersedia', NULL, '2023-01-26 20:41:37', '2023-01-26 23:03:39'),
(8, 2, 5, 'Wedang Jahe', 'Wedang Jahe dengan jahe dataran tinggi terbaik', '4000', 'menu-img/wedang jahe.jpg', 'tersedia', NULL, '2023-01-26 20:41:37', '2023-01-26 23:03:47'),
(9, 3, 7, 'Nasi Goreng Spesial', 'Nasi Goreng Spesial Paling enak', '12000', 'menu-img/nasi goreng spesial.jpg', 'tersedia', NULL, '2023-01-26 20:41:37', '2023-01-26 20:41:37'),
(10, 3, 7, 'Nasi Uduj', 'Nasi Uduk dengan lauk lengkap', '10000', 'menu-img/nasi uduk.jpg', 'tersedia', NULL, '2023-01-26 20:41:37', '2023-01-26 20:41:37'),
(11, 3, 7, 'Nasi Liwet', 'Nasi Liwet enak jos gandos', '13000', 'menu-img/nasi liwet.jpg', 'taktersedia', NULL, '2023-01-26 20:41:37', '2023-01-26 20:41:37'),
(12, 3, 8, 'Susu', 'Susu Segar', '5000', 'menu-img/susu.png', 'taktersedia', NULL, '2023-01-26 20:41:37', '2023-01-26 20:41:37');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(4, '2023_01_25_033408_create_adminrms_table', 1),
(5, '2023_01_25_033557_create_kategoris_table', 1),
(6, '2023_01_25_033847_create_meja_r_m_s_table', 1),
(7, '2023_01_25_033859_create_menu_r_m_s_table', 1),
(8, '2023_01_25_033928_create_pembayarans_table', 1),
(9, '2023_01_25_034000_create_pesanans_table', 1),
(10, '2023_01_25_034235_create_detail_pesanans_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pembayarans`
--

CREATE TABLE `pembayarans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `adminrm_id` bigint(20) UNSIGNED NOT NULL,
  `namapembayaran` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qrpembayaran` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pembayarans`
--

INSERT INTO `pembayarans` (`id`, `adminrm_id`, `namapembayaran`, `qrpembayaran`, `created_at`, `updated_at`) VALUES
(1, 1, 'cash', '', '2023-01-26 20:41:37', '2023-01-26 20:41:37'),
(2, 1, 'Qris', 'pay-img/qrShopee.jpg', '2023-01-26 20:41:37', '2023-01-26 20:41:37'),
(3, 2, 'cash', '', '2023-01-26 20:41:37', '2023-01-26 20:41:37'),
(4, 2, 'Qris', 'pay-img/qrShopee.jpg', '2023-01-26 20:41:37', '2023-01-26 20:41:37'),
(5, 3, 'cash', '', '2023-01-26 20:41:37', '2023-01-26 20:41:37'),
(6, 3, 'Qris', 'pay-img/qrShopee.jpg', '2023-01-26 20:41:37', '2023-01-26 20:41:37');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pesanans`
--

CREATE TABLE `pesanans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `adminrm_id` bigint(20) UNSIGNED NOT NULL,
  `meja_id` bigint(20) UNSIGNED NOT NULL,
  `jenispembayaran_id` bigint(20) UNSIGNED NOT NULL,
  `codepesan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `namapemesan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `totalharga` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `statuspesanan` enum('diterima','diproses','selesai') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pesanans`
--

INSERT INTO `pesanans` (`id`, `adminrm_id`, `meja_id`, `jenispembayaran_id`, `codepesan`, `namapemesan`, `totalharga`, `statuspesanan`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 1, 'qwe123', 'Joko', '22000', 'diterima', '2023-01-26 20:41:37', '2023-01-26 20:41:37'),
(2, 2, 10, 1, '321ewq', 'Milla', '19000', 'selesai', '2023-01-26 20:41:37', '2023-01-26 23:54:59'),
(3, 2, 11, 1, '4324', 'Nisa', '47000', 'diterima', '2023-01-26 20:41:37', '2023-01-26 20:41:37'),
(4, 2, 12, 1, '432ter', 'Fikri', '19000', 'diterima', '2023-01-26 20:41:37', '2023-01-26 20:41:37'),
(5, 2, 13, 1, 'qwewer', 'Fathuni', '19000', 'diproses', '2023-01-26 20:41:37', '2023-01-26 23:55:08'),
(6, 2, 14, 1, 'dfgdfg', 'Jokos', '47000', 'diterima', '2023-01-26 20:41:37', '2023-01-26 20:41:37'),
(7, 2, 1, 3, '5VZWyW1pFo', 'hika', '84000', 'diterima', '2023-01-26 21:06:57', '2023-01-26 21:06:57');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adminrms`
--
ALTER TABLE `adminrms`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `adminrms_email_unique` (`email`);

--
-- Indexes for table `detail_pesanans`
--
ALTER TABLE `detail_pesanans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kategoris`
--
ALTER TABLE `kategoris`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `meja_r_m_s`
--
ALTER TABLE `meja_r_m_s`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu_r_m_s`
--
ALTER TABLE `menu_r_m_s`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `pembayarans`
--
ALTER TABLE `pembayarans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `pesanans`
--
ALTER TABLE `pesanans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adminrms`
--
ALTER TABLE `adminrms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `detail_pesanans`
--
ALTER TABLE `detail_pesanans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `kategoris`
--
ALTER TABLE `kategoris`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `meja_r_m_s`
--
ALTER TABLE `meja_r_m_s`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `menu_r_m_s`
--
ALTER TABLE `menu_r_m_s`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `pembayarans`
--
ALTER TABLE `pembayarans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pesanans`
--
ALTER TABLE `pesanans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
