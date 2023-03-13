-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 13, 2023 at 04:18 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dot database`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `email`, `phone`, `address`) VALUES
(1, 'zc', 'adf@gmail.com', '', 'adffasdfs'),
(2, 'af', 'ammadcontant@gmail.com', '', 'sdfsadfs'),
(3, 'af', 'ammadcontant@gmail.com', '', 'sdfsadfs'),
(4, 'af', 'ammadcontant@gmail.com', '', 'sdfsadfs'),
(5, 'af', 'ammadcontant@gmail.com', '', 'sdfsadfs'),
(6, 'af', 'ammadcontant@gmail.com', '', 'sdfsadfs'),
(7, 'af', 'ammadcontant@gmail.com', '', 'sdfsadfs'),
(8, 'af', 'ammadcontant@gmail.com', '', 'sdfsadfs'),
(9, 'af', 'ammadcontant@gmail.com', '', 'sdfsadfs'),
(10, 'af', 'ammadcontant@gmail.com', '', 'sdfsadfs'),
(11, 'adfadfa', 'ammadcontant@gmail.com', '', '1234'),
(12, 'adfadfa', 'ammadcontant@gmail.com', '', '1234'),
(13, 'adfadfa', 'ammadcontant@gmail.com', '', '1234'),
(14, 'adfadfa', 'ammadcontant@gmail.com', '', '1234'),
(15, 'adfadfa', 'ammadcontant@gmail.com', '', '1234'),
(16, 'adfadfa', 'ammadcontant@gmail.com', '', '1234'),
(17, 'adfadfa', 'ammadcontant@gmail.com', '', '1234'),
(18, 'adfadfa', 'ammadcontant@gmail.com', '', '123 sdf'),
(19, 'adfadfa', 'ammadcontant@gmail.com', '', '123 sdf'),
(20, 'adfadfa', 'ammadcontant@gmail.com', '', '123 sdf'),
(21, 'adfadfa', 'ammadcontant@gmail.com', '', '123 sdf'),
(22, 'adfadfa', 'ammadcontant@gmail.com', '', '123 sdf'),
(23, 'adfadfa', 'ammadcontant@gmail.com', '', '123 sdf'),
(24, 'adfadfa', 'ammadcontant@gmail.com', '', '123 sdf'),
(25, 'adfadfa', 'ammadcontant@gmail.com', '', '123 sdf'),
(26, 'adfadfa', 'ammadcontant@gmail.com', '', '123 sdf'),
(27, 'xcv', 'ammaddev2@gmail.com', '', 'adf'),
(28, 'xcv', 'ammaddev2@gmail.com', '', 'adf'),
(29, 'xcv', 'ammaddev2@gmail.com', '', 'adf'),
(30, 'xcv', 'ammaddev2@gmail.com', '', 'adf'),
(31, 'xcv', 'ammaddev2@gmail.com', '', 'adf'),
(32, 'xcv', 'ammaddev2@gmail.com', '', 'adf'),
(33, 'xcv', 'ammaddev2@gmail.com', '', 'adf'),
(34, 'xcv', 'ammaddev2@gmail.com', '', 'adf'),
(35, 'xcv', 'ammaddev2@gmail.com', '', 'adf'),
(36, 'sdfasdf', 'asdf@gmail.com', '', 'adsf'),
(37, 'sdfasdf', 'asdf@gmail.com', '', 'adsf'),
(38, 'sdfasdf', 'asdf@gmail.com', '', 'adsf'),
(39, 'sdfasdf', 'asdf@gmail.com', '', 'adsf'),
(40, 'sdfasdf', 'asdf@gmail.com', '', 'adsf'),
(41, 'sdfasdf', 'asdf@gmail.com', '', 'adsf'),
(42, 'sdfasdf', 'asdf@gmail.com', '', 'adsf'),
(43, 'sdfasdf', 'asdf@gmail.com', '', 'adsf'),
(44, 'sdfasdf', 'asdf@gmail.com', '', 'adsf'),
(45, 'sdfasdf', 'asdf@gmail.com', '', 'adsf'),
(46, 'sdfasdf', 'asdf@gmail.com', '', 'adsf'),
(47, 'sdfasdf', 'asdf@gmail.com', '', 'adsf'),
(48, 'adfadfa', 'ammaddev2@gmail.com', '', 'dsf'),
(49, 'adfadfa', 'ammaddev2@gmail.com', '', 'dsf'),
(50, 'adfadfa', 'ammaddev2@gmail.com', '', 'dsf'),
(51, 'adfadfa', 'ammaddev2@gmail.com', '', 'dsf'),
(52, 'adfadfa', 'ammaddev2@gmail.com', '', 'dsf'),
(53, 'adfadfa', 'ammaddev2@gmail.com', '', 'dsf'),
(54, 'adfadfa', 'ammaddev2@gmail.com', '', 'dsf'),
(55, 'zc', 'ammaddev2@gmail.com', '', 'kgkghokhoo'),
(56, 'zc', 'ammaddev2@gmail.com', '', 'kgkghokhoo'),
(57, 'zc', 'ammaddev2@gmail.com', '', 'kgkghokhoo'),
(58, 'zc', 'ammaddev2@gmail.com', '', 'kgkghokhoo'),
(59, 'zc', 'ammaddev2@gmail.com', '', 'kgkghokhoo'),
(60, 'zc', 'ammaddev2@gmail.com', '', 'kgkghokhoo'),
(61, 'zc', 'ammaddev2@gmail.com', '', 'kgkghokhoo'),
(62, 'zc', 'ammaddev2@gmail.com', '', 'kgkghokhoo'),
(63, 'zc', 'ammaddev2@gmail.com', '', 'kgkghokhoo'),
(64, 'adfadfa', 'ammadcontant@gmail.com', '', 'adfsdf'),
(65, 'adfadfa', 'ammadcontant@gmail.com', '', 'adfsdf'),
(66, 'adfad', 'ammaddev2@gmail.com', '', 'adsfdsf');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(300) NOT NULL,
  `description` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `name`, `image`, `description`, `price`) VALUES
(2, 'Spaghetti Bolognese', '/product/exp1678639979908_1.jpg', 'A classic Italian dish with beef and tomato sauce over spaghetti.', '12.99'),
(3, 'Chicken Caesar Salad', '/product/exp1678640058616_2.jpg', 'A classic Caesar salad with grilled chicken and croutons croutons.', '9.99'),
(4, 'Cheeseburger', '/product/exp1678640109959_3.jpg', 'A classic cheeseburger with lettuce, tomato, onion, and pickles.', '8.99'),
(5, 'Margherita Pizza', '/product/exp1678640155465_4.jpg', 'A classic Neapolitan pizza with tomato sauce, mozzarella, and basil.', '10.99'),
(6, 'Fish and Chips', '/product/exp1678640176461_5.jpg', 'A classic Neapolitan pizza with tomato sauce, mozzarella, and basil.', '11.99'),
(7, 'Club Sandwich', '/product/exp1678640229451_6.jpg', 'A classic sandwich with turkey, bacon, lettuce, tomato, and mayo on toa.', '9.99'),
(8, 'Pad Thai', '/product/exp1678640280531_7.jpg', 'A classic Thai dish with rice noodles, vegetables, and peanuts in a sweet.', '13.99'),
(9, 'Chicken Tikka Masala', '/product/exp1678640325860_8.jpg', 'A classic Indian dish with marinated chicken in a creamy tomato sauce.', '14.99');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `order_date` datetime DEFAULT current_timestamp(),
  `total_price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `customer_id`, `order_date`, `total_price`) VALUES
(58, 0, '2023-03-13 15:05:44', '9.99'),
(59, 0, '2023-03-13 15:05:52', '9.99'),
(60, 0, '2023-03-13 15:05:54', '9.99'),
(61, 0, '2023-03-13 15:05:54', '9.99'),
(62, 0, '2023-03-13 15:05:54', '9.99'),
(63, 0, '2023-03-13 15:05:54', '9.99'),
(64, 0, '2023-03-13 15:05:54', '9.99'),
(65, 0, '2023-03-13 15:08:51', '9.99'),
(66, 0, '2023-03-13 15:08:51', '9.99'),
(67, 0, '2023-03-13 15:15:46', '19.98'),
(68, 0, '2023-03-13 15:15:51', '19.98'),
(69, 0, '2023-03-13 15:17:48', '19.98');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `menu_item_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `menu_item_id`, `quantity`) VALUES
(3, 58, 0, 1),
(6, 67, 0, 1),
(7, 67, 0, 1),
(8, 68, 0, 1),
(9, 68, 0, 1),
(10, 69, 0, 1),
(11, 69, 0, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
