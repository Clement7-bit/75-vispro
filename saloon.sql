-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 06, 2024 at 10:24 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `saloon`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `booking_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `booking_date` date NOT NULL,
  `total_price` decimal(10,2) NOT NULL,
  `services` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`booking_id`, `user_id`, `username`, `booking_date`, `total_price`, `services`, `created_at`) VALUES
(1, 1, 'dummyUser', '2024-11-03', 500000.00, 'Haircut, Manicure', '2024-11-02 22:38:35'),
(2, 1, 'admin', '2024-11-06', 200000.00, 'Haircut, Blow Dry & Styling', '2024-11-02 22:39:41'),
(3, 1, 'admin', '2024-11-13', 575000.00, 'Highlight / Ombre, Root Touch-up', '2024-11-02 22:40:12'),
(4, 1, 'admin', '2024-11-21', 200000.00, 'Haircut, Blow Dry & Styling', '2024-11-02 22:43:12'),
(5, 1, 'admin', '2024-11-16', 1040000.00, 'Haircut, Full Hair Coloring, Highlight / Ombre, Root Touch-up, Creambath', '2024-11-02 22:45:48'),
(6, 1, 'admin', '2024-11-04', 75000.00, 'Haircut', '2024-11-02 23:37:29'),
(7, 1, 'admin', '2024-11-03', 75000.00, 'Haircut', '2024-11-02 23:38:04'),
(8, 1, 'admin', '2024-11-03', 67500.00, 'Haircut', '2024-11-02 23:41:08'),
(9, 3, 'user', '2024-11-03', 67500.00, 'Haircut', '2024-11-02 23:43:29'),
(10, 3, 'user', '2024-11-03', 67500.00, 'Haircut', '2024-11-02 23:44:00'),
(11, 1, 'admin', '2024-11-03', 75000.00, 'Haircut', '2024-11-02 23:46:20'),
(12, 1, 'admin', '2025-01-04', 9980000.00, 'Haircut, Blow Dry & Styling, Full Hair Coloring, Highlight / Ombre, Root Touch-up, Creambath, Hair Spa, Smoothing / Rebonding, Hair Extensions, Basic Manicure, Basic Pedicure, Gel Polish, Nail Art (Simple), 3D Nail Art (Premium), Paraffin Treatment, Acrylic Extensions, Nail Strengthening, Deep Cleansing Facial, Hydrating Facial, Body Scrub, Body Massage, Foot Spa & Reflexology, Hand Paraffin Treatment, Body Wrap, Relaxation Package, Haircut, Blow Dry & Styling, Full Hair Coloring, Highlight / Ombre, Root Touch-up, Creambath, Hair Spa, Smoothing / Rebonding, Hair Extensions, Basic Manicure, Basic Pedicure, Gel Polish, Nail Art (Simple), 3D Nail Art (Premium), Paraffin Treatment, Acrylic Extensions, Nail Strengthening, Deep Cleansing Facial, Hydrating Facial, Body Scrub, Body Massage, Foot Spa & Reflexology, Hand Paraffin Treatment', '2024-11-03 06:25:08'),
(13, 1, 'admin', '2024-11-05', 1075000.00, 'Haircut, Blow Dry & Styling, Full Hair Coloring, Highlight / Ombre, Root Touch-up', '2024-11-05 12:15:40'),
(14, 1, 'admin', '2024-11-06', 75000.00, 'Haircut', '2024-11-05 17:41:27'),
(15, 1, 'admin', '2024-11-06', 75000.00, 'Haircut', '2024-11-05 17:43:34'),
(16, 1, 'admin', '2024-11-06', 75000.00, 'Haircut', '2024-11-05 17:44:14'),
(17, 2, 'clay', '2024-11-09', 200000.00, 'Haircut, Blow Dry & Styling', '2024-11-06 03:56:40');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `product_name` varchar(50) NOT NULL,
  `description` text DEFAULT NULL,
  `price_idr` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `product_name`, `description`, `price_idr`) VALUES
(1, 'Shampoo (Organic)', 'Organic shampoo suitable for all hair types', 85000.00),
(2, 'Conditioner (Hydrating)', 'Hydrating conditioner for dry hair', 95000.00),
(3, 'Hair Mask', 'Intensive repair hair mask', 120000.00),
(4, 'Hair Serum', 'Serum for smooth and shiny hair', 135000.00),
(5, 'Hair Oil (Argan)', 'Argan oil for nourishing hair', 150000.00),
(6, 'Nail Polish (Basic)', 'Basic nail polish in assorted colors', 30000.00),
(7, 'Nail Polish (Gel)', 'Gel nail polish with long-lasting formula', 55000.00),
(8, 'Nail Strengthener', 'Strengthening formula for nails', 45000.00),
(9, 'Cuticle Oil', 'Nourishing cuticle oil', 40000.00),
(10, 'Hand Cream', 'Moisturizing hand cream', 55000.00),
(11, 'Foot Cream', 'Soothing foot cream', 60000.00),
(12, 'Body Lotion (Moisturizing)', 'Deep moisturizing body lotion', 75000.00),
(13, 'Body Scrub (Coffee)', 'Exfoliating coffee body scrub', 80000.00),
(14, 'Face Mask (Sheet)', 'Hydrating sheet face mask', 15000.00),
(15, 'Facial Cleanser', 'Gentle facial cleanser for all skin types', 70000.00),
(16, 'Toner (Brightening)', 'Brightening toner with vitamin C', 60000.00),
(17, 'Moisturizer', 'Moisturizer for daily use', 80000.00),
(18, 'Sunscreen SPF 50', 'Broad-spectrum sunscreen SPF 50', 125000.00),
(19, 'Essential Oil (Lavender)', 'Lavender essential oil for relaxation', 90000.00),
(20, 'Relaxing Bath Salt', 'Bath salt with relaxing properties', 70000.00);

-- --------------------------------------------------------

--
-- Table structure for table `purchase`
--

CREATE TABLE `purchase` (
  `purchase_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_names` text DEFAULT NULL,
  `quantities` text DEFAULT NULL,
  `total_price` decimal(10,2) NOT NULL,
  `discount_amount` decimal(10,2) DEFAULT 0.00,
  `final_total_price` decimal(10,2) NOT NULL,
  `purchase_date` datetime DEFAULT current_timestamp(),
  `voucher_code` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `purchase`
--

INSERT INTO `purchase` (`purchase_id`, `user_id`, `product_names`, `quantities`, `total_price`, `discount_amount`, `final_total_price`, `purchase_date`, `voucher_code`) VALUES
(9, 1, 'Hair Mask,Hair Serum', '1,1', 255000.00, 0.00, 255000.00, '2024-11-06 09:50:13', NULL),
(10, 1, 'Nail Polish (Gel),Hair Mask,Hair Serum', '1,1,1', 310000.00, 31000.00, 279000.00, '2024-11-06 09:50:33', 'welcome10'),
(11, 2, 'Shampoo (Organic)', '1', 85000.00, 8500.00, 76500.00, '2024-11-06 10:55:40', 'welcome10');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `service_id` int(11) NOT NULL,
  `category` varchar(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`service_id`, `category`, `name`, `description`, `price`) VALUES
(1, 'Hair', 'Haircut', 'Haircut for women, men, and children', 75000.00),
(2, 'Hair', 'Blow Dry & Styling', 'Hair styling (straight, curly, updo)', 125000.00),
(3, 'Hair', 'Full Hair Coloring', 'Full hair coloring service', 300000.00),
(4, 'Hair', 'Highlight / Ombre', 'Highlights or ombre as requested', 450000.00),
(5, 'Hair', 'Root Touch-up', 'Touch-up for hair roots', 125000.00),
(6, 'Hair', 'Creambath', 'Creambath with a choice of aroma', 90000.00),
(7, 'Hair', 'Hair Spa', 'Intensive hair treatment', 150000.00),
(8, 'Hair', 'Smoothing / Rebonding', 'Hair straightening treatment', 375000.00),
(9, 'Hair', 'Hair Extensions', 'Application of hair extensions', 1000000.00),
(10, 'Nail', 'Basic Manicure', 'Basic manicure service', 65000.00),
(11, 'Nail', 'Basic Pedicure', 'Basic pedicure service', 75000.00),
(12, 'Nail', 'Gel Polish', 'Long-lasting nail polish with gel', 115000.00),
(13, 'Nail', 'Nail Art (Simple)', 'Basic nail art', 75000.00),
(14, 'Nail', '3D Nail Art (Premium)', 'More complex 3D nail art', 200000.00),
(15, 'Nail', 'Paraffin Treatment', 'Paraffin treatment to soften skin', 125000.00),
(16, 'Nail', 'Acrylic Extensions', 'Nail extensions with acrylic', 325000.00),
(17, 'Nail', 'Nail Strengthening', 'Nail strengthening treatment', 80000.00),
(18, 'Spa', 'Deep Cleansing Facial', 'Deep cleansing facial treatment', 125000.00),
(19, 'Spa', 'Hydrating Facial', 'Facial treatment for dry skin', 150000.00),
(20, 'Spa', 'Body Scrub', 'Body scrub with a variety of aromas', 125000.00),
(21, 'Spa', 'Body Massage', 'Aromatherapy massage or hot stone massage', 225000.00),
(22, 'Spa', 'Foot Spa & Reflexology', 'Foot spa and reflexology treatment', 115000.00),
(23, 'Spa', 'Hand Paraffin Treatment', 'Paraffin treatment for hands', 125000.00),
(24, 'Spa', 'Body Wrap', 'Body wrap for detoxification', 250000.00),
(25, 'Spa', 'Relaxation Package', 'Facial, massage, and manicure package', 500000.00);

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `userId` int(15) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `address` varchar(25) NOT NULL,
  `number` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`userId`, `username`, `password`, `nama`, `address`, `number`) VALUES
(1, 'admin', 'pass', 'jordayy', 'London', 123456),
(2, 'clay', 'clay', 'clement', 'Airmadidi', 812),
(3, 'user', 'user', 'test user change', 'apate', 222);

-- --------------------------------------------------------

--
-- Table structure for table `voucher`
--

CREATE TABLE `voucher` (
  `voucher_id` int(11) NOT NULL,
  `code` varchar(50) NOT NULL,
  `discount` decimal(5,2) NOT NULL,
  `max_discount_amount` decimal(10,2) DEFAULT NULL,
  `min_order_amount` decimal(10,2) DEFAULT NULL,
  `start_date` date NOT NULL,
  `expiration_date` date NOT NULL,
  `is_active` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `voucher`
--

INSERT INTO `voucher` (`voucher_id`, `code`, `discount`, `max_discount_amount`, `min_order_amount`, `start_date`, `expiration_date`, `is_active`) VALUES
(1, 'WELCOME10', 10.00, NULL, 50000.00, '2024-11-01', '2024-12-31', 1),
(2, 'HOLIDAY25', 25.00, 50000.00, 100000.00, '2024-12-01', '2024-12-31', 1),
(3, 'SUMMER15', 15.00, 30000.00, 75000.00, '2024-06-01', '2024-08-31', 0);

-- --------------------------------------------------------

--
-- Table structure for table `voucher_usage`
--

CREATE TABLE `voucher_usage` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `voucher_code` varchar(255) NOT NULL,
  `usage_date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `voucher_usage`
--

INSERT INTO `voucher_usage` (`id`, `user_id`, `voucher_code`, `usage_date`) VALUES
(4, 3, 'welcome10', '2024-11-06 00:44:14'),
(7, 1, 'welcome10', '2024-11-06 09:12:13'),
(8, 1, 'welcome10', '2024-11-06 09:48:02'),
(9, 1, 'welcome10', '2024-11-06 09:50:33'),
(10, 2, 'welcome10', '2024-11-06 10:55:40');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`booking_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchase`
--
ALTER TABLE `purchase`
  ADD PRIMARY KEY (`purchase_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`service_id`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`userId`);

--
-- Indexes for table `voucher`
--
ALTER TABLE `voucher`
  ADD PRIMARY KEY (`voucher_id`),
  ADD UNIQUE KEY `code` (`code`);

--
-- Indexes for table `voucher_usage`
--
ALTER TABLE `voucher_usage`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `booking_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `purchase`
--
ALTER TABLE `purchase`
  MODIFY `purchase_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `service_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `voucher`
--
ALTER TABLE `voucher`
  MODIFY `voucher_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `voucher_usage`
--
ALTER TABLE `voucher_usage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `booking`
--
ALTER TABLE `booking`
  ADD CONSTRAINT `booking_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `userlog` (`userId`) ON DELETE CASCADE;

--
-- Constraints for table `purchase`
--
ALTER TABLE `purchase`
  ADD CONSTRAINT `purchase_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `userlog` (`userId`);

--
-- Constraints for table `voucher_usage`
--
ALTER TABLE `voucher_usage`
  ADD CONSTRAINT `voucher_usage_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `userlog` (`userId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
