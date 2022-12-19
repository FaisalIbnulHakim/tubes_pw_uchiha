-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 17, 2022 at 07:22 AM
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
  `category` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category`, `created_at`, `updated_at`) VALUES
(1, 'Handphone', '2022-12-15 15:12:19', '2022-12-15 15:12:19'),
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
  `slug` varchar(255) NOT NULL,
  `published_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `user_id`, `nama_produk`, `brand`, `harga`, `tahun_rilis`, `spesifikasi`, `deskripsi`, `slug`, `published_at`, `created_at`, `updated_at`) VALUES
(1, 1, 0, 'Samsung Galaxy Z Fold4 5G', 'Samsung', 22375000, '2022', 'Layar : Foldable Dynamic AMOLED 2X 7.6 inci\r\nChipset : Qualcomm Snapdragon 8+ Gen 1\r\nRAM : 12 GB\r\nMemori Internal : 256 GB, 512 GB, 1 TB\r\nKamera : 50 MP (wide) 12 MP (telephoto) 12 MP (ultrawide)\r\nBaterai : Li-Po 4400 mAh', 'Samsung Galaxy Z Fold4 5G ini tidak memiliki perubahan yang cukup signifikan dalam hal desain jika dibandingkan dengan pendahulunya yaitu Galaxy Z Fold3 5G. Namun, peningkatan tetap dilakukan khususnya untuk tujuan durabilitas. HP ini mengalami penggantian kaca proteksi pada layar cover dan penutup belakang yaitu menjadi Gorilla Glass Victus+ yang lebih kokoh dari generasi sebelumnya.\r\nSelain itu, frame dan engsel Galaxy Z Fold4 5G ini juga sedikit diubah menjadi lebih kecil yang terbuat dari material Alumunium Armor. Durabilitas HP juga diperlihatkan dengan adanya sertifikasi IPX8 yang mampu membuatnya bertahan dari air bahkan di kedalaman 1,5 meter selama 30 menit.\r\nSamsung Galaxy Z Fold4 5G ini dibekali layar utama dengan panel Foldable Dynamic AMOLED 2X dengan refresh rate yang adaptif mulai dari 1-120 Hz. Layar ini mampu menampilkan konten HDR10+ dengan tingkat kecerahan layar mencapai 1200 nit.\r\nDi sisi lain, performa yang mampu dihasilkan oleh Galaxy Z Fold4 5G juga tidak kalah tinggi berkat dibekali chipset terbaik milik Qualcomm yaitu Snapdragon 8+ Gen 1 dengan fabrikasi 4 nm. Chipset tersebut kemudian dipadukan dengan penyimpanan RAM 12 GB dan penyimpanan internail bervariasi mulai dari 256 GB, 512 GB, dan 1 TB.\r\n', 'Samsung Galaxy Z Fold4 5G ini tidak memiliki perubahan yang cukup signifikan dalam hal desain jika dibandingkan dengan pendahulunya yaitu Galaxy Z Fold3 5G. Namun,', '2022-12-15 15:14:12', '2022-12-15 15:14:12', '2022-12-15 15:14:12'),
(2, 1, 0, 'Samsung Galaxy S22 Ultra', 'Samsung', 15175000, '2022', 'Layar : Dynamic AMOLED 2X 6.8 inci\r\nChipset : Qualcomm Snapdragon 8 Gen 1\r\nRAM : 8GB, 12GB\r\nMemori Internal : 128 GB, 256 GB, 512 GB\r\nKamera : 108 MP (wide) 10 MP (periscope telephoto) 10 MP (telephoto) 12 MP (ultrawide)\r\nBaterai : Li-Ion 5000 mAh', 'Samsung Galaxy S22 Ultra merupakan satu-satunya varian yang hadirkan penggunaan S Pen, sama seperti Galaxy Note series. Seperti predesornya, Galaxy S21 Ultra, HP ini telah mendukung penggunaan stylus agar pengguna lebih nyaman dalam menulis ataupun menggambar.\r\nBedanya, kini S Pen sudah tersedia dalam boks penjualan, dan S Pen bisa dimasukkan ke dalam bodi. Tak seperti Galaxy S21 Ultra yang S Pen-nya dijual terpisah dan mengharuskan pengguna membeli casing khusus jika ingin solusi penyimpanan S Pen yang praktis.\r\nS Pen pada Galaxy S22 Ultra juga alami peningkatan latensi yang semula hanya 9 milidetik pada S21 Ultra dan Note20 series kini menjadi 2,8 milidetik saja. Peningkatan hingga 70% tersebut berpengaruh baik terhadap minimnya lag saat menorehkan tulisan di layar.\r\nDi sisi lain, Galaxy S22 Ultra juga turut hadirkan konektivitas UWB (Ultra Wideband) yang jika dikombinasikan dengan aksesoris Galaxy Tag+, dapat digunakan untuk melacak benda yang hilang dengan presisi tinggi.\r\n', 'Samsung Galaxy S22 Ultra merupakan satu-satunya varian yang hadirkan penggunaan S Pen, sama seperti Galaxy Note series. Seperti predesornya', '2022-12-15 15:14:12', '2022-12-15 15:14:12', '2022-12-15 15:14:12'),
(3, 1, 0, 'Huawei Mate 50 Pro', 'Huawei', 22500000, '2022', 'Layar : 162.1 x 75.5 x 8.5 205 inci\r\nChipset : Qualcomm Snapdragon 8+ Gen 1\r\nRAM : 8 GB\r\nMemori Internal : 256 GB, 512 GB\r\nKamera : 50 MP (wide) 64 MP (periscope telephoto) 13 MP (ultrawide)\r\nBaterai : Li-Po 4700 mAh', 'Huawei Mate 50 Pro memiliki posisi tertinggi di antara dua varian lainnya dari lini Huawei Mate 50 series ini. Ketiganya memiliki tampilan yang berbeda-beda, di bagian depannya Huawei Mate 50 Pro ini dihiasi poni yang memiliki bentuk sedikit panjang sebagai wadah bagi kamera selfie dengan resolusi 13 MP dan sensor kamera ToF 3D.\r\nSedangkan pada bagian belakangnya, HP ini dihiasi oleh modul kamera yang cukup besar. Modul kamera tersebut berisi tiga buah kamera yang disematkan.\r\nKetiga kamera tersebut terdiri dari kamera utama 50 MP dengan bukaan f/1.4-f/4.0, ultrawide 13 MP dengan bukaan f/2.2, dan kamera telefoto sebesar 64 MP dengan bukaan f/3.5. Kamera ini dilengkapi fitur OIS, Laser AF, PDAF, serta rekaman video hingga 4K dengan fitur gyro-EIS.\r\nSemua model Huawei Mate 50 Series termasuk Huawei Mate 50 Pro ini telah dibekali chipset terbaik buatan Qualcomm yaitu Snapdragon 8+ Gen 1. Chipset ini ditenagai oleh delapan inti CPU dan didukung oleh pengolah grafis GPU Adreno 730. Sebagai pilihan penyimpanan, Huawei Mate 50 Pro menawarkan penyimpanan RAM 8 GB dan penyimpanan internal 256 GB dan 512 GB.\r\nUntuk meningkatkan performa yang dihadirkan, Huawei Mate 50 Pro telah dibekali kapasitas baterai yang cukup besar yaitu 4700 mAh dengan fitur fast charging 66 W, wireless fast charging 50 W, dan reverse wireles charging 5W. Fitur lainnya yang tidak kalah menarik adalah letak fingerprint yang berada di bawah layar, sertifikasi IP68, proteksi layar dari Huawei Kunlun Glass, dan sebagainya.\r\n', 'Huawei Mate 50 Pro memiliki posisi tertinggi di antara dua varian lainnya dari lini Huawei Mate 50 series ini. Ketiganya memiliki tampilan yang berbeda-beda, di bagian depannya Huawei Mate 50 Pro ini dihiasi poni yang memiliki bentuk ', '2022-12-17 05:23:49', '2022-12-17 05:23:49', '2022-12-17 05:23:49'),
(4, 2, 0, 'ASUS BR1100CKA', 'ASUS', 3049000, '2021', 'Layar : 11.6″ (16:9) LED-backlit HD (1366×768) 60Hz Anti-Glare Panel with 45% NTSC\r\nProcessor : Intel® Celeron® Dual-Core N4500 Processor, (4 M Cache, up to 2.8 GHz)\r\nGraphic Card : Intel UHD\r\nRAM : 4 GB DDR4\r\nStorage : 128 GB eMMC\r\nOptical Drive: -\r\nKonektivitas : WiFi AC (5 GHz), Bluetooth 5.0\r\nPort : 1 x Type-A USB2.0, 1 x Type-A USB 3.2 (Gen 1), 1 x Type-C USB 3.2 (Gen 2) with power delivery support, 1 x RJ45 LAN jack for LAN insert, 1 x HDMI, HDMI support 1.4, 1 x micro SD card, 1 x audio jack combo\r\nBaterai : 3 -Cell 42 Wh', 'ASUS BR1100CKA adalah pilihan ekonomis bagi Anda yang punya aktivitas dinamis. Ya, karena punya layar tak terlalu besar, 11,6 inci, laptop ini jadi punya dimensi yang ringkas. Hal itu menjadikan laptop ini mudah dibawa kemana-mana. Mau di kantor, di rumah, atau di kafe.\r\n\r\nSelain ringan, laptop dengan bobot 1,26 kg ini siap menuntaskan segala tugas yang Anda berikan. Tentu saja tugas-tugas yang berkaitan dengan olah data, blogging, video conference dan bermain gim kasual. Tugas-tugas itu sesuai dengan profil jeroan laptop ini yang ditenagai prosesor dualcore Intel Celeron N4500, RAM 4 GB, dan storage eMMC.\r\n\r\nYang menarik, laptop dengan harga Rp3,2 jutaan ini menyediakan slot kosong SSD M.2. Artinya, kalau penyimpanannya penuh, Anda bisa meng-upgrade ruang simpan si laptop. Tak hanya itu, laptop ini bisa dipakai buat waktu lama karena baterainya awet, lolos sertifikasi ketahanan militer MIL-STD-810H, dan sudah mendukung WiFi 5 GHz.', 'ASUS BR1100CKA adalah pilihan ekonomis bagi Anda yang punya aktivitas dinamis. Ya, karena punya layar tak terlalu besar, 11,6 inci, laptop ini jadi punya dimensi yang ringkas. Hal itu menjadikan laptop ini mudah dibawa kemana-mana.', '2022-12-17 05:23:49', '2022-12-17 05:23:49', '2022-12-17 05:23:49'),
(5, 2, 0, 'ASUS E410MA N4020', 'ASUS', 3799000, '2022', 'Layar : LCD 14 inci, HD (1366 x 768) 16:9, Anti-glare display\r\nProcessor : Intel® Celeron® N4020 1.1 GHz (4M Cache, up to 2.8 GHz)\r\nGraphic Card : Intel® UHD Graphics 600\r\nRAM : 4 GB DDR4\r\nStorage : 512 GB SSD\r\nOptical Drive : -\r\nKonektivitas : Wi-Fi 5(802.11ac)+Bluetooth 4.1 (Dual band) 1*1\r\nPort : 1x USB 2.0 Type-A, 1x USB 3.2 Gen 1 Type-A, 1x USB 3.2 Gen 1 Type-C, 1x HDMI 1.4, 1x 3.5mm Combo Audio Jack, Micro SD card reader\r\nBaterai : 42WHrs, 3S1P, 3-cell Li-ion', 'Apakah Anda seorang akuntan yang butuh fitur mengetik angka yang praktis pada laptop? Jika iya, ASUS E410MA ini bisa jadi pilihan yang cocok. Selain menghadirkan desain yang elegan dan layar yang lebar. Trackpad pada laptop ini bisa berfungsi sebagai NumberPad untuk pengetikkan angka yang cepat dan nyaman.\r\n\r\nDesain layarnya yang punya bezel tipis juga semakin membuat layar immersive. Ini adalah laptop dengan engsel layar yang bisa ditekuk hingga 180 derajat, jadi semakin mudah untuk berbagi ide dengan sesama kolega. \r\n\r\nKeyboard-nya juga menawarkan warna backlit yang distinctive pada tombol Enter, dengan kesemua tombolnya memiliki key travel sedalam 1,4 mm saja untuk responsivitas yang tinggi. Dapatkan laptop ini seharga Rp3 jutaan.', 'Apakah Anda seorang akuntan yang butuh fitur mengetik angka yang praktis pada laptop? Jika iya, ASUS E410MA ini bisa jadi pilihan yang cocok.', '2022-12-17 05:37:40', '2022-12-17 05:37:40', '2022-12-17 05:37:40'),
(6, 2, 0, 'ASUS X441 MA-GA031T', 'ASUS', 4199000, '2022', 'Layar : TFT LCD 14.0-inch, HD (1366 x 768) 16:9 aspect ratio, LED Backlit, 200nits, NTSC: 45%, Anti-glare display\r\nProcessor : Intel Celeron N4020, dualcore 2 thread (up to 2.8GHz; 4MB)\r\nGraphic Card : Intel UHD 600\r\nRAM : 4 GB\r\nStorage : 1 TB HDD\r\nOptical Drive : DVD Writer 4x\r\nKonektivitas : WiFi 5 GHz, Bluetooth 4.2\r\nPort : 1x USB 2.0 Type-A, 1x USB 3.2 Gen 1 Type-A, 1x USB 3.2 Gen 1 Type-C, 1x HDMI 1.4, 1x VGA Port (D-Sub) 1x 3.5mm Combo Audio Jack, 1x RJ45 Fast Ethernet, Micro SD card reader\r\nBaterai : 36WHrs, 3S1P, 3-cell Li-ion (up to 8 hours battery life)', 'Zaman sekarang cukup susah mencari laptop yang punya DVD room. Hal ini karena tren masa kini mendorong produsen menciptakan laptop berdimensi tipis. Untuk mengejar ketipisan bentuk, otomatis DVD room dibuang. Namun, buat Anda yang suka menyalin file ke sebuah keping DVD, ada satu laptop yang menyediakan DVD room.\r\nLaptop tersebut adalah ASUS X441MA-GA031T yang bisa Anda beli di kisaran harga Rp3,4 jutaan. Meski punya DVD room, laptop ini ternyata masih tergolong ringan, cuma 1,75 kg. Anda jangan berekspektasi lebih terhadap desain laptop ini. Sebab Anda tidak akan menemui layar berbingkai tipis.\r\n\r\nNamun, pendekatan ASUS dalam merancang laptop ini memang bukan di bagian penampilan, melainkan kenyamanan pakai. Salah satu alasannya adalah karena laptop ini sudah memakai keyboard chiclet yang punya sensasi tekan lebih taktil dan responsif ketimbang keyboard membran biasa.\r\nSelain itu, laptop ini dilengkapi speaker Sonic Master yang cukup lantang, layar yang oke berkat teknologi penajam detail ASUS Tru2Life, teknologi ASUS Eye Care untuk mengurangi emisi cahaya biru, serta port yang lengkap.', 'Zaman sekarang cukup susah mencari laptop yang punya DVD room. Hal ini karena tren masa kini mendorong produsen menciptakan laptop berdimensi tipis. Untuk mengejar ketipisan bentuk, otomatis DVD room dibuang. Namun, buat Anda yang suka menyalin file ke se', '2022-12-17 05:37:40', '2022-12-17 05:37:40', '2022-12-17 05:37:40'),
(7, 3, 0, 'Panasonic Lumix DMC-G7 Kit 14-42mm', 'Panasonic', 8199000, '2022', '16MP Four Thirds CMOS sensor\r\n4K (UHD) video hingga 100Mbps, 30p/25p + 24p\r\n4K Photo di mode \'Pre-Burst\'\r\nPemotretan beruntun hingga 7 FPS\r\nFully-articulated touch screen\r\nMicrophone input (3.5mm)\r\nWi-Fi untuk pengambilan gambar jarak jauh dan transfer gambar', 'Panasonic Lumix DMC-G7 Kit 14-42mm merupakan salah satu jajaran kamera Mirrorless Terbaik dengan harga terjangkau dari Panasonic, dengan dibekali Sensor Micro Four third yang mampu merekan video hingga resolusi 4K di 30p, 25p, dan 24p, menjadikannya salah satu kamera yang mampu merekam video di resolusi tersebut di rentang harga dibawah 10 Juta. Tak hanya mengandalkan perekaman videonya, Kamera Mirrorless ini juga mempunyai fitur segudang yang dapat membantu kebutuhan Photography/Videography para Sobat Galaxy sekalian.', 'Panasonic Lumix DMC-G7 Kit 14-42mm merupakan salah satu jajaran kamera Mirrorless Terbaik ', '2022-12-17 06:04:32', '2022-12-17 06:04:32', '2022-12-17 06:04:32'),
(8, 3, 0, 'Panasonic Lumix DMC-GX85 Kit 12-32mm', 'Panasonic', 6299000, '2022', '16MP Four Thirds CMOS sensor\r\nElectromagnetic shutter\r\nPemotretan beruntun hingga 10 FPS\r\nDepth from Defocus AF\r\n2.76M-dot field sequential EVF\r\n1.04M-dot tilting touchscreen display\r\n4K video / photo\r\n5-axis image stabilization dengan Dual I.S.\r\nWi-Fi', 'Tak mau kalah dengan kakak nya, Panasonic Lumix DMC-GX85 Kit 12-32mm juga ingin ikut andil meramaikan di sektor ini, dengan bentuk yang lebih ringkas namun spesifikasi yang mirip menjadikan kamera ini sebagai opsi untuk sobat Galaxy yanng menginginkan kamera dengan spesifikasi mumpuni dengan bentuk yang simple dan ringkas. Tetap membawa kemampuan perekaman video di resolusi 4K 24 dan 30 FPS, serta Continous Shutter hingga 10 FPS.', 'Panasonic Lumix DMC-GX85 Kit 12-32mm juga ingin ikut andil meramaikan di sektor ini, dengan bentuk yang lebih ringkas namun spesifikasi yang mirip menjadikan kamera ini sebagai opsi untuk sobat Galaxy', '2022-12-17 06:04:32', '2022-12-17 06:04:32', '2022-12-17 06:04:32'),
(9, 3, 0, 'Fujifilm X-T200 Kit 15-45mm', 'Fujifilm', 7450000, '2022', '24.2 Megapixel APS-C CMOS with primary color filter\r\nPerekaman Video 4K hingga 30 FPS\r\nBanyak pilihan filter video\r\nPemotretan beruntun hingga 8 FPS\r\nSudah USB type C\r\nTersedia microphone input 3.5MM\r\nLayar 3.5\" Touch screen yang sudah Fully Articulated', 'Beralih ke Fujifilm, series X-T200 dari Fujifilm membawakan fitur yang cukup lengkap dan menakjubkan, dengan sensor APS-C dan resolusi 24.2 Megapixel dan kemampuan perekaman 4K hingga 30 FPS. Dengan banyaknya pilihan Filter Video (Film Simulations) Menjadi nilai plus bagi pencinta Video dan menambah variasi serta kreatifitas anda di mode video. Ditanamkan juga layar dengan bentang 3.5″ yang sudah Fully Articulated hingga anda bisa mengambil berbagai momen dari sudut apapun. Dibalik spesifikasi yang mumpuni tersebut Fujifilm X-T200 dibalut dengan desain retro minimalis yang menambah cantik bentuk kamera tersebut.', 'Beralih ke Fujifilm, series X-T200 dari Fujifilm membawakan fitur yang cukup lengkap dan menakjubkan, dengan sensor APS-C dan resolusi 24.2 Megapixel dan kemampuan perekaman 4K hingga 30 FPS. Dengan banyaknya pilihan', '2022-12-17 06:13:54', '2022-12-17 06:13:54', '2022-12-17 06:13:54');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  ADD UNIQUE KEY `products_slug_unique` (`slug`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
