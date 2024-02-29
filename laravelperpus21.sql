-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 04 Mar 2023 pada 02.32
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravelperpus21`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `anggota`
--

CREATE TABLE `anggota` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nomeridentitas` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `agama` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tempatlahir` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tgllahir` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alamat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jk` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tipe` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sekolahasal` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gambar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `buku`
--

CREATE TABLE `buku` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `isbn` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pengarang` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tempatterbit` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `penerbit` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tahunterbit` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bahasa` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bukukategori_nama` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bukukategori_ddc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gambar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `rak` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'Rak 1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `bukudetail`
--

CREATE TABLE `bukudetail` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `buku_kode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `buku_nama` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `buku_isbn` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `buku_penerbit` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `buku_tahunterbit` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `buku_pengarang` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `buku_tempatterbit` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `buku_bahasa` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bukukategori_nama` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bukukategori_ddc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kondisi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `bukudigital`
--

CREATE TABLE `bukudigital` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gambar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ket` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tipe` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prefix` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id`, `nama`, `kode`, `prefix`, `created_at`, `updated_at`) VALUES
(1, 'Agama', '1-200', 'ddc', '2023-03-04 01:27:41', '2023-03-04 01:27:41'),
(2, 'Bahasa', '201-400', 'ddc', '2023-03-04 01:27:41', '2023-03-04 01:27:41'),
(3, 'Sejarah', '401-600', 'ddc', '2023-03-04 01:27:41', '2023-03-04 01:27:41'),
(4, 'Teknologi', '601-800', 'ddc', '2023-03-04 01:27:41', '2023-03-04 01:27:41'),
(5, 'Siswa', NULL, 'tipeanggota', '2023-03-04 01:27:41', '2023-03-04 01:27:41'),
(6, 'Umum', NULL, 'tipeanggota', '2023-03-04 01:27:41', '2023-03-04 01:27:41'),
(7, 'Bagus', NULL, 'kondisi', '2023-03-04 01:27:41', '2023-03-04 01:27:41'),
(8, 'Layak', NULL, 'kondisi', '2023-03-04 01:27:41', '2023-03-04 01:27:41'),
(9, 'Tidak Layak', NULL, 'kondisi', '2023-03-04 01:27:41', '2023-03-04 01:27:41'),
(10, 'Umum', NULL, 'tipeperalatan', '2023-03-04 01:27:41', '2023-03-04 01:27:41');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kelas`
--

CREATE TABLE `kelas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `kelas`
--

INSERT INTO `kelas` (`id`, `nama`, `created_at`, `updated_at`) VALUES
(1, 'VI IA', '2023-03-04 01:27:41', '2023-03-04 01:27:41'),
(2, 'VII B', '2023-03-04 01:27:41', '2023-03-04 01:27:41'),
(3, 'VIII A', '2023-03-04 01:27:41', '2023-03-04 01:27:41'),
(4, 'VIII B', '2023-03-04 01:27:41', '2023-03-04 01:27:41');

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2021_08_04_120627_create_tapel_table', 1),
(7, '2021_08_04_120649_create_kelas_table', 1),
(8, '2021_08_04_120712_create_siswa_table', 1),
(9, '2021_08_04_121604_create_kategori_table', 1),
(10, '2021_08_04_121943_add_tipeuser_on_user_table', 1),
(11, '2021_08_04_141828_create_sessions_table', 1),
(12, '2021_08_06_155146_create_settings_table', 1),
(13, '2021_09_18_004856_create_anggota_table', 1),
(14, '2021_09_18_005131_create_peralatan_table', 1),
(15, '2021_09_18_005212_create_peminjaman_table', 1),
(16, '2021_09_18_005240_create_peminjamandetail_table', 1),
(17, '2021_09_18_005258_create_pengembalian_table', 1),
(18, '2021_09_18_005313_create_pengembaliandetail_table', 1),
(19, '2021_09_18_005516_create_buku_table', 1),
(20, '2021_09_18_005535_create_bukurak_table', 1),
(21, '2021_09_18_005600_create_bukudetail_table', 1),
(22, '2021_09_21_185418_create_pemasukan_dan_pengeluaran__table', 1),
(23, '2021_09_23_124237_create_pengunjung_table', 1),
(24, '2021_10_06_162113_add_kop1_kop2_settings_table', 1),
(25, '2021_10_06_191340_create_bukudigital_table', 1),
(26, '2022_06_19_212247_add_rak_on_buku_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pemasukan`
--

CREATE TABLE `pemasukan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nominal` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kategori_nama` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tglbayar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `catatan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `peminjaman`
--

CREATE TABLE `peminjaman` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kodetrans` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nomeridentitas` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jaminan_nama` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jaminan_tipe` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tgl_pinjam` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tgl_harus_kembali` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `denda` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `peminjamandetail`
--

CREATE TABLE `peminjamandetail` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kodetrans` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `buku_isbn` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nomeridentitas` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `buku_nama` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `buku_kode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `buku_penerbit` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `buku_tahunterbit` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `buku_pengarang` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `buku_tempatterbit` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `buku_bahasa` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bukukategori_nama` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bukukategori_ddc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jaminan_nama` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jaminan_tipe` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tgl_pinjam` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tgl_harus_kembali` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `denda` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `statuspengembalian` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengeluaran`
--

CREATE TABLE `pengeluaran` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nominal` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kategori_nama` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tglbayar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `catatan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengembalian`
--

CREATE TABLE `pengembalian` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kodetrans` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nomeridentitas` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jaminan_nama` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jaminan_tipe` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tgl_pinjam` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tgl_harus_kembali` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `denda` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `totaldendaakhir` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengembaliandetail`
--

CREATE TABLE `pengembaliandetail` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kodetrans` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `buku_isbn` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nomeridentitas` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `buku_nama` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `buku_kode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `buku_penerbit` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `buku_tahunterbit` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `buku_pengarang` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `buku_tempatterbit` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `buku_bahasa` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bukukategori_nama` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bukukategori_ddc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jaminan_nama` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jaminan_tipe` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tgl_pinjam` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tgl_harus_kembali` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tgl_dikembalikan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `totaldenda` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengunjung`
--

CREATE TABLE `pengunjung` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nomeridentitas` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tipe` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tgl` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `peralatan`
--

CREATE TABLE `peralatan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kategori_nama` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tgl_masuk` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kondisi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('12Hc6hY61CqTGALdGBuWKlF9TCgW97bJSQRHEmxO', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiR0pGTXZvMzJDUlM3ZGpTRFdadW01Vk8wb2I2U2lDWnFGTnk2TENVZSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1677893518);

-- --------------------------------------------------------

--
-- Struktur dari tabel `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `paginationjml` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sekolahnama` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sekolahalamat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sekolahtelp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aplikasijudul` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aplikasijudulsingkat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `defaultdenda` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `defaultminbayar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `defaultmaxbukupinjam` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `defaultmaxharipinjam` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `passdefaultpegawai` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `passdefaultadmin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sekolahlogo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sekolahttd` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sekolahttd2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `kop1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kop2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kop3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kop4` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `settings`
--

INSERT INTO `settings` (`id`, `paginationjml`, `sekolahnama`, `sekolahalamat`, `sekolahtelp`, `aplikasijudul`, `aplikasijudulsingkat`, `defaultdenda`, `defaultminbayar`, `defaultmaxbukupinjam`, `defaultmaxharipinjam`, `passdefaultpegawai`, `passdefaultadmin`, `sekolahlogo`, `sekolahttd`, `sekolahttd2`, `created_at`, `updated_at`, `kop1`, `kop2`, `kop3`, `kop4`) VALUES
(1, '10', 'SMP ABCD 01 Malang', 'Alamat : Jl. Kendalpayak No.98 Pakisaji - Malang', '0341-123456', 'PERPUSTAKAAN', 'SP', '7000', '100', '10', '7', 'perpus123', 'perpus123', '', 'Kepala Perpustakaan', 'Nama Kepala Sekolah M.Pd', '2023-03-04 01:27:41', '2023-03-04 01:27:41', 'YAYASAN PENDIDIKAN ISLAM', 'MTS SHIROTHUL FUQOHA', 'KENDAL PAYAK - KECAMATAN PAKISAJI - KABUPATEN MALANG', 'Alamat : Jl. Kendalpayak No.98 Pakisaji - Malang');

-- --------------------------------------------------------

--
-- Struktur dari tabel `siswa`
--

CREATE TABLE `siswa` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nis` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `agama` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tempatlahir` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tgllahir` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alamat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kelas_nama` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jk` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `siswa`
--

INSERT INTO `siswa` (`id`, `nama`, `nis`, `agama`, `tempatlahir`, `tgllahir`, `alamat`, `kelas_nama`, `jk`, `created_at`, `updated_at`) VALUES
(1, 'Paijo', '1', NULL, 'Malang', '2003-05-20', 'Desa Sumbersari Kecamatan Losari Kabupaten Trenggalek', 'VII A', 'Laki-laki', '2023-03-04 01:27:40', '2023-03-04 01:27:40');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tapel`
--

CREATE TABLE `tapel` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tipeuser` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nomerinduk` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`, `username`, `tipeuser`, `nomerinduk`) VALUES
(1, 'Admin', 'admin@gmail,com', NULL, '$2y$10$dFcl6J/75kcsFopcmNNn5OKhbIBCwR0ZSalda9kombjEfvH6FP68G', NULL, NULL, NULL, NULL, NULL, '2023-03-04 01:27:40', '2023-03-04 01:27:40', 'admin', 'admin', '123'),
(2, 'Pustakawan', 'pustakawan@gmail.com', NULL, '$2y$10$r8cugFlZ7OsY50y.AoXDJ.OEPBT.GpXIdtqRA3zS0wtoX53fDf4h6', NULL, NULL, NULL, NULL, NULL, '2023-03-04 01:27:40', '2023-03-04 01:27:40', 'pustakawan', 'pustakawan', '111');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `anggota`
--
ALTER TABLE `anggota`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `bukudetail`
--
ALTER TABLE `bukudetail`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `bukudigital`
--
ALTER TABLE `bukudigital`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `pemasukan`
--
ALTER TABLE `pemasukan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `peminjamandetail`
--
ALTER TABLE `peminjamandetail`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pengeluaran`
--
ALTER TABLE `pengeluaran`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pengembalian`
--
ALTER TABLE `pengembalian`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pengembaliandetail`
--
ALTER TABLE `pengembaliandetail`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pengunjung`
--
ALTER TABLE `pengunjung`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `peralatan`
--
ALTER TABLE `peralatan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indeks untuk tabel `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tapel`
--
ALTER TABLE `tapel`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `anggota`
--
ALTER TABLE `anggota`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `buku`
--
ALTER TABLE `buku`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `bukudetail`
--
ALTER TABLE `bukudetail`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `bukudigital`
--
ALTER TABLE `bukudigital`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `kelas`
--
ALTER TABLE `kelas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT untuk tabel `pemasukan`
--
ALTER TABLE `pemasukan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `peminjaman`
--
ALTER TABLE `peminjaman`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `peminjamandetail`
--
ALTER TABLE `peminjamandetail`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pengeluaran`
--
ALTER TABLE `pengeluaran`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pengembalian`
--
ALTER TABLE `pengembalian`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pengembaliandetail`
--
ALTER TABLE `pengembaliandetail`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pengunjung`
--
ALTER TABLE `pengunjung`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `peralatan`
--
ALTER TABLE `peralatan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tapel`
--
ALTER TABLE `tapel`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
