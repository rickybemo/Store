-- phpMyAdmin SQL Dump
-- version 4.9.11
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 13 Mar 2023 pada 00.48
-- Versi server: 10.5.19-MariaDB-cll-lve-log
-- Versi PHP: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `riostore_games`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `apigames`
--

CREATE TABLE `apigames` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `secret` text NOT NULL,
  `merchant` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `apigames`
--

INSERT INTO `apigames` (`id`, `secret`, `merchant`, `created_at`, `updated_at`) VALUES
(1, '44343e5f9923a2f43346dc2163895c7ecee78c67176f5ac3836dfbec138d9123', 'M230117UJHF3430QOZ', '2022-12-14 11:18:26', '2023-01-27 18:03:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `api_checks`
--

CREATE TABLE `api_checks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` text NOT NULL,
  `provider` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `api_checks`
--

INSERT INTO `api_checks` (`id`, `key`, `provider`, `created_at`, `updated_at`) VALUES
(1, 'Rioichistore', 'rioichi', '2022-12-14 11:25:39', '2023-03-04 18:10:38'),
(2, 'noirexv-api', 'lolhuman', '2022-12-14 11:25:55', '2022-12-14 11:25:55');

-- --------------------------------------------------------

--
-- Struktur dari tabel `beritas`
--

CREATE TABLE `beritas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `path` varchar(255) NOT NULL,
  `tipe` varchar(255) NOT NULL,
  `deskripsi` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `deposits`
--

CREATE TABLE `deposits` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) NOT NULL,
  `metode` varchar(255) NOT NULL,
  `no_pembayaran` varchar(255) NOT NULL,
  `jumlah` bigint(20) NOT NULL,
  `status` enum('Success','Pending') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `deposits`
--

INSERT INTO `deposits` (`id`, `username`, `metode`, `no_pembayaran`, `jumlah`, `status`, `created_at`, `updated_at`) VALUES
(1, 'fafta123', 'QRIS', '', 1725, 'Pending', '2022-09-12 16:11:26', '2022-09-12 16:11:26'),
(2, 'delalala', 'QRIS', '', 10600, 'Success', '2022-09-30 16:15:45', '2022-10-08 13:20:48'),
(3, 'Usman0', 'BCA', '3890682404 AN D*** F******* P*******', 111136, 'Pending', '2022-10-18 00:36:31', '2022-10-18 00:36:31'),
(4, 'tesweb', 'QRIS', '', 100482, 'Pending', '2022-11-01 15:18:06', '2022-11-01 15:18:06'),
(5, 'gendevs', 'QRIS', '', 60319, 'Pending', '2022-11-13 20:48:08', '2022-11-13 20:48:08'),
(6, 'rmdhn298', 'QRIS', '', 800009, 'Pending', '2022-11-14 03:04:34', '2022-11-14 03:04:34'),
(7, 'rmdhn298', 'QRIS', '', 50563, 'Success', '2022-11-14 05:59:26', '2022-11-14 05:59:56'),
(8, 'rmdhn298', 'QRIS', '', 100148, 'Success', '2022-11-14 06:06:57', '2022-11-14 06:07:17'),
(9, 'rmdhn298', 'QRIS', '', 500126, 'Success', '2022-11-14 06:07:02', '2022-11-14 06:07:15'),
(10, 'rmdhn298', 'QRIS', '', 10629, 'Pending', '2022-11-14 06:49:40', '2022-11-14 06:49:40'),
(11, 'tuli123', 'QRIS', '', 50987, 'Pending', '2022-11-14 07:04:12', '2022-11-14 07:04:12'),
(12, 'rmdhn298', 'DANA', '085157979518', 12637, 'Pending', '2022-11-14 07:06:50', '2022-11-14 07:06:50'),
(13, 'rmdhn298', 'BCA', '7131425248', 100299, 'Pending', '2022-11-14 07:08:57', '2022-11-14 07:08:57'),
(14, 'rio', 'SHOPEPAY', '082118644605 Rio Pratama Putra', 12768, 'Success', '2022-11-20 14:21:04', '2022-11-20 23:57:09'),
(15, 'rio', 'QRIS', '', 100020, 'Success', '2022-11-20 23:56:22', '2022-11-20 23:57:06'),
(16, 'Iwan', 'BCA', '3431984413 Rio Pratama Putra', 20837, 'Pending', '2022-11-29 12:24:35', '2022-11-29 12:24:35'),
(17, 'Tester', 'QRIS', '', 10030, 'Success', '2022-12-06 13:41:21', '2022-12-07 03:42:48'),
(18, 'Tester', 'BCA', '3431984413 Rio Pratama Putra', 10476, 'Pending', '2022-12-06 13:41:33', '2022-12-06 13:41:33'),
(19, 'rio', 'QRIS', '', 100107, 'Success', '2022-12-15 12:22:14', '2022-12-15 12:22:37'),
(20, 'Akazin', 'QRIS', '', 90, 'Pending', '2022-12-24 13:07:43', '2022-12-24 13:07:43'),
(21, 'rio', 'QRIS', '', 1000090, 'Success', '2023-01-15 07:30:38', '2023-01-15 07:30:54'),
(22, 'Rio', 'BCA', '3431984413 Rio Pratama Putra', 300091, 'Success', '2023-02-04 16:13:59', '2023-02-04 16:14:12'),
(23, 'Rio', 'QRIS', '', 150042, 'Success', '2023-02-08 23:39:28', '2023-02-08 23:39:43'),
(24, 'heijessxyz', 'BCA', '3431984413 Rio Pratama Putra', 50175, 'Pending', '2023-03-01 06:41:12', '2023-03-01 06:41:12');

-- --------------------------------------------------------

--
-- Struktur dari tabel `digiflazz`
--

CREATE TABLE `digiflazz` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` text NOT NULL,
  `api_key` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `digiflazz`
--

INSERT INTO `digiflazz` (`id`, `username`, `api_key`, `created_at`, `updated_at`) VALUES
(1, 'sunologNzaLg', '8a27fa4b-5a77-53db-8683-6f6f40007628', '2022-12-12 09:11:02', '2023-01-15 07:44:02');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `gojeks`
--

CREATE TABLE `gojeks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `auth_token` varchar(2000) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `gojeks`
--

INSERT INTO `gojeks` (`id`, `auth_token`, `created_at`, `updated_at`) VALUES
(8, 'eyJhbGciOiJSUzI1NiIsImtpZCI6IiJ9.eyJhdWQiOlsiZ29qZWs6Y29uc3VtZXI6YXBwIl0sImRhdCI6eyJhY3RpdmUiOiJ0cnVlIiwiYmxhY2tsaXN0ZWQiOiJmYWxzZSIsImNvdW50cnlfY29kZSI6Iis2MiIsImNyZWF0ZWRfYXQiOiIyMDE4LTEyLTI0VDE5OjQwOjAwWiIsImVtYWlsIjoiYW9hb2FAYWlhb2EuY29tIiwiZW1haWxfdmVyaWZpZWQiOiJmYWxzZSIsImdvcGF5X2FjY291bnRfaWQiOiIwMS04NDI2ZDk1MjE3MDE0ZWQ0YjY3ZTA1ODUwZjM4OGNmZC0yNiIsIm5hbWUiOiJzamFpcyIsIm51bWJlciI6Ijg1ODg4MzI5NDMwIiwicGhvbmUiOiIrNjI4NTg4ODMyOTQzMCIsInNpZ25lZF91cF9jb3VudHJ5IjoiSUQiLCJ3YWxsZXRfaWQiOiIxODM1ODExODAzOTE5MDg3MzI1In0sImV4cCI6MTY2Mjk3MTcxOCwiaWF0IjoxNjYwMjEwNzIwLCJpc3MiOiJnb2lkIiwianRpIjoiMDUxMzg0ZGYtNDEzZS00YWU0LWFmMDAtMGI5ODQ5YjE2YTc3Iiwic2NvcGVzIjpbXSwic2lkIjoiMDI0YmUzNmYtZjAzZS00MjJkLTg3OWMtYjcyZTc3NjNhMDJjIiwic3ViIjoiY2Q2ZmEyYTUtYTdjNC00MmVkLWE1NzUtYzVhN2NiYTM4NDYxIiwidWlkIjoiNjE1OTg1ODUwIiwidXR5cGUiOiJjdXN0b21lciJ9.Hx5cCcc4-7UrD1SsMlss-_WNxEnrCFDCgBNNZS6ehcO8l2pqEh6ZgaCmnL6B2bBTmMFY46FGDA8mMOIKbrFdYRKMUrytGuf7a1wSjsgN3ZMsGxrSxh7B6HMvnHoWStGBRO-vDCuXotXHeavZjY6sHKiYWHpf5q_SsV9cc3qPEf0', '2022-08-11 09:38:41', '2022-08-11 09:38:41'),
(9, 'eyJhbGciOiJSUzI1NiIsImtpZCI6IiJ9.eyJhdWQiOlsiZ29qZWs6Y29uc3VtZXI6YXBwIl0sImRhdCI6eyJhY3RpdmUiOiJ0cnVlIiwiYmxhY2tsaXN0ZWQiOiJmYWxzZSIsImNvdW50cnlfY29kZSI6Iis2MiIsImNyZWF0ZWRfYXQiOiIyMDE4LTEyLTI0VDE5OjQwOjAwWiIsImVtYWlsIjoiYW9hb2FAYWlhb2EuY29tIiwiZW1haWxfdmVyaWZpZWQiOiJmYWxzZSIsImdvcGF5X2FjY291bnRfaWQiOiIwMS04NDI2ZDk1MjE3MDE0ZWQ0YjY3ZTA1ODUwZjM4OGNmZC0yNiIsIm5hbWUiOiJzamFpcyIsIm51bWJlciI6Ijg1ODg4MzI5NDMwIiwicGhvbmUiOiIrNjI4NTg4ODMyOTQzMCIsInNpZ25lZF91cF9jb3VudHJ5IjoiSUQiLCJ3YWxsZXRfaWQiOiIxODM1ODExODAzOTE5MDg3MzI1In0sImV4cCI6MTY2NDIwODgzMSwiaWF0IjoxNjYxMzM2OTI1LCJpc3MiOiJnb2lkIiwianRpIjoiNzU4OTI4NjgtNzkxMy00MGU0LWE2ZGUtYjgzMDc0YjkxNmNlIiwic2NvcGVzIjpbXSwic2lkIjoiMDMyNmJmOTEtOTM3OC00YWIxLTllZGUtOTdjZTJiYmQ0M2MwIiwic3ViIjoiY2Q2ZmEyYTUtYTdjNC00MmVkLWE1NzUtYzVhN2NiYTM4NDYxIiwidWlkIjoiNjE1OTg1ODUwIiwidXR5cGUiOiJjdXN0b21lciJ9.CBl-nuvypFpyWWwFCUujlskVsODGgqiwmAVnP9XXSwKk4jGjNuKxxS7vLbB9ithUDwKk1Mb5bKWixfjIqw1LDcqHEqHcdjozu7X3XR3vTYuN9JhnmMQGO7uA775nA56AKONu-0IxsINxhrHCysxaliNy6UOT6IZPIjll8NZMnI4', '2022-08-24 10:28:47', '2022-08-24 10:28:47'),
(10, 'eyJhbGciOiJSUzI1NiIsImtpZCI6IiJ9.eyJhdWQiOlsiZ29qZWs6Y29uc3VtZXI6YXBwIl0sImRhdCI6eyJhY3RpdmUiOiJ0cnVlIiwiYmxhY2tsaXN0ZWQiOiJmYWxzZSIsImNvdW50cnlfY29kZSI6Iis2MiIsImNyZWF0ZWRfYXQiOiIyMDIxLTAzLTI2VDA5OjQ4OjI0WiIsImVtYWlsIjoiZGV2Zi51bHRyYUBnbWFpbC5jb20iLCJlbWFpbF92ZXJpZmllZCI6InRydWUiLCJnb3BheV9hY2NvdW50X2lkIjoiMDEtMjU2ZjAwYWI0YTUwNGExZTlmNzFlNjJmOThjYmUyOGUtMzUiLCJuYW1lIjoiREVWQSBGRVJOQU5EQSIsIm51bWJlciI6Ijg1MTU5MjAyMjAwIiwicGhvbmUiOiIrNjI4NTE1OTIwMjIwMCIsInNpZ25lZF91cF9jb3VudHJ5IjoiSUQiLCJ3YWxsZXRfaWQiOiIyMTA4NTA1ODgyOTI5NTQ5MzQifSwiZXhwIjoxNjY5MDU4MDY3LCJpYXQiOjE2NjU5MDc3NjQsImlzcyI6ImdvaWQiLCJqdGkiOiI3OTZkYWY4NS04OTFmLTQ5MzktOGUxYS0yOGU3M2U2NTQ3MDMiLCJzY29wZXMiOltdLCJzaWQiOiI2YjI0YzM3Yi1hMTI0LTQ0MTEtYTM4MS1iOGE3ZjZlYzVjZjciLCJzdWIiOiI1MzU5ZTM1Mi1iMzUzLTQ0ZjAtOTczNS00YjFmM2U3ZTBkY2IiLCJ1aWQiOiI3MDkxODY1NjQiLCJ1dHlwZSI6ImN1c3RvbWVyIn0.UPiGE7LlDlxM7LJdPr-KRHLxJTOK3jbH9g1rwoHvplyg7Mxox0mTnB3V0Yap4uBCV-OHO7aBQDj9BCR_BOkKHr6kF2zSRkooFvivnF2vK0K37Hzqy8rnHTV6bHCxFyiknl8du9hvGJp7xymrkepO1XpMIHetJQ_141iPHzXNt48', '2022-10-16 08:09:24', '2022-10-16 08:09:24'),
(11, 'eyJhbGciOiJSUzI1NiIsImtpZCI6IiJ9.eyJhdWQiOlsiZ29qZWs6Y29uc3VtZXI6YXBwIl0sImRhdCI6eyJhY3RpdmUiOiJ0cnVlIiwiYmxhY2tsaXN0ZWQiOiJmYWxzZSIsImNvdW50cnlfY29kZSI6Iis2MiIsImNyZWF0ZWRfYXQiOiIyMDIxLTAzLTI2VDA5OjQ4OjI0WiIsImVtYWlsIjoiZGV2Zi51bHRyYUBnbWFpbC5jb20iLCJlbWFpbF92ZXJpZmllZCI6InRydWUiLCJnb3BheV9hY2NvdW50X2lkIjoiMDEtMjU2ZjAwYWI0YTUwNGExZTlmNzFlNjJmOThjYmUyOGUtMzUiLCJuYW1lIjoiREVWQSBGRVJOQU5EQSIsIm51bWJlciI6Ijg1MTU5MjAyMjAwIiwicGhvbmUiOiIrNjI4NTE1OTIwMjIwMCIsInNpZ25lZF91cF9jb3VudHJ5IjoiSUQiLCJ3YWxsZXRfaWQiOiIyMTA4NTA1ODgyOTI5NTQ5MzQifSwiZXhwIjoxNjcxMjE1MDg5LCJpYXQiOjE2NjgyODEwNTAsImlzcyI6ImdvaWQiLCJqdGkiOiIxOGIyODllNy0wODAyLTQ2MjktYWM4OS1lYjU1YmIyNTRmZjQiLCJzY29wZXMiOltdLCJzaWQiOiI3YWExZTQ3OC1jY2RiLTRlOTMtOGRjMi0xZDM5ZDg0YTg5OTciLCJzdWIiOiI1MzU5ZTM1Mi1iMzUzLTQ0ZjAtOTczNS00YjFmM2U3ZTBkY2IiLCJ1aWQiOiI3MDkxODY1NjQiLCJ1dHlwZSI6ImN1c3RvbWVyIn0.M7JPaFMKGZ0W_Msa7UpozRVDUNrBYso4rzs2playi0KQGnKD83W7MQOwGi2xtWlCBzKPy0i68Yka6uA9rjhyY-7dBGvn27VAn8vcxKjY2pQqL0bO_rdZYhGinBVJ-nz9lwe7oK4h6VYk-2kWfBgF4mL4UtD8wJmX5zPrzxIEIP8', '2022-11-12 19:24:10', '2022-11-12 19:24:10'),
(12, 'eyJhbGciOiJSUzI1NiIsImtpZCI6IiJ9.eyJhdWQiOlsiZ29qZWs6Y29uc3VtZXI6YXBwIl0sImRhdCI6eyJhY3RpdmUiOiJ0cnVlIiwiYmxhY2tsaXN0ZWQiOiJmYWxzZSIsImNvdW50cnlfY29kZSI6Iis2MiIsImNyZWF0ZWRfYXQiOiIyMDIwLTA2LTA3VDEzOjUwOjIyWiIsImVtYWlsIjoicHV0cmFyaW9wcmF0YW1hMTIyQGdtYWlsLmNvbSIsImVtYWlsX3ZlcmlmaWVkIjoiZmFsc2UiLCJnb3BheV9hY2NvdW50X2lkIjoiMDEtMWVhMjVkNjk5MGI4NDUwNDhjMDU5OWJjMjg0YTU1NmEtMjEiLCJuYW1lIjoiUmlvIFByYXRhbWEgUHV0cmEiLCJudW1iZXIiOiI4MjExODY0NDYwNSIsInBob25lIjoiKzYyODIxMTg2NDQ2MDUiLCJzaWduZWRfdXBfY291bnRyeSI6IklEIiwid2FsbGV0X2lkIjoiMjAxNTkwODMwMzEyNjc4OTMwIn0sImV4cCI6MTY3MzUxNzg5NSwiaWF0IjoxNjcwNTk4MzM4LCJpc3MiOiJnb2lkIiwianRpIjoiNTJjNjNjNTUtODE5Mi00YTNjLTgwYWUtODUzMWVlNjE0YjY1Iiwic2NvcGVzIjpbXSwic2lkIjoiNDcyMmY3NWUtZDRjMS00ZTFiLTk2ZTQtNzBmMGM2MmExMTVjIiwic3ViIjoiOTRkZmY4ZDktY2RlMy00MGE4LTk5MDMtMzkwYTgwYjVmYjgyIiwidWlkIjoiNjgzMDk2NjMwIiwidXR5cGUiOiJjdXN0b21lciJ9.NC-7ei6rKSI4Zy696K1n9xLI8GpnA47OMtwIS5Pcg_8ghy2i1uE4DkYwE48sOEmDyy44zZiif5CQSz1MN0MBbWSOpdtubHpZCFRIa9qjaaXltkfOtvVeKCpvbp0VsbhcxsSJqelHnHwoXZUXrFCb1TvhaEbBKg3sirJtGg2MQwE', '2022-12-09 15:05:41', '2022-12-09 15:05:41'),
(13, 'eyJhbGciOiJSUzI1NiIsImtpZCI6IiJ9.eyJhdWQiOlsiZ29qZWs6Y29uc3VtZXI6YXBwIl0sImRhdCI6eyJhY3RpdmUiOiJ0cnVlIiwiYmxhY2tsaXN0ZWQiOiJmYWxzZSIsImNvdW50cnlfY29kZSI6Iis2MiIsImNyZWF0ZWRfYXQiOiIyMDIwLTA2LTA3VDEzOjUwOjIyWiIsImVtYWlsIjoicHV0cmFyaW9wcmF0YW1hMTIyQGdtYWlsLmNvbSIsImVtYWlsX3ZlcmlmaWVkIjoiZmFsc2UiLCJnb3BheV9hY2NvdW50X2lkIjoiMDEtMWVhMjVkNjk5MGI4NDUwNDhjMDU5OWJjMjg0YTU1NmEtMjEiLCJuYW1lIjoiUmlvIFByYXRhbWEgUHV0cmEiLCJudW1iZXIiOiI4MjExODY0NDYwNSIsInBob25lIjoiKzYyODIxMTg2NDQ2MDUiLCJzaWduZWRfdXBfY291bnRyeSI6IklEIiwid2FsbGV0X2lkIjoiMjAxNTkwODMwMzEyNjc4OTMwIn0sImV4cCI6MTY3NDE5MDMwOCwiaWF0IjoxNjcxMTI5ODkzLCJpc3MiOiJnb2lkIiwianRpIjoiNjY5ZGIzMWEtMTZhOC00N2ZkLThiZDItYjc5MDVkNzVkMjZhIiwic2NvcGVzIjpbXSwic2lkIjoiZmFkMmY3MmItNGJjNC00ZDFlLWI3ZmItMzE5OGRkMzE0Njk3Iiwic3ViIjoiOTRkZmY4ZDktY2RlMy00MGE4LTk5MDMtMzkwYTgwYjVmYjgyIiwidWlkIjoiNjgzMDk2NjMwIiwidXR5cGUiOiJjdXN0b21lciJ9.V1JFFFACo5jwZ2N-V6N0ukJw4Id6zRxJBlnGGiokAo3eNS41-5hkFt69ytRzXD5t0zL_7Uo8PAz0AKj3ifMJ3egQf7wWzhXM3oIkmFPLQz10m4lhlTU4ut_LS0Re9PtVk3oGSr6QKX_9Dfa73_3vu2oOteREf_bS2sMHSKgF2dM', '2022-12-15 11:44:55', '2022-12-15 11:44:55'),
(14, 'eyJhbGciOiJSUzI1NiIsImtpZCI6IiJ9.eyJhdWQiOlsiZ29qZWs6Y29uc3VtZXI6YXBwIl0sImRhdCI6eyJhY3RpdmUiOiJ0cnVlIiwiYmxhY2tsaXN0ZWQiOiJmYWxzZSIsImNvdW50cnlfY29kZSI6Iis2MiIsImNyZWF0ZWRfYXQiOiIyMDIwLTA2LTA3VDEzOjUwOjIyWiIsImVtYWlsIjoicHV0cmFyaW9wcmF0YW1hMTIyQGdtYWlsLmNvbSIsImVtYWlsX3ZlcmlmaWVkIjoiZmFsc2UiLCJnb3BheV9hY2NvdW50X2lkIjoiMDEtMWVhMjVkNjk5MGI4NDUwNDhjMDU5OWJjMjg0YTU1NmEtMjEiLCJuYW1lIjoiUmlvIFByYXRhbWEgUHV0cmEiLCJudW1iZXIiOiI4MjExODY0NDYwNSIsInBob25lIjoiKzYyODIxMTg2NDQ2MDUiLCJzaWduZWRfdXBfY291bnRyeSI6IklEIiwid2FsbGV0X2lkIjoiMjAxNTkwODMwMzEyNjc4OTMwIn0sImV4cCI6MTY3NjQ2ODIwNCwiaWF0IjoxNjczNzY3OTA2LCJpc3MiOiJnb2lkIiwianRpIjoiM2RkODgzMmQtMTJkYy00MGI5LWE5ZTYtZTgxYjhiZGNkZWE3Iiwic2NvcGVzIjpbXSwic2lkIjoiYWE0YmQyN2ItNzYzZi00Y2QyLTk5NjEtZjBjZTc0OTQ1M2MxIiwic3ViIjoiOTRkZmY4ZDktY2RlMy00MGE4LTk5MDMtMzkwYTgwYjVmYjgyIiwidWlkIjoiNjgzMDk2NjMwIiwidXR5cGUiOiJjdXN0b21lciJ9.dKGsAf-s7-9M3Dad80gz09PoQZsE8vkw7IxY5W6SdM_PtN7kvjBxu9f86X0UfSV2bFk0DpCsGaxhG-F15L25aG26AL-wcQsU0D1GRLED5ibSNusxVHIssEhALo07EmVcP5uNuJFzVcmBFk3PCpsmHrTyCgyvGDXKL2bR-hahbwU', '2023-01-15 07:31:49', '2023-01-15 07:31:49'),
(15, 'eyJhbGciOiJSUzI1NiIsImtpZCI6IiJ9.eyJhdWQiOlsiZ29qZWs6Y29uc3VtZXI6YXBwIl0sImRhdCI6eyJhY3RpdmUiOiJ0cnVlIiwiYmxhY2tsaXN0ZWQiOiJmYWxzZSIsImNvdW50cnlfY29kZSI6Iis2MiIsImNyZWF0ZWRfYXQiOiIyMDIwLTA2LTA3VDEzOjUwOjIyWiIsImVtYWlsIjoicHV0cmFyaW9wcmF0YW1hMTIyQGdtYWlsLmNvbSIsImVtYWlsX3ZlcmlmaWVkIjoiZmFsc2UiLCJnb3BheV9hY2NvdW50X2lkIjoiMDEtMWVhMjVkNjk5MGI4NDUwNDhjMDU5OWJjMjg0YTU1NmEtMjEiLCJuYW1lIjoiUmlvIFByYXRhbWEgUHV0cmEiLCJudW1iZXIiOiI4MjExODY0NDYwNSIsInBob25lIjoiKzYyODIxMTg2NDQ2MDUiLCJzaWduZWRfdXBfY291bnRyeSI6IklEIiwid2FsbGV0X2lkIjoiMjAxNTkwODMwMzEyNjc4OTMwIn0sImV4cCI6MTY3NjY3MDEyNywiaWF0IjoxNjczODA5NjU5LCJpc3MiOiJnb2lkIiwianRpIjoiZjkwODJjNzItYTFkOS00MDNjLWEyOGItMzE3MjlmZDc3NGRhIiwic2NvcGVzIjpbXSwic2lkIjoiMTZiZjZkN2EtMmRlYi00ODQyLWIyMjktNDUzNjA4NTNmZWVhIiwic3ViIjoiOTRkZmY4ZDktY2RlMy00MGE4LTk5MDMtMzkwYTgwYjVmYjgyIiwidWlkIjoiNjgzMDk2NjMwIiwidXR5cGUiOiJjdXN0b21lciJ9.XJkc-lYhxP_q64QjPaVNoFdZXtcK2UWjmpldBozYhutwmjOa1pJ9EiPldY7Anr1mUTkOAfwuv9aV7eeg3HWP8ta4bbfPF1QgTFmYqaZgMk7nRJjqQS6iQbBvr1-e8bycz20T_BZcbRcT8EW664tCqKDiciY65KnJ5pR7xy3TWTc', '2023-01-15 19:07:41', '2023-01-15 19:07:41'),
(16, 'eyJhbGciOiJSUzI1NiIsImtpZCI6IiJ9.eyJhdWQiOlsiZ29qZWs6Y29uc3VtZXI6YXBwIl0sImRhdCI6eyJhY3RpdmUiOiJ0cnVlIiwiYmxhY2tsaXN0ZWQiOiJmYWxzZSIsImNvdW50cnlfY29kZSI6Iis2MiIsImNyZWF0ZWRfYXQiOiIyMDIwLTA2LTA3VDEzOjUwOjIyWiIsImVtYWlsIjoicHV0cmFyaW9wcmF0YW1hMTIyQGdtYWlsLmNvbSIsImVtYWlsX3ZlcmlmaWVkIjoiZmFsc2UiLCJnb3BheV9hY2NvdW50X2lkIjoiMDEtMWVhMjVkNjk5MGI4NDUwNDhjMDU5OWJjMjg0YTU1NmEtMjEiLCJuYW1lIjoiUmlvIFByYXRhbWEgUHV0cmEiLCJudW1iZXIiOiI4MjExODY0NDYwNSIsInBob25lIjoiKzYyODIxMTg2NDQ2MDUiLCJzaWduZWRfdXBfY291bnRyeSI6IklEIiwid2FsbGV0X2lkIjoiMjAxNTkwODMwMzEyNjc4OTMwIn0sImV4cCI6MTY3NzAwMDczNCwiaWF0IjoxNjczOTk3Nzg2LCJpc3MiOiJnb2lkIiwianRpIjoiMDViZWQzMjUtYjRjMC00MmNkLTk5MjktYjNiNjg3MGJmMDdmIiwic2NvcGVzIjpbXSwic2lkIjoiMDNlNGJlM2EtMDcxOC00NDVjLWIzZDUtNjQ5NThkMjc5YmE2Iiwic3ViIjoiOTRkZmY4ZDktY2RlMy00MGE4LTk5MDMtMzkwYTgwYjVmYjgyIiwidWlkIjoiNjgzMDk2NjMwIiwidXR5cGUiOiJjdXN0b21lciJ9.JooI7wBs63SPXFeA6W_k-eSrXeYU8iN8HiP-JUmLzAzp0pAPYPM1qtiDpTFoQbNDXHF4HzvRvc9-NanCMID4apAu8JLkywZdiUIUXK5rb7zsuPwUqY5GuQTsfkOm9wJcDt1g_gYCbHUD-MXVA3xtYQ_hktfSitjAMjAIfHyppQc', '2023-01-17 23:23:07', '2023-01-17 23:23:07'),
(17, 'eyJhbGciOiJSUzI1NiIsImtpZCI6IiJ9.eyJhdWQiOlsiZ29qZWs6Y29uc3VtZXI6YXBwIl0sImRhdCI6eyJhY3RpdmUiOiJ0cnVlIiwiYmxhY2tsaXN0ZWQiOiJ0cnVlIiwiY291bnRyeV9jb2RlIjoiKzYyIiwiY3JlYXRlZF9hdCI6IjIwMTgtMDEtMjZUMDQ6Mzc6MDlaIiwiZW1haWwiOiJzdW1iZXJtYXJrZXQxMjNAZ21haWwuY29tIiwiZW1haWxfdmVyaWZpZWQiOiJ0cnVlIiwiZ29wYXlfYWNjb3VudF9pZCI6IjAxLTI1ZDI0MmYxNGEzOTRmY2M4YzFmN2Q3NDBhZDE2YTkxLTI4IiwibmFtZSI6IlJpbyBQcmF0YW1hIFB1dHJhIiwibnVtYmVyIjoiODEzMTc4MTU2NjQiLCJwaG9uZSI6Iis2MjgxMzE3ODE1NjY0Iiwic2lnbmVkX3VwX2NvdW50cnkiOiJJRCIsIndhbGxldF9pZCI6IjE4MDI2MDI3NzEyMTQyMzcyOSJ9LCJleHAiOjE2Nzc5MTU3NDYsImlhdCI6MTY3NTA0NDE5MCwiaXNzIjoiZ29pZCIsImp0aSI6IjY3N2JiOGM0LWQ4NDYtNDhkMC05MzMxLTQ4MGVkYTZjZDkzNSIsInNjb3BlcyI6W10sInNpZCI6ImE5NTliNWNmLWJhNDQtNDMzNi04YzViLTI5MmRjZWU2OTU5NiIsInN1YiI6ImNhYmE0OTlkLWRhOTAtNDdhMi1iNzJjLTAyYzljN2E2MTI4OSIsInVpZCI6IjU4NjA5NDAxMiIsInV0eXBlIjoiY3VzdG9tZXIifQ.IMqARCM2cz3qlnISj1419PWPkLesEzif8ruE-akriBqf1hc45OwFUeduTPMQHN5eVb8q0DuF4FLFsG_bGDoR51vN0iz7qlXkLcQVcGhqrF9eSO8-sO11XeLkImvxrpdyY6ACe3s4Nctfl_0zjng5-2uLuPfJRSlnJqcv--JqkvU', '2023-01-30 02:03:11', '2023-01-30 02:03:11');

-- --------------------------------------------------------

--
-- Struktur dari tabel `history__gojeks`
--

CREATE TABLE `history__gojeks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tanggal` varchar(255) NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `type` varchar(10) NOT NULL,
  `amount` varchar(10) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `history__gojeks`
--

INSERT INTO `history__gojeks` (`id`, `tanggal`, `keterangan`, `type`, `amount`, `created_at`, `updated_at`) VALUES
(1, '2023-01-20 12:23:09.0', 'TopUp via Jago 23020T053081', 'credit', '10000', '2023-01-30 02:03:16', '2023-01-30 02:03:16'),
(2, '2023-01-15 19:05:41.0', 'GO-PAY Transfer from Muhammad Nasir\n***********490\nTerima kasih', 'credit', '5000', '2023-01-30 02:03:16', '2023-01-30 02:03:16'),
(3, '2023-01-15 08:20:40.0', 'TopUp via Jago 23015T030285', 'credit', '10000', '2023-01-30 02:03:16', '2023-01-30 02:03:16'),
(4, '2022-11-15 12:32:28.0', 'GO-PAY Transfer from Fiki Sandra Lukas\n***********110\n💰', 'credit', '20000', '2023-01-30 02:03:16', '2023-01-30 02:03:16'),
(5, '2022-10-30 11:44:55.0', 'GoPay Topup\n#2022103066865059491', 'credit', '49001', '2023-01-30 02:03:16', '2023-01-30 02:03:16'),
(6, '2022-10-30 06:41:42.0', 'GoPay Topup\n#202210301340497000100343399148', 'credit', '50041', '2023-01-30 02:03:16', '2023-01-30 02:03:16'),
(7, '2022-10-30 05:49:15.0', 'GoPay Topup\n#202210301248587000100343109585', 'credit', '60000', '2023-01-30 02:03:16', '2023-01-30 02:03:16'),
(8, '2022-10-30 05:35:45.0', 'GoPay Topup\n#2022103066865003079', 'credit', '49001', '2023-01-30 02:03:16', '2023-01-30 02:03:16');

-- --------------------------------------------------------

--
-- Struktur dari tabel `history__ovos`
--

CREATE TABLE `history__ovos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tanggal_transaksi` date NOT NULL,
  `jumlah_transaksi` varchar(255) NOT NULL,
  `tipe_transaksi` varchar(255) NOT NULL,
  `keterangan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `history__ovos`
--

INSERT INTO `history__ovos` (`id`, `tanggal_transaksi`, `jumlah_transaksi`, `tipe_transaksi`, `keterangan`) VALUES
(1, '2023-01-21', '12522', 'QRIS ISS PURCHASE', 'GALAXY SHOP'),
(2, '2023-01-20', '11466', 'TRANSFER', 'Transfer Ke Rio Pratama Putra'),
(3, '2023-01-20', '19500', 'TOPUP CASH', 'Bank CIMB'),
(4, '2023-01-20', '19500', 'TOPUP TRANSFER FEE', 'OVO'),
(5, '2023-01-20', '11577', 'TRANSFER', 'Transfer Ke Rio Pratama Putra'),
(6, '2023-01-20', '10000', 'TOPUP TRANSFER FEE', 'OVO'),
(7, '2023-01-20', '10000', 'TOPUP CASH', 'Bank CIMB'),
(8, '2023-01-20', '11483', 'TRANSFER', 'Transfer Ke Rio Pratama Putra'),
(9, '2023-01-20', '19500', 'TOPUP CASH', 'Bank CIMB'),
(10, '2023-01-20', '19500', 'TOPUP TRANSFER FEE', 'OVO');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ipaymus`
--

CREATE TABLE `ipaymus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `va` text NOT NULL,
  `key` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `ipaymus`
--

INSERT INTO `ipaymus` (`id`, `va`, `key`, `created_at`, `updated_at`) VALUES
(1, '1179002118644605', '5D5ACDD6-E25E-4EAA-BB52-E70C20483E50', '2022-12-14 11:13:15', '2022-12-23 20:42:58');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategoris`
--

CREATE TABLE `kategoris` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `kode` varchar(255) DEFAULT NULL,
  `server_id` tinyint(1) NOT NULL DEFAULT 0,
  `publisher` varchar(50) DEFAULT NULL,
  `kolom_jumlah` tinyint(4) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'active',
  `thumbnail` varchar(255) NOT NULL,
  `tipe` varchar(255) NOT NULL DEFAULT 'game',
  `petunjuk` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `kategoris`
--

INSERT INTO `kategoris` (`id`, `nama`, `kode`, `server_id`, `publisher`, `kolom_jumlah`, `status`, `thumbnail`, `tipe`, `petunjuk`, `created_at`, `updated_at`) VALUES
(23, 'Mobile Legends', 'mobile-legends', 1, 'Moonton', 0, 'active', '/assets/thumbnail/mlbb.png', 'game', '/assets/19.png', '2022-10-16 09:48:59', '2022-11-14 07:45:22'),
(24, 'Genshin Impact', 'genshin-impact', 1, 'miHoYo', 0, 'active', '/assets/thumbnail/genshin-impact.png', 'game', '/assets/petunjuk/1640093634Genshin ID.png', '2022-10-16 18:52:57', '2022-11-20 15:42:43'),
(28, 'Omega Legends', 'omegalegend', 0, 'IGG', 0, 'active', '/assets/thumbnail/omega-legends.png', 'game', '/assets/petunjuk/omega-b134-min.png', '2022-10-17 18:32:08', '2022-11-14 03:36:35'),
(29, 'Free Fire', 'free-fire', 0, 'Garena SEA', 0, 'active', '/assets/thumbnail/free-fire.png', 'game', '/assets/petunjuk/asq.jpg', '2022-10-17 18:35:18', '2022-11-20 15:42:08'),
(31, 'PUBG Mobile', 'pubg', 0, 'Region Indo', 0, 'active', '/assets/thumbnail/pubg-mobile.png', 'game', '/assets/petunjuk/pubgaaa-min.png', '2022-10-17 18:39:48', '2022-11-20 15:42:21'),
(33, 'Apex Legends Mobile', 'apex-legends', 0, 'Electronic Arts', 0, 'active', '/assets/thumbnail/apex-legends.jpg', 'game', '/assets/petunjuk/apex-min.png', '2022-10-17 18:42:47', '2022-11-20 15:43:06'),
(34, 'Tower of Fantasy', 'tof', 1, 'Hotta Studio', 0, 'active', '/assets/thumbnail/tof.png', 'game', '/assets/petunjuk/tof-min.png', '2022-10-17 18:47:08', '2022-11-20 15:50:26'),
(35, 'Ragnarok M: Eternal Love', 'ragnarok-m', 0, 'Gravity Games', 0, 'active', '/assets/thumbnail/ragnarokm.jpg', 'game', '/assets/petunjuk/ragnarok-min.png', '2022-10-17 18:49:59', '2022-11-20 15:49:39'),
(36, 'Sausage Man', 'sausageman', 0, 'XD Global', 0, 'active', '/assets/thumbnail/sausageman.png\r\n', 'game', '/assets/petunjuk/sausag-min.png', '2022-10-17 18:51:19', '2022-11-20 15:50:21'),
(37, 'MU Origin 3', 'muorigin3', 0, 'Gamenow Tech.', 0, 'active', '/assets/thumbnail/muorigin3.jpg\r\n', 'game', '/assets/petunjuk/MU ORIGIN 3.png', '2022-10-17 18:52:25', '2022-11-20 15:51:27'),
(38, 'MU Origin 2', 'muorigin2', 1, 'Gamenow Tech.', 0, 'unactive', '/assets/thumbnail/muorigin-min.png', 'game', '/assets/petunjuk/muorigin-min.png', '2022-10-17 18:53:49', '2022-11-20 15:51:30'),
(39, 'Light of Thel', 'lightofthel', 0, 'Youzu', 0, 'active', '/assets/thumbnail/lot.jpg', 'game', '/assets/petunjuk/lightofthe-min.png', '2022-10-17 18:55:49', '2022-11-20 15:43:10'),
(40, 'Lords Mobile', 'lords-mobile', 0, 'IGG', 0, 'active', '/assets/thumbnail/lordsmobile.jpg', 'game', '/assets/petunjuk/lordsmobile-min.png', '2022-10-17 18:56:59', '2022-11-20 15:49:44'),
(41, 'Tom and Jerry : Chase', 'tom-jerry-chase', 0, 'NetEase', 0, 'active', '/assets/thumbnail/tomjerry.jpg', 'game', '/assets/petunjuk/tom-min.png', '2022-10-17 18:58:17', '2022-11-20 15:51:37'),
(42, 'Hyper Front', 'hyperfront', 1, 'NetEase', 0, 'active', '/assets/thumbnail/hyperfront.png', 'game', '/assets/petunjuk/hyperfront-min.png', '2022-10-17 18:59:12', '2022-11-20 15:42:39'),
(43, 'Saint Seiya', 'saint-seiya-awakening', 0, 'GTArcade', 0, 'unactive', '/assets/thumbnail/saint-min.png', 'game', '/assets/petunjuk/saint-min.png', '2022-10-17 19:01:18', '2022-11-14 03:36:51'),
(44, 'Marvel Super War', 'marvel-super-war', 0, 'NetEase', 0, 'active', '/assets/thumbnail/marvel-super-war.png', 'game', '/assets/petunjuk/marvel-min.png', '2022-10-17 19:02:18', '2022-11-20 15:50:09'),
(46, 'DRAGON RAJA - SEA', 'dragon-raja', 0, 'Zloong', 0, 'active', '/assets/thumbnail/dragon-raja.png', 'game', '/assets/petunjuk/dragonraja-min.png', '2022-10-17 19:04:22', '2022-11-20 15:42:52'),
(47, 'Laplace M', 'laplace', 0, 'Zloong', 0, 'active', '/assets/thumbnail/laplacem.jpg', 'game', '/assets/petunjuk/laplace-min.png', '2022-10-17 19:05:33', '2022-11-20 15:42:36'),
(48, 'One Punch Man', 'onepuchman', 0, 'FingerFun', 0, 'active', '/assets/thumbnail/one-punch-man.png', 'game', '/assets/petunjuk/onepunch-min.png', '2022-10-17 19:06:29', '2022-11-14 03:36:39'),
(53, 'Valorant', 'valorant', 0, 'Riot Games', 0, 'unactive', '/assets/thumbnail/valorant.png', 'game', '/assets/petunjuk/valorant.png', '2022-10-30 05:51:19', '2022-11-20 15:50:32'),
(55, 'Point Blank', 'point-blank', 0, 'Zepetto', 0, 'active', '/assets/thumbnail/pbzepetto.png', 'game', '/assets/petunjuk/pb.png', '2022-10-30 06:05:04', '2022-11-20 15:49:35'),
(56, 'LifeAfter Credits', 'life-after', 1, 'NetEase', 0, 'active', '/assets/thumbnail/lifeafter.jpg', 'game', '/assets/petunjuk/lifeafter.png', '2022-10-30 06:20:09', '2022-11-20 15:42:32'),
(57, 'Call of Duty MOBILE', 'call-of-duty', 0, 'Garena SEA', 0, 'active', '/assets/thumbnail/codm.jpg', 'game', '/assets/petunjuk/codm.png', '2022-10-30 06:30:17', '2022-11-20 15:43:03'),
(95, 'DANA', 'dana', 0, 'Proses Instant', 0, 'active', '/assets/thumbnail/dana.png', 'ewallet', '/assets/petunjuk/dana.png', '2022-11-20 15:37:06', '2022-11-20 15:37:06'),
(97, 'Joki Rank', 'joki', 1, 'Moonton', 1, 'active', '/assets/thumbnail/joki.jpg', 'joki', '/assets/petunjuk/mlbb_tile.jpg', '2022-11-20 16:01:19', '2022-11-20 16:01:19'),
(101, 'Be The King', 'betheking', 1, 'Chuang Cool Ent.', 0, 'active', '/assets/thumbnail/betheking.jpg', 'game', '/assets/petunjuk/be-min.png', '2022-11-22 02:33:30', '2022-11-22 02:33:30'),
(110, 'Super Sus', 'Super-Sus', 0, 'PIProductions', 0, 'active', '/assets/thumbnail/supersus.webp', 'game', '0', '2022-12-10 06:26:50', '2022-12-10 06:26:50'),
(112, 'YS 6 Mobile VNG', 'YS-6-Mobile-VNG', 0, 'VNG Corporation', 0, 'active', '/assets/thumbnail/ys6.jpg', 'game', '0', '2022-12-10 06:26:51', '2022-12-10 06:26:51'),
(115, 'ARENA OF VALOR', 'AOV', 0, 'TiMi Studio', 0, 'active', '/assets/thumbnail/aov.webp', 'game', '0', '2022-12-10 06:26:53', '2022-12-10 06:26:53'),
(222, 'Telkomsel', 'telkomsel', 0, 'PT Telkom Indonesia', 0, 'active', '/assets/thumbnail/telkomsel.png', 'Pulsa', '0', '2022-12-15 12:22:58', '2022-12-15 12:22:58'),
(224, 'Axis', 'axis', 0, 'PT AXIS Telekom Indonesia', 0, 'active', '/assets/thumbnail/axis.jpg', 'Pulsa', '0', '2022-12-15 12:23:02', '2022-12-15 12:23:02'),
(225, 'INDOSAT', 'indosat', 0, 'PT Indosat Ooredoo Hutchison', 0, 'active', '/assets/thumbnail/indosat.png', 'Pulsa', '0', '2022-12-15 12:23:02', '2022-12-15 12:23:02'),
(226, 'Smartfren', 'smartfren', 0, 'PT Smartfren Telecom Tbk', 0, 'active', '/assets/thumbnail/smartfren.png', 'Pulsa', '0', '2022-12-15 12:23:04', '2022-12-15 12:23:04'),
(227, 'Tri', 'tri', 0, 'PT Hutchison 3 Indonesia', 0, 'unactive', '/assets/thumbnail/three.png', 'Pulsa', '0', '2022-12-15 12:23:04', '2022-12-15 12:23:04'),
(228, 'by.U', 'byu', 0, 'PT Telkom Indonesia', 0, 'active', '/assets/thumbnail/byu.png', 'Pulsa', '0', '2022-12-15 12:23:05', '2022-12-15 12:23:05'),
(229, 'Steam Wallet (IDR)', 'Steam-Wallet-(IDR)', 0, 'Proses Instant', 0, 'active', '0', 'Voucher', '0', '2022-12-15 12:23:06', '2022-12-15 12:23:06'),
(230, 'XBOX', 'XBOX', 0, 'Proses Instant', 0, 'active', '0', 'Voucher', '0', '2022-12-15 12:23:06', '2022-12-15 12:23:06'),
(231, 'Roblox', 'Roblox', 0, 'Proses Instant', 0, 'active', '0', 'Voucher', '0', '2022-12-15 12:23:06', '2022-12-15 12:23:06'),
(232, 'GOOGLE PLAY INDONESIA', 'GOOGLE-PLAY-INDONESIA', 0, 'Proses Instant', 0, 'active', '0', 'Voucher', '0', '2022-12-15 12:23:06', '2022-12-15 12:23:06'),
(233, 'GOOGLE PLAY US REGION', 'GOOGLE-PLAY-US-REGION', 0, 'Proses Instant', 0, 'active', '0', 'Voucher', '0', '2022-12-15 12:23:06', '2022-12-15 12:23:06'),
(235, 'OVO', 'ovo', 0, 'Proses Instant', 0, 'active', '/assets/thumbnail/ovo.jpg', 'ewallet', '0', '2022-12-15 12:23:06', '2022-12-15 12:23:06'),
(236, 'Bukalapak', 'bukalapak', 0, 'Proses Instant', 0, 'active', '/assets/thumbnail/bukalapak.png', 'ewallet', '0', '2022-12-15 12:23:07', '2022-12-15 12:23:07'),
(237, 'Grab', 'grab', 0, 'Proses Instant', 0, 'active', '/assets/thumbnail/grab.png', 'ewallet', '0', '2022-12-15 12:23:07', '2022-12-15 12:23:07'),
(238, 'LinkAja', 'link-aja', 0, 'Proses Instant', 0, 'active', '/assets/thumbnail/linkaja.png', 'ewallet', '0', '2022-12-15 12:23:07', '2022-12-15 12:23:07'),
(239, 'Sakuku', 'sakuku', 0, 'Proses Instant', 0, 'active', '/assets/thumbnail/sakuku.png', 'ewallet', '0', '2022-12-15 12:23:07', '2022-12-15 12:23:07'),
(240, 'Doku', 'doku', 0, 'Proses Instant', 0, 'active', '/assets/thumbnail/doku.png', 'ewallet', '0', '2022-12-15 12:23:08', '2022-12-15 12:23:08'),
(241, 'Speed Drifters', 'speed-drifters', 0, 'GKART', 0, 'active', '/assets/thumbnail/speed.jpg', 'game', '/assets/petunjuk/petunjuk-sd.jpg', '2022-12-15 12:23:08', '2022-12-23 14:04:04'),
(242, 'PLN', 'PLN', 0, 'Proses Instant', 0, 'active', '0', 'PLN', '0', '2022-12-15 12:23:09', '2022-12-15 12:23:09'),
(243, 'SHOPEE PAY', 'shopeepay', 0, 'Proses Instant', 0, 'active', '/assets/thumbnail/shopeepay.jpg', 'ewallet', '0', '2022-12-15 12:23:09', '2022-12-15 12:23:09'),
(244, 'SPOTIFY', 'SPOTIFY', 0, 'Proses Instant', 0, 'active', '0', 'Voucher', '0', '2022-12-22 21:21:00', '2022-12-22 21:21:00'),
(245, 'GARENA', 'GARENA', 0, 'Proses Instant', 0, 'active', '0', 'Voucher', '0', '2022-12-22 21:21:01', '2022-12-22 21:21:01'),
(246, 'Vidio', 'Vidio', 0, 'Proses Instant', 0, 'active', '0', 'Voucher', '0', '2022-12-22 21:21:01', '2022-12-22 21:21:01'),
(247, 'TIX ID', 'tix-id', 0, 'Proses Instant', 0, 'active', '/assets/thumbnail/tixid.png', 'ewallet', '0', '2022-12-22 21:21:01', '2022-12-22 21:21:01'),
(248, 'MANDIRI E-TOLL', 'mandiri-e-toll', 0, 'Proses Instant', 0, 'active', '/assets/thumbnail/mandiritol.png', 'ewallet', '0', '2022-12-22 21:21:01', '2022-12-22 21:21:01'),
(249, 'BRI BRIZZI', 'bri-brizzi', 0, 'Proses Instant', 0, 'active', '/assets/thumbnail/brizzi.png', 'ewallet', '0', '2022-12-22 21:21:01', '2022-12-22 21:21:01'),
(250, 'MAXIM', 'maximcustomer', 0, 'Proses Instant', 0, 'active', '/assets/thumbnail/maxim.png', 'ewallet', '0', '2022-12-22 21:21:01', '2022-12-22 21:21:01'),
(251, 'XL', 'xl', 0, 'PT XL Axiata Tbk', 0, 'active', '/assets/thumbnail/xl.png', 'Pulsa', '0', '2022-12-15 12:23:02', '2022-12-15 12:23:02'),
(252, 'TAPCASH BNI', 'tapcash-bni', 0, 'Proses Instant', 0, 'active', '/assets/thumbnail/tapcashbni.png', 'ewallet', '0', '2022-12-23 17:19:14', '2022-12-23 17:19:14'),
(253, 'Mitra Shopee', 'mitrashopee', 0, 'Proses Instant', 0, 'active', '/assets/thumbnail/mitrashopee.jpg', 'ewallet', '0', '2022-12-23 17:19:14', '2022-12-23 17:19:14'),
(254, 'i.saku\r\n', 'isaku', 0, 'Proses Instant', 0, 'active', '/assets/thumbnail/isaku.png', 'ewallet', '0', '2022-12-23 17:19:14', '2022-12-23 17:19:14'),
(255, 'Shopee Food Driver', 'shopeefood-driver', 0, 'Proses Instant', 0, 'active', '/assets/thumbnail/shopeefood.png', 'ewallet', '0', '2022-12-23 17:19:15', '2022-12-23 17:19:15'),
(267, 'Mobile Legends Via Login', 'vilog', 1, 'Manual (Via Login)', 0, 'active', '/assets/thumbnail/vialogin.png', 'vilog', '/assets/petunjuk/vialogin.png', '2022-12-23 19:19:03', '2022-12-23 19:19:03'),
(334, 'GO PAY', 'gopay', 0, 'Proses Instant', 0, 'active', '/assets/thumbnail/gopay.jpg', 'ewallet', '0', '2023-01-15 08:17:41', '2023-01-15 08:17:41'),
(337, 'Bleach Mobile 3D', 'Bleach-Mobile-3D', 0, '0', 0, 'active', '0', 'game', '0', '2023-01-29 16:25:57', '2023-01-29 16:25:57');

-- --------------------------------------------------------

--
-- Struktur dari tabel `layanans`
--

CREATE TABLE `layanans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kategori_id` varchar(255) NOT NULL,
  `layanan` varchar(255) NOT NULL,
  `provider_id` varchar(255) NOT NULL,
  `harga` bigint(20) NOT NULL,
  `harga_reseller` bigint(20) NOT NULL,
  `harga_vip` bigint(20) NOT NULL,
  `profit` int(11) NOT NULL,
  `catatan` longtext DEFAULT NULL,
  `status` varchar(255) NOT NULL,
  `provider` varchar(255) NOT NULL,
  `product_logo` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `layanans`
--

INSERT INTO `layanans` (`id`, `kategori_id`, `layanan`, `provider_id`, `harga`, `harga_reseller`, `harga_vip`, `profit`, `catatan`, `status`, `provider`, `product_logo`, `created_at`, `updated_at`) VALUES
(14166, '23', 'MOBILELEGEND - 86 Diamond', 'ML86', 19309, 18844, 18585, 0, 'no pelanggan = gabungan antara user_id dan zone_id', 'available', 'digiflazz', '0', '2023-01-29 17:16:44', '2023-02-11 17:27:48'),
(14167, '23', 'MOBILELEGEND - 172 Diamond', 'ML172', 38132, 37215, 36702, 0, 'no pelanggan = gabungan antara user_id dan zone_id', 'available', 'digiflazz', '0', '2023-01-29 17:16:44', '2023-02-11 17:27:48'),
(14168, '23', 'MOBILELEGEND - 257 Diamond', 'ML257', 57334, 55956, 55184, 0, 'no pelanggan = gabungan antara user_id dan zone_id', 'available', 'digiflazz', '0', '2023-01-29 17:16:44', '2023-02-11 17:27:48'),
(14169, '23', 'MOBILELEGEND - 429 Diamond', 'ML429', 95446, 93152, 91867, 0, 'no pelanggan = gabungan antara user_id dan zone_id', 'available', 'digiflazz', '0', '2023-01-29 17:16:44', '2023-02-11 17:27:48'),
(14170, '23', 'MOBILELEGEND - 514 Diamond', 'ML514', 116365, 113567, 112001, 0, 'no pelanggan = gabungan antara user_id dan zone_id', 'available', 'digiflazz', '0', '2023-01-29 17:16:44', '2023-02-11 17:27:48'),
(14171, '23', 'MOBILELEGEND - 600 Diamond', 'ML600', 133286, 130082, 128288, 0, 'no pelanggan = gabungan antara user_id dan zone_id', 'available', 'digiflazz', '0', '2023-01-29 17:16:44', '2023-02-11 17:27:48'),
(14172, '23', 'MOBILELEGEND - 706 Diamond', 'ML706', 155548, 151808, 149715, 0, 'no pelanggan = gabungan antara user_id dan zone_id', 'available', 'digiflazz', '0', '2023-01-29 17:16:44', '2023-02-11 17:27:48'),
(14173, '23', 'MOBILELEGEND - 878 Diamond', 'ML878', 194011, 189347, 186736, 0, 'no pelanggan = gabungan antara user_id dan zone_id', 'available', 'digiflazz', '0', '2023-01-29 17:16:45', '2023-02-11 17:27:48'),
(14174, '23', 'MOBILELEGEND - 963 Diamond', 'ML963', 213609, 208474, 205598, 0, 'no pelanggan = gabungan antara user_id dan zone_id', 'available', 'digiflazz', '0', '2023-01-29 17:16:45', '2023-02-11 17:27:48'),
(14175, '23', 'MOBILELEGEND - 1050 Diamond', 'ML1050', 230422, 224883, 221782, 0, 'no pelanggan = gabungan antara user_id dan zone_id', 'available', 'digiflazz', '0', '2023-01-29 17:16:45', '2023-02-11 17:27:48'),
(14176, '23', 'MOBILELEGEND - 1220 Diamond', 'ML1220', 271336, 264814, 261161, 0, 'no pelanggan = gabungan antara user_id dan zone_id', 'available', 'digiflazz', '0', '2023-01-29 17:16:45', '2023-02-11 17:27:48'),
(14177, '23', 'MOBILELEGEND - 1412 Diamond', 'ML1412', 310814, 303343, 299159, 0, 'no pelanggan = gabungan antara user_id dan zone_id', 'available', 'digiflazz', '0', '2023-01-29 17:16:45', '2023-02-11 17:27:48'),
(14178, '23', 'MOBILELEGEND - 2010 Diamond', 'ML2010', 465400, 454213, 447948, 0, 'no pelanggan = gabungan antara user_id dan zone_id', 'available', 'digiflazz', '0', '2023-01-29 17:16:45', '2023-02-11 17:27:48'),
(14179, '23', 'MOBILELEGEND - 2195 Diamond', 'ML2195', 459687, 448637, 442449, 0, 'no pelanggan = gabungan antara user_id dan zone_id', 'available', 'digiflazz', '0', '2023-01-29 17:16:45', '2023-02-11 17:27:48'),
(14180, '23', 'MOBILELEGEND - 3688 Diamond', 'ML3688', 766928, 748492, 738168, 0, 'no pelanggan = gabungan antara user_id dan zone_id', 'available', 'digiflazz', '0', '2023-01-29 17:16:45', '2023-02-11 17:27:48'),
(14181, '23', 'MOBILELEGEND - 4830 Diamond', 'ML4830', 1138826, 1111450, 1096120, 0, 'no pelanggan = gabungan antara user_id dan zone_id', 'available', 'digiflazz', '0', '2023-01-29 17:16:45', '2023-02-11 17:27:48'),
(14182, '23', 'MOBILELEGEND - 5532 Diamond', 'ML5532', 1279226, 1248475, 1231255, 0, 'no pelanggan = gabungan antara user_id dan zone_id', 'available', 'digiflazz', '0', '2023-01-29 17:16:45', '2023-02-11 17:27:48'),
(14183, '23', 'MOBILELEGEND - 6050 Diamond', 'ML6050', 1456026, 1421025, 1401425, 0, 'no pelanggan = gabungan antara user_id dan zone_id', 'available', 'digiflazz', '0', '2023-01-29 17:16:45', '2023-02-11 17:27:48'),
(14184, '23', 'MOBILELEGEND - 9288 Diamond', 'ML9288', 1914281, 1868265, 1842496, 0, 'no pelanggan = gabungan antara user_id dan zone_id', 'available', 'digiflazz', '0', '2023-01-29 17:16:45', '2023-02-11 17:27:48'),
(14185, '23', 'MOBILELEGEND - 344 Diamond', 'ML344', 76606, 74765, 73734, 0, 'no pelanggan = gabungan antara user_id dan zone_id', 'inactive', 'digiflazz', '0', '2023-01-29 17:16:45', '2023-02-11 17:27:48'),
(14186, '23', 'MOBILELEGEND - 4396 Diamond', 'ML4396', 1004640, 980490, 966966, 0, 'no pelanggan = gabungan antara user_id dan zone_id', 'available', 'digiflazz', '0', '2023-01-29 17:16:45', '2023-02-04 13:50:34'),
(14187, '23', 'MOBILELEGEND - 7727 Diamond', 'ML7727', 1625687, 1586608, 1564724, 0, 'no pelanggan = gabungan antara user_id dan zone_id', 'available', 'digiflazz', '0', '2023-01-29 17:16:45', '2023-02-11 17:27:48'),
(14188, '29', 'Free Fire 20 Diamond', 'ff20', 2662, 2598, 2563, 0, 'Free Fire 20 Diamond', 'available', 'digiflazz', '0', '2023-01-29 17:16:45', '2023-02-11 17:27:48'),
(14189, '29', 'Free Fire 50 Diamond', 'ff50', 6520, 6363, 6275, 0, 'Free Fire 50 Diamond', 'available', 'digiflazz', '0', '2023-01-29 17:16:45', '2023-02-11 17:27:48'),
(14190, '29', 'Free Fire 70 Diamond', 'ff70', 8835, 8622, 8503, 0, 'Free Fire 70 Diamond', 'available', 'digiflazz', '0', '2023-01-29 17:16:45', '2023-02-11 17:27:48'),
(14191, '29', 'Free Fire 100 Diamond', 'ff100', 12932, 12622, 12447, 0, 'Free Fire 100 Diamond', 'available', 'digiflazz', '0', '2023-01-29 17:16:45', '2023-02-11 17:27:48'),
(14192, '29', 'Free Fire 140 Diamond', 'ff140', 18073, 17639, 17395, 0, 'Free Fire 140 Diamond', 'available', 'digiflazz', '0', '2023-01-29 17:16:45', '2023-02-11 17:27:48'),
(14193, '29', 'Free Fire 210 Diamond', 'ff210', 26832, 26187, 25826, 0, 'Free Fire 210 Diamond', 'available', 'digiflazz', '0', '2023-01-29 17:16:45', '2023-02-11 17:27:48'),
(14194, '29', 'Free Fire 355 Diamond', 'ff355', 44096, 43036, 42442, 0, 'Free Fire 355 Diamond', 'available', 'digiflazz', '0', '2023-01-29 17:16:45', '2023-02-11 17:27:48'),
(14195, '29', 'Free Fire 425 Diamond', 'ff425', 53300, 52019, 51301, 0, 'Free Fire 425 Diamond', 'available', 'digiflazz', '0', '2023-01-29 17:16:45', '2023-02-11 17:27:48'),
(14196, '29', 'Free Fire 500 Diamond', 'FF500', 63886, 62350, 61490, 0, 'Free Fire 500 Diamond', 'available', 'digiflazz', '0', '2023-01-29 17:16:45', '2023-02-11 17:27:48'),
(14197, '29', 'Free Fire 720 Diamond', 'FF720', 87844, 85732, 84549, 0, 'Free Fire 720 Diamond', 'available', 'digiflazz', '0', '2023-01-29 17:16:45', '2023-02-11 17:27:48'),
(14198, '29', 'Free Fire 860 Diamond', 'FF860', 107125, 104550, 103108, 0, 'Free Fire 860 Diamond', 'available', 'digiflazz', '0', '2023-01-29 17:16:45', '2023-02-11 17:27:48'),
(14199, '29', 'Free Fire 1000 Diamond', 'FF1000', 124176, 121191, 119519, 0, 'Free Fire 1000 Diamond', 'available', 'digiflazz', '0', '2023-01-29 17:16:45', '2023-02-11 17:27:48'),
(14200, '29', 'Free Fire 1440 Diamond', 'FF1440', 177970, 173692, 171296, 0, 'Free Fire 1440 Diamond', 'available', 'digiflazz', '0', '2023-01-29 17:16:45', '2023-02-11 17:27:48'),
(14201, '29', 'Free Fire 2000 Diamond', 'FF2000', 240174, 234401, 231168, 0, 'Free Fire 2000 Diamond', 'available', 'digiflazz', '0', '2023-01-29 17:16:45', '2023-02-11 17:27:48'),
(14202, '29', 'Free Fire 2355 Diamond', 'FF2355', 288340, 281409, 277527, 0, 'Free Fire 2355 Diamond', 'available', 'digiflazz', '0', '2023-01-29 17:16:45', '2023-02-11 17:27:48'),
(14203, '29', 'Free Fire 2720 Diamond', 'FF2720', 330247, 322308, 317863, 0, 'Free Fire 2720 Diamond', 'inactive', 'digiflazz', '0', '2023-01-29 17:16:45', '2023-02-11 17:27:49'),
(14204, '29', 'Free Fire 3640 Diamond', 'FF3640', 448890, 438099, 432057, 0, 'Free Fire 3640 Diamond', 'available', 'digiflazz', '0', '2023-01-29 17:16:45', '2023-02-11 17:27:49'),
(14205, '29', 'Free Fire 4000 Diamond', 'FF4000', 486850, 475147, 468593, 0, 'Free Fire 4000 Diamond', 'available', 'digiflazz', '0', '2023-01-29 17:16:45', '2023-02-11 17:27:49'),
(14206, '29', 'Free Fire 7290 Diamond', 'FF7290', 884026, 862775, 850875, 0, 'Free Fire 7290 Diamond', 'available', 'digiflazz', '0', '2023-01-29 17:16:45', '2023-02-11 17:27:49'),
(14207, '29', 'Free Fire Membership Mingguan', 'FFM', 26962, 26314, 25951, 0, 'Instant 100 diamond dan 50 diamond per hari selama 7 hari (Wajib Login untuk mendapatkan diamond)', 'available', 'digiflazz', '0', '2023-01-29 17:16:45', '2023-02-11 17:27:49'),
(14208, '29', 'Free Fire Membership Bulanan', 'FFB', 83304, 81302, 80180, 0, 'Instant 500 diamond dan 70 diamond per hari selama 30 hari (Wajib Login untuk mendapatkan diamond)', 'available', 'digiflazz', '0', '2023-01-29 17:16:45', '2023-02-11 17:27:49'),
(14209, '95', 'DANA 10.000', 'DANA10', 10799, 10738, 10597, 0, '-', 'available', 'digiflazz', '0', '2023-01-29 17:16:45', '2023-02-11 17:27:49'),
(14210, '95', 'DANA 15.000', 'DANA15', 16172, 16082, 15870, 0, '-', 'available', 'digiflazz', '0', '2023-01-29 17:16:45', '2023-02-11 17:27:49'),
(14211, '95', 'DANA 20.000', 'DANA20', 21597, 21476, 21193, 0, '-', 'available', 'digiflazz', '0', '2023-01-29 17:16:45', '2023-02-11 17:27:49'),
(14212, '95', 'DANA 25.000', 'DANA25', 26652, 26503, 26154, 0, '-', 'available', 'digiflazz', '0', '2023-01-29 17:16:45', '2023-02-11 17:27:49'),
(14213, '95', 'DANA 30.000', 'DANA30', 32307, 32126, 31703, 0, '-', 'available', 'digiflazz', '0', '2023-01-29 17:16:45', '2023-02-11 17:27:49'),
(14214, '95', 'DANA 50.000', 'DANA50', 53636, 53335, 52634, 0, '-', 'available', 'digiflazz', '0', '2023-01-29 17:16:45', '2023-02-11 17:27:49'),
(14215, '95', 'DANA 100.000', 'DANA100', 107277, 106676, 105273, 0, '-', 'available', 'digiflazz', '0', '2023-01-29 17:16:45', '2023-02-11 17:27:49'),
(14216, '95', 'DANA 150.000', 'DANA150', 160736, 159835, 157734, 0, '-', 'available', 'digiflazz', '0', '2023-01-29 17:16:45', '2023-02-11 17:27:49'),
(14217, '95', 'DANA 200.000', 'DANA200', 214377, 213176, 210373, 0, '-', 'available', 'digiflazz', '0', '2023-01-29 17:16:45', '2023-02-11 17:27:49'),
(14218, '222', 'Telkomsel 10.000', 'Telkomsel10', 11197, 11135, 10586, 0, 'Pulsa Telkomsel Rp 10.000', 'available', 'digiflazz', '0', '2023-01-29 17:16:45', '2023-02-11 17:27:49'),
(14219, '24', 'Genshin Impact Blessing of the Welkin Moon', 'gwm', 61690, 60207, 59376, 0, 'Login Setiap hari selama 30 hari mendapatkan 300 Genesis Crystal secara langsung (1x) dan mendapatkan 90 Primogem setiap hari', 'available', 'digiflazz', '0', '2023-01-29 17:16:45', '2023-02-11 17:27:49'),
(14220, '24', 'Genshin Impact 60 Genesis Crystals', 'gi69', 12096, 11805, 11643, 0, 'Gabungan id server dan UID', 'available', 'digiflazz', '0', '2023-01-29 17:16:45', '2023-02-11 17:27:49'),
(14221, '24', 'Genshin Impact 300+30 Genesis Crystals', 'gi330', 61690, 60207, 59376, 0, 'Gabungan id server dan UID', 'available', 'digiflazz', '0', '2023-01-29 17:16:45', '2023-02-11 17:27:49'),
(14222, '24', 'Genshin Impact 980+110 Genesis Crystals', 'gi1090', 187200, 182700, 180180, 0, 'Gabungan id server dan UID', 'available', 'digiflazz', '0', '2023-01-29 17:16:45', '2023-02-04 13:50:35'),
(14223, '24', 'Genshin Impact 1980+260 Genesis Crystals', 'gi2240', 402546, 392869, 387450, 0, 'Gabungan id server dan UID', 'available', 'digiflazz', '0', '2023-01-29 17:16:45', '2023-02-11 17:27:49'),
(14224, '24', 'Genshin Impact 3280+600 Genesis Crystals', 'gi3880', 624000, 609000, 600600, 0, 'Gabungan id server dan UID', 'available', 'digiflazz', '0', '2023-01-29 17:16:45', '2023-02-04 13:50:35'),
(14225, '24', 'Genshin Impact 6480+1600 Genesis Crystals', 'gi8080', 1260191, 1229898, 1212934, 0, 'Gabungan id server dan UID', 'available', 'digiflazz', '0', '2023-01-29 17:16:45', '2023-02-11 17:27:49'),
(14226, '36', 'Sausage Man 60 Candies', 'sg60', 12917, 12606, 12432, 0, 'Sausage Man 60 Candies', 'available', 'digiflazz', '0', '2023-01-29 17:16:45', '2023-02-11 17:27:49'),
(14227, '36', 'Sausage Man 180 Candies', 'sg180', 40456, 39484, 38939, 0, 'Sausage Man 180 Candies', 'inactive', 'digiflazz', '0', '2023-01-29 17:16:45', '2023-02-11 17:27:49'),
(14228, '36', 'Sausage Man 316 Candies', 'sg316', 67106, 65493, 64590, 0, 'Sausage Man 316 Candies', 'available', 'digiflazz', '0', '2023-01-29 17:16:45', '2023-02-11 17:27:49'),
(14229, '36', 'Sausage Man 718 Candies', 'sg718', 132496, 129311, 127527, 0, 'Sausage Man 718 Candies', 'available', 'digiflazz', '0', '2023-01-29 17:16:45', '2023-02-11 17:27:49'),
(14230, '36', 'Sausage Man 1368 Candies', 'sg1368', 257608, 251416, 247948, 0, 'Sausage Man 1368 Candies', 'available', 'digiflazz', '0', '2023-01-29 17:16:45', '2023-02-11 17:27:49'),
(14231, '36', 'Sausage Man 2118 Candies', 'sg2118', 409474, 399631, 394119, 0, 'Sausage Man 2118 Candies', 'available', 'digiflazz', '0', '2023-01-29 17:16:45', '2023-02-11 17:27:49'),
(14232, '36', 'Sausage Man 3280 Candies', 'sg3280', 696800, 680050, 670670, 0, 'Sausage Man 3280 Candies', 'inactive', 'digiflazz', '0', '2023-01-29 17:16:45', '2023-02-11 17:27:49'),
(14233, '56', 'LifeAfter 65 Credits', 'life65', 13759, 13428, 13243, 0, '-', 'available', 'digiflazz', '0', '2023-01-29 17:16:45', '2023-02-11 17:27:49'),
(14234, '56', 'LifeAfter 330 Credits', 'life330', 67080, 65468, 64565, 0, '-', 'available', 'digiflazz', '0', '2023-01-29 17:16:45', '2023-02-11 17:27:49'),
(14235, '56', 'LifeAfter 558 Credits', 'life558', 109720, 107083, 105606, 0, '-', 'available', 'digiflazz', '0', '2023-01-29 17:16:45', '2023-02-11 17:27:49'),
(14236, '56', 'LifeAfter 1108 Credits', 'life1108', 205920, 200970, 198198, 0, '-', 'available', 'digiflazz', '0', '2023-01-29 17:16:45', '2023-02-11 17:27:49'),
(14237, '56', 'LifeAfter 2268 Credits', 'life2268', 410800, 400925, 395395, 0, '-', 'available', 'digiflazz', '0', '2023-01-29 17:16:45', '2023-02-11 17:27:49'),
(14238, '56', 'LifeAfter 3468 Credits', 'life3468', 643760, 628285, 619619, 0, '-', 'available', 'digiflazz', '0', '2023-01-29 17:16:45', '2023-02-11 17:27:49'),
(14239, '56', 'LifeAfter 5768 Credits', 'life5768', 1040000, 1015000, 1001000, 0, '-', 'available', 'digiflazz', '0', '2023-01-29 17:16:45', '2023-02-04 13:50:35'),
(14240, '56', 'LifeAfter 7768 Credits', 'life7768', 1372800, 1339800, 1321320, 0, '-', 'available', 'digiflazz', '0', '2023-01-29 17:16:45', '2023-02-11 17:27:49'),
(14241, '33', 'Apex Legends Mobile Syndicate Gold Pack 22 (23500 Gold)', 'apex23500', 2405038, 2391564, 2268078, 0, 'Masukan ID Apex Legends Mobile', 'available', 'digiflazz', '0', '2023-01-29 17:16:45', '2023-02-01 03:59:48'),
(14242, '33', 'Apex Legends Mobile Syndicate Gold Pack 19 (11500 Gold)', 'apex11500', 1201662, 1194930, 1133231, 0, 'Masukan ID Apex Legends Mobile', 'available', 'digiflazz', '0', '2023-01-29 17:16:45', '2023-02-01 03:59:48'),
(14243, '33', 'Apex Legends Mobile Syndicate Gold Pack 16 (5650 Gold)', 'apex5650', 597618, 594270, 563586, 0, 'Masukan ID Apex Legends Mobile', 'available', 'digiflazz', '0', '2023-01-29 17:16:45', '2023-02-01 03:59:48'),
(14244, '33', 'Apex Legends Mobile Syndicate Gold Pack 8 (2050 Gold)', 'apex2050', 246330, 244950, 232302, 0, 'Masukan ID Apex Legends Mobile', 'available', 'digiflazz', '0', '2023-01-29 17:16:45', '2023-02-01 03:59:48'),
(14245, '33', 'Apex Legends Mobile Syndicate Gold Pack 6 (1050 Gold)', 'apex1010', 126185, 125478, 118999, 0, 'Masukan ID Apex Legends Mobile', 'available', 'digiflazz', '0', '2023-01-29 17:16:45', '2023-02-01 03:59:48'),
(14246, '33', 'Apex Legends Mobile Syndicate Gold Pack 4 (500 Gold)', 'apex500', 63189, 62835, 59591, 0, 'Masukan ID Apex Legends Mobile', 'available', 'digiflazz', '0', '2023-01-29 17:16:45', '2023-02-01 03:59:48'),
(14247, '33', 'Apex Legends Mobile Syndicate Gold Pack 1 (90 Gold)', 'apex90', 15508, 15421, 14625, 0, 'Masukan ID Apex Legends Mobile', 'available', 'digiflazz', '0', '2023-01-29 17:16:45', '2023-02-01 03:59:48'),
(14248, '222', 'Telkomsel 15.000', 'Telkomsel15', 15958, 15869, 15086, 0, 'Pulsa Telkomsel Rp 15.000', 'available', 'digiflazz', '0', '2023-01-29 17:16:45', '2023-02-11 17:27:49'),
(14249, '222', 'Telkomsel 20.000', 'Telkomsel20', 21190, 21071, 20032, 0, 'Pulsa Telkomsel Rp 20.000', 'available', 'digiflazz', '0', '2023-01-29 17:16:45', '2023-02-11 17:27:49'),
(14250, '222', 'Telkomsel 25.000', 'Telkomsel25', 25956, 25810, 24538, 0, 'Pulsa Telkomsel Rp 25.000', 'available', 'digiflazz', '0', '2023-01-29 17:16:45', '2023-02-11 17:27:49'),
(14251, '222', 'Telkomsel 30.000', 'Telkomsel30', 31648, 31471, 29919, 0, 'Pulsa Telkomsel Rp 30.000', 'available', 'digiflazz', '0', '2023-01-29 17:16:45', '2023-02-11 17:27:49'),
(14252, '222', 'Telkomsel 40.000', 'Telkomsel40', 42149, 41913, 39847, 0, 'Pulsa Telkomsel Rp 40.000', 'available', 'digiflazz', '0', '2023-01-29 17:16:45', '2023-02-11 17:27:49'),
(14253, '222', 'Telkomsel 50.000', 'Telkomsel50', 53250, 52952, 50342, 0, 'Pulsa Telkomsel Rp 50.000', 'available', 'digiflazz', '0', '2023-01-29 17:16:45', '2023-02-11 17:27:49'),
(14254, '222', 'Telkomsel 75.000', 'Telkomsel75', 78777, 78336, 74474, 0, 'Pulsa Telkomsel Rp 75.000', 'available', 'digiflazz', '0', '2023-01-29 17:16:45', '2023-02-11 17:27:49'),
(14255, '222', 'Telkomsel 100.000', 'Telkomsel100', 104182, 103598, 98491, 0, 'Telkomsel 100.000', 'available', 'digiflazz', '0', '2023-01-29 17:16:45', '2023-02-11 17:27:49'),
(14256, '222', 'Telkomsel 150.000', 'Telkomsel150', 159708, 158813, 150984, 0, 'Pulsa Telkomsel Rp 150.000', 'available', 'digiflazz', '0', '2023-01-29 17:16:45', '2023-02-11 17:27:49'),
(14257, '222', 'Telkomsel 200.000', 'Telkomsel200', 212674, 211482, 201057, 0, 'Pulsa Telkomsel Rp 200.000', 'available', 'digiflazz', '0', '2023-01-29 17:16:45', '2023-02-11 17:27:49'),
(14258, '31', 'PUBG MOBILE 35 UC', 'pubgm35', 7238, 7064, 6967, 0, 'PUBG MOBILE 35 UC', 'available', 'digiflazz', '0', '2023-01-29 17:16:45', '2023-02-11 17:27:49'),
(14259, '31', 'PUBG MOBILE 70 UC', 'pubgm70', 13572, 13246, 13063, 0, 'PUBG MOBILE 70 UC', 'available', 'digiflazz', '0', '2023-01-29 17:16:45', '2023-02-11 17:27:49'),
(14260, '31', 'PUBG MOBILE 150 UC', 'pubgm150', 27144, 26492, 26126, 0, 'PUBG MOBILE 150 UC', 'available', 'digiflazz', '0', '2023-01-29 17:16:45', '2023-02-11 17:27:49'),
(14261, '31', 'PUBG MOBILE 210 UC', 'pubgm210', 36218, 35347, 34860, 0, 'PUBG MOBILE 210 UC', 'available', 'digiflazz', '0', '2023-01-29 17:16:45', '2023-02-11 17:27:49'),
(14262, '31', 'PUBG MOBILE 250 UC', 'pubgm250', 45297, 44208, 43599, 0, 'PUBG MOBILE 250 UC', 'inactive', 'digiflazz', '0', '2023-01-29 17:16:45', '2023-02-11 17:27:49'),
(14263, '31', 'PUBG MOBILE 500 UC', 'pubgm500', 90480, 88305, 87087, 0, 'PUBG MOBILE 500 UC', 'inactive', 'digiflazz', '0', '2023-01-29 17:16:45', '2023-02-11 17:27:49'),
(14264, '31', 'PUBG MOBILE 700 UC', 'pubgm700', 126672, 123627, 121922, 0, 'PUBG MOBILE 700 UC', 'available', 'digiflazz', '0', '2023-01-29 17:16:45', '2023-02-11 17:27:49'),
(14265, '31', 'PUBG MOBILE 1000 UC', 'pubgm1000', 149521, 145927, 143914, 0, 'PUBG MOBILE 1000 UC', 'available', 'digiflazz', '0', '2023-01-29 17:16:45', '2023-02-11 17:27:49'),
(14266, '31', 'PUBG MOBILE 1250 UC', 'pubgm1250', 222092, 216753, 213764, 0, 'PUBG MOBILE 1250 UC', 'available', 'digiflazz', '0', '2023-01-29 17:16:45', '2023-02-11 17:27:49'),
(14267, '31', 'PUBG MOBILE 1750 UC', 'pubgm1750', 266692, 260282, 256691, 0, 'PUBG MOBILE 1750 UC', 'available', 'digiflazz', '0', '2023-01-29 17:16:45', '2023-02-11 17:27:49'),
(14268, '31', 'PUBG MOBILE 2500 UC', 'pubgm2500', 432640, 422240, 416416, 0, 'PUBG MOBILE 2500 UC', 'available', 'digiflazz', '0', '2023-01-29 17:16:45', '2023-02-04 13:50:35'),
(14269, '31', 'PUBG MOBILE 3500 UC', 'pubgm3500', 504192, 492072, 485285, 0, 'PUBG MOBILE 3500 UC', 'available', 'digiflazz', '0', '2023-01-29 17:16:45', '2023-02-11 17:27:49'),
(14270, '31', 'PUBG MOBILE 5000 UC', 'pubgm5000', 739418, 721644, 711690, 0, 'PUBG MOBILE 5000 UC', 'available', 'digiflazz', '0', '2023-01-29 17:16:45', '2023-02-11 17:27:49'),
(14271, '31', 'PUBG MOBILE 7000 UC', 'pubgm7000', 1032751, 1007925, 994023, 0, 'PUBG MOBILE 7000 UC', 'available', 'digiflazz', '0', '2023-01-29 17:16:45', '2023-02-11 17:27:49'),
(14272, '57', 'Call of Duty Mobile 26 CP', 'codm26', 4680, 4568, 4505, 0, 'Call of Duty Mobile 26CP', 'available', 'digiflazz', '0', '2023-01-29 17:16:45', '2023-02-11 17:27:49'),
(14273, '57', 'Call of Duty Mobile 53 CP', 'codm53', 9360, 9135, 9009, 0, 'Call of Duty Mobile 53CP', 'available', 'digiflazz', '0', '2023-01-29 17:16:46', '2023-02-04 13:50:35'),
(14274, '57', 'Call of Duty Mobile 106 CP', 'codm106', 18720, 18270, 18018, 0, 'Call of Duty Mobile 106CP', 'available', 'digiflazz', '0', '2023-01-29 17:16:46', '2023-02-04 13:50:35'),
(14275, '57', 'Call of Duty Mobile 264 CP', 'codm264', 46800, 45675, 45045, 0, 'Call of Duty Mobile 264CP', 'available', 'digiflazz', '0', '2023-01-29 17:16:46', '2023-02-04 13:50:35'),
(14276, '57', 'Call of Duty Mobile 528 CP', 'codm528', 99736, 97339, 95996, 0, 'Call of Duty Mobile 528CP', 'available', 'digiflazz', '0', '2023-01-29 17:16:46', '2023-02-11 17:27:49'),
(14277, '57', 'Call of Duty Mobile 1056 CP', 'codm1056', 187200, 182700, 180180, 0, 'Call of Duty Mobile 1056CP', 'available', 'digiflazz', '0', '2023-01-29 17:16:46', '2023-02-04 13:50:35'),
(14278, '57', 'Call of Duty Mobile 1584 CP', 'codm1584', 298090, 290924, 286912, 0, 'Call of Duty Mobile 1584', 'available', 'digiflazz', '0', '2023-01-29 17:16:46', '2023-02-11 17:27:49'),
(14279, '57', 'Call of Duty Mobile 2640 CP', 'codm2640', 468000, 456750, 450450, 0, 'Call of Duty Mobile 2640CP', 'available', 'digiflazz', '0', '2023-01-29 17:16:46', '2023-02-04 13:50:35'),
(14280, '57', 'Call of Duty Mobile 5280 CP', 'codm5280', 936000, 913500, 900900, 0, 'Call of Duty Mobile 5280CP', 'available', 'digiflazz', '0', '2023-01-29 17:16:46', '2023-02-04 13:50:35'),
(14281, '57', 'Call of Duty Mobile 10560 CP', 'codm10560', 1893840, 1848315, 1822821, 0, 'Call of Duty Mobile 10560CP', 'available', 'digiflazz', '0', '2023-01-29 17:16:46', '2023-02-04 13:50:35'),
(14282, '35', '12 Big Cat Coins', 'rmel12', 26474, 25838, 25481, 0, '12 Big Cat Coins', 'available', 'digiflazz', '0', '2023-01-29 17:16:46', '2023-02-11 17:27:49'),
(14283, '35', '24 Big Cat Coins', 'rmel24', 52924, 51651, 50939, 0, '24 Big Cat Coins', 'available', 'digiflazz', '0', '2023-01-29 17:16:46', '2023-02-11 17:27:49'),
(14284, '35', '36 Big Cat Coins', 'rmel36', 65520, 63945, 63063, 0, '36 Big Cat Coins', 'available', 'digiflazz', '0', '2023-01-29 17:16:46', '2023-02-11 17:27:49'),
(14285, '35', '120 Big Cat Coins', 'rmel120', 295610, 288504, 284524, 0, '120 Big Cat Coins', 'available', 'digiflazz', '0', '2023-01-29 17:16:46', '2023-02-11 17:27:49'),
(14286, '35', '72 Big Cat Coins', 'rmel72', 132268, 129089, 127308, 0, '72 Big Cat Coins', 'available', 'digiflazz', '0', '2023-01-29 17:16:46', '2023-02-11 17:27:49'),
(14287, '35', '373 Big Cat Coins', 'rmel373', 644800, 629300, 620620, 0, '373 Big Cat Coins', 'available', 'digiflazz', '0', '2023-01-29 17:16:46', '2023-02-04 13:50:35'),
(14288, '35', '748 Big Cat Coins', 'rmel748', 1289600, 1258600, 1241240, 0, '748 Big Cat Coins', 'available', 'digiflazz', '0', '2023-01-29 17:16:46', '2023-02-04 13:50:35'),
(14289, '35', '1532 Big Cat Coins', 'rmel1532', 2579200, 2517200, 2482480, 0, '1532 Big Cat Coins', 'available', 'digiflazz', '0', '2023-01-29 17:16:46', '2023-02-04 13:50:35'),
(14290, '44', 'Marvel Super War 55 Star Credits', 'marvel55', 14040, 13703, 13514, 0, 'Marvel Super War 55 Star Credits', 'available', 'digiflazz', '0', '2023-01-29 17:16:46', '2023-02-11 17:27:49'),
(14291, '44', 'Marvel Super War 275 Star Credits', 'marvel275', 67600, 65975, 65065, 0, 'Marvel Super War 275 Star Credits', 'available', 'digiflazz', '0', '2023-01-29 17:16:46', '2023-02-04 13:50:35'),
(14292, '44', 'Marvel Super War 565 Star Credits', 'marvel565', 140400, 137025, 135135, 0, 'Marvel Super War 565 Star Credits', 'available', 'digiflazz', '0', '2023-01-29 17:16:46', '2023-02-04 13:50:35'),
(14293, '44', 'Marvel Super War 1155 Star Credits', 'marvel1155', 279760, 273035, 269269, 0, 'Marvel Super War 1155 Star Credits', 'available', 'digiflazz', '0', '2023-01-29 17:16:46', '2023-02-04 13:50:35'),
(14294, '44', 'Marvel Super War 1765 Star Credits', 'marvel1765', 426920, 416658, 410911, 0, 'Marvel Super War 1765 Star Credits', 'available', 'digiflazz', '0', '2023-01-29 17:16:46', '2023-02-11 17:27:49'),
(14295, '44', 'Marvel Super War 2950 Star Credits', 'marvel2950', 685360, 668885, 659659, 0, 'Marvel Super War 2950 Star Credits', 'available', 'digiflazz', '0', '2023-01-29 17:16:46', '2023-02-11 17:27:49'),
(14296, '44', 'Marvel Super War 6000 Star Credits', 'marvel6000', 1352000, 1319500, 1301300, 0, 'Marvel Super War 6000 Star Credits', 'available', 'digiflazz', '0', '2023-01-29 17:16:46', '2023-02-04 13:50:35'),
(14297, '41', 'Tom and Jerry: Chase 60 Diamond', 'tomjerry60', 13468, 13144, 12963, 0, '-', 'available', 'digiflazz', '0', '2023-01-29 17:16:46', '2023-02-11 17:27:49'),
(14298, '41', 'Tom and Jerry: Chase 180 Diamond', 'tomjerry180', 41444, 40448, 39890, 0, '-', 'available', 'digiflazz', '0', '2023-01-29 17:16:46', '2023-02-11 17:27:49'),
(14299, '41', 'Tom and Jerry: Chase 300 Diamond', 'tomjerry300', 68640, 66990, 66066, 0, '-', 'available', 'digiflazz', '0', '2023-01-29 17:16:46', '2023-02-04 13:50:36'),
(14300, '41', 'Tom and Jerry: Chase 600 Diamond', 'tomjerry600', 137280, 133980, 132132, 0, '-', 'available', 'digiflazz', '0', '2023-01-29 17:16:46', '2023-02-04 13:50:36'),
(14301, '41', 'Tom and Jerry: Chase 1200 Diamond', 'tomjerry1200', 226304, 220864, 217818, 0, '-', 'available', 'digiflazz', '0', '2023-01-29 17:16:46', '2023-02-11 17:27:49'),
(14302, '41', 'Tom and Jerry: Chase 1800 Diamond', 'tomjerry1800', 312182, 304678, 300475, 0, '-', 'available', 'digiflazz', '0', '2023-01-29 17:16:46', '2023-02-11 17:27:49'),
(14303, '41', 'Tom and Jerry: Chase 3000 Diamond', 'tomjerry3000', 691626, 675000, 665690, 0, '-', 'available', 'digiflazz', '0', '2023-01-29 17:16:46', '2023-02-11 17:27:49'),
(14304, '41', 'Tom and Jerry: Chase 6000 Diamond', 'tomjerry6000', 1391182, 1357740, 1339013, 0, '-', 'available', 'digiflazz', '0', '2023-01-29 17:16:46', '2023-02-11 17:27:49'),
(14305, '110', 'Super Sus 100 Golder Star', 'supersus100', 9880, 9643, 9510, 0, 'Input user id game Super Sus.', 'available', 'digiflazz', '0', '2023-01-29 17:16:46', '2023-02-11 17:27:49'),
(14306, '110', 'Super Sus 310 Golder Star', 'supersus310', 27976, 27304, 26927, 0, 'Input user id game Super Sus.', 'available', 'digiflazz', '0', '2023-01-29 17:16:46', '2023-02-11 17:27:49'),
(14307, '110', 'Super Sus 520 Golder Star', 'supersus520', 48880, 47705, 47047, 0, 'Input user id game Super Sus.', 'available', 'digiflazz', '0', '2023-01-29 17:16:46', '2023-02-04 13:50:36'),
(14308, '110', 'Super Sus 1.060 Golder Star', 'supersus1060', 98280, 95918, 94595, 0, 'Input user id game Super Sus.', 'available', 'digiflazz', '0', '2023-01-29 17:16:46', '2023-02-11 17:27:49'),
(14309, '110', 'Super Sus 2.180 Golder Star', 'supersus2180', 206388, 201427, 198648, 0, 'Input user id game Super Sus.', 'available', 'digiflazz', '0', '2023-01-29 17:16:46', '2023-02-11 17:27:49'),
(14310, '110', 'Super Sus 5.600 Golder Star', 'supersus5600', 520884, 508363, 501351, 0, 'Input user id game Super Sus.', 'available', 'digiflazz', '0', '2023-01-29 17:16:46', '2023-02-11 17:27:49'),
(14311, '42', 'Hyper Front SEA 6.480 Star Quartz', 'hyperfront6480', 1320048, 1288316, 1270546, 0, 'Input User Id Hyper Front SEA', 'available', 'digiflazz', '0', '2023-01-29 17:16:46', '2023-02-11 17:27:49'),
(14312, '42', 'Hyper Front SEA 3.280 Star Quartz', 'hyperfront3280', 416000, 406000, 400400, 0, 'Input User Id Hyper Front SEA', 'available', 'digiflazz', '0', '2023-01-29 17:16:46', '2023-02-04 13:50:36'),
(14313, '42', 'Hyper Front SEA 1.980 Star Quartz', 'hyperfront1980', 395937, 386420, 381090, 0, 'Input User Id Hyper Front SEA', 'available', 'digiflazz', '0', '2023-01-29 17:16:46', '2023-02-11 17:27:49'),
(14314, '42', 'Hyper Front SEA 1.280 Star Quartz', 'hyperfront1280', 263911, 257567, 254015, 0, 'Input User Id Hyper Front SEA', 'available', 'digiflazz', '0', '2023-01-29 17:16:46', '2023-02-11 17:27:49'),
(14315, '42', 'Hyper Front SEA 300 Star Quartz', 'hyperfront300', 65890, 64306, 63419, 0, 'Input User Id Hyper Front SEA', 'available', 'digiflazz', '0', '2023-01-29 17:16:46', '2023-02-11 17:27:49'),
(14316, '42', 'Hyper Front SEA 60 Star Quartz', 'hyperfront60', 13558, 13233, 13050, 0, 'Input User Id Hyper Front SEA', 'available', 'digiflazz', '0', '2023-01-29 17:16:46', '2023-02-11 17:27:49'),
(14317, '46', 'Dragon Raja Investment Fund', 'drajaif', 205010, 200082, 197322, 0, 'Masukkan ID Player di dalam game.', 'available', 'digiflazz', '0', '2023-01-29 17:16:46', '2023-02-11 17:27:49'),
(14318, '46', 'Dragon Raja Investment Fund II', 'draja2', 271986, 265448, 261787, 0, 'Masukkan ID Player di dalam game.', 'available', 'digiflazz', '0', '2023-01-29 17:16:46', '2023-02-11 17:27:49'),
(14319, '46', 'Dragon Raja 76 Coupons', 'draja76', 16271, 15880, 15661, 0, 'Masukkan ID Player di dalam game.', 'available', 'digiflazz', '0', '2023-01-29 17:16:46', '2023-02-11 17:27:49'),
(14320, '46', 'Dragon Raja 90 Coupons', 'draja90', 21798, 21274, 20981, 0, 'Masukkan ID Player di dalam game.', 'available', 'digiflazz', '0', '2023-01-29 17:16:46', '2023-02-11 17:27:49'),
(14321, '46', 'Dragon Raja 337 Coupons', 'draja337', 74724, 72928, 71922, 0, 'Masukkan ID Player di dalam game.', 'available', 'digiflazz', '0', '2023-01-29 17:16:46', '2023-02-11 17:27:49'),
(14322, '46', 'Dragon Raja 456 Coupons', 'draja456', 96720, 94395, 93093, 0, 'Masukkan ID Player di dalam game.', 'available', 'digiflazz', '0', '2023-01-29 17:16:46', '2023-02-04 13:50:36'),
(14323, '46', 'Dragon Raja 820 Coupons', 'draja820', 162240, 158340, 156156, 0, 'Masukkan ID Player di dalam game.', 'available', 'digiflazz', '0', '2023-01-29 17:16:46', '2023-02-04 13:50:36'),
(14324, '46', 'Dragon Raja 988 Coupons', 'draja988', 217464, 212237, 209309, 0, 'Masukkan ID Player di dalam game.', 'available', 'digiflazz', '0', '2023-01-29 17:16:46', '2023-02-11 17:27:49'),
(14325, '46', 'Dragon Raja 2553 Coupons', 'draja2553', 494858, 482962, 476301, 0, 'Masukkan ID Player di dalam game.', 'available', 'digiflazz', '0', '2023-01-29 17:16:46', '2023-02-11 17:27:49'),
(14326, '46', 'Dragon Raja 3589 Coupons', 'draja3589', 699010, 682207, 672797, 0, 'Masukkan ID Player di dalam game.', 'available', 'digiflazz', '0', '2023-01-29 17:16:46', '2023-02-11 17:27:49'),
(14327, '46', 'Dragon Raja 5161 Coupons', 'draja5161', 969280, 945980, 932932, 0, 'Masukkan ID Player di dalam game.', 'available', 'digiflazz', '0', '2023-01-29 17:16:46', '2023-02-04 13:50:36'),
(14328, '46', 'Dragon Raja 15092 Coupons', 'draja15092', 3290274, 3211181, 3166889, 0, 'Masukkan ID Player di dalam game.', 'available', 'digiflazz', '0', '2023-01-29 17:16:46', '2023-02-11 17:27:49'),
(14329, '46', 'Dragon Raja 9056 Coupons', 'draja9056', 1612000, 1573250, 1551550, 0, 'Masukkan ID Player di dalam game.', 'available', 'digiflazz', '0', '2023-01-29 17:16:46', '2023-02-04 13:50:36'),
(14330, '46', 'Dragon Raja 7546 Coupons', 'draja7546', 1499394, 1463351, 1443167, 0, 'Masukkan ID Player di dalam game.', 'available', 'digiflazz', '0', '2023-01-29 17:16:46', '2023-02-11 17:27:49'),
(14331, '39', 'Light of Thel 90 Crystals', 'lot90', 12886, 12576, 12402, 0, 'masukkan id game', 'available', 'digiflazz', '0', '2023-01-29 17:16:46', '2023-02-11 17:27:49'),
(14332, '39', 'Light of Thel 450 Crystals', 'lot450', 64058, 62518, 61656, 0, 'masukkan id game', 'available', 'digiflazz', '0', '2023-01-29 17:16:46', '2023-02-11 17:27:49'),
(14333, '39', 'Light of Thel 900 Crystals', 'lot900', 135200, 131950, 130130, 0, 'masukkan id game', 'available', 'digiflazz', '0', '2023-01-29 17:16:46', '2023-02-04 13:50:36'),
(14334, '39', 'Light of Thel 1800 Crystals', 'lot1800', 260000, 253750, 250250, 0, 'masukkan id game', 'available', 'digiflazz', '0', '2023-01-29 17:16:46', '2023-02-04 13:50:36'),
(14335, '39', 'Light of Thel 4500 Crystals', 'lot4500', 676000, 659750, 650650, 0, 'masukkan id game', 'available', 'digiflazz', '0', '2023-01-29 17:16:46', '2023-02-04 13:50:36'),
(14336, '39', 'Light of Thel 9000 Crystals', 'lot9000', 1352000, 1319500, 1301300, 0, 'masukkan id game', 'available', 'digiflazz', '0', '2023-01-29 17:16:46', '2023-02-04 13:50:36'),
(14337, '47', 'Laplace M 300 Spirals', 'lpm300', 74142, 72359, 71361, 0, 'Laplace M 300 Spirals', 'available', 'digiflazz', '0', '2023-01-29 17:16:46', '2023-02-11 17:27:50'),
(14338, '47', 'Laplace M 60 Spirals', 'lpm60', 14846, 14489, 14289, 0, 'Laplace M 60 Spirals', 'available', 'digiflazz', '0', '2023-01-29 17:16:46', '2023-02-11 17:27:50'),
(14339, '47', 'Laplace M 980 Spirals', 'lpm980', 216414, 211211, 208298, 0, 'Laplace M 980 Spirals', 'available', 'digiflazz', '0', '2023-01-29 17:16:46', '2023-02-11 17:27:50'),
(14340, '47', 'Laplace M 1980 Spirals', 'lpm1980', 433774, 423346, 417507, 0, 'Laplace M 1980 Spirals', 'available', 'digiflazz', '0', '2023-01-29 17:16:46', '2023-02-11 17:27:50'),
(14341, '47', 'Laplace M 3280 Spirals', 'lpm3280', 730174, 712621, 702792, 0, 'Laplace M 3280 Spirals', 'available', 'digiflazz', '0', '2023-01-29 17:16:46', '2023-02-11 17:27:50'),
(14342, '47', 'Laplace M 6480 Spirals', 'lpm6480', 1481054, 1445451, 1425514, 0, 'Laplace M 6480 Spirals', 'available', 'digiflazz', '0', '2023-01-29 17:16:46', '2023-02-11 17:27:50'),
(14343, '37', 'MU ORIGIN 3 - 7.000 Divine Diamonds', 'MU37000', 1572480, 1534680, 1513512, 0, 'Masukkan Role ID. Untuk menemukan ID Peran Anda, masuk ke dalam akun Anda di aplikasi. Ketuk ikon menu, lalu ketuk ikon pengaturan, Anda akan menemukan tombol Salin ID Peran.', 'available', 'digiflazz', '0', '2023-01-29 17:16:46', '2023-02-04 13:50:36'),
(14344, '37', 'MU ORIGIN 3 - 3.500 Divine Diamonds', 'MU33500', 785928, 767036, 756456, 0, 'Masukkan Role ID. Untuk menemukan ID Peran Anda, masuk ke dalam akun Anda di aplikasi. Ketuk ikon menu, lalu ketuk ikon pengaturan, Anda akan menemukan tombol Salin ID Peran.', 'available', 'digiflazz', '0', '2023-01-29 17:16:46', '2023-02-11 17:27:50'),
(14345, '37', 'MU ORIGIN 3 - 2.100 Divine Diamonds', 'MU32100', 474760, 463348, 456957, 0, 'Masukkan Role ID. Untuk menemukan ID Peran Anda, masuk ke dalam akun Anda di aplikasi. Ketuk ikon menu, lalu ketuk ikon pengaturan, Anda akan menemukan tombol Salin ID Peran.', 'available', 'digiflazz', '0', '2023-01-29 17:16:46', '2023-02-11 17:27:50'),
(14346, '37', 'MU ORIGIN 3 - 1.050 Divine Diamonds', 'MU31050', 229008, 223503, 220420, 0, 'Masukkan Role ID. Untuk menemukan ID Peran Anda, masuk ke dalam akun Anda di aplikasi. Ketuk ikon menu, lalu ketuk ikon pengaturan, Anda akan menemukan tombol Salin ID Peran.', 'available', 'digiflazz', '0', '2023-01-29 17:16:46', '2023-02-11 17:27:50'),
(14347, '37', 'MU ORIGIN 3 - 350 Divine Diamonds', 'MU3350', 78312, 76430, 75375, 0, 'Masukkan Role ID. Untuk menemukan ID Peran Anda, masuk ke dalam akun Anda di aplikasi. Ketuk ikon menu, lalu ketuk ikon pengaturan, Anda akan menemukan tombol Salin ID Peran.', 'available', 'digiflazz', '0', '2023-01-29 17:16:46', '2023-02-11 17:27:50'),
(14348, '37', 'MU ORIGIN 3 - 70 Divine Diamonds', 'MU370', 16120, 15733, 15516, 0, 'Masukkan Role ID. Untuk menemukan ID Peran Anda, masuk ke dalam akun Anda di aplikasi. Ketuk ikon menu, lalu ketuk ikon pengaturan, Anda akan menemukan tombol Salin ID Peran.', 'available', 'digiflazz', '0', '2023-01-29 17:16:46', '2023-02-11 17:27:50'),
(14349, '101', 'Be The King AS 6800 Gold', 'btk6800', 1362426, 1329675, 1311335, 0, 'Masukkan gabungan User Id dan Server. Contoh jika User Id adalah 9999999999 dan Server S1, maka tujuan diisi 9999999999S1', 'available', 'digiflazz', '0', '2023-01-29 17:16:46', '2023-02-11 17:27:50'),
(14350, '101', 'Be The King AS 3400 Gold', 'btk3400', 676026, 659775, 650675, 0, 'Masukkan gabungan User Id dan Server. Contoh jika User Id adalah 9999999999 dan Server S1, maka tujuan diisi 9999999999S1', 'available', 'digiflazz', '0', '2023-01-29 17:16:46', '2023-02-11 17:27:50'),
(14351, '101', 'Be The King AS 2040 Gold', 'btk2040', 405626, 395875, 390415, 0, 'Masukkan gabungan User Id dan Server. Contoh jika User Id adalah 9999999999 dan Server S1, maka tujuan diisi 9999999999S1', 'available', 'digiflazz', '0', '2023-01-29 17:16:46', '2023-02-11 17:27:50'),
(14352, '101', 'Be The King AS 680 Gold', 'btk680', 135226, 131975, 130155, 0, 'Masukkan gabungan User Id dan Server. Contoh jika User Id adalah 9999999999 dan Server S1, maka tujuan diisi 9999999999S1', 'available', 'digiflazz', '0', '2023-01-29 17:16:46', '2023-02-11 17:27:50'),
(14353, '101', 'Be The King AS 300 Gold', 'btk300', 70226, 68538, 67593, 0, 'Masukkan gabungan User Id dan Server. Contoh jika User Id adalah 9999999999 dan Server S1, maka tujuan diisi 9999999999S1', 'available', 'digiflazz', '0', '2023-01-29 17:16:46', '2023-02-11 17:27:50'),
(14354, '101', 'Be The King AS 60 Gold', 'btk60', 13634, 13307, 13123, 0, 'Masukkan gabungan User Id dan Server. Contoh jika User Id adalah 9999999999 dan Server S1, maka tujuan diisi 9999999999S1', 'available', 'digiflazz', '0', '2023-01-29 17:16:46', '2023-02-11 17:27:50'),
(14355, '112', 'YS 6 Mobile 60 Emelas', 'ys6m60', 11892, 11607, 11446, 0, 'Masukkan User Id di dalam game.', 'available', 'digiflazz', '0', '2023-01-29 17:16:46', '2023-02-11 17:27:50'),
(14356, '112', 'YS 6 Mobile 300 Emelas', 'ys6m300', 58370, 56967, 56181, 0, 'Masukkan User Id di dalam game.', 'available', 'digiflazz', '0', '2023-01-29 17:16:46', '2023-02-11 17:27:50'),
(14357, '112', 'YS 6 Mobile 680 Emelas', 'ys6m680', 130546, 127408, 125651, 0, 'Masukkan User Id di dalam game.', 'available', 'digiflazz', '0', '2023-01-29 17:16:46', '2023-02-11 17:27:50'),
(14358, '112', 'YS 6 Mobile 1.280 Emelas', 'ys6m1280', 244166, 238297, 235010, 0, 'Masukkan User Id di dalam game.', 'available', 'digiflazz', '0', '2023-01-29 17:16:46', '2023-02-11 17:27:50'),
(14359, '112', 'YS 6 Mobile 1.980 Emelas', 'ys6m1980', 375648, 366618, 361561, 0, 'Masukkan User Id di dalam game.', 'available', 'digiflazz', '0', '2023-01-29 17:16:46', '2023-02-11 17:27:50'),
(14360, '112', 'YS 6 Mobile 3.280 Emelas', 'ys6m3280', 592046, 577814, 569844, 0, 'Masukkan User Id di dalam game.', 'available', 'digiflazz', '0', '2023-01-29 17:16:46', '2023-02-11 17:27:50'),
(14361, '112', 'YS 6 Mobile 4.880 Emelas', 'ys6m4880', 888472, 867115, 855154, 0, 'Masukkan User Id di dalam game.', 'available', 'digiflazz', '0', '2023-01-29 17:16:46', '2023-02-11 17:27:50'),
(14362, '112', 'YS 6 Mobile 6.480 Emelas', 'ys6m6480', 1056458, 1031062, 1016841, 0, 'Masukkan User Id di dalam game.', 'available', 'digiflazz', '0', '2023-01-29 17:16:46', '2023-02-11 17:27:50'),
(14363, '337', 'Bleach Mobile 3D 9000 Kristal', 'bleach9000', 1528344, 1519782, 1441310, 0, '-', 'inactive', 'digiflazz', '0', '2023-01-29 17:16:46', '2023-02-01 03:59:49'),
(14364, '337', 'Bleach Mobile 3D 4950 Kristal', 'bleach4950', 839905, 835200, 792075, 0, '-', 'inactive', 'digiflazz', '0', '2023-01-29 17:16:46', '2023-02-01 03:59:49'),
(14365, '337', 'Bleach Mobile 3D 3000 Kristal', 'bleach3000', 509073, 506221, 480083, 0, '-', 'inactive', 'digiflazz', '0', '2023-01-29 17:16:46', '2023-02-01 03:59:49'),
(14366, '337', 'Bleach Mobile 3D 2970 Kristal', 'bleach2970', 505003, 502174, 476245, 0, '-', 'inactive', 'digiflazz', '0', '2023-01-29 17:16:46', '2023-02-01 03:59:49'),
(14367, '337', 'Bleach Mobile 3D 1980 Kristal', 'bleach1980', 335999, 334117, 316865, 0, '-', 'inactive', 'digiflazz', '0', '2023-01-29 17:16:46', '2023-02-01 03:59:49'),
(14368, '337', 'Bleach Mobile 3D 1530 Kristal', 'bleach1530', 259691, 258236, 244902, 0, '-', 'inactive', 'digiflazz', '0', '2023-01-29 17:16:47', '2023-02-01 03:59:49'),
(14369, '337', 'Bleach Mobile 3D 1500 Kristal', 'bleach1500', 254603, 253177, 240105, 0, '-', 'inactive', 'digiflazz', '0', '2023-01-29 17:16:47', '2023-02-01 03:59:49'),
(14370, '337', 'Bleach Mobile 3D 900 Kristal', 'bleach900', 152805, 151949, 144103, 0, '-', 'inactive', 'digiflazz', '0', '2023-01-29 17:16:47', '2023-02-01 03:59:49'),
(14371, '337', 'Bleach Mobile 3D 600 Kristal', 'bleach600', 101932, 101361, 96128, 0, '-', 'inactive', 'digiflazz', '0', '2023-01-29 17:16:47', '2023-02-01 03:59:49'),
(14372, '337', 'Bleach Mobile 3D 450 Kristal', 'bleach450', 76496, 76068, 72140, 0, '-', 'inactive', 'digiflazz', '0', '2023-01-29 17:16:47', '2023-02-01 03:59:49'),
(14373, '337', 'Bleach Mobile 3D 300 Kristal', 'bleach300', 51006, 50721, 48102, 0, '-', 'inactive', 'digiflazz', '0', '2023-01-29 17:16:47', '2023-02-01 03:59:49'),
(14374, '337', 'Bleach Mobile 3D 360 Kristal', 'bleach360', 61181, 60838, 57697, 0, '-', 'inactive', 'digiflazz', '0', '2023-01-29 17:16:47', '2023-02-01 03:59:49'),
(14375, '337', 'Bleach Mobile 3D 30 Kristal', 'bleach30', 5194, 5165, 4899, 0, '-', 'available', 'digiflazz', '0', '2023-01-29 17:16:47', '2023-02-01 03:59:49'),
(14376, '337', 'Bleach Mobile 3D 60 Kristal', 'bleach60', 10287, 10229, 9701, 0, '-', 'inactive', 'digiflazz', '0', '2023-01-29 17:16:47', '2023-02-01 03:59:49'),
(14377, '337', 'Bleach Mobile 3D 120 Kristal', 'bleach120', 20467, 20352, 19301, 0, '-', 'inactive', 'digiflazz', '0', '2023-01-29 17:16:47', '2023-02-01 03:59:50'),
(14378, '337', 'Bleach Mobile 3D 180 Kristal', 'bleach180', 30657, 30486, 28912, 0, '-', 'inactive', 'digiflazz', '0', '2023-01-29 17:16:47', '2023-02-01 03:59:50'),
(14379, '224', 'Axis 5.000', 'axis5', 6180, 6145, 5842, 0, 'Pulsa Axis Rp 5.000', 'available', 'digiflazz', '0', '2023-01-29 17:16:47', '2023-02-11 17:27:50'),
(14380, '224', 'Axis 10.000', 'axis10', 11390, 11326, 10768, 0, 'Pulsa Axis Rp 10.000', 'available', 'digiflazz', '0', '2023-01-29 17:16:47', '2023-02-11 17:27:50'),
(14381, '224', 'Axis 15.000', 'axis15', 15862, 15773, 14995, 0, 'Pulsa Axis Rp 15.000', 'available', 'digiflazz', '0', '2023-01-29 17:16:47', '2023-02-11 17:27:50'),
(14382, '224', 'Axis 25.000', 'axis25', 26025, 25880, 24604, 0, 'Pulsa Axis Rp 25.000', 'available', 'digiflazz', '0', '2023-01-29 17:16:47', '2023-02-11 17:27:50'),
(14383, '224', 'Axis 30.000', 'axis30', 32007, 31828, 30259, 0, 'Pulsa Axis Rp 30.000', 'available', 'digiflazz', '0', '2023-01-29 17:16:47', '2023-02-11 17:27:50'),
(14384, '224', 'Axis 50.000', 'axis50', 52559, 52265, 49688, 0, 'Pulsa Axis Rp 50.000', 'available', 'digiflazz', '0', '2023-01-29 17:16:47', '2023-02-11 17:27:50'),
(14385, '224', 'Axis 200.000', 'axis200', 197476, 196370, 186690, 0, 'Pulsa Axis Rp 200.000', 'available', 'digiflazz', '0', '2023-01-29 17:16:47', '2023-02-11 17:27:50'),
(14386, '224', 'Axis 300.000', 'axis300', 318965, 317178, 301543, 0, 'Pulsa Axis Rp 300.000', 'available', 'digiflazz', '0', '2023-01-29 17:16:47', '2023-02-11 17:27:50'),
(14387, '224', 'Axis 1.000.000', 'axis1000', 1065136, 1059169, 1006957, 0, 'Pulsa Axis Rp 1.000.000', 'available', 'digiflazz', '0', '2023-01-29 17:16:47', '2023-02-11 17:27:50'),
(14388, '222', 'Telkomsel 5.000', 'Telkomsel5', 5360, 5330, 5068, 0, 'Pulsa Telkomsel Rp 5.000', 'available', 'digiflazz', '0', '2023-01-29 17:16:47', '2023-02-11 17:27:50'),
(14389, '222', 'Telkomsel 2.000', 'Telkomsel2', 2415, 2402, 2283, 0, 'Pulsa Telkomsel Rp 2.000', 'available', 'digiflazz', '0', '2023-01-29 17:16:47', '2023-02-11 17:27:50'),
(14390, '225', 'Indosat 15.000', 'isat15', 15728, 15640, 14869, 0, 'Pulsa Indosat Rp 15.000', 'inactive', 'digiflazz', '0', '2023-01-29 17:16:47', '2023-02-11 17:27:50'),
(14391, '225', 'Indosat 20.000', 'isat20', 20917, 20799, 19774, 0, 'Pulsa Indosat Rp 20.000', 'available', 'digiflazz', '0', '2023-01-29 17:16:47', '2023-02-11 17:27:50'),
(14392, '225', 'Indosat 40.000', 'isat40', 41860, 41626, 39574, 0, 'Pulsa Indosat Rp 40.000', 'available', 'digiflazz', '0', '2023-01-29 17:16:47', '2023-02-11 17:27:50'),
(14393, '225', 'Indosat 90.000', 'isat90', 93102, 92580, 88017, 0, 'Pulsa Indosat Rp 90.000', 'available', 'digiflazz', '0', '2023-01-29 17:16:47', '2023-02-11 17:27:50'),
(14394, '225', 'Indosat 125.000', 'isat125', 127797, 127081, 120817, 0, 'Pulsa Indosat Rp 125.000', 'available', 'digiflazz', '0', '2023-01-29 17:16:47', '2023-02-11 17:27:50'),
(14395, '225', 'Indosat 150.000', 'isat150', 152751, 151896, 144408, 0, 'Pulsa Indosat Rp 150.000', 'available', 'digiflazz', '0', '2023-01-29 17:16:47', '2023-02-11 17:27:50'),
(14396, '225', 'Indosat 175.000', 'isat175', 179285, 178281, 169493, 0, 'Pulsa Indosat Rp. 175.000', 'available', 'digiflazz', '0', '2023-01-29 17:16:47', '2023-02-11 17:27:50'),
(14397, '225', 'Indosat 300.000', 'isat300', 307939, 306214, 291119, 0, 'Pulsa Indosat Rp. 300.000', 'available', 'digiflazz', '0', '2023-01-29 17:16:47', '2023-02-11 17:27:50'),
(14398, '225', 'Indosat 500.000', 'isat500', 496623, 493841, 469496, 0, 'Pulsa Indosat Rp 500.000', 'available', 'digiflazz', '0', '2023-01-29 17:16:47', '2023-02-11 17:27:50'),
(14399, '225', 'Indosat 5.000', 'isat5', 5435, 5405, 5138, 0, 'Pulsa Indosat Rp 5.000', 'available', 'digiflazz', '0', '2023-01-29 17:16:47', '2023-02-11 17:27:50'),
(14400, '225', 'Indosat 10.000', 'isat10', 10790, 10730, 10201, 0, 'Pulsa Indosat Rp 10.000', 'available', 'digiflazz', '0', '2023-01-29 17:16:47', '2023-02-11 17:27:50'),
(14401, '225', 'Indosat 25.000', 'isat25', 26159, 26013, 24730, 0, 'Pulsa Indosat Rp 25.000', 'available', 'digiflazz', '0', '2023-01-29 17:16:47', '2023-02-11 17:27:50'),
(14402, '225', 'Indosat 30.000', 'isat30', 31257, 31082, 29550, 0, 'Pulsa Indosat Rp 30.000', 'available', 'digiflazz', '0', '2023-01-29 17:16:47', '2023-02-11 17:27:50'),
(14403, '225', 'Indosat 50.000', 'isat50', 51965, 51674, 49127, 0, 'Pulsa Indosat Rp 50.000', 'available', 'digiflazz', '0', '2023-01-29 17:16:47', '2023-02-11 17:27:50'),
(14404, '225', 'Indosat 60.000', 'isat60', 62113, 61765, 58720, 0, 'Pulsa Indosat Rp 60.000', 'inactive', 'digiflazz', '0', '2023-01-29 17:16:47', '2023-02-11 17:27:50'),
(14405, '225', 'Indosat 70.000', 'isat70', 72807, 72399, 68830, 0, 'Pulsa Indosat Rp 70.000', 'inactive', 'digiflazz', '0', '2023-01-29 17:16:47', '2023-02-11 17:27:50'),
(14406, '225', 'Indosat 100.000', 'isat100', 102607, 102032, 97003, 0, 'Pulsa Indosat Rp 100.000', 'available', 'digiflazz', '0', '2023-01-29 17:16:47', '2023-02-11 17:27:50'),
(14407, '225', 'Indosat 200.000', 'isat200', 198269, 197158, 187439, 0, 'Pulsa Indosat Rp 200.000', 'available', 'digiflazz', '0', '2023-01-29 17:16:47', '2023-02-11 17:27:50'),
(14408, '225', 'Indosat 250.000', 'isat250', 248151, 246761, 234596, 0, 'Pulsa Indosat Rp 250.000', 'available', 'digiflazz', '0', '2023-01-29 17:16:47', '2023-02-11 17:27:50'),
(14409, '224', 'Axis 500.000', 'axis500', 531559, 528581, 502524, 0, 'Pulsa Axis Rp 500.000', 'available', 'digiflazz', '0', '2023-01-29 17:16:47', '2023-02-11 17:27:50'),
(14410, '224', 'Axis 100.000', 'axis100', 104985, 104397, 99250, 0, 'Pulsa Axis Rp 100.000', 'available', 'digiflazz', '0', '2023-01-29 17:16:47', '2023-02-11 17:27:50'),
(14411, '226', 'Smartfren 5.000', 'smartf5', 5232, 5203, 4946, 0, 'Pulsa Smart Rp 5.000', 'available', 'digiflazz', '0', '2023-01-29 17:16:47', '2023-02-11 17:27:50'),
(14412, '226', 'Smartfren 10.000', 'smartf10', 10496, 10437, 9923, 0, 'Pulsa Smart Rp 10.000', 'available', 'digiflazz', '0', '2023-01-29 17:16:47', '2023-02-11 17:27:50'),
(14413, '226', 'Smartfren 15.000', 'smartf15', 15712, 15624, 14853, 0, 'Pulsa Smart Rp 15.000', 'available', 'digiflazz', '0', '2023-01-29 17:16:47', '2023-02-11 17:27:50'),
(14414, '226', 'Smartfren 20.000', 'smartf20', 20563, 20448, 19440, 0, 'Pulsa Smart Rp 20.000', 'available', 'digiflazz', '0', '2023-01-29 17:16:47', '2023-02-04 13:50:36'),
(14415, '226', 'Smartfren 25.000', 'smartf25', 26197, 26050, 24766, 0, 'Pulsa Smart Rp 25.000', 'available', 'digiflazz', '0', '2023-01-29 17:16:47', '2023-02-11 17:27:50'),
(14416, '226', 'Smartfren 30.000', 'smartf30', 31362, 31186, 29649, 0, 'Pulsa Smart Rp 30.000', 'available', 'digiflazz', '0', '2023-01-29 17:16:47', '2023-02-11 17:27:50'),
(14417, '226', 'Smartfren 50.000', 'smartf50', 52356, 52063, 49496, 0, 'Pulsa Smart Rp 50.000', 'available', 'digiflazz', '0', '2023-01-29 17:16:47', '2023-02-11 17:27:50'),
(14418, '226', 'Smartfren 60.000', 'smartf60', 62820, 62468, 59388, 0, 'Pulsa Smart Rp 60.000', 'available', 'digiflazz', '0', '2023-01-29 17:16:47', '2023-02-11 17:27:50'),
(14419, '226', 'Smartfren 100.000', 'smartf100', 103935, 103353, 98258, 0, 'Pulsa Smart Rp 100.000', 'available', 'digiflazz', '0', '2023-01-29 17:16:47', '2023-02-11 17:27:50'),
(14420, '226', 'Smartfren 150.000', 'smartf150', 157651, 156768, 149040, 0, 'Pulsa Smart Rp 150.000', 'available', 'digiflazz', '0', '2023-01-29 17:16:47', '2023-02-11 17:27:50'),
(14421, '226', 'Smartfren 200.000', 'smartf200', 209943, 208767, 198475, 0, 'Pulsa Smart Rp 200.000', 'available', 'digiflazz', '0', '2023-01-29 17:16:47', '2023-02-11 17:27:50'),
(14422, '226', 'Smartfren 300.000', 'smartf300', 313375, 311619, 296258, 0, 'Pulsa Smart Rp 300.000', 'available', 'digiflazz', '0', '2023-01-29 17:16:47', '2023-02-11 17:27:50'),
(14423, '226', 'Smartfren 500.000', 'smartf500', 524817, 521877, 496150, 0, 'Pulsa Smart Rp 500.000', 'available', 'digiflazz', '0', '2023-01-29 17:16:47', '2023-02-11 17:27:50'),
(14424, '227', 'Three 2.000', 'tri2', 2469, 2455, 2334, 0, 'Pulsa Three Rp 2.000', 'available', 'digiflazz', '0', '2023-01-29 17:16:47', '2023-02-11 17:27:50'),
(14425, '227', 'Three 3.000', 'tri3', 3861, 3839, 3650, 0, 'Pulsa Three Rp 3.000', 'available', 'digiflazz', '0', '2023-01-29 17:16:47', '2023-02-11 17:27:50'),
(14426, '227', 'Three 5.000', 'tri5', 5628, 5597, 5321, 0, 'Pulsa Three Rp 5.000', 'available', 'digiflazz', '0', '2023-01-29 17:16:47', '2023-02-11 17:27:50'),
(14427, '227', 'Three 10.000', 'tri10', 10598, 10538, 10019, 0, 'Pulsa Three Rp 10.000', 'available', 'digiflazz', '0', '2023-01-29 17:16:47', '2023-02-11 17:27:50'),
(14428, '227', 'Three 15.000', 'tri15', 15832, 15743, 14967, 0, 'Pulsa Three Rp 15.000', 'available', 'digiflazz', '0', '2023-01-29 17:16:47', '2023-02-11 17:27:50'),
(14429, '227', 'Three 20.000', 'tri20', 21072, 20954, 19921, 0, 'Pulsa Three Rp 20.000', 'available', 'digiflazz', '0', '2023-01-29 17:16:47', '2023-02-11 17:27:50'),
(14430, '227', 'Three 25.000', 'tri25', 25638, 25494, 24237, 0, 'Pulsa Three Rp 25.000', 'available', 'digiflazz', '0', '2023-01-29 17:16:47', '2023-02-11 17:27:50');
INSERT INTO `layanans` (`id`, `kategori_id`, `layanan`, `provider_id`, `harga`, `harga_reseller`, `harga_vip`, `profit`, `catatan`, `status`, `provider`, `product_logo`, `created_at`, `updated_at`) VALUES
(14431, '227', 'Three 30.000', 'tri30', 31327, 31151, 29616, 0, 'Pulsa Three Rp 30.000', 'available', 'digiflazz', '0', '2023-01-29 17:16:47', '2023-02-11 17:27:50'),
(14432, '227', 'Three 50.000', 'tri50', 51167, 50880, 48372, 0, 'Pulsa Three Rp 50.000', 'available', 'digiflazz', '0', '2023-01-29 17:16:47', '2023-02-11 17:27:50'),
(14433, '227', 'Three 75.000', 'tri75', 77139, 76707, 72925, 0, 'Pulsa Three Rp 75.000', 'available', 'digiflazz', '0', '2023-01-29 17:16:47', '2023-02-11 17:27:50'),
(14434, '227', 'Three 100.000', 'tri100', 102388, 101814, 96795, 0, 'Pulsa Three Rp 100.000', 'available', 'digiflazz', '0', '2023-01-29 17:16:47', '2023-02-11 17:27:50'),
(14435, '227', 'Three 150.000', 'tri150', 153437, 152577, 145056, 0, 'Pulsa Three Rp 150.000', 'available', 'digiflazz', '0', '2023-01-29 17:16:47', '2023-02-11 17:27:50'),
(14436, '227', 'Three 200.000', 'tri200', 204390, 203245, 193226, 0, 'Pulsa Three Rp 200.000', 'available', 'digiflazz', '0', '2023-01-29 17:16:47', '2023-02-11 17:27:50'),
(14437, '251', 'Xl 5.000', 'xl5', 6158, 6124, 5822, 0, 'Pulsa Xl Rp 5.000', 'available', 'digiflazz', '0', '2023-01-29 17:16:47', '2023-02-11 17:27:50'),
(14438, '251', 'Xl 10.000', 'xl10', 11470, 11406, 10844, 0, 'Pulsa Xl Rp 10.000', 'available', 'digiflazz', '0', '2023-01-29 17:16:47', '2023-02-11 17:27:50'),
(14439, '251', 'Xl 15.000', 'xl15', 15851, 15762, 14985, 0, 'Pulsa Xl Rp 15.000', 'available', 'digiflazz', '0', '2023-01-29 17:16:47', '2023-02-11 17:27:50'),
(14440, '251', 'Xl 25.000', 'xl25', 26336, 26188, 24897, 0, 'Pulsa Xl Rp 25.000', 'available', 'digiflazz', '0', '2023-01-29 17:16:47', '2023-02-11 17:27:51'),
(14441, '251', 'XL 30.000', 'xl30', 31943, 31764, 30198, 0, 'Pulsa Xl Rp 30.000', 'available', 'digiflazz', '0', '2023-01-29 17:16:47', '2023-02-11 17:27:51'),
(14442, '251', 'Xl 50.000', 'xl50', 52559, 52265, 49688, 0, 'Pulsa Xl Rp 50.000', 'available', 'digiflazz', '0', '2023-01-29 17:16:47', '2023-02-11 17:27:51'),
(14443, '251', 'Xl 100.000', 'xl100', 104878, 104290, 99149, 0, 'Pulsa Xl Rp 100.000', 'available', 'digiflazz', '0', '2023-01-29 17:16:47', '2023-02-11 17:27:51'),
(14444, '251', 'Xl 150.000', 'xl150', 158508, 157620, 149850, 0, 'Pulsa Xl Rp 150.000', 'available', 'digiflazz', '0', '2023-01-29 17:16:47', '2023-01-29 17:16:47'),
(14445, '251', 'Xl 200.000', 'xl200', 212920, 211727, 201290, 0, 'Pulsa Xl Rp 200.000', 'available', 'digiflazz', '0', '2023-01-29 17:16:47', '2023-02-11 17:27:51'),
(14446, '251', 'Xl 300.000', 'xl300', 320631, 318834, 303117, 0, 'Pulsa Xl Rp 300.000', 'available', 'digiflazz', '0', '2023-01-29 17:16:47', '2023-02-11 17:27:51'),
(14447, '251', 'Xl 500.000', 'xl500', 529101, 526137, 500200, 0, 'Pulsa Xl Rp 500.000', 'available', 'digiflazz', '0', '2023-01-29 17:16:47', '2023-02-11 17:27:51'),
(14448, '251', 'Xl 1.000.000', 'xl1000', 1066743, 1060767, 1008475, 0, 'Pulsa Xl Rp 1.000.000', 'available', 'digiflazz', '0', '2023-01-29 17:16:47', '2023-02-11 17:27:51'),
(14449, '228', 'by.U 5.000', 'byu5', 5596, 5565, 5290, 0, 'pulsa by.U Rp 5.000', 'available', 'digiflazz', '0', '2023-01-29 17:16:47', '2023-02-11 17:27:51'),
(14450, '228', 'by.U 10.000', 'byu10', 10897, 10836, 10302, 0, 'pulsa by.U Rp 10.000', 'available', 'digiflazz', '0', '2023-01-29 17:16:47', '2023-02-11 17:27:51'),
(14451, '228', 'by.U 15.000', 'byu15', 15969, 15879, 15096, 0, 'pulsa by.U Rp 15.000', 'available', 'digiflazz', '0', '2023-01-29 17:16:47', '2023-02-11 17:27:51'),
(14452, '228', 'by.U 20.000', 'byu20', 21409, 21289, 20240, 0, 'pulsa by.U Rp 20.000', 'available', 'digiflazz', '0', '2023-01-29 17:16:47', '2023-02-11 17:27:51'),
(14453, '228', 'by.U 25.000', 'byu25', 26582, 26433, 25130, 0, 'pulsa by.U Rp 25.000', 'available', 'digiflazz', '0', '2023-01-29 17:16:48', '2023-02-11 17:27:51'),
(14454, '228', 'by.U 50.000', 'byu50', 53448, 53149, 50529, 0, 'pulsa by.U Rp 50.000', 'available', 'digiflazz', '0', '2023-01-29 17:16:48', '2023-02-11 17:27:51'),
(14455, '228', 'by.U 100.000', 'byu100', 106163, 105568, 100364, 0, 'pulsa by.U Rp 100.000', 'available', 'digiflazz', '0', '2023-01-29 17:16:48', '2023-02-11 17:27:51'),
(14456, '228', 'by.U 150.000', 'byu150', 159365, 158472, 150660, 0, 'pulsa by.U Rp 150.000', 'available', 'digiflazz', '0', '2023-01-29 17:16:48', '2023-02-11 17:27:51'),
(14457, '228', 'by.U 200.000', 'byu200', 212540, 211349, 200931, 0, 'pulsa by.U Rp 200.000', 'available', 'digiflazz', '0', '2023-01-29 17:16:48', '2023-02-11 17:27:51'),
(14458, '55', 'Voucher 1200 PB Cash', 'pbv1', 9666, 9612, 9499, 0, 'Voucher 1200 PB Cash', 'available', 'digiflazz', '0', '2023-01-29 17:16:48', '2023-02-11 17:27:51'),
(14459, '55', 'Voucher 2400 PB Cash', 'pbv2', 19332, 19223, 18998, 0, 'Voucher 2400 PB Cash', 'available', 'digiflazz', '0', '2023-01-29 17:16:48', '2023-02-11 17:27:51'),
(14460, '55', 'Voucher 6000 PB Cash', 'pbv6', 48275, 48005, 47441, 0, 'Voucher 6000 PB Cash', 'available', 'digiflazz', '0', '2023-01-29 17:16:48', '2023-02-11 17:27:51'),
(14461, '55', 'Voucher 12000 PB Cash', 'pbv12', 96497, 95957, 94830, 0, 'Voucher 12000 PB Cash', 'available', 'digiflazz', '0', '2023-01-29 17:16:48', '2023-02-11 17:27:51'),
(14462, '55', 'Voucher 36000 PB Cash', 'pbv36', 298033, 296363, 292884, 0, 'Voucher 36000 PB Cash', 'available', 'digiflazz', '0', '2023-01-29 17:16:48', '2023-02-11 17:27:51'),
(14463, '55', 'Voucher 60000 PB Cash', 'pbv60', 503932, 501109, 495228, 0, 'Voucher 60000 PB Cash', 'available', 'digiflazz', '0', '2023-01-29 17:16:48', '2023-02-11 17:27:51'),
(14464, '229', 'Steam Wallet Code Rp 6.000', 'swc6', 6801, 6763, 6683, 0, '-', 'available', 'digiflazz', '0', '2023-01-29 17:16:48', '2023-02-11 17:27:51'),
(14465, '229', 'Steam Wallet Code Rp 8.000', 'swc8', 8996, 8946, 8841, 0, '-', 'available', 'digiflazz', '0', '2023-01-29 17:16:48', '2023-02-11 17:27:51'),
(14466, '229', 'Steam Wallet Code Rp 12.000', 'swc12', 12879, 12807, 12656, 0, '-', 'available', 'digiflazz', '0', '2023-01-29 17:16:48', '2023-02-11 17:27:51'),
(14467, '229', 'Steam Wallet Code Rp 45.000', 'swc45', 48222, 47952, 47389, 0, '-', 'available', 'digiflazz', '0', '2023-01-29 17:16:48', '2023-02-11 17:27:51'),
(14468, '229', 'Steam Wallet Code Rp 60.000', 'swc60', 64287, 63927, 63176, 0, '-', 'available', 'digiflazz', '0', '2023-01-29 17:16:48', '2023-02-11 17:27:51'),
(14469, '229', 'Steam Wallet Code Rp 90.000', 'swc90', 96417, 95877, 94751, 0, '-', 'available', 'digiflazz', '0', '2023-01-29 17:16:48', '2023-02-11 17:27:51'),
(14470, '229', 'Steam Wallet Code Rp 120.000', 'swc120', 128547, 127827, 126326, 0, '-', 'available', 'digiflazz', '0', '2023-01-29 17:16:48', '2023-02-11 17:27:51'),
(14471, '229', 'Steam Wallet Code Rp 250.000', 'swc250', 267777, 266277, 263151, 0, '-', 'available', 'digiflazz', '0', '2023-01-29 17:16:48', '2023-02-11 17:27:51'),
(14472, '229', 'Steam Wallet Code Rp 400.000', 'swc400', 428427, 426027, 421026, 0, '-', 'available', 'digiflazz', '0', '2023-01-29 17:16:48', '2023-02-11 17:27:51'),
(14473, '229', 'Steam Wallet Code Rp 600.000', 'swc600', 642627, 639027, 631526, 0, '-', 'available', 'digiflazz', '0', '2023-01-29 17:16:48', '2023-02-11 17:27:51'),
(14474, '230', 'XBOX $5', 'xbox5', 82467, 82005, 81043, 0, 'Xbox Card US $5', 'available', 'digiflazz', '0', '2023-01-29 17:16:48', '2023-02-11 17:27:51'),
(14475, '230', 'XBOX $15', 'xbox15', 243117, 241755, 238918, 0, 'Xbox Card US $15', 'available', 'digiflazz', '0', '2023-01-29 17:16:48', '2023-02-11 17:27:51'),
(14476, '230', 'XBOX $25', 'xbox25', 390915, 388725, 384163, 0, 'Xbox Card US $25', 'available', 'digiflazz', '0', '2023-01-29 17:16:48', '2023-02-11 17:27:51'),
(14477, '230', 'XBOX $50', 'xbox50', 781830, 777450, 768325, 0, 'Xbox Card US $50', 'available', 'digiflazz', '0', '2023-01-29 17:16:48', '2023-01-29 17:16:48'),
(14478, '231', 'Roblox 10 USD', 'rblx10', 128520, 127800, 126300, 0, 'Voucher Roblox 10 USD', 'available', 'digiflazz', '0', '2023-01-29 17:16:48', '2023-02-01 03:47:21'),
(14479, '231', 'Roblox 25 USD', 'rblx25', 367889, 365828, 361534, 0, 'Voucher Roblox 25 USD', 'available', 'digiflazz', '0', '2023-01-29 17:16:48', '2023-02-11 17:27:51'),
(14480, '232', 'Google Play Rp. 5.000 INDONESIA REGION', 'gplay5', 5334, 5304, 5241, 0, 'Google Play Gift Card Indonesia Rp. 5.000', 'available', 'digiflazz', '0', '2023-01-29 17:16:48', '2023-02-11 17:27:51'),
(14481, '232', 'Google Play Rp. 10.000 INDONESIA REGION', 'gplay10', 10581, 10522, 10399, 0, 'Google Play Gift Card Indonesia Rp. 10.000', 'available', 'digiflazz', '0', '2023-01-29 17:16:48', '2023-02-11 17:27:51'),
(14482, '232', 'Google Play Rp. 20.000 INDONESIA REGION', 'gplay20', 21152, 21034, 20787, 0, 'Google Play Gift Card Indonesia Rp. 20.000', 'available', 'digiflazz', '0', '2023-01-29 17:16:48', '2023-02-11 17:27:51'),
(14483, '232', 'Google Play Rp. 50.000 INDONESIA REGION', 'gplay50', 50873, 50588, 49994, 0, 'Google Play Gift Card Indonesia Rp. 50.000', 'available', 'digiflazz', '0', '2023-01-29 17:16:48', '2023-02-11 17:27:51'),
(14484, '232', 'Google Play Rp. 100.000 INDONESIA REGION', 'gplay100', 104449, 103864, 102645, 0, 'Google Play Gift Card Indonesia Rp. 100.000', 'available', 'digiflazz', '0', '2023-01-29 17:16:48', '2023-02-11 17:27:51'),
(14485, '232', 'Google Play Rp. 150.000 INDONESIA REGION', 'gplay150', 157437, 156555, 154718, 0, 'Google Play Gift Card Indonesia Rp. 150.000', 'available', 'digiflazz', '0', '2023-01-29 17:16:48', '2023-02-11 17:27:51'),
(14486, '232', 'Google Play Rp. 300.000 INDONESIA REGION', 'gplay300', 312732, 310980, 307330, 0, 'Google Play Gift Card Indonesia Rp. 300.000', 'available', 'digiflazz', '0', '2023-01-29 17:16:48', '2023-01-29 17:16:48'),
(14487, '232', 'Google Play Rp. 500.000 INDONESIA REGION', 'gplay500', 522220, 519294, 513199, 0, 'Google Play Gift Card Indonesia Rp. 500.000', 'available', 'digiflazz', '0', '2023-01-29 17:16:48', '2023-02-11 17:27:51'),
(14488, '233', 'Google Play 10$ USA REGION', 'gpcus10', 186488, 185443, 183267, 0, '-', 'available', 'digiflazz', '0', '2023-01-29 17:16:48', '2023-02-11 17:27:51'),
(14489, '233', 'Google Play 15$ USA REGION', 'gpcus15', 257040, 255600, 252600, 0, '-', 'available', 'digiflazz', '0', '2023-01-29 17:16:48', '2023-01-29 17:16:48'),
(14490, '233', 'Google Play 25$ USA REGION', 'gpcus25', 444465, 441975, 436788, 0, '-', 'available', 'digiflazz', '0', '2023-01-29 17:16:48', '2023-02-11 17:27:51'),
(14491, '233', 'Google Play 100$ USA REGION', 'gpcus100', 1445850, 1437750, 1420875, 0, '-', 'available', 'digiflazz', '0', '2023-01-29 17:16:48', '2023-01-29 17:16:48'),
(14492, '235', 'OVO 10.000', 'ovo10', 9879, 9824, 9694, 0, 'OVO 10.000', 'available', 'digiflazz', '0', '2023-01-29 17:16:48', '2023-02-11 17:27:51'),
(14493, '235', 'OVO 15.000', 'ovo15', 16065, 15975, 15765, 0, 'OVO 15.000', 'available', 'digiflazz', '0', '2023-01-29 17:16:48', '2023-01-29 17:16:48'),
(14494, '235', 'OVO 20.000', 'ovo20', 20589, 20474, 20204, 0, 'OVO 20.000', 'available', 'digiflazz', '0', '2023-01-29 17:16:48', '2023-02-11 17:27:51'),
(14495, '235', 'OVO 25.000', 'ovo25', 25944, 25799, 25459, 0, 'OVO 25.000', 'available', 'digiflazz', '0', '2023-01-29 17:16:48', '2023-02-11 17:27:51'),
(14496, '235', 'OVO 30.000', 'ovo30', 31299, 31124, 30714, 0, 'OVO 30.000', 'available', 'digiflazz', '0', '2023-01-29 17:16:48', '2023-02-11 17:27:51'),
(14497, '235', 'OVO 50.000', 'ovo50', 52719, 52424, 51734, 0, 'OVO 50.000', 'available', 'digiflazz', '0', '2023-01-29 17:16:48', '2023-02-11 17:27:51'),
(14498, '235', 'OVO 70.000', 'ovo70', 74139, 73724, 72754, 0, 'OVO 70.000', 'available', 'digiflazz', '0', '2023-01-29 17:16:48', '2023-02-11 17:27:51'),
(14499, '235', 'OVO 100.000', 'ovo100', 106269, 105674, 104284, 0, 'OVO 100.000', 'available', 'digiflazz', '0', '2023-01-29 17:16:48', '2023-02-11 17:27:51'),
(14500, '235', 'OVO 150.000', 'ovo150', 159819, 158924, 156834, 0, 'OVO 150.000', 'available', 'digiflazz', '0', '2023-01-29 17:16:48', '2023-02-11 17:27:51'),
(14501, '235', 'OVO 200.000', 'ovo200', 213369, 212174, 209384, 0, 'OVO 200.000', 'available', 'digiflazz', '0', '2023-01-29 17:16:48', '2023-02-11 17:27:51'),
(14502, '235', 'OVO 300.000', 'ovo300', 320229, 318435, 314249, 0, 'OVO 300.000', 'available', 'digiflazz', '0', '2023-01-29 17:16:48', '2023-01-29 17:16:48'),
(14503, '235', 'OVO 500.000', 'ovo500', 534429, 531435, 524449, 0, 'OVO 500.000', 'available', 'digiflazz', '0', '2023-01-29 17:16:48', '2023-01-29 17:16:48'),
(14504, '235', 'OVO 1.000.000', 'ovo1000', 1069929, 1063935, 1049949, 0, 'OVO 1.000.000', 'available', 'digiflazz', '0', '2023-01-29 17:16:48', '2023-01-29 17:16:48'),
(14505, '236', 'Bukalapak 20.000', 'bklp20', 21806, 21683, 21398, 0, 'Saldo Bukalapak 20.000, input nomor hp terdaftar di Bukalapak.', 'available', 'digiflazz', '0', '2023-01-29 17:16:48', '2023-02-11 17:27:51'),
(14506, '236', 'Bukalapak 25.000', 'bklp25', 26941, 26790, 26438, 0, 'Saldo Bukalapak 25.000, input nomor hp terdaftar di Bukalapak.', 'available', 'digiflazz', '0', '2023-01-29 17:16:48', '2023-02-11 17:27:51'),
(14507, '236', 'Bukalapak 30.000', 'bklp30', 32312, 32131, 31709, 0, 'Saldo Bukalapak 30.000, input nomor hp terdaftar di Bukalapak.', 'available', 'digiflazz', '0', '2023-01-29 17:16:48', '2023-02-11 17:27:51'),
(14508, '236', 'Bukalapak 50.000', 'bklp50', 53732, 53431, 52729, 0, 'Saldo Bukalapak 50.000, input nomor hp terdaftar di Bukalapak.', 'available', 'digiflazz', '0', '2023-01-29 17:16:48', '2023-02-11 17:27:51'),
(14509, '236', 'Bukalapak 75.000', 'bklp75', 80507, 80056, 79004, 0, 'Saldo Bukalapak 75.000, input nomor hp terdaftar di Bukalapak.', 'available', 'digiflazz', '0', '2023-01-29 17:16:48', '2023-02-11 17:27:51'),
(14510, '236', 'Bukalapak 100.000', 'bklp100', 107282, 106681, 105279, 0, 'Saldo Bukalapak 100.000, input nomor hp terdaftar di Bukalapak.', 'available', 'digiflazz', '0', '2023-01-29 17:16:48', '2023-02-11 17:27:51'),
(14511, '237', 'Grab penumpang 20.000', 'grab20', 20574, 20459, 20190, 0, '-', 'available', 'digiflazz', '0', '2023-01-29 17:16:48', '2023-02-11 17:27:51'),
(14512, '237', 'Grab penumpang 25.000', 'grab25', 26223, 26077, 25734, 0, '-', 'available', 'digiflazz', '0', '2023-01-29 17:16:48', '2023-02-11 17:27:51'),
(14513, '237', 'Grab penumpang 50.000', 'grab50', 52720, 52425, 51735, 0, '-', 'available', 'digiflazz', '0', '2023-01-29 17:16:48', '2023-02-11 17:27:51'),
(14514, '237', 'Grab penumpang 75.000', 'grab75', 80218, 79769, 78720, 0, '-', 'available', 'digiflazz', '0', '2023-01-29 17:16:48', '2023-02-11 17:27:51'),
(14515, '237', 'Grab penumpang 100.000', 'grab100', 106270, 105675, 104285, 0, '-', 'available', 'digiflazz', '0', '2023-01-29 17:16:48', '2023-02-11 17:27:51'),
(14516, '237', 'Grab penumpang 150.000', 'grab150', 159820, 158925, 156835, 0, '-', 'available', 'digiflazz', '0', '2023-01-29 17:16:48', '2023-02-11 17:27:51'),
(14517, '237', 'Grab penumpang 200.000', 'grab200', 214093, 212894, 210095, 0, '-', 'available', 'digiflazz', '0', '2023-01-29 17:16:48', '2023-02-11 17:27:51'),
(14518, '237', 'Grab penumpang 250.000', 'grab250', 267241, 265744, 262251, 0, '-', 'available', 'digiflazz', '0', '2023-01-29 17:16:48', '2023-02-11 17:27:51'),
(14519, '237', 'Grab penumpang 300.000', 'grab300', 320765, 318968, 314775, 0, '-', 'available', 'digiflazz', '0', '2023-01-29 17:16:48', '2023-02-11 17:27:51'),
(14520, '237', 'Grab penumpang 500.000', 'grab500', 535393, 532394, 525395, 0, '-', 'available', 'digiflazz', '0', '2023-01-29 17:16:48', '2023-02-11 17:27:51'),
(14521, '237', 'Grab penumpang 1.000.000', 'grab1000', 1070909, 1064909, 1050911, 0, '-', 'available', 'digiflazz', '0', '2023-01-29 17:16:48', '2023-02-11 17:27:51'),
(14522, '95', 'DANA 5.000', 'DANA5', 5601, 5570, 5497, 0, '-', 'available', 'digiflazz', '0', '2023-01-29 17:16:48', '2023-02-11 17:27:51'),
(14523, '95', 'DANA 300.000', 'DANA300', 321391, 319591, 315389, 0, '-', 'available', 'digiflazz', '0', '2023-01-29 17:16:48', '2023-02-11 17:27:51'),
(14524, '95', 'DANA 500.000', 'DANA500', 535607, 532607, 525605, 0, '-', 'available', 'digiflazz', '0', '2023-01-29 17:16:48', '2023-02-11 17:27:51'),
(14525, '95', 'DANA 1.000.000', 'DANA1000', 1071107, 1065107, 1051105, 0, '-', 'available', 'digiflazz', '0', '2023-01-29 17:16:48', '2023-02-11 17:27:51'),
(14526, '238', 'LinkAja Rp 10.000', 'linkaja10', 10764, 10703, 10563, 0, '-', 'available', 'digiflazz', '0', '2023-01-29 17:16:48', '2023-02-11 17:27:51'),
(14527, '238', 'LinkAja Rp 15.000', 'linkaja15', 15540, 15453, 15250, 0, '-', 'available', 'digiflazz', '0', '2023-01-29 17:16:48', '2023-02-11 17:27:51'),
(14528, '238', 'LinkAja Rp 20.000', 'linkaja20', 20831, 20714, 20442, 0, '-', 'available', 'digiflazz', '0', '2023-01-29 17:16:48', '2023-02-11 17:27:51'),
(14529, '238', 'LinkAja Rp 25.000', 'linkaja25', 26250, 26103, 25760, 0, '-', 'available', 'digiflazz', '0', '2023-01-29 17:16:48', '2023-02-11 17:27:51'),
(14530, '238', 'LinkAja Rp 30.000', 'linkaja30', 31798, 31620, 31204, 0, '-', 'available', 'digiflazz', '0', '2023-01-29 17:16:48', '2023-02-11 17:27:51'),
(14531, '238', 'LinkAja Rp 50.000', 'linkaja50', 52961, 52664, 51972, 0, '-', 'available', 'digiflazz', '0', '2023-01-29 17:16:48', '2023-02-11 17:27:51'),
(14532, '238', 'LinkAja Rp 75.000', 'linkaja75', 79736, 79289, 78247, 0, '-', 'available', 'digiflazz', '0', '2023-01-29 17:16:48', '2023-02-11 17:27:51'),
(14533, '238', 'LinkAja Rp 100.000', 'linkaja100', 106511, 105914, 104522, 0, '-', 'available', 'digiflazz', '0', '2023-01-29 17:16:48', '2023-02-11 17:27:52'),
(14534, '238', 'LinkAja Rp 150.000', 'linkaja150', 160704, 159803, 157703, 0, '-', 'available', 'digiflazz', '0', '2023-01-29 17:16:48', '2023-02-11 17:27:52'),
(14535, '238', 'LinkAja Rp 200.000', 'linkaja200', 214254, 213053, 210253, 0, '-', 'available', 'digiflazz', '0', '2023-01-29 17:16:48', '2023-02-11 17:27:52'),
(14536, '238', 'LinkAja Rp 300.000', 'linkaja300', 321354, 319553, 315353, 0, '-', 'available', 'digiflazz', '0', '2023-01-29 17:16:48', '2023-02-11 17:27:52'),
(14537, '238', 'LinkAja Rp 500.000', 'linkaja500', 535554, 532553, 525553, 0, '-', 'available', 'digiflazz', '0', '2023-01-29 17:16:48', '2023-02-11 17:27:52'),
(14538, '238', 'LinkAja Rp 1.000.000', 'linkaja1000', 1071054, 1065053, 1051053, 0, '-', 'available', 'digiflazz', '0', '2023-01-29 17:16:48', '2023-02-11 17:27:52'),
(14539, '239', 'Sakuku 10.000', 'sakuku10', 10924, 10863, 10720, 0, 'masukkan nomor hp terdaftar pada Sakuku', 'available', 'digiflazz', '0', '2023-01-29 17:16:48', '2023-02-11 17:27:52'),
(14540, '239', 'Sakuku 15.000', 'sakuku15', 16279, 16188, 15975, 0, 'masukkan nomor hp terdaftar pada Sakuku', 'available', 'digiflazz', '0', '2023-01-29 17:16:48', '2023-02-11 17:27:52'),
(14541, '239', 'Sakuku 20.000', 'sakuku20', 21634, 21513, 21230, 0, 'masukkan nomor hp terdaftar pada Sakuku', 'available', 'digiflazz', '0', '2023-01-29 17:16:48', '2023-02-11 17:27:52'),
(14542, '239', 'Sakuku 25.000', 'sakuku25', 26989, 26838, 26485, 0, 'masukkan nomor hp terdaftar pada Sakuku', 'available', 'digiflazz', '0', '2023-01-29 17:16:48', '2023-02-11 17:27:52'),
(14543, '239', 'Sakuku 30.000', 'sakuku30', 32344, 32163, 31740, 0, 'masukkan nomor hp terdaftar pada Sakuku', 'available', 'digiflazz', '0', '2023-01-29 17:16:48', '2023-02-11 17:27:52'),
(14544, '239', 'Sakuku 50.000', 'sakuku50', 53764, 53463, 52760, 0, 'masukkan nomor hp terdaftar pada Sakuku', 'available', 'digiflazz', '0', '2023-01-29 17:16:48', '2023-02-11 17:27:52'),
(14545, '239', 'Sakuku 75.000', 'sakuku75', 80539, 80088, 79035, 0, 'masukkan nomor hp terdaftar pada Sakuku', 'available', 'digiflazz', '0', '2023-01-29 17:16:48', '2023-02-11 17:27:52'),
(14546, '239', 'Sakuku 100.000', 'sakuku100', 107314, 106713, 105310, 0, 'masukkan nomor hp terdaftar pada Sakuku', 'available', 'digiflazz', '0', '2023-01-29 17:16:48', '2023-02-11 17:27:52'),
(14547, '239', 'Sakuku 150.000', 'sakuku150', 160864, 159963, 157860, 0, 'masukkan nomor hp terdaftar pada Sakuku', 'available', 'digiflazz', '0', '2023-01-29 17:16:49', '2023-02-11 17:27:52'),
(14548, '239', 'Sakuku 200.000', 'sakuku200', 214414, 213213, 210410, 0, 'masukkan nomor hp terdaftar pada Sakuku', 'available', 'digiflazz', '0', '2023-01-29 17:16:49', '2023-02-11 17:27:52'),
(14549, '239', 'Sakuku 300.000', 'sakuku300', 321514, 319713, 315510, 0, 'masukkan nomor hp terdaftar pada Sakuku', 'available', 'digiflazz', '0', '2023-01-29 17:16:49', '2023-02-11 17:27:52'),
(14550, '239', 'Sakuku 500.000', 'sakuku500', 535714, 532713, 525710, 0, 'masukkan nomor hp terdaftar pada Sakuku', 'available', 'digiflazz', '0', '2023-01-29 17:16:49', '2023-02-11 17:27:52'),
(14551, '240', 'Doku 10.000', 'doku10', 11090, 11028, 10883, 0, 'masukkan DOKU ID sebagai nomor tujuan', 'available', 'digiflazz', '0', '2023-01-29 17:16:49', '2023-02-11 17:27:52'),
(14552, '240', 'Doku 15.000', 'doku15', 16451, 16358, 16143, 0, 'masukkan DOKU ID sebagai nomor tujuan', 'available', 'digiflazz', '0', '2023-01-29 17:16:49', '2023-02-11 17:27:52'),
(14553, '240', 'Doku 20.000', 'doku20', 21806, 21683, 21398, 0, 'masukkan DOKU ID sebagai nomor tujuan', 'available', 'digiflazz', '0', '2023-01-29 17:16:49', '2023-02-11 17:27:52'),
(14554, '240', 'Doku 25.000', 'doku25', 27161, 27008, 26653, 0, 'masukkan DOKU ID sebagai nomor tujuan', 'available', 'digiflazz', '0', '2023-01-29 17:16:49', '2023-02-11 17:27:52'),
(14555, '240', 'Doku 30.000', 'doku30', 32532, 32349, 31924, 0, 'masukkan DOKU ID sebagai nomor tujuan', 'available', 'digiflazz', '0', '2023-01-29 17:16:49', '2023-02-11 17:27:52'),
(14556, '240', 'Doku 50.000', 'doku50', 53952, 53649, 52944, 0, 'masukkan DOKU ID sebagai nomor tujuan', 'available', 'digiflazz', '0', '2023-01-29 17:16:49', '2023-02-11 17:27:52'),
(14557, '240', 'Doku 75.000', 'doku75', 80727, 80274, 79219, 0, 'masukkan DOKU ID sebagai nomor tujuan', 'available', 'digiflazz', '0', '2023-01-29 17:16:49', '2023-02-11 17:27:52'),
(14558, '240', 'Doku 100.000', 'doku100', 107502, 106899, 105494, 0, 'masukkan DOKU ID sebagai nomor tujuan', 'available', 'digiflazz', '0', '2023-01-29 17:16:49', '2023-02-11 17:27:52'),
(14559, '240', 'Doku 150.000', 'doku150', 161052, 160149, 158044, 0, 'masukkan DOKU ID sebagai nomor tujuan', 'available', 'digiflazz', '0', '2023-01-29 17:16:49', '2023-02-11 17:27:52'),
(14560, '240', 'Doku 200.000', 'doku200', 214602, 213399, 210594, 0, 'masukkan DOKU ID sebagai nomor tujuan', 'available', 'digiflazz', '0', '2023-01-29 17:16:49', '2023-02-11 17:27:52'),
(14561, '240', 'Doku 300.000', 'doku300', 321702, 319899, 315694, 0, 'masukkan DOKU ID sebagai nomor tujuan', 'available', 'digiflazz', '0', '2023-01-29 17:16:49', '2023-02-11 17:27:52'),
(14562, '240', 'Doku 500.000', 'doku500', 535902, 532899, 525894, 0, 'masukkan DOKU ID sebagai nomor tujuan', 'available', 'digiflazz', '0', '2023-01-29 17:16:49', '2023-02-11 17:27:52'),
(14563, '23', 'MOBILELEGEND - 12994 Diamond', 'ML12994', 2849600, 2781100, 2742740, 0, 'no pelanggan = gabungan antara user_id dan zone_id', 'available', 'digiflazz', '0', '2023-01-29 17:16:49', '2023-02-04 13:50:38'),
(14564, '241', 'Speed Drifters 63000 Diamonds', 'speedf63000', 9880042, 9642541, 9509540, 0, '63000 Diamonds', 'available', 'digiflazz', '0', '2023-01-29 17:16:49', '2023-02-11 17:27:52'),
(14565, '241', 'Speed Drifters 31450 Diamonds', 'speedf31450', 4940042, 4821291, 4754790, 0, '31450 Diamonds', 'available', 'digiflazz', '0', '2023-01-29 17:16:49', '2023-02-11 17:27:52'),
(14566, '241', 'Speed Drifters 6279 Diamonds', 'speedf6279', 988042, 964291, 950990, 0, '6279 Diamonds', 'available', 'digiflazz', '0', '2023-01-29 17:16:49', '2023-02-11 17:27:52'),
(14567, '241', 'Speed Drifters 3134 Diamonds', 'speedf3134', 494042, 482166, 475515, 0, '3134 Diamonds', 'available', 'digiflazz', '0', '2023-01-29 17:16:49', '2023-02-11 17:27:52'),
(14568, '241', 'Speed Drifters 1845 Diamonds', 'speedf1845', 296442, 289316, 285325, 0, '1845 Diamonds', 'available', 'digiflazz', '0', '2023-01-29 17:16:49', '2023-02-11 17:27:52'),
(14569, '241', 'Speed Drifters 1230 Diamonds', 'speedf1230', 197642, 192891, 190230, 0, '1230 Diamonds', 'available', 'digiflazz', '0', '2023-01-29 17:16:49', '2023-02-11 17:27:52'),
(14570, '241', 'Speed Drifters 579 Diamonds', 'speedf579', 98842, 96466, 95135, 0, '579 Diamonds', 'available', 'digiflazz', '0', '2023-01-29 17:16:49', '2023-02-11 17:27:52'),
(14571, '241', 'Speed Drifters 282 Diamonds', 'speedf282', 47086, 45954, 45320, 0, '282 Diamonds', 'available', 'digiflazz', '0', '2023-01-29 17:16:49', '2023-02-11 17:27:52'),
(14572, '241', 'Speed Drifters 112 Diamonds', 'speedf112', 19786, 19310, 19044, 0, '112 Diamonds', 'available', 'digiflazz', '0', '2023-01-29 17:16:49', '2023-02-11 17:27:52'),
(14573, '241', 'Speed Drifters 56 Diamonds', 'speedf56', 9901, 9663, 9530, 0, '56 Diamonds', 'available', 'digiflazz', '0', '2023-01-29 17:16:49', '2023-02-11 17:27:52'),
(14574, '241', 'Speed Drifters 10 Diamonds', 'speedf10', 1997, 1949, 1922, 0, '10 Diamonds', 'available', 'digiflazz', '0', '2023-01-29 17:16:49', '2023-02-11 17:27:52'),
(14575, '241', 'Speed Drifters 25 Diamonds', 'speedf25', 4961, 4842, 4775, 0, '25 Diamonds', 'available', 'digiflazz', '0', '2023-01-29 17:16:49', '2023-02-11 17:27:52'),
(14576, '115', 'AOV 48200 Vouchers', 'aov48200', 9880042, 9642541, 9509540, 0, 'AOV 48200 Vouchers', 'available', 'digiflazz', '0', '2023-01-29 17:16:49', '2023-02-11 17:27:52'),
(14577, '115', 'AOV 24050 Vouchers', 'aov24050', 4940042, 4821291, 4754790, 0, 'AOV 24050 Vouchers', 'available', 'digiflazz', '0', '2023-01-29 17:16:49', '2023-02-11 17:27:52'),
(14578, '115', 'AOV 4800 Vouchers', 'aov4800', 930800, 908425, 895895, 0, 'AOV 4800 Vouchers', 'available', 'digiflazz', '0', '2023-01-29 17:16:49', '2023-02-04 13:50:38'),
(14579, '115', 'AOV 2390 Vouchers', 'aov2390', 465400, 454213, 447948, 0, 'AOV 2390 Vouchers', 'available', 'digiflazz', '0', '2023-01-29 17:16:49', '2023-02-11 17:27:52'),
(14580, '115', 'AOV 1430 Vouchers', 'aov1430', 281320, 274558, 270771, 0, 'AOV 1430 Vouchers', 'available', 'digiflazz', '0', '2023-01-29 17:16:49', '2023-02-11 17:27:52'),
(14581, '115', 'AOV 950 Vouchers', 'aov950', 187200, 182700, 180180, 0, 'AOV 950 Vouchers', 'available', 'digiflazz', '0', '2023-01-29 17:16:49', '2023-02-04 13:50:38'),
(14582, '115', 'AOV 470 Vouchers', 'aov470', 93080, 90843, 89590, 0, 'AOV 470 Vouchers', 'available', 'digiflazz', '0', '2023-01-29 17:16:49', '2023-02-11 17:27:52'),
(14583, '115', 'AOV 230 Vouchers', 'aov230', 46540, 45421, 44795, 0, 'AOV 230 Vouchers', 'available', 'digiflazz', '0', '2023-01-29 17:16:49', '2023-02-11 17:27:52'),
(14584, '115', 'AOV 90 Vouchers', 'aov90', 18616, 18169, 17918, 0, 'AOV 90 Vouchers', 'available', 'digiflazz', '0', '2023-01-29 17:16:49', '2023-02-11 17:27:52'),
(14585, '115', 'AOV 40 Vouchers', 'aov40', 9308, 9084, 8959, 0, 'AOV 40 Vouchers', 'available', 'digiflazz', '0', '2023-01-29 17:16:49', '2023-02-11 17:27:52'),
(14586, '115', 'AOV 18 Vouchers', 'aov18', 4940, 4821, 4755, 0, 'AOV 18 Vouchers', 'available', 'digiflazz', '0', '2023-01-29 17:16:49', '2023-02-11 17:27:52'),
(14587, '115', 'AOV 7 Vouchers', 'aov7', 1976, 1929, 1902, 0, 'AOV 7 Vouchers', 'available', 'digiflazz', '0', '2023-01-29 17:16:49', '2023-02-11 17:27:52'),
(14588, '35', '3993 Big Cat Coins', 'rmel3993', 7187742, 7014959, 6918201, 0, '3993 Big Cat Coins', 'available', 'digiflazz', '0', '2023-01-29 17:16:49', '2023-02-11 17:27:52'),
(14589, '35', '9012 Big Cat Coins', 'rmel9012', 16153842, 15765528, 15548073, 0, '9012 Big Cat Coins', 'available', 'digiflazz', '0', '2023-01-29 17:16:49', '2023-02-11 17:27:52'),
(14590, '55', '60000 PB Cash', 'pbz6', 488826, 477075, 470495, 0, '-', 'available', 'digiflazz', '0', '2023-01-29 17:16:49', '2023-02-11 17:27:52'),
(14591, '55', '36000 PB Cash', 'pbz5', 292266, 285240, 281306, 0, '-', 'available', 'digiflazz', '0', '2023-01-29 17:16:49', '2023-02-11 17:27:52'),
(14592, '55', '12000 PB Cash', 'pbz4', 96902, 94573, 93268, 0, '12000 PB Cash', 'available', 'digiflazz', '0', '2023-01-29 17:16:49', '2023-02-11 17:27:52'),
(14593, '55', '6000 PB Cash', 'pbz3', 48802, 47629, 46972, 0, '6000 PB Cash', 'available', 'digiflazz', '0', '2023-01-29 17:16:49', '2023-02-11 17:27:52'),
(14594, '55', '2400 PB Cash', 'pbz2', 19370, 18904, 18644, 0, '2400 PB Cash', 'available', 'digiflazz', '0', '2023-01-29 17:16:49', '2023-02-11 17:27:52'),
(14595, '55', '1200 PB Cash', 'pbz1', 9620, 9389, 9259, 0, '1200 Point Blank Cash', 'available', 'digiflazz', '0', '2023-01-29 17:16:49', '2023-02-11 17:27:52'),
(14596, '242', 'PLN 1.000.000', 'pln1000', 1071102, 1065101, 1052600, 0, 'masukkan nomor meter/id pelanggan', 'available', 'digiflazz', '0', '2023-01-29 17:16:49', '2023-02-11 17:27:52'),
(14597, '242', 'PLN 500.000', 'pln500', 535602, 532601, 526350, 0, 'masukkan nomor meter/id pelanggan', 'available', 'digiflazz', '0', '2023-01-29 17:16:49', '2023-02-11 17:27:52'),
(14598, '242', 'PLN 200.000', 'pln200', 214302, 213101, 210600, 0, 'masukkan nomor meter/id pelanggan', 'available', 'digiflazz', '0', '2023-01-29 17:16:49', '2023-02-11 17:27:52'),
(14599, '242', 'PLN 100.000', 'pln100', 107202, 106601, 105350, 0, 'masukkan nomor meter/id pelanggan', 'available', 'digiflazz', '0', '2023-01-29 17:16:49', '2023-02-11 17:27:52'),
(14600, '242', 'PLN 50.000', 'pln50', 53652, 53351, 52725, 0, 'masukkan nomor meter/id pelanggan', 'available', 'digiflazz', '0', '2023-01-29 17:16:49', '2023-02-11 17:27:52'),
(14601, '242', 'PLN 20.000', 'pln20', 21506, 21385, 21134, 0, 'masukkan nomor meter/id pelanggan', 'available', 'digiflazz', '0', '2023-01-29 17:16:49', '2023-02-11 17:27:52'),
(14602, '242', 'PLN 15.000', 'pln15', 16884, 16790, 16593, 0, 'masukkan nomor meter/id pelanggan', 'available', 'digiflazz', '0', '2023-01-29 17:16:49', '2023-02-11 17:27:52'),
(14603, '242', 'PLN 10.000', 'pln10', 11529, 11465, 11330, 0, 'masukkan nomor meter/id pelanggan', 'available', 'digiflazz', '0', '2023-01-29 17:16:49', '2023-02-11 17:27:52'),
(14604, '242', 'PLN 5.000', 'pln5', 6169, 6134, 6062, 0, 'masukkan nomor meter/id pelanggan', 'available', 'digiflazz', '0', '2023-01-29 17:16:49', '2023-02-11 17:27:52'),
(14605, '34', 'Tower of Fantasy 6480 Tanium + 1300 Dark Crystal Southeast Asia', 'tof6480', 1322880, 1291080, 1273272, 0, 'masukkan nomor tujuan dengan format [userid][server], contoh nya jika userid Anda 123456789 dan server Anda Animus, maka tujuan diisi dengan 123456789Animus', 'available', 'digiflazz', '0', '2023-01-29 17:16:49', '2023-02-04 13:50:38'),
(14606, '34', 'Tower of Fantasy 3280 Tanium + 530 Dark Crystal Southeast Asia', 'tof3280', 661336, 645439, 636536, 0, 'masukkan nomor tujuan dengan format [userid][server], contoh nya jika userid Anda 123456789 dan server Anda Animus, maka tujuan diisi dengan 123456789Animus', 'available', 'digiflazz', '0', '2023-01-29 17:16:49', '2023-02-11 17:27:52'),
(14607, '34', 'Tower of Fantasy 1980 Tanium + 270 Dark Crystal Southeast Asia', 'tof1980', 396659, 387124, 381784, 0, 'masukkan nomor tujuan dengan format [userid][server], contoh nya jika userid Anda 123456789 dan server Anda Animus, maka tujuan diisi dengan 123456789Animus', 'available', 'digiflazz', '0', '2023-01-29 17:16:49', '2023-02-11 17:27:52'),
(14608, '34', 'Tower of Fantasy 980 Tanium + 110 Dark Crystal Southeast Asia', 'tof980', 198328, 193561, 190891, 0, 'masukkan nomor tujuan dengan format [userid][server], contoh nya jika userid Anda 123456789 dan server Anda Animus, maka tujuan diisi dengan 123456789Animus', 'available', 'digiflazz', '0', '2023-01-29 17:16:49', '2023-02-11 17:27:52'),
(14609, '34', 'Tower of Fantasy 300 Tanium + 20 Dark Crystal Southeast Asia', 'tof300', 64377, 62830, 61963, 0, 'masukkan nomor tujuan dengan format [userid][server], contoh nya jika userid Anda 123456789 dan server Anda Animus, maka tujuan diisi dengan 123456789Animus', 'available', 'digiflazz', '0', '2023-01-29 17:16:49', '2023-02-11 17:27:52'),
(14610, '34', 'Tower of Fantasy 60 Tanium Southeast Asia', 'tof60', 11451, 11176, 11022, 0, 'masukkan nomor tujuan dengan format [userid][server], contoh nya jika userid Anda 123456789 dan server Anda Animus, maka tujuan diisi dengan 123456789Animus', 'available', 'digiflazz', '0', '2023-01-29 17:16:49', '2023-02-11 17:27:52'),
(14611, '31', 'Pubg Elite Pass Plus', 'elitepass', 361587, 352895, 348028, 0, 'Kartu Upgrade Elite Pass Plus + Bonus', 'available', 'digiflazz', '0', '2023-01-29 17:16:49', '2023-02-11 17:27:52'),
(14612, '31', 'Pubg Royale Pass', 'royalpass', 150831, 147205, 145175, 0, 'Kartu Upgrade Royal Pass + Bonus', 'available', 'digiflazz', '0', '2023-01-29 17:16:49', '2023-02-11 17:27:52'),
(14613, '243', 'SHOPEE PAY 10.000', 'Shopee1', 10576, 10517, 10379, 0, 'SHOPEE PAY 10.000', 'available', 'digiflazz', '0', '2023-01-29 17:16:49', '2023-02-11 17:27:52'),
(14614, '243', 'SHOPEE PAY 20.000', 'Shopee2', 21142, 21023, 20747, 0, 'SHOPEE PAY 20.000', 'available', 'digiflazz', '0', '2023-01-29 17:16:49', '2023-02-11 17:27:52'),
(14615, '243', 'SHOPEE PAY 25.000', 'Shopee3', 26497, 26348, 26002, 0, 'SHOPEE PAY 25.000', 'available', 'digiflazz', '0', '2023-01-29 17:16:49', '2023-02-11 17:27:52'),
(14616, '243', 'SHOPEE PAY 30.000', 'Shopee4', 31868, 31689, 31273, 0, 'SHOPEE PAY 30.000', 'available', 'digiflazz', '0', '2023-01-29 17:16:49', '2023-02-11 17:27:52'),
(14617, '243', 'SHOPEE PAY 50.000', 'Shopee5', 53288, 52989, 52293, 0, 'SHOPEE PAY 50.000', 'available', 'digiflazz', '0', '2023-01-29 17:16:49', '2023-02-11 17:27:52'),
(14618, '243', 'SHOPEE PAY 70.000', 'Shopee6', 74708, 74289, 73313, 0, 'SHOPEE PAY 70.000', 'available', 'digiflazz', '0', '2023-01-29 17:16:49', '2023-02-11 17:27:52'),
(14619, '243', 'SHOPEE PAY 100.000', 'Shopee7', 106886, 106287, 104890, 0, 'SHOPEE PAY 100.000', 'available', 'digiflazz', '0', '2023-01-29 17:16:49', '2023-02-11 17:27:52'),
(14620, '243', 'SHOPEE PAY 150.000', 'Shopee8', 160436, 159537, 157440, 0, 'SHOPEE PAY 150.000', 'available', 'digiflazz', '0', '2023-01-29 17:16:49', '2023-02-11 17:27:52'),
(14621, '243', 'SHOPEE PAY 200.000', 'Shopee9', 213986, 212787, 209990, 0, 'SHOPEE PAY 200.000', 'available', 'digiflazz', '0', '2023-01-29 17:16:49', '2023-02-11 17:27:52'),
(14622, '243', 'SHOPEE PAY 250.000', 'Shopee10', 267541, 266042, 262545, 0, 'SHOPEE PAY 250.000', 'available', 'digiflazz', '0', '2023-01-29 17:16:49', '2023-02-11 17:27:52'),
(14623, '243', 'SHOPEE PAY 300.000', 'Shopee11', 321091, 319292, 315095, 0, 'SHOPEE PAY 300.000', 'available', 'digiflazz', '0', '2023-01-29 17:16:49', '2023-02-11 17:27:52'),
(14624, '243', 'SHOPEE PAY 400.000', 'Shopee12', 428191, 425792, 420195, 0, 'SHOPEE PAY 400.000', 'available', 'digiflazz', '0', '2023-01-29 17:16:49', '2023-02-11 17:27:52'),
(14625, '243', 'SHOPEE PAY 500.000', 'Shopee13', 535291, 532292, 525295, 0, 'SHOPEE PAY 500.000', 'available', 'digiflazz', '0', '2023-01-29 17:16:49', '2023-02-11 17:27:52'),
(14626, '243', 'SHOPEE PAY 1.000.000', 'Shopee14', 1071080, 1065080, 1051079, 0, 'SHOPEE PAY 1.000.000', 'available', 'digiflazz', '0', '2023-01-29 17:16:49', '2023-02-11 17:27:52'),
(14627, '23', 'MOBILELEGEND - 3 Diamond', 'ML3', 1222, 1193, 1176, 0, 'no pelanggan = gabungan antara user_id dan zone_id', 'available', 'digiflazz', '0', '2023-01-29 17:16:49', '2023-02-11 17:27:53'),
(14628, '334', 'Go Pay 10.000', 'GOPAY1', 11010, 10948, 10804, 0, 'Masukan no HP', 'inactive', 'digiflazz', '0', '2023-01-29 17:16:49', '2023-02-11 17:27:53'),
(14629, '29', 'Free Fire 5 Diamond', 'ff5', 813, 794, 783, 0, 'Free Fire 5 Diamond', 'available', 'digiflazz', '0', '2023-01-29 17:16:49', '2023-02-11 17:27:53'),
(14630, '334', 'Go Pay 5.000', 'GOPAY0', 5516, 5485, 5413, 0, 'Masukan no HP', 'available', 'digiflazz', '0', '2023-01-29 17:16:49', '2023-02-11 17:27:53'),
(14631, '23', 'MOBILELEGEND - 284 Diamond', 'ML284', 67600, 65975, 65065, 0, 'no pelanggan = gabungan antara user_id dan zone_id', 'available', 'digiflazz', '0', '2023-01-29 17:16:49', '2023-02-11 17:27:53'),
(14632, '23', 'MOBILELEGEND - 12 Diamond', 'ML12', 3515, 3431, 3383, 0, 'no pelanggan = gabungan antara user_id dan zone_id', 'available', 'digiflazz', '0', '2023-02-01 03:59:52', '2023-02-11 17:27:53'),
(14633, '23', 'MOBILELEGEND - 300 Diamond', 'ML300', 73320, 71558, 70571, 0, 'no pelanggan = gabungan antara user_id dan zone_id', 'available', 'digiflazz', '0', '2023-02-04 13:50:39', '2023-02-11 17:27:53'),
(14634, '29', '5 DM VIP', 'FF5-S24', 850, 850, 850, 0, '', 'available', 'vip', '/assets/product_logo/QvOTFOn5YoZTudx.png', '2023-03-04 17:56:13', '2023-03-04 17:56:13');

-- --------------------------------------------------------

--
-- Struktur dari tabel `layanan_ppobs`
--

CREATE TABLE `layanan_ppobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kategori_id` varchar(255) NOT NULL,
  `brand` varchar(255) NOT NULL,
  `layanan` varchar(255) NOT NULL,
  `provider_id` varchar(255) NOT NULL,
  `tipe_layanan` varchar(255) NOT NULL,
  `tipe` varchar(255) NOT NULL,
  `harga` bigint(20) NOT NULL,
  `harga_reseller` bigint(20) NOT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_01_26_082220_create_kategoris_table', 1),
(6, '2022_01_26_102949_create_layanans_table', 1),
(11, '2022_01_29_111105_create_pembelians_table', 2),
(12, '2022_01_29_111703_create_pembayarans_table', 2),
(13, '2022_02_01_152716_create_ovos_table', 3),
(14, '2022_02_01_152824_create_history__ovos_table', 3),
(15, '2022_02_01_155618_create_gojeks_table', 4),
(16, '2022_02_01_155927_create_history__gojeks_table', 4),
(17, '2022_02_02_081840_create_methode_pembayarans_table', 5),
(18, '2022_02_02_084003_create_beritas_table', 6),
(19, '2022_04_08_133307_create_layanan_ppobs_table', 7),
(20, '2022_04_27_141044_create_deposits_table', 8);

-- --------------------------------------------------------

--
-- Struktur dari tabel `news`
--

CREATE TABLE `news` (
  `id` bigint(20) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `type` enum('promo','news') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `ovos`
--

CREATE TABLE `ovos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `RefId` varchar(255) NOT NULL,
  `UpdateAccessToken` varchar(1000) NOT NULL,
  `AuthToken` varchar(1000) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `ovos`
--

INSERT INTO `ovos` (`id`, `RefId`, `UpdateAccessToken`, `AuthToken`, `created_at`, `updated_at`) VALUES
(1, 'fbc3eead-5f69-47b0-a836-5a2ab256696f', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJjb2RlaGFzaCI6Ik0yWXdNMkpqWlRnME0yWmtOR1JtWlRsak9EazJaR0k1T0RVME9EVXlZVGMiLCJyYW5kb20iOiJOelk1TVRZd05UUXoiLCJ2ZXJzaW9uIjoxfQ.58AoRZLwqNwEvYvnQs2_aGwrfE1D9-Q4mH0IlEQhwmk', 'eyJhbGciOiJSUzI1NiJ9.eyJleHBpcnlJbk1pbGxpU2Vjb25kcyI6NjA0ODAwMDAwLCJjcmVhdGVUaW1lIjoxNjcwNTk4NDA5NTczLCJzZWNyZXQiOiJod3Y3ZHFtdWMrekQ1MjBaRGVBemZsSzMxcjVEQ2s1N3FGMGMvNnIrSHpmZ1ZUZXloZnU4SUNqcWZLTUhocUxNcndUSjJSLzV2dnJsUCsybEgvaFVncnNvT3Q2Mk96Q1Q0RjV1cGFDTEd4eU5GQ1FoNU8vZjdUVGJ4KytySDUyWWlOb0VWcUt5cGlNOG11bXZ0RzlGM3luYmZYUnhlRTl2V1JwbFBid3VCeTZramhpTDZLclhiSnBZc09kNld5MFZlbmR2NjJSNjJoSU9DSS9zeXYzTnYzSXc0WVVRUFluQWNwQzh6N2s4bFlHc3M3bHRyQ2dNR3ZUVkFMcHZOY3QzSkVIS3lnbmdXSS9tRUVTWW9uTWtpckEyVzgwVkZVc3B4OGlKaUNKVUtBSnlrenFBUytrVFBvRmZkUUx5dkpUdmNhQ0dEYW9yK213aVowWm9xRzFCTS9LeG9yN3lqSVdFQ3M0bEduOUVvdHM9In0.YaiqcwxwiDonhDq_dUE47awdSiLmPKA7NaIeQzktC4JshY1yTgOhOQvWpBKButWP1uj3mgQ4rzPWbZqZtmzlYuRRU9molqYF-Q2aPw_cQPBjtsZw-AgUiMlya1V83IA5qBdkmyGMqFQgbicGHFhB0-V6ZO0XNvjmWqRVRsU_uBMciS6CIDUjmFRga7S2QS22gbbxocS2602YP65MU226E908Q8M1Yd4tqsNlh9eBpzMX1bgKUMH4BKAnchlfMGYiQVIrf9ho9irem387-GDiG-cZaJP5hOcsks9a84j9CgOwlzFcQ1pF6kOUNk3g8KaLSAduoX_yrZh37YkHd5_beQ', '2022-12-09 15:06:52', '2022-12-09 15:06:52'),
(2, '22343b04-1a90-4875-aa71-9d54d4e3cf5a', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJjb2RlaGFzaCI6IlptVXdOREkzTldWbFltUmtOREl4T1dFeE1XVXhOalk0T1RrMFlqTmlNelkiLCJyYW5kb20iOiJPRFF6TXpFeU56STAiLCJ2ZXJzaW9uIjoxfQ.A2VAIAnGaNgzBuv2wEA7bt7ormHOWJQwY5x3QJ4EGpA', 'eyJhbGciOiJSUzI1NiJ9.eyJleHBpcnlJbk1pbGxpU2Vjb25kcyI6NjA0ODAwMDAwLCJjcmVhdGVUaW1lIjoxNjczODA3NDM3NDA0LCJzZWNyZXQiOiJod3Y3ZHFtdWMrekQ1MjBaRGVBemZrcUZmZkxYRTRic3RYNEZVcFdsZUhnMlpkUFhiL2l3SEZxNUpvN2ZZMitqWXRkOTRqc2NsZWwxVC8zeWJNYVh6Qmwwd0VDVVUxS0FjNHZ5ZU10bFNDTlZJOUlxNC9DTXZNTGhDeFlXYzVLOVVnMTgrdzhZMGhzTTY4c1JCYTQrMys2ZUhpdERkSmhHSUpyWHVDZU1RR1pCbnA2TTg1djhkL2RleCtwRGRqQzFZYXV4N1hRTW45cTY2Q2xFV21rQmwxQXo3T29nNmNWNEpERWhSV2RDaHpYMlBldWV1bFNJa0dybml6ZnZjeWZLa1c5SVJySTl4U2xRdVRLenRub1Y0MGlPV3dkd0tsS3ZaWkJCeTNnSlNHYVhOWWZlbk9HYXJFTlZWUGR2ZUJyK1BWOWlrYm9xMHIwdHdBazUzNHhzakNQUWc4ZkRDSWZVWDRObW5OeGRrczg9In0.WcJite8eMhgATHzp1AgHDRHQf1ntYHt86L3oeWdTklvApt5yEuwqPRGrr6TdJ8Brd1zcXGzk3ZrF0H1OlySMssFg1gto1RiAm-ReC4pTOfXOw85AEIzzChny7MqwNvKPUlZmzPq3Bhto1-AFDxIhcLjkBWlzK-odrnwo9sl1uAMG2h6OpYt1t3U9LaNf7t5OHm3unVZUCfX-q9erNFhclqcoeGKzNKJcyhA9Czpm7BRh1r4snkXAG7eZ8iAgTfjSsh-D0Hv9Mwhy5PCGIcvAjajJscmcxd6CPQXZiiZWFa6FavmNmj7PQXuza-S-cP8tyEROkn9HPRBzJeCu2hDh7g', '2023-01-15 18:30:38', '2023-01-15 18:30:38'),
(3, '15161f7a-524b-4713-99be-b7f555e2b3a9', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJjb2RlaGFzaCI6Ik1ESXdNRFppTVRVNVltTm1ORGt4TWpsbU1HWTFOMkZqWmpNNU5qQTVPREUiLCJyYW5kb20iOiJPRFF6TXpFME5EWTIiLCJ2ZXJzaW9uIjoxfQ.nPZSNai8BjyJK7iaGNdLki76464NxGVzeFCYAfK3VoU', 'eyJhbGciOiJSUzI1NiJ9.eyJleHBpcnlJbk1pbGxpU2Vjb25kcyI6NjA0ODAwMDAwLCJjcmVhdGVUaW1lIjoxNjczODA3NjIzNTExLCJzZWNyZXQiOiJod3Y3ZHFtdWMrekQ1MjBaRGVBemZ2WWY4SWg0TmxkSUxNekpXTXBhUnZsK3czRi9rVHZHbW83SGlEMFhpMVM2ZjlRZGRQbzhEODQ2V2Y4dkR1UTQ1NThlZENrY2dFY3Zybyt0NUU5QXU4WjA2T0NpZURvSHRFc2IrNDUzNnQ3a3lDMGxQa3lCbUdPQlJjcmxJc1h0MDZZTXpUY3J3bHN1OFhJcmtJeksyY28zMElybnRHS09WSytreHc2WXRLTHZpN1d0dXJLUFpOSFllTnozZXJteEhHMkVhdjJvRUFTNlZTeVZHU0IzMkR4U0VvMERmRXpHeFk4Q0pwdStRUWo0eUtwM1pOaEdwa2piem00SnJJZFlWczhaMlhSaGxnczcyL2toU2wrQ0JUMXQrU2NjUzFvNkwrdktFOEJJT0NqQ3dTZVdGSDlidmtVVFVPN1hTNlFsNGd0Y09TQU55blRYVWk3ZXM5WjMwS1E9In0.LPGTBz3Z5rhubLIMsd5TXng3QTh28v9e1cukZLgI-cHtoI9hns8L5PVCS-aXqTZBRUwhmmgDH8sYqkmGYPM_IfL-02hmXBPBJ-mHigtl4G_UD8U0ip5TDLBMJKKqAmdtzxW3Ms-TpQIn0AfYLq9yY7TSSTq7fj0SR9ilRgPHr4zK_Sn9HA_hJ8qm0o3hoExdyD3pvoEUPYH-21yLHimRrznjFA4qe-ptEdQVKf9PZOTWNuf4tHdGMpJBdKH7LOEHhimoKmZMkc2xW2ylnKdUJRo1Ycimjs2QKjjD52E8pj-GWxiVHkn5euQn-V97jpFMR-Bzhp-ewkDo2LjcYmvcgg', '2023-01-15 18:33:45', '2023-01-15 18:33:45'),
(4, 'd1dff62f-2dab-4cf7-81eb-aec75698a499', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJjb2RlaGFzaCI6Ik5qZGlNRE0xTXpJeU5UUTBOR1JqTmpnNVlqWXpaREUwTlRaaE5HTXpaR0kiLCJyYW5kb20iOiJPRFF6TXpJM05EYzQiLCJ2ZXJzaW9uIjoxfQ.BhALEaGVpBJtts4pTgnpPJ8OQD4SB1Pukp5uudkzdmw', 'eyJhbGciOiJSUzI1NiJ9.eyJleHBpcnlJbk1pbGxpU2Vjb25kcyI6NjA0ODAwMDAwLCJjcmVhdGVUaW1lIjoxNjczODA5MDQxMjM1LCJzZWNyZXQiOiJod3Y3ZHFtdWMrekQ1MjBaRGVBemZ2WWY4SWg0TmxkSUxNekpXTXBhUnZsK3czRi9rVHZHbW83SGlEMFhpMVM2ZjlRZGRQbzhEODQ2V2Y4dkR1UTQ1NThlZENrY2dFY3Zybyt0NUU5QXU4WjA2T0NpZURvSHRFc2IrNDUzNnQ3a3lDMGxQa3lCbUdPQlJjcmxJc1h0MHdkbHl2NUZKRmpMTG9BaFc2c1UvQUZldHVVRHZhOGpQT0N3ZFJ4Q09naFNwc3VDMlEvM3JjUzJETEhwV2RBUmZQT25EOVgzdmMzeHFuWUFzYlJjVDJoS2lRMVk1c25sWHJEV0NZYzNnTWhZaXd2MGhKTGVzNEhsOWRMWEtWalo0VXNsRnp3cDJ4S0ZKZzNzYVFUNlVZM3pJS28zTGpzWkJJUVdPZ1RUV3JRRUZRb2RCa0laby9yczh1blZQa3dkdFpGclhKTE5TdnR2bUNHOWNXelA0Vms9In0.KmG6iyS0hxwITVieePcrJtDj3q79YilkbKm1vlX5tQDdtBfYm3PZAapUeXpM2XCFCUckjkqGIC2sk9Ew7TbBGHbjc_JXKRrgnu2T17ciejSUgvogme56r5iwcAoaSadNgU8blyVjpPhDx49exvXK2wFo1pinet6vDOoDkIZBO5_sdN6zoBaftENIylrevj1_AuE7LNb_NMqXThxlcsv2z3IxkMmKjbH6Mcf4w463r1wi-4XndNHx7Pl3u6lr13hb_ZwtecxNc6ZpJUyxxP6XdCgBc_XxVp_zckksh1-UTXQfiDfoAMcMdsjuYrADwlBh6bRpigJe8hwJdWupZJg6ug', '2023-01-15 18:57:22', '2023-01-15 18:57:22'),
(5, '1264295d-92de-434f-8f32-e24becae2ec6', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJjb2RlaGFzaCI6Ill6aGxZakUwTURGbVpqSmpORE00WVdGaE1HTmpNMlZsT1RGak9XRXpOVE0iLCJyYW5kb20iOiJPRGN3T0RNMk56RTAiLCJ2ZXJzaW9uIjoxfQ.pIpwCsx79hh5PrdHKhHPAGVBC2OxtpZQS9F-XYgwpCg', 'eyJhbGciOiJSUzI1NiJ9.eyJleHBpcnlJbk1pbGxpU2Vjb25kcyI6NjA0ODAwMDAwLCJjcmVhdGVUaW1lIjoxNjc1MDQ0MDcyOTQ5LCJzZWNyZXQiOiJod3Y3ZHFtdWMrekQ1MjBaRGVBemZsSzMxcjVEQ2s1N3FGMGMvNnIrSHpmZ1ZUZXloZnU4SUNqcWZLTUhocUxNcndUSjJSLzV2dnJsUCsybEgvaFVncnNvT3Q2Mk96Q1Q0RjV1cGFDTEd4eU5GQ1FoNU8vZjdUVGJ4KytySDUyWWlOb0VWcUt5cGlNOG11bXZ0RzlGMzN6Wm5uUXFjWXpsUjJWN3VZZm1tdXdCeDUvcWcvbVA3Y2czRVZnL2hGYVlZSmJNZmZIb3ZKd3phN09sRWg5NCszWEsxZk9ZTWg0bGhLOTJRQUpDOEY3dlh5ZEtCKzVMR1k3aWoyZ0xoMVE3NGNNeGFZNDFtSks1d2NISkt0a1IyazNEZVlwMU4zLzNaa0ZzRDV1UUY5OXRaU28wc2JwSWtHNFg4dm8zUHlTQ2xHakhHK1ZGeG1FMElVVHlQRVFDdE54MzBnVjN1bDYzYzJWYlhsOS91dE09In0.dJmgNBWwjrR1LXhzOSOkiyiwtqU-feZGuOsIOS5D17jI4VBAJzj6kwk3w_OIqASCIXYql0yI_UIS-X9m5COk94HoaUbfIFSliyQmWedwFMeYqF_fFWPHg655iRXS_YGZs6LlxqCs3QOJNQpYImADxiCsR5oXQb8WQSioM5znU5E_woFUKoV-7MAWmYKp6jN0V3sE1uh-AkULQ1zZ0ULsPncGrzKcoT3zhpKAj9WHEcKrKOrzjA0LjIpRuRjkpZIj4sNrXHDrEoOHv66q54HvIPSN3_KTnUZ0aDOib0COX6Iho9DPyr_ZRDbXfaL1fUT_UFbGby4PAA185ujY9-SUgQ', '2023-01-30 02:01:17', '2023-01-30 02:01:17');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembayarans`
--

CREATE TABLE `pembayarans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` varchar(255) NOT NULL,
  `harga` varchar(255) NOT NULL,
  `no_pembayaran` varchar(255) NOT NULL,
  `no_pembeli` bigint(20) NOT NULL,
  `status` varchar(255) NOT NULL,
  `metode` varchar(255) NOT NULL,
  `reference` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pembayarans`
--

INSERT INTO `pembayarans` (`id`, `order_id`, `harga`, `no_pembayaran`, `no_pembeli`, `status`, `metode`, `reference`, `created_at`, `updated_at`) VALUES
(365, 'RS5390084', '61395', '3811800034197919', 895379968213, 'Batal', 'bca', '10436902', '2023-02-27 12:45:37', '2023-02-28 12:46:04'),
(366, 'RS7114947', '42174', '3811800034318993', 895379968213, 'Belum Lunas', 'bca', '10447220', '2023-02-28 08:18:51', '2023-02-28 08:18:51'),
(367, 'RS4073444', '74360', 'https://my.ipaymu.com/qr/template/10449197', 8212142312412, 'Belum Lunas', 'qris', '10449197', '2023-02-28 11:26:59', '2023-02-28 11:26:59'),
(368, 'RS2886557', '171103', 'https://my.ipaymu.com/qr/template/10449218', 82118644602, 'Belum Lunas', 'qris', '10449218', '2023-02-28 11:28:13', '2023-02-28 11:28:13'),
(369, 'RS281498', '74360', 'https://my.ipaymu.com/qr/template/10449254', 82142131223, 'Belum Lunas', 'qris', '10449254', '2023-02-28 11:31:19', '2023-02-28 11:31:19'),
(370, 'RS7734704', '74360', 'https://my.ipaymu.com/qr/template/10449276', 8214232123, 'Belum Lunas', 'qris', '10449276', '2023-02-28 11:34:00', '2023-02-28 11:34:00'),
(371, 'RS8119335', '74360', 'https://my.ipaymu.com/qr/template/10449286', 82412321422, 'Belum Lunas', 'qris', '10449286', '2023-02-28 11:35:49', '2023-02-28 11:35:49'),
(372, 'RS3910218', '74360', 'https://my.ipaymu.com/qr/template/10449295', 82141232423, 'Belum Lunas', 'qris', '10449295', '2023-02-28 11:37:39', '2023-02-28 11:37:39'),
(373, 'RS7038596', '74360', 'https://my.ipaymu.com/qr/template/10449316', 82118644692, 'Belum Lunas', 'qris', '10449316', '2023-02-28 11:39:53', '2023-02-28 11:39:53'),
(374, 'RS6254915', '26683', '3431984413', 85321453991, 'Batal', 'bcatf', '', '2023-03-03 10:50:22', '2023-03-04 10:51:07'),
(375, 'RS8770838', '850', 'Saldo', 82118644605, 'Lunas', 'Saldo', '', '2023-03-04 18:10:59', '2023-03-04 18:10:59'),
(376, 'RS9537783', '2222', 'https://my.ipaymu.com/qr/template/10519518', 82118644604, 'Batal', 'qris', '10519518', '2023-03-06 11:22:17', '2023-03-07 11:23:07'),
(377, 'RS3305011', '39132', '3431984413', 82118644605, 'Batal', 'bcatf', '', '2023-03-11 16:03:38', '2023-03-12 16:04:07'),
(378, 'RS5995289', '1813', '3431984413', 82118644605, 'Batal', 'bcatf', '', '2023-03-11 16:21:27', '2023-03-12 16:22:07');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembelians`
--

CREATE TABLE `pembelians` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` varchar(255) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) NOT NULL,
  `zone` varchar(255) DEFAULT NULL,
  `nickname` varchar(255) DEFAULT NULL,
  `layanan` varchar(255) NOT NULL,
  `harga` int(11) NOT NULL,
  `profit` int(11) NOT NULL,
  `provider_order_id` varchar(255) DEFAULT NULL,
  `catatan` text DEFAULT NULL,
  `status` varchar(255) NOT NULL,
  `log` varchar(1000) DEFAULT NULL,
  `sn` varchar(255) DEFAULT NULL,
  `tipe_transaksi` varchar(255) NOT NULL DEFAULT 'game',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pembelians`
--

INSERT INTO `pembelians` (`id`, `order_id`, `username`, `user_id`, `zone`, `nickname`, `layanan`, `harga`, `profit`, `provider_order_id`, `catatan`, `status`, `log`, `sn`, `tipe_transaksi`, `created_at`, `updated_at`) VALUES
(366, 'RS5390084', NULL, '40917265', '2036', 'Evolt', 'MOBILELEGEND - 257 Diamond', 61395, 6140, NULL, NULL, 'Batal', NULL, NULL, 'game', '2023-02-27 12:45:37', '2023-02-28 12:46:04'),
(367, 'RS7114947', NULL, '40917265', '2036', 'Evolt', 'MOBILELEGEND - 172 Diamond', 42174, 4217, NULL, NULL, 'Menunggu', NULL, NULL, 'game', '2023-02-28 08:18:51', '2023-02-28 08:18:51'),
(368, 'RS4073444', NULL, '959665199', '12818', 'Musuh monton', 'MOBILELEGEND - 284 Diamond', 74360, 7436, NULL, NULL, 'Menunggu', NULL, NULL, 'game', '2023-02-28 11:26:59', '2023-02-28 11:26:59'),
(369, 'RS2886557', NULL, '959665199', '12818', 'Musuh monton', 'MOBILELEGEND - 706 Diamond', 171103, 17110, NULL, NULL, 'Menunggu', NULL, NULL, 'game', '2023-02-28 11:28:13', '2023-02-28 11:28:13'),
(370, 'RS281498', NULL, '959665199', '12818', 'Musuh monton', 'MOBILELEGEND - 284 Diamond', 74360, 7436, NULL, NULL, 'Menunggu', NULL, NULL, 'game', '2023-02-28 11:31:19', '2023-02-28 11:31:19'),
(371, 'RS7734704', NULL, '959665199', '12818', 'Musuh monton', 'MOBILELEGEND - 284 Diamond', 74360, 7436, NULL, NULL, 'Menunggu', NULL, NULL, 'game', '2023-02-28 11:34:00', '2023-02-28 11:34:00'),
(372, 'RS8119335', NULL, '959665199', '12818', 'Musuh monton', 'MOBILELEGEND - 284 Diamond', 74360, 7436, NULL, NULL, 'Menunggu', NULL, NULL, 'game', '2023-02-28 11:35:49', '2023-02-28 11:35:49'),
(373, 'RS3910218', NULL, '959665199', '12818', 'Musuh monton', 'MOBILELEGEND - 284 Diamond', 74360, 7436, NULL, NULL, 'Menunggu', NULL, NULL, 'game', '2023-02-28 11:37:39', '2023-02-28 11:37:39'),
(374, 'RS7038596', NULL, '959665199', '12818', 'Musuh monton', 'MOBILELEGEND - 284 Diamond', 74360, 7436, NULL, NULL, 'Menunggu', NULL, NULL, 'game', '2023-02-28 11:39:53', '2023-02-28 11:39:53'),
(375, 'RS6254915', NULL, '085321453991', NULL, '085321453991', 'DANA 25.000', 26683, 2668, NULL, NULL, 'Batal', NULL, NULL, 'game', '2023-03-03 10:50:22', '2023-03-04 10:51:07'),
(376, 'RS8770838', 'Rio', '123456781', NULL, 'SQW•Ramaa友', '5 DM VIP', 850, 85, '2023030501105505', NULL, 'Success', '{\"result\":true,\"data\":{\"trxid\":\"2023030501105505\",\"data\":\"123456781\",\"zone\":\"\",\"service\":\"Free Fire - 5 Diamonds\",\"status\":\"waiting\",\"note\":\"Pesanan akan diproses secepatnya, cek pesanan Anda di Riwayat\",\"balance\":19881,\"price\":807},\"message\":\"Pesanan berhasil, pesanan akan diproses.\",\"status\":true}', 'Sukses Terkirim - 2023-03-05 01:10:57 WIB ', 'game', '2023-03-04 18:10:59', '2023-03-04 18:11:18'),
(377, 'RS9537783', NULL, '959665199', '12818', 'Musuh monton', 'MOBILELEGEND - 3 Diamond', 2222, 222, NULL, NULL, 'Batal', NULL, NULL, 'game', '2023-03-06 11:22:17', '2023-03-07 11:23:07'),
(378, 'RS3305011', NULL, '959665199', '12818', 'Musuh monton', 'MOBILELEGEND - 172 Diamond', 39132, 3913, NULL, NULL, 'Batal', NULL, NULL, 'game', '2023-03-11 16:03:38', '2023-03-12 16:04:07'),
(379, 'RS5995289', NULL, '123456781', NULL, 'SQW•Ramaa友', 'Free Fire 5 Diamond', 1813, 181, NULL, NULL, 'Batal', NULL, NULL, 'game', '2023-03-11 16:21:27', '2023-03-12 16:22:07');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `no_telepon` varchar(16) NOT NULL,
  `password` varchar(255) NOT NULL,
  `balance` bigint(20) NOT NULL,
  `role` enum('Admin','Member','Gold','Platinum') NOT NULL,
  `kode_otp` varchar(255) DEFAULT NULL,
  `is_verified` int(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `no_telepon`, `password`, `balance`, `role`, `kode_otp`, `is_verified`, `created_at`, `updated_at`) VALUES
(92, 'Alice d', 'Alicee', '081220543562', '$2y$10$7EI/SEiedYlkrb4zC2ftzuAuw3jASjv1Ns5CtB/dhUEQnlFpaJfX2', 1166, 'Platinum', NULL, 1, '2023-01-18 16:06:25', '2023-02-11 16:19:28'),
(95, 'Rio Pratama Putra', 'Rio', '082118644605', '$2y$10$XDOm9JJ/VaU8orZdLtBxKuvgYDP1LJWbl2T3Cg9tZCpuWi9Bu0aJK', 145376, 'Admin', NULL, 1, '2023-01-20 00:39:45', '2023-03-04 18:10:55'),
(98, 'dhastore', 'dhal', '082235720031', '$2y$10$9FD5IApRd5PHqwhpq6o0oOUcEUuIHpGNGdjVYJXHI0IoOQDPoOOky', 0, 'Member', NULL, 1, '2023-02-16 16:24:28', '2023-02-16 16:24:50'),
(99, 'heijessxyz', 'heijessxyz', '0895367029265', '$2y$10$IK4Le5noUpaNozj/5wLKw..EtomiNYtrxqwM4NdubyuMljlsoDK7O', 0, 'Member', NULL, 1, '2023-03-01 06:30:17', '2023-03-01 06:39:33');

-- --------------------------------------------------------

--
-- Struktur dari tabel `vipresellers`
--

CREATE TABLE `vipresellers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `api_id` varchar(255) NOT NULL,
  `api_key` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `vipresellers`
--

INSERT INTO `vipresellers` (`id`, `api_id`, `api_key`, `created_at`, `updated_at`) VALUES
(1, 'yQn2Ouls', '724J1GUkhCReV6069jg0wqywAdeGSgW1bavRGGzhCyBnC3BFSAuw3WIrC8E87gPn', '2022-12-12 11:28:20', '2023-03-04 17:56:28');

-- --------------------------------------------------------

--
-- Struktur dari tabel `vouchers`
--

CREATE TABLE `vouchers` (
  `id` int(11) NOT NULL,
  `kode` varchar(255) NOT NULL,
  `promo` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `max_potongan` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `vouchers`
--

INSERT INTO `vouchers` (`id`, `kode`, `promo`, `stock`, `max_potongan`, `created_at`, `updated_at`) VALUES
(5, 'diskon', 20, 10, 20000, '2022-12-06 03:16:55', '2022-12-06 03:16:55');

-- --------------------------------------------------------

--
-- Struktur dari tabel `waysends`
--

CREATE TABLE `waysends` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` text NOT NULL,
  `number` text NOT NULL,
  `api_url` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `waysends`
--

INSERT INTO `waysends` (`id`, `key`, `number`, `api_url`, `created_at`, `updated_at`) VALUES
(1, 'Wp6GZ8F3rihZ5dYP254ikXsTM4Dm7F', '6289602995442', 'https://wabot.riostore.my.id', '2022-12-12 13:32:10', '2023-01-18 03:04:17');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `apigames`
--
ALTER TABLE `apigames`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `api_checks`
--
ALTER TABLE `api_checks`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `beritas`
--
ALTER TABLE `beritas`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `deposits`
--
ALTER TABLE `deposits`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `digiflazz`
--
ALTER TABLE `digiflazz`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `gojeks`
--
ALTER TABLE `gojeks`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `history__gojeks`
--
ALTER TABLE `history__gojeks`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `history__ovos`
--
ALTER TABLE `history__ovos`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `ipaymus`
--
ALTER TABLE `ipaymus`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kategoris`
--
ALTER TABLE `kategoris`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `layanans`
--
ALTER TABLE `layanans`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `layanan_ppobs`
--
ALTER TABLE `layanan_ppobs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `ovos`
--
ALTER TABLE `ovos`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pembayarans`
--
ALTER TABLE `pembayarans`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pembelians`
--
ALTER TABLE `pembelians`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `vipresellers`
--
ALTER TABLE `vipresellers`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `vouchers`
--
ALTER TABLE `vouchers`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `waysends`
--
ALTER TABLE `waysends`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `apigames`
--
ALTER TABLE `apigames`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `api_checks`
--
ALTER TABLE `api_checks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `beritas`
--
ALTER TABLE `beritas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT untuk tabel `deposits`
--
ALTER TABLE `deposits`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT untuk tabel `digiflazz`
--
ALTER TABLE `digiflazz`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `gojeks`
--
ALTER TABLE `gojeks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `history__gojeks`
--
ALTER TABLE `history__gojeks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `history__ovos`
--
ALTER TABLE `history__ovos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `ipaymus`
--
ALTER TABLE `ipaymus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `kategoris`
--
ALTER TABLE `kategoris`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=338;

--
-- AUTO_INCREMENT untuk tabel `layanans`
--
ALTER TABLE `layanans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14635;

--
-- AUTO_INCREMENT untuk tabel `layanan_ppobs`
--
ALTER TABLE `layanan_ppobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `news`
--
ALTER TABLE `news`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `ovos`
--
ALTER TABLE `ovos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `pembayarans`
--
ALTER TABLE `pembayarans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=379;

--
-- AUTO_INCREMENT untuk tabel `pembelians`
--
ALTER TABLE `pembelians`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=380;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT untuk tabel `vipresellers`
--
ALTER TABLE `vipresellers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `vouchers`
--
ALTER TABLE `vouchers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `waysends`
--
ALTER TABLE `waysends`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
