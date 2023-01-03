-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 28, 2022 at 07:53 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tubes_pw_uchiha`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `jenis` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `jenis`, `created_at`, `updated_at`) VALUES
(1, 'Smarthphone', '2022-12-15 15:12:19', '2022-12-15 15:12:19'),
(2, 'Laptop', '2022-12-15 15:12:19', '2022-12-15 15:12:19'),
(3, 'Kamera', '2022-12-15 15:13:03', '2022-12-15 15:13:03');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
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
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_12_11_145656_create_products_table', 1),
(6, '2022_12_12_073510_create_categories_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `nama_produk` varchar(255) NOT NULL,
  `brand` varchar(255) NOT NULL,
  `harga` int(11) NOT NULL,
  `tahun_rilis` varchar(255) NOT NULL,
  `spesifikasi` text NOT NULL,
  `deskripsi` text NOT NULL,
  `excerpt` varchar(255) NOT NULL,
  `published_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `user_id`, `nama_produk`, `brand`, `harga`, `tahun_rilis`, `spesifikasi`, `deskripsi`, `excerpt`, `published_at`, `created_at`, `updated_at`, `link`) VALUES
(1, 1, 1, 'Samsung Galaxy Z Fold4 5G', 'Samsung', 22375000, '2022', 'Layar : Foldable Dynamic AMOLED 2X 7.6 inci\r\nChipset : Qualcomm Snapdragon 8+ Gen 1\r\nRAM : 12 GB\r\nMemori Internal : 256 GB, 512 GB, 1 TB\r\nKamera : 50 MP (wide) 12 MP (telephoto) 12 MP (ultrawide)\r\nBaterai : Li-Po 4400 mAh', 'Samsung Galaxy Z Fold4 5G ini tidak memiliki perubahan yang cukup signifikan dalam hal desain jika dibandingkan dengan pendahulunya yaitu Galaxy Z Fold3 5G. Namun, peningkatan tetap dilakukan khususnya untuk tujuan durabilitas. HP ini mengalami penggantian kaca proteksi pada layar cover dan penutup belakang yaitu menjadi Gorilla Glass Victus+ yang lebih kokoh dari generasi sebelumnya.\r\nSelain itu, frame dan engsel Galaxy Z Fold4 5G ini juga sedikit diubah menjadi lebih kecil yang terbuat dari material Alumunium Armor. Durabilitas HP juga diperlihatkan dengan adanya sertifikasi IPX8 yang mampu membuatnya bertahan dari air bahkan di kedalaman 1,5 meter selama 30 menit.\r\nSamsung Galaxy Z Fold4 5G ini dibekali layar utama dengan panel Foldable Dynamic AMOLED 2X dengan refresh rate yang adaptif mulai dari 1-120 Hz. Layar ini mampu menampilkan konten HDR10+ dengan tingkat kecerahan layar mencapai 1200 nit.\r\nDi sisi lain, performa yang mampu dihasilkan oleh Galaxy Z Fold4 5G juga tidak kalah tinggi berkat dibekali chipset terbaik milik Qualcomm yaitu Snapdragon 8+ Gen 1 dengan fabrikasi 4 nm. Chipset tersebut kemudian dipadukan dengan penyimpanan RAM 12 GB dan penyimpanan internail bervariasi mulai dari 256 GB, 512 GB, dan 1 TB.\r\n', 'Samsung Galaxy Z Fold4 5G ini tidak memiliki perubahan yang cukup signifikan dalam hal desain jika dibandingkan dengan pendahulunya yaitu Galaxy Z Fold3 5G. Namun,', '2022-12-15 15:14:12', '2022-12-15 15:14:12', '2022-12-15 15:14:12', NULL),
(2, 1, 1, 'Samsung Galaxy S22 Ultra', 'Samsung', 15175000, '2022', 'Layar : Dynamic AMOLED 2X 6.8 inci\r\nChipset : Qualcomm Snapdragon 8 Gen 1\r\nRAM : 8GB, 12GB\r\nMemori Internal : 128 GB, 256 GB, 512 GB\r\nKamera : 108 MP (wide) 10 MP (periscope telephoto) 10 MP (telephoto) 12 MP (ultrawide)\r\nBaterai : Li-Ion 5000 mAh', 'Samsung Galaxy S22 Ultra merupakan satu-satunya varian yang hadirkan penggunaan S Pen, sama seperti Galaxy Note series. Seperti predesornya, Galaxy S21 Ultra, HP ini telah mendukung penggunaan stylus agar pengguna lebih nyaman dalam menulis ataupun menggambar.\nBedanya, kini S Pen sudah tersedia dalam boks penjualan, dan S Pen bisa dimasukkan ke dalam bodi. Tak seperti Galaxy S21 Ultra yang S Pen-nya dijual terpisah dan mengharuskan pengguna membeli casing khusus jika ingin solusi penyimpanan S Pen yang praktis.\nS Pen pada Galaxy S22 Ultra juga alami peningkatan latensi yang semula hanya 9 milidetik pada S21 Ultra dan Note20 series kini menjadi 2,8 milidetik saja. Peningkatan hingga 70% tersebut berpengaruh baik terhadap minimnya lag saat menorehkan tulisan di layar.\nDi sisi lain, Galaxy S22 Ultra juga turut hadirkan konektivitas UWB (Ultra Wideband) yang jika dikombinasikan dengan aksesoris Galaxy Tag+, dapat digunakan untuk melacak benda yang hilang dengan presisi tinggi.\n', 'Samsung Galaxy S22 Ultra merupakan satu-satunya varian yang hadirkan penggunaan S Pen, sama seperti Galaxy Note series. Seperti predesornya', '2022-12-15 15:14:12', '2022-12-15 15:14:12', '2022-12-15 15:14:12', NULL),
(3, 1, 1, 'Huawei Mate 50 Pro', 'Huawei', 22500000, '2022', 'Layar : 162.1 x 75.5 x 8.5 205 inci\r\nChipset : Qualcomm Snapdragon 8+ Gen 1\r\nRAM : 8 GB\r\nMemori Internal : 256 GB, 512 GB\r\nKamera : 50 MP (wide) 64 MP (periscope telephoto) 13 MP (ultrawide)\r\nBaterai : Li-Po 4700 mAh', 'Huawei Mate 50 Pro memiliki posisi tertinggi di antara dua varian lainnya dari lini Huawei Mate 50 series ini. Ketiganya memiliki tampilan yang berbeda-beda, di bagian depannya Huawei Mate 50 Pro ini dihiasi poni yang memiliki bentuk sedikit panjang sebagai wadah bagi kamera selfie dengan resolusi 13 MP dan sensor kamera ToF 3D.\r\nSedangkan pada bagian belakangnya, HP ini dihiasi oleh modul kamera yang cukup besar. Modul kamera tersebut berisi tiga buah kamera yang disematkan.\r\nKetiga kamera tersebut terdiri dari kamera utama 50 MP dengan bukaan f/1.4-f/4.0, ultrawide 13 MP dengan bukaan f/2.2, dan kamera telefoto sebesar 64 MP dengan bukaan f/3.5. Kamera ini dilengkapi fitur OIS, Laser AF, PDAF, serta rekaman video hingga 4K dengan fitur gyro-EIS.\r\nSemua model Huawei Mate 50 Series termasuk Huawei Mate 50 Pro ini telah dibekali chipset terbaik buatan Qualcomm yaitu Snapdragon 8+ Gen 1. Chipset ini ditenagai oleh delapan inti CPU dan didukung oleh pengolah grafis GPU Adreno 730. Sebagai pilihan penyimpanan, Huawei Mate 50 Pro menawarkan penyimpanan RAM 8 GB dan penyimpanan internal 256 GB dan 512 GB.\r\nUntuk meningkatkan performa yang dihadirkan, Huawei Mate 50 Pro telah dibekali kapasitas baterai yang cukup besar yaitu 4700 mAh dengan fitur fast charging 66 W, wireless fast charging 50 W, dan reverse wireles charging 5W. Fitur lainnya yang tidak kalah menarik adalah letak fingerprint yang berada di bawah layar, sertifikasi IP68, proteksi layar dari Huawei Kunlun Glass, dan sebagainya.\r\n', 'Huawei Mate 50 Pro memiliki posisi tertinggi di antara dua varian lainnya dari lini Huawei Mate 50 series ini. Ketiganya memiliki tampilan yang berbeda-beda, di bagian depannya Huawei Mate 50 Pro ini dihiasi poni yang memiliki bentuk ', '2022-12-17 05:23:49', '2022-12-17 05:23:49', '2022-12-17 05:23:49', NULL),
(4, 2, 1, 'ASUS BR1100CKA', 'ASUS', 3049000, '2021', 'Layar : 11.6″ (16:9) LED-backlit HD (1366×768) 60Hz Anti-Glare Panel with 45% NTSC\r\nProcessor : Intel® Celeron® Dual-Core N4500 Processor, (4 M Cache, up to 2.8 GHz)\r\nGraphic Card : Intel UHD\r\nRAM : 4 GB DDR4\r\nStorage : 128 GB eMMC\r\nOptical Drive: -\r\nKonektivitas : WiFi AC (5 GHz), Bluetooth 5.0\r\nPort : 1 x Type-A USB2.0, 1 x Type-A USB 3.2 (Gen 1), 1 x Type-C USB 3.2 (Gen 2) with power delivery support, 1 x RJ45 LAN jack for LAN insert, 1 x HDMI, HDMI support 1.4, 1 x micro SD card, 1 x audio jack combo\r\nBaterai : 3 -Cell 42 Wh', 'ASUS BR1100CKA adalah pilihan ekonomis bagi Anda yang punya aktivitas dinamis. Ya, karena punya layar tak terlalu besar, 11,6 inci, laptop ini jadi punya dimensi yang ringkas. Hal itu menjadikan laptop ini mudah dibawa kemana-mana. Mau di kantor, di rumah, atau di kafe.\r\n\r\nSelain ringan, laptop dengan bobot 1,26 kg ini siap menuntaskan segala tugas yang Anda berikan. Tentu saja tugas-tugas yang berkaitan dengan olah data, blogging, video conference dan bermain gim kasual. Tugas-tugas itu sesuai dengan profil jeroan laptop ini yang ditenagai prosesor dualcore Intel Celeron N4500, RAM 4 GB, dan storage eMMC.\r\n\r\nYang menarik, laptop dengan harga Rp3,2 jutaan ini menyediakan slot kosong SSD M.2. Artinya, kalau penyimpanannya penuh, Anda bisa meng-upgrade ruang simpan si laptop. Tak hanya itu, laptop ini bisa dipakai buat waktu lama karena baterainya awet, lolos sertifikasi ketahanan militer MIL-STD-810H, dan sudah mendukung WiFi 5 GHz.', 'ASUS BR1100CKA adalah pilihan ekonomis bagi Anda yang punya aktivitas dinamis. Ya, karena punya layar tak terlalu besar, 11,6 inci, laptop ini jadi punya dimensi yang ringkas. Hal itu menjadikan laptop ini mudah dibawa kemana-mana.', '2022-12-17 05:23:49', '2022-12-17 05:23:49', '2022-12-17 05:23:49', NULL),
(5, 2, 1, 'ASUS E410MA N4020', 'ASUS', 3799000, '2022', 'Layar : LCD 14 inci, HD (1366 x 768) 16:9, Anti-glare display\r\nProcessor : Intel® Celeron® N4020 1.1 GHz (4M Cache, up to 2.8 GHz)\r\nGraphic Card : Intel® UHD Graphics 600\r\nRAM : 4 GB DDR4\r\nStorage : 512 GB SSD\r\nOptical Drive : -\r\nKonektivitas : Wi-Fi 5(802.11ac)+Bluetooth 4.1 (Dual band) 1*1\r\nPort : 1x USB 2.0 Type-A, 1x USB 3.2 Gen 1 Type-A, 1x USB 3.2 Gen 1 Type-C, 1x HDMI 1.4, 1x 3.5mm Combo Audio Jack, Micro SD card reader\r\nBaterai : 42WHrs, 3S1P, 3-cell Li-ion', 'Apakah Anda seorang akuntan yang butuh fitur mengetik angka yang praktis pada laptop? Jika iya, ASUS E410MA ini bisa jadi pilihan yang cocok. Selain menghadirkan desain yang elegan dan layar yang lebar. Trackpad pada laptop ini bisa berfungsi sebagai NumberPad untuk pengetikkan angka yang cepat dan nyaman.\r\n\r\nDesain layarnya yang punya bezel tipis juga semakin membuat layar immersive. Ini adalah laptop dengan engsel layar yang bisa ditekuk hingga 180 derajat, jadi semakin mudah untuk berbagi ide dengan sesama kolega. \r\n\r\nKeyboard-nya juga menawarkan warna backlit yang distinctive pada tombol Enter, dengan kesemua tombolnya memiliki key travel sedalam 1,4 mm saja untuk responsivitas yang tinggi. Dapatkan laptop ini seharga Rp3 jutaan.', 'Apakah Anda seorang akuntan yang butuh fitur mengetik angka yang praktis pada laptop? Jika iya, ASUS E410MA ini bisa jadi pilihan yang cocok.', '2022-12-17 05:37:40', '2022-12-17 05:37:40', '2022-12-17 05:37:40', NULL),
(6, 2, 1, 'ASUS X441 MA-GA031T', 'ASUS', 4199000, '2022', 'Layar : TFT LCD 14.0-inch, HD (1366 x 768) 16:9 aspect ratio, LED Backlit, 200nits, NTSC: 45%, Anti-glare display\r\nProcessor : Intel Celeron N4020, dualcore 2 thread (up to 2.8GHz; 4MB)\r\nGraphic Card : Intel UHD 600\r\nRAM : 4 GB\r\nStorage : 1 TB HDD\r\nOptical Drive : DVD Writer 4x\r\nKonektivitas : WiFi 5 GHz, Bluetooth 4.2\r\nPort : 1x USB 2.0 Type-A, 1x USB 3.2 Gen 1 Type-A, 1x USB 3.2 Gen 1 Type-C, 1x HDMI 1.4, 1x VGA Port (D-Sub) 1x 3.5mm Combo Audio Jack, 1x RJ45 Fast Ethernet, Micro SD card reader\r\nBaterai : 36WHrs, 3S1P, 3-cell Li-ion (up to 8 hours battery life)', 'Zaman sekarang cukup susah mencari laptop yang punya DVD room. Hal ini karena tren masa kini mendorong produsen menciptakan laptop berdimensi tipis. Untuk mengejar ketipisan bentuk, otomatis DVD room dibuang. Namun, buat Anda yang suka menyalin file ke sebuah keping DVD, ada satu laptop yang menyediakan DVD room.\r\nLaptop tersebut adalah ASUS X441MA-GA031T yang bisa Anda beli di kisaran harga Rp3,4 jutaan. Meski punya DVD room, laptop ini ternyata masih tergolong ringan, cuma 1,75 kg. Anda jangan berekspektasi lebih terhadap desain laptop ini. Sebab Anda tidak akan menemui layar berbingkai tipis.\r\n\r\nNamun, pendekatan ASUS dalam merancang laptop ini memang bukan di bagian penampilan, melainkan kenyamanan pakai. Salah satu alasannya adalah karena laptop ini sudah memakai keyboard chiclet yang punya sensasi tekan lebih taktil dan responsif ketimbang keyboard membran biasa.\r\nSelain itu, laptop ini dilengkapi speaker Sonic Master yang cukup lantang, layar yang oke berkat teknologi penajam detail ASUS Tru2Life, teknologi ASUS Eye Care untuk mengurangi emisi cahaya biru, serta port yang lengkap.', 'Zaman sekarang cukup susah mencari laptop yang punya DVD room. Hal ini karena tren masa kini mendorong produsen menciptakan laptop berdimensi tipis. Untuk mengejar ketipisan bentuk, otomatis DVD room dibuang. Namun, buat Anda yang suka menyalin file ke se', '2022-12-17 05:37:40', '2022-12-17 05:37:40', '2022-12-17 05:37:40', NULL),
(7, 2, 1, 'Panasonic Lumix DMC-G7 Kit 14-42mm', 'Panasonic', 8199000, '2022', '16MP Four Thirds CMOS sensor\r\n4K (UHD) video hingga 100Mbps, 30p/25p + 24p\r\n4K Photo di mode \'Pre-Burst\'\r\nPemotretan beruntun hingga 7 FPS\r\nFully-articulated touch screen\r\nMicrophone input (3.5mm)\r\nWi-Fi untuk pengambilan gambar jarak jauh dan transfer gambar', 'Panasonic Lumix DMC-G7 Kit 14-42mm merupakan salah satu jajaran kamera Mirrorless Terbaik dengan harga terjangkau dari Panasonic, dengan dibekali Sensor Micro Four third yang mampu merekan video hingga resolusi 4K di 30p, 25p, dan 24p, menjadikannya salah satu kamera yang mampu merekam video di resolusi tersebut di rentang harga dibawah 10 Juta. Tak hanya mengandalkan perekaman videonya, Kamera Mirrorless ini juga mempunyai fitur segudang yang dapat membantu kebutuhan Photography/Videography para Sobat Galaxy sekalian.', 'Panasonic Lumix DMC-G7 Kit 14-42mm merupakan salah satu jajaran kamera Mirrorless Terbaik ', '2022-12-17 06:04:32', '2022-12-17 06:04:32', '2022-12-17 06:04:32', NULL),
(8, 2, 1, 'Panasonic Lumix DMC-GX85 Kit 12-32mm', 'Panasonic', 6299000, '2022', '16MP Four Thirds CMOS sensor\r\nElectromagnetic shutter\r\nPemotretan beruntun hingga 10 FPS\r\nDepth from Defocus AF\r\n2.76M-dot field sequential EVF\r\n1.04M-dot tilting touchscreen display\r\n4K video / photo\r\n5-axis image stabilization dengan Dual I.S.\r\nWi-Fi', 'Tak mau kalah dengan kakak nya, Panasonic Lumix DMC-GX85 Kit 12-32mm juga ingin ikut andil meramaikan di sektor ini, dengan bentuk yang lebih ringkas namun spesifikasi yang mirip menjadikan kamera ini sebagai opsi untuk sobat Galaxy yanng menginginkan kamera dengan spesifikasi mumpuni dengan bentuk yang simple dan ringkas. Tetap membawa kemampuan perekaman video di resolusi 4K 24 dan 30 FPS, serta Continous Shutter hingga 10 FPS.', 'Panasonic Lumix DMC-GX85 Kit 12-32mm juga ingin ikut andil meramaikan di sektor ini, dengan bentuk yang lebih ringkas namun spesifikasi yang mirip menjadikan kamera ini sebagai opsi untuk sobat Galaxy', '2022-12-17 06:04:32', '2022-12-17 06:04:32', '2022-12-17 06:04:32', NULL),
(9, 2, 1, 'Fujifilm X-T200 Kit 15-45mm', 'Fujifilm', 7450000, '2022', '24.2 Megapixel APS-C CMOS with primary color filter\r\nPerekaman Video 4K hingga 30 FPS\r\nBanyak pilihan filter video\r\nPemotretan beruntun hingga 8 FPS\r\nSudah USB type C\r\nTersedia microphone input 3.5MM\r\nLayar 3.5\" Touch screen yang sudah Fully Articulated', 'Beralih ke Fujifilm, series X-T200 dari Fujifilm membawakan fitur yang cukup lengkap dan menakjubkan, dengan sensor APS-C dan resolusi 24.2 Megapixel dan kemampuan perekaman 4K hingga 30 FPS. Dengan banyaknya pilihan Filter Video (Film Simulations) Menjadi nilai plus bagi pencinta Video dan menambah variasi serta kreatifitas anda di mode video. Ditanamkan juga layar dengan bentang 3.5″ yang sudah Fully Articulated hingga anda bisa mengambil berbagai momen dari sudut apapun. Dibalik spesifikasi yang mumpuni tersebut Fujifilm X-T200 dibalut dengan desain retro minimalis yang menambah cantik bentuk kamera tersebut.', 'Beralih ke Fujifilm, series X-T200 dari Fujifilm membawakan fitur yang cukup lengkap dan menakjubkan, dengan sensor APS-C dan resolusi 24.2 Megapixel dan kemampuan perekaman 4K hingga 30 FPS. Dengan banyaknya pilihan', '2022-12-17 06:13:54', '2022-12-17 06:13:54', '2022-12-17 06:13:54', NULL),
(13, 1, 1, 'Apple iPhone 14 Pro Max', 'APPLE', 21899000, '2022', 'Layar : LTPO Super Retina XDR OLED 6.7 inci\r\nChipset : Apple A16 Bionic\r\nRAM : 6 GB\r\nMemori Internal : 128 GB, 256 GB, 512 GB, 1 TB\r\nKamera : 48 MP (wide) 12 MP (telephoto) 12 MP (ultrawide) MP (ToF Lidar)\r\nBaterai : Li-Ion 4323 mAh', 'Menjelang akhir 2022, Apple iPhone 14 Series menjadi bahan perbincangan untuk waktu lama, terutama untuk model tertingginya yaitu iPhone 14 Pro Max. Bagaimana tidak, iPhone 14 Pro Max ini membawa beberapa peningkatan dan pembaruan jika dibandingkan generasi sebelumnya, tertutama pada bagian notch yang tidak lagi poni tetapi mengambang seperti kapsul dan sangat atraktif.\r\n\r\nNotch tersebut diberi nama \"Dynamic Island\" yang memiliki fungsi tidak hanya sebagai tempat untuk menyembunyikan kamera depan saja, tetapi lebih atraktif dan mampu berubah-ubah. Sesuai namanya, notch milik iPhone 14 ini menjadi dinamis dan mampu berubah baik itu memanjang, melebar, membesar, bahkan membaginya menjadi dua sesuai aktivitas yang sedang dilakukan di HP.\r\n\r\nFitur Dynamic Island memang menjadi fitur yang sangat menarik dan baru, tetapi keunggulan iPhone 14 Pro Max tidak hanya sampai situ. Misalnya pada bagian layar yang telah dibekali panel LTPO Super Retina XDR OLED berukuran 6,7 inci dengan resolusi 1290 x 2796 piksel. Refresh rate yang dimilikinya juga cukup tinggi yaitu 120 Hz dengan fitur AOD (Always on Display) yang baru singgah di iPhone.\r\n\r\niPhone 14 Pro Max juga memiliki performa yang lebih tinggi daripada generasi sebelumnya, hal itu karena HP ini menggunakan chipset baru yaitu Apple A16 Bionic. Chipset ini memiliki manufaktur 4 nm dengan Hexa-core yang didukung oleh pengolah grafis Apple GPU yang lebih kencang.', 'iPhone 14 Series menjadi bahan perbincangan untuk waktu lama, terutama untuk model tertingginya yaitu iPhone 14 Pro Max. Bagaimana tidak, iPhone 14 Pro Max ini membawa beberapa peningkatan dan pembaruan jika dibandingkan generasi sebelumnya, tertutama pad', '2022-12-26 07:43:05', '2022-12-26 07:43:05', '2022-12-26 07:43:05', 'https://www.tokopedia.com/putragroup/ibox-apple-iphone-14-pro-max-promax-1tb-512gb-256gb-128gb-resmi-tam-128gb-deep-purple'),
(14, 2, 2, 'Samsung Chromebook 4', 'SAMSUNG', 2100000, '2021', 'Layar : 11.6″ HD LED Display (1366 x 768), Anti-Reflective\r\nProcessor : Intel® Celeron® Processor N4020 (1.10 Ghz up to 2.70 Ghz 4 MB L2 Cache)\r\nGraphic Card : Intel® UHD Graphics 600\r\nRAM: 4 GB LPDDR4 Memory (On BD 4 GB)\r\nStorage : 32GB eMMC Internal / 160GB ( eMMC + 128GB SD CARD )\r\nOptical Drive : –\r\nKonektivitas : 802.11 ac wave2 2X2 / Bluetooth\r\nPort : 1 USB-C® 1 USB3.0 MicroSD Multi-media Card Reader 1 Headphone out/Mic-in Combo\r\nBaterai : Integrated', 'Lama tidak terdengar, akhirnya Samsung kembali meluncurkan produk laptop setelah kemunculan terakhirnya di tahun 2014. Bukan sebagai laptop biasa, laptop Samsung ini hadir sebagai Chromebook yang hadirkan spek ringan namun tetap gesit untuk keperluan sekolah dan pekerjaan.\r\n\r\nIni adalah Samsung Chromebook 4, hadir dengan bobot ringan 1,18 kg untuk kemudahan portabilitas. Serta, hadir pula dengan stereo speaker dan webcam 720p untuk menunjang aktivitas online meeting.\r\nMemiliki bentang layar 11,6 inci, laptop ini memang terbilang cukup mungil dan compact sehingga tidak akan sulit dimasukkan ke tas. Menariknya, walau kecil, pengalaman mengetik tetap terasa maksimal lantaran desain keyboard yang memenuhi keseluruhan ruang. Dari ujung ke ujung, agar tidak menyia-nyiakan space yang ada.\r\n\r\nSebagaimana Chromebook pada umumnya, mayoritas aktivitas yang Anda lakukan di laptop ini terjadi secara online alias berbasiskan web. Itu mengapa, walau dapur pacunya terbilang sederhana, penggunaan laptop akan tetap terasa mulus dan gesit.\r\n\r\nSamsung Chromebook 4 juga diklaim memiliki ketahanan baterai memadai, yakni selama 12,5 jam. Laptop juga hadir dengan port USB-C yang sekaligus berfungsi sebagai antarmuka display out. Harganya sangat terjangkau, yakni mulai dari Rp2,1 jutaan saja.', 'Lama tidak terdengar, akhirnya Samsung kembali meluncurkan produk laptop setelah kemunculan terakhirnya di tahun 2014. Bukan sebagai laptop biasa, laptop Samsung ini hadir sebagai Chromebook yang hadirkan spek ringan namun tetap gesit untuk keperluan seko', '2022-12-26 07:55:12', '2022-12-26 07:55:12', '2022-12-26 07:55:12', 'https://www.tokopedia.com/distrilapid/laptop-murah-samsung-chromebook-4-celeron-32gb-4gb-11-6-hd-resmi-sein-non-bundling?extParam=ivf%3Dtrue&src=topads'),
(15, 1, 1, 'Samsung Galaxy Z Flip4 5G', 'SAMSUNG', 14999000, '2022', 'Layar	Foldable Dynamic AMOLED X2 6.7 inci\r\nChipset	Qualcomm Snapdragon 8+ Gen 1\r\nRAM	8 GB\r\nMemori Internal	128 GB, 256 GB, 512 GB\r\nKamera	12 MP (wide) 12 MP (ultrawide)\r\nBaterai	Li-Po 3700 mAh', 'Samsung Galaxy Z Flip4 5G ini memiliki harga yang lebih murah dari pendahulunya, Samsung Galaxy Z Flip3 5G. Namun, bukan berarti spesifikasi yang dimilikinya lebih rendah, malah Samsung Galaxy Z Flip4 5G ini justru mengalami beberapa peningkatan di beberapa aspek, terutama layar luar yang lebih luas, menggunakan chipset terbaru, dan kapasitas baterai yang lebih besar.\r\n\r\nSebagai HP lipat, Samsung Galaxy Z Flip4 5G ini memiliki layar utama yang cukup menarik dengan panel Foldable Dynamic AMOLED 2X berukuran 6,7 inci yang dapat dilipat menjadi dua bagian. Layar ini juga memiliki refresh rate yang cukup tinggi yaitu 120 Hz dengan kecerahan puncak 1200 nit dan berhasil mencapai resolusi Full HD+ atau 1080 x 2640 piksel.\r\n\r\nSementara itu, layar sekunder atau cover yang dimiliki Samsung Galaxy Z Flip4 5G ini memiliki panel Super AMOLED berukuran 1,9 inci yang telah dilindungi oleh Gorilla Glass Victus+. Sehingga layar menjadi lebih tahan banting dan anti terhadap goresan.\r\n\r\nChipset yang digunakan Samsung Galaxy Z Flip4 5G ini juga cukup tangguh karena menggunakan chipset terbaik milik Qualcomm yaitu Snapdragon 8+ Gen 1. Chipset ini dipadukan dengan penyimpanan RAM 8 GB dan penyimpanan internal 128 GB, 256 GB, dan 512 GB. Sebagai pendukung, HP ini dibekali kapasitas baterai 3700 mAh dengan fitur fast charging 25 W, fast charging wireless 10 W, dan reverse wireless 4,5 W.', 'Samsung Galaxy Z Flip4 5G ini memiliki harga yang lebih murah dari pendahulunya, Samsung Galaxy Z Flip3 5G. Namun, bukan berarti spesifikasi yang dimilikinya lebih rendah, malah Samsung Galaxy Z Flip4 5G ini justru mengalami beberapa peningkatan di bebera', '2022-12-26 08:04:11', '2022-12-26 08:04:11', '2022-12-26 08:04:11', 'https://www.tokopedia.com/samsung/samsung-galaxy-z-flip4-5g-8-256gb-graphite-476a?extParam=ivf%3Dfalse&src=topads'),
(16, 3, 1, 'Nikon D5600 (DSLR)', 'NIKON', 7300000, '2021', '24.2MP DX-Format CMOS Sensor\r\nEXPEED 4 Image Processor\r\n3.2\" 1.037m-Dot Vari-Angle Touchscreen\r\nFull HD 1080p Video Recording at 60 fps\r\nMulti-CAM 4800DX 39-Point AF Sensor\r\nISO 100-25600 and 5 fps Shooting\r\nSnapBridge Bluetooth and Wi-Fi with NFC\r\nTime-Lapse Movie Recording\r\nAF-P DX 18-55mm f/3.5-5.6G VR Lens', 'Nikon D5600. Kamera ini pun memiliki tipe sensor CMOS dengan ukuran 23.5 x 15.6mm serta layar dengan ukuran 3.2\". Video pada kamera ini beresolusi Full HD dengan minimum ISO 100 dan maksimal ISO 25600.', 'Nikon D5600. Kamera ini pun memiliki tipe sensor CMOS dengan ukuran 23.5 x 15.6mm serta layar dengan ukuran 3.2\". Video pada kamera ini beresolusi Full HD dengan minimum ISO 100 dan maksimal ISO 25600.', '2022-12-27 10:59:26', '2022-12-27 10:59:26', '2022-12-27 10:59:26', 'https://www.tokopedia.com/khususcam/camera-nikon-d5600-kit-18-55mm-nikon-d5600-kit-tanpa-paket?extParam=ivf%3Dfalse&src=topads'),
(17, 3, 1, 'Canon EOS 90D', 'CANON', 17399000, '2021', '32.5MP APS-C CMOS Sensor\r\nDIGIC 8 Image Processor\r\nUHD 4K30p & Full HD 120p Video Recording\r\n3\" 1.04m-Dot Vari-Angle Touchscreen LCD\r\n45-Point All Cross-Type AF System\r\nDual Pixel CMOS AF with 5481 AF Points\r\nUp to 10-fps Shooting, ISO 100-25600\r\nBuilt-In Wi-Fi and Bluetooth\r\nEOS iTR AF, Electronic Shutter Function', 'Canon EOS 90D. Kamera ini pun memiliki tipe sensor CMOS dengan ukuran 22.3 x 14.8mm serta layar dengan ukuran 3\". Video pada kamera ini beresolusi Full HD dengan minimum ISO 100 dan maksimal ISO 25600.', 'Canon EOS 90D. Kamera ini pun memiliki tipe sensor CMOS dengan ukuran 22.3 x 14.8mm serta layar dengan ukuran 3\".', '2022-12-28 05:24:20', '2022-12-28 05:24:20', '2022-12-28 05:24:20', 'https://www.tokopedia.com/djipro/canon-eos-90d-kit-18-55mm-is-stm-camera-dslr-paket-bonus-acc-original-body-only-paket-a-standar?extParam=ivf%3Dfalse%26src%3Dsearch&refined=true'),
(18, 1, 1, 'Xiaomi 12S Ultra', 'Xiaomi', 4099000, '2021', 'Ukuran layar: 6.67 inci, 1080 x 2400 pixels, Super AMOLED, 120Hz, HDR10, 700 nits, 1200 nits (peak)\r\nMemori: RAM 8 GB, ROM 128 GB, MicroSD slot\r\nSistem operasi: Android 11, MIUI 13\r\nCPU: Qualcomm SM6375 Snapdragon 695 5G (6 nm) Octa-core\r\nGPU: Adreno 619\r\nKamera: Triple 108 MP f/1.9 26mm (wide); 8 MP f/2.2 118˚ (ultrawide); 2 MP f/2.4 (macro), depan 16 MP, f/2.5, (wide)\r\nSIM: Hybrid Dual SIM (Nano-SIM, dual stand-by)\r\nBaterai: Li-Po 5000 mAh, non-removable\r\nBerat: 202 gram', 'Harga HP Redmi Note 11 Pro untuk semua variannya ada di kelas Rp 4 jutaan. Bersaing di kelas menengah, Redmi Note 11 Pro mengandalkan RAM besar serta kamera utama 108MP yang memiliki kualitas profesional. Mengusung slogan \"Jawaranya Semua Tantangan\", spesifikasi Xiaomi Redmi Note 11 Pro memang terasa sangat unggul di semua lini. Harga HP Redmi Note 11 Pro pun bisa dibilang terlalu murah jika melihat spesifikasinya.\r\nXiaomi Redmi Note 11 Pro secara resmi mendarat di Indonesia dalam dua varian, masing-masing dengan memori 6/128GB dan 8/128GB.\r\nLanjut ke bagian kamera. Redmi Note 11 Pro membawa empat buah kamera utama di bagian belakang. Masing-masing dengan sensor wide angle 108MP, ultrawide angle 8MP, macro 2MP, dan depth 2MP. Untuk kebutuhan selfie, ada kamera tunggal 16MP dengan sensor wide angle yang bisa digunakan. Kamera belakang dan kamera depannya mampu merekam video dengan kualitas hingga 1080p@30fps. Sangat disayangkan kameranya belum bisa mencapai level 4K. Untuk melengkapi semuanya, ada baterai 5.000 mAh dengan fast charging 67W. Xiaomi mengklaim bahwa teknologi pengisian daya cepat ini bisa mengisi daya dari 0%-51% dalam waktu 15 menit saja. Secara umum, spesifikasi dan harga HP Redmi Note 11 Pro memang terlihat paling unggul jika dibandingkan dengan produk lain di kelas harga yang sama. Prosesornya yang ada di level terbaik pun dijamin akan memberikan dukungan performa yang baik hingga beberapa tahun ke depan.', 'Harga HP Redmi Note 11 Pro untuk semua variannya ada di kelas Rp 4 jutaan. Bersaing di kelas menengah, ', '2022-12-28 05:29:57', '2022-12-28 05:29:57', '2022-12-28 05:29:57', 'https://www.tokopedia.com/jikalaku/promo-xiaomi-redmi-note-11-pro-5g-8-128gb-garansi-resmi-white?extParam=ivf%3Dfalse%26src%3Dsearch'),
(19, 3, 1, 'Fujifilm Instax Mini 11', 'Fujifilm', 149000, '2022', '· Lensa selfie bawaan dan cermin selfie\r\n· Eksposur otomatis bawaan\r\n· Dua tombol rana yang dapat disesuaikan\r\n· Cetakan seukuran kartu kredit yang sempurna untuk dibagikan\r\n· Lima nada halus – abu-abu arang, biru langit, merah muda merona, ungu ungu dan putih es', 'Dirancang agar sesuai dengan keseharian Anda, super social instax mini 11 memudahkan berbagi bingkai, menghadirkan kegembiraan di setiap momen.\r\n\r\nMau berbagi?\r\nInstax mini 11 yang ceria, super sosial, dan kecil menyenangkan tidak lebih dari sekadar menyatukan teman dan keluarga.\r\n\r\nMudah digunakan, dan dipersonalisasi dengan tombol rana yang dapat disesuaikan, permata kecil ini dikemas dengan potensi. Lensa selfie internal membantu Anda berbagi bingkai dengan mudah. Dan eksposur otomatis memastikan tidak ada yang tersesat di latar belakang.\r\n\r\nSetiap cetakan seukuran kartu kredit (sempurna untuk dibagikan) akan membawa kegembiraan bagi teman Anda saat ini, dan seterusnya.\r\n\r\nDidesain dalam lima warna halus – abu-abu arang, biru langit, merah muda merona, ungu ungu, dan putih es, instax mini 11 akan cocok dengan kehidupan sehari-hari Anda.', 'Dirancang agar sesuai dengan keseharian Anda, super social instax mini 11 memudahkan berbagi bingkai, menghadirkan kegembiraan di setiap momen.', '2022-12-28 06:17:26', '2022-12-28 06:17:26', '2022-12-28 06:17:26', 'https://www.tokopedia.com/instax-official/fujifilm-instax-mini-11-pastel-green'),
(20, 2, 1, 'ACER NITRO AN515 58', 'Acer', 16399000, '2022', 'ACER NITRO 5 AN515 RTX3050 4GB/ I7 12700H 16GB 512SSD W11+OHS 15.6FHD 144HZ 60%SRGB 4ZRGB TGP95 THUNDERB BLK -58.780Q\r\n\r\nStep Up To The Power of 2nd Generation RTX with GeForce RTX 3050 Laptop Family\r\n\r\nNitro 5 (AN515-58-780Q)\r\n• Graphics : NVIDIA® GeForce® RTX 3050 with 4GB of GDDR6 (95W)\r\n\r\n• Processor : Intel® Core™ i7-12700H processor (24MB cache, up to 4.70Ghz)\r\n\r\n• OS : Windows 11 Home + OFFICE HOME STUDENT 2021\r\n\r\n• Memory : MAX 32GB\r\n8GB = 8GB DDR4 + 1 SLOT KOSONG\r\n16GB = 16GB DDR4 + 1 SLOT KOSONG\r\n\r\n• Storage : SSD MAX 2TB , HDD MAX 1TB\r\n\r\n512GB = 1X 512GB SSD NVMe + 1 SLOT KOSONG SSD NVME + 1 SLOT KOSONG SATA\r\n\r\n• Inch, Res, Ratio, Panel : 15.6\" FHD 1920 x 1080, IPS, , 144 Hz\r\n\r\n* COLOUR GAMUT =\r\n780Q : 60% sRGB & 300 nits\r\n78PT : 100% sRGB & 300 nits', 'Acer menanamkan jeroan gahar lewat Nitro 5 seri AN515-58 yang ditenagai 12th Generation Intel® Core™ Processors terbaru dan GPU RTX 30 series, serta dilengkapi refresh rate layar tinggi untuk gaming kompetitif.\r\n\r\nNitro sebagai lini laptop gaming Acer tidak ada habis-habisnya menghadirkan sesuatu yang baru. Tidak mau ketinggalan zaman—tak mau kalah saing dengan kompetitor—Nitro 5 kali ini dibekali 12th Generation Intel® Core™ Processors. Sebelum artikel ulasan Nitro 5 ini tayang, penulis pun telah membahas seri kakaknya yaitu AN515-57 yang masih menggunakan Intel® generasi ke-11. \r\n\r\nMelihat secara kacamata spesifikasi jeroan, AN515-57 dengan AN515-58 menggunakan Intel® seri H untuk prosesornya meskipun beda generasi. Keduanya tetap menggunakan RTX 30 Series, namun terdapat downgrade pada layar untuk seri AN515-58 kali ini. Hal tersebut yang kemungkinan besar menjadi alasan mengapa seri terbaru Acer Nitro 5 ini lebih terjangkau secara harga dibandingkan pendahulunya—padahal seri terbaru lebih gahar di list spesifikasi. ', 'Acer menanamkan jeroan gahar lewat Nitro 5 seri AN515-58 yang ditenagai 12th Generation Intel® Core™ Processors terbaru dan GPU RTX 30 series, serta dilengkapi refresh rate layar tinggi untuk gaming kompetitif.', '2022-12-28 06:23:04', '2022-12-28 06:23:04', '2022-12-28 06:23:04', 'https://www.tokopedia.com/acer-jakarta/acer-nitro-an515-58-780q-gen-12-i7-12700h-16gb-512ssd-rtx3050-144hz-non-paket-780q-8gb-512ssd');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `user_type` int(11) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `biodata` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `user_type`, `remember_token`, `created_at`, `updated_at`, `biodata`) VALUES
(1, 'Ibnul', 'icong@gmail.com', NULL, '$2y$10$vboPmZ.4C2c60TNwsRv15eWyi1FBpy3BwhjFLJriQ6vJsPImmQFWu', 1, NULL, '2022-12-20 21:08:52', '2022-12-20 21:08:52', NULL),
(2, 'faisal', 'fiuls@gmail.com', NULL, '$2y$10$5Tk.yWbFYMQuwU5HP9CZXu..ah2SlHXV9ZRnhk7XUVJGZIiona8sK', 1, NULL, '2022-12-21 06:04:28', '2022-12-21 06:04:28', NULL),
(5, 'mus', 'mus@gmail.com', NULL, '$2y$10$XJF6eX6CgOR9FBZiHsQ0p.9exQfSf9pNXcR94fnCH2yeXYJn6ToDi', 0, NULL, '2022-12-24 09:09:41', '2022-12-24 09:09:41', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_slug_unique` (`excerpt`),
  ADD UNIQUE KEY `slug` (`excerpt`),
  ADD UNIQUE KEY `nama_produk` (`nama_produk`),
  ADD KEY `slug_2` (`excerpt`);

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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
