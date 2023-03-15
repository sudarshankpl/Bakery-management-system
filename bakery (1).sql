-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 15, 2023 at 03:16 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bakery`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `quantity` int(4) NOT NULL,
  `username` varchar(50) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `title`, `quantity`, `username`, `price`) VALUES
(26, 'Happy-Birthday cake', 10, 'one@gmail.com', 300),
(29, 'Happy-Birthday cake', 1, 'suja@gmail.com', 300),
(30, 'Happy-Birthday cake', 2, 'suja@gmail.com', 300),
(33, 'Happy-Birthday cake', 2, 'khatri@gmail.com', 300);

-- --------------------------------------------------------

--
-- Table structure for table `checkout`
--

CREATE TABLE `checkout` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `product_name` text NOT NULL,
  `city` varchar(32) NOT NULL,
  `street` varchar(100) NOT NULL,
  `contact` varchar(10) NOT NULL,
  `status` varchar(32) NOT NULL DEFAULT 'processing',
  `date` date NOT NULL,
  `time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `checkout`
--

INSERT INTO `checkout` (`id`, `email`, `product_name`, `city`, `street`, `contact`, `status`, `date`, `time`) VALUES
(3, 'abishek@gmail.com', 'New Year- CakeCup-cake', 'kathmandu', 'Dhungedhata', '+977986016', 'complete', '2022-06-11', '07:44:22'),
(4, 'abishek@gmail.com', 'New Year- Cake, Cup-cake,', 'kathmandu', 'Dhungedhata', '+977986016', 'processing', '2022-06-11', '14:34:07'),
(5, 'sulav@gmail.com', 'Happy-Birthday cake,', 'kathmandu', 'machapokhari', '9863797280', 'delevered', '2022-11-10', '03:51:56'),
(6, 'suja@gmail.com', 'Fruits - cake,', 'kathmandu', 'pokhara', '7777777777', 'processing', '2022-11-10', '03:56:58'),
(7, 'sudarshan@gmail.com', 'Happy-Birthday cake,', 'kathmandu', 'Machapokhari', '9846776715', 'complete', '2022-11-29', '15:29:33'),
(8, 'sudarshan@gmail.com', 'Fruits - cake,', 'kathmandu', 'pokhara', '9863797280', 'processing', '2022-12-06', '16:54:38');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `category` varchar(32) NOT NULL,
  `content` varchar(250) NOT NULL,
  `description` text NOT NULL,
  `price` int(11) NOT NULL,
  `image` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `title`, `slug`, `category`, `content`, `description`, `price`, `image`) VALUES
(13, 'New Year Cake', 'New Year- Cake', '', 'Round Delicious Chocolate New Year Cake\r\n   (special offer for new year with gift hampers and get discount by  lucky-draw )', 'yourself in sweet celebration this new year and share the happiness with your friends and family too. \r\nThis chocolicious melt in mouth cake is baked with love using fresh quality ingredients. \r\nSo, ace up your New Year celebration and make it an unforgettable one.\r\n Order now!\r\n   Cake Flavour- Chocolate\r\nType of Cake- Cream\r\n Weight- 6Kg\r\n Shape- Round\r\n\r\n', 2500, 'IMG_E1464.JPG'),
(14, 'Happy birthday', 'Happy-Birthday cake', '', 'Black Forest is perhaps the most famous flavour of cake across the world.\r\n It is also known as “Black Forest Gateau” and in Germany (the birthplace of black forest cake.', 'Cake Flavour- Black Forest\r\n Type of Cake- Cream \r\nWeight- 2 Kg \r\nShape- Round\r\n', 300, 'cake 5.png'),
(21, 'Mix Fruits', 'Fruits - cake', '', 'Father Day special', 'Cake Flavour- Fruits with Eggless\r\n Type of Cake - Cream \r\nWeight- 4 Kg \r\nShape- Round\r\n    ( 10% off)\r\n               (sugar free)\r\n', 2900, 'sugarfree.jpg'),
(28, 'Icecream cake', 'Icecream- cake', '', 'Sheet pan Icecream cake', 'It starts with our basic Sheet pan cake.\r\n   we use chocolate, vanilla and strawberry ice cream ', 50, 'icecream.jpeg'),
(29, 'Cup Cake ', 'Cup-cake', '', 'This is a cup  Bake cake, these easy suits for vanilla cupcakes ', 'Perfect for birthdays, picnics ,parties or whenever you fancy a sweet treat.\r\n  Freezable (Can be frozen without the icing )', 860, 'cup cake.jpg'),
(30, 'Chocolate Big Treet', 'chocolate- big', '', 'Friendship Day Gifts', 'Send sweet surprise to your loved ones by gifting this Basket Hamper which is garnished with 24 pcs \r\n Cadbury Diary Milk Silk, Cadbury Diary Milk Roast Almonds, Cadbury Diary Milk Fruits N Nuts, Cadbury Diary Milk Crackle, Cadbury Bournville and Chocolates.\r\n\r\n ', 1500, 'bucket chocolate.jpg'),
(31, 'Chocolate of Joy', 'Chocolate - Joy', '', 'All branded chocolates gift for u.', 'Friendship Day Gifts \r\n      Personal Gifts, Chocolates', 990, 'Chocolate-of-Joy.jpg'),
(32, '50 Mixed color Balloons', ' Gas -Balloons', '', '50 Mixed Color Helium gas filled balloons.', 'Send this blown gas balloons for best surprise birthday party .', 150, 'ballons.jpg'),
(33, 'Soft Gluten Potato Bread', 'Potato- Bread', '', 'Try a something best new  different by making this delicious gluten  potato bread ', 'We blend the liquid in the recipe (here, milk) with eggs and potatoes, and make a smooth mixture that is added to the dry ingredients.\r\nPotato bread may look much like our standard gf white sandwich bread, and it’s just as easy to make, but it’s definitely not the same.\r\n      per packet', 55, 'potato breas.webp'),
(34, 'Birthday candles', 'birthday-candles', '', 'Birthday Candles are said to hold symbolic power.', 'The flames of a candle represent purity and divine light.\r\nShape =	Pillar\r\nBurn Time= 30-50 Sec\r\nSize = 8 Inch\r\nPack  in Size= 6 Pieces', 80, 'candles.jpeg'),
(35, 'Birthday candles', 'Birthday-candles', '', 'birthday cake, candle', 'High quality model, for close-up renders\r\nNot included any ray of lights or enviroment scene.\r\n      (12 pcs in packets)', 65, 'candle pic.jfif'),
(37, 'demo', 'demo', '', 'asdasdasdas', 'sdasdasdasdsadasdasd', 50, 'IMG_E1464.JPG');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `full_name` varchar(32) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(16) NOT NULL,
  `role` varchar(32) NOT NULL DEFAULT 'customer',
  `date` date NOT NULL,
  `time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `full_name`, `email`, `password`, `role`, `date`, `time`) VALUES
(9, 'sudarshan', 'sudarshan@gmail.com', 'c37461b8bead38cf', 'customer', '2022-11-29', '15:27:49'),
(12, 'khatri', 'khatri@gmail.com', 'dd9bd465e12ab145', 'admin', '2022-12-06', '16:42:14');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `checkout`
--
ALTER TABLE `checkout`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `checkout`
--
ALTER TABLE `checkout`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
