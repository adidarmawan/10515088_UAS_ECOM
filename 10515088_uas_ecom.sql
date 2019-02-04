-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 04 Feb 2019 pada 10.21
-- Versi server: 10.1.33-MariaDB
-- Versi PHP: 7.2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `10515088_uas_ecom`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_01_30_171157_create_table_kelas', 1),
(2, '2019_01_31_095657_create_table_user', 2),
(3, '2019_01_31_121640_create_table_user', 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_kelas`
--

CREATE TABLE `t_kelas` (
  `id_kelas` int(10) UNSIGNED NOT NULL,
  `nama_kelas` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jurusan` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `t_kelas`
--

INSERT INTO `t_kelas` (`id_kelas`, `nama_kelas`, `jurusan`, `created_at`, `updated_at`) VALUES
(1, 'XII-RPL1', 'Rekayasa Perangkat Lunak', '2019-02-04 04:07:49', '2019-02-04 04:07:49'),
(2, 'XII-RPL2', 'Rekayasa Perangkat Lunak', '2019-02-04 04:08:51', '2019-02-04 04:08:51'),
(3, 'XII-RPL3', 'Rekayasa Perangkat Lunak', '2019-02-04 04:09:18', '2019-02-04 04:09:18'),
(4, 'XII-MM', 'Multimedia', '2019-02-04 04:09:40', '2019-02-04 04:09:40'),
(5, 'XII-TKJ1', 'Teknik Komputer Jaringan', '2019-02-04 04:10:10', '2019-02-04 04:10:10'),
(6, 'XII-TKJ2', 'Teknik Komputer Jaringan', '2019-02-04 04:10:34', '2019-02-04 04:10:34'),
(7, 'XII-AVI1', 'Audio Video', '2019-02-04 04:11:05', '2019-02-04 04:11:05'),
(8, 'TB-1', 'Tataboga', '2019-02-04 00:37:09', '2019-02-04 00:37:09');

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_login`
--

CREATE TABLE `t_login` (
  `id_login` int(10) UNSIGNED NOT NULL,
  `nama_user` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `t_login`
--

INSERT INTO `t_login` (`id_login`, `nama_user`, `username`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin', '$2y$10$4Nq5ZYamVa21Q/ajKXhAgeHj6hVDrSL5V13EPnjE6tEfYAN8hYH9W', '3RwH76ZBH9UvBqM6r6BArdnk2ws0Pnd1YoHhFI4QZVpiUOQ1Qs3La6Y9ZovV', '2019-01-31 05:30:20', '2019-01-31 05:30:20');

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_siswa`
--

CREATE TABLE `t_siswa` (
  `nis` int(11) NOT NULL,
  `nama_lengkap` varchar(100) NOT NULL,
  `jenis_kelamin` varchar(1) NOT NULL,
  `alamat` text NOT NULL,
  `no_telp` varchar(255) NOT NULL,
  `id_kelas` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `foto` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `t_siswa`
--

INSERT INTO `t_siswa` (`nis`, `nama_lengkap`, `jenis_kelamin`, `alamat`, `no_telp`, `id_kelas`, `created_at`, `updated_at`, `foto`) VALUES
(10515075, 'Steward Tumbal', 'L', 'Jl Sekeloa 16 Bandung', '0876534261727', 2, '2019-02-04 00:36:38', '2019-02-04 00:36:38', '10515075.jpg'),
(10515088, 'Adi Darmawan', 'L', 'Jl Cemara IV no 15 Bandung', '081223681805', 1, '2019-02-04 00:35:43', '2019-02-04 00:35:43', '10515088.png');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `t_kelas`
--
ALTER TABLE `t_kelas`
  ADD PRIMARY KEY (`id_kelas`);

--
-- Indeks untuk tabel `t_login`
--
ALTER TABLE `t_login`
  ADD PRIMARY KEY (`id_login`);

--
-- Indeks untuk tabel `t_siswa`
--
ALTER TABLE `t_siswa`
  ADD PRIMARY KEY (`nis`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `t_kelas`
--
ALTER TABLE `t_kelas`
  MODIFY `id_kelas` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `t_login`
--
ALTER TABLE `t_login`
  MODIFY `id_login` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
