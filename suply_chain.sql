


--
-- Database: `sply_chain`
--

-- --------------------------------------------------------

--
-- Table structure for table `product`
--
/*create database sply_chain;*/
use sply_chain;
CREATE TABLE `product` (
  `p_id` int(11) NOT NULL,
  `p_name` varchar(50) NOT NULL,
  `p_prop` varchar(200) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`p_id`, `p_name`, `p_prop`, `price`) VALUES
(1, 'mobile', '{"os":"ios","company":"apple"}', 120000),
(2, 'laptop', '{"os":"linux","compamy":"asus"}', 40000);

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `s_id` int(11) NOT NULL,
  `u_id` int(11) NOT NULL,
  `sname` varchar(50) NOT NULL,
  `s_city` varchar(50) NOT NULL,
  `contract_start` date NOT NULL,
  `contract_finish` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`s_id`, `u_id`, `sname`, `s_city`, `contract_start`, `contract_finish`) VALUES
(1, 2, 'ashu', 'lucknow', '2018-11-13', '2018-11-30'),
(2, 3, 'mridul', 'raipur', '2018-11-07', '2018-11-28');

-- --------------------------------------------------------

--
-- Table structure for table `sup_prod`
--

CREATE TABLE `sup_prod` (
  `sp_id` int(11) NOT NULL,
  `s_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sup_prod`
--

INSERT INTO `sup_prod` (`sp_id`, `s_id`, `p_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 1),
(6, 2, 2),
(9, 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `user` varchar(70) NOT NULL,
  `password` varchar(100) NOT NULL,
  `role` enum('ADMIN','S_USER') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `user`, `password`, `role`) VALUES
(1, 'akshay', 'qwerty', 'ADMIN'),
(2, 'prakahar', 'parth', 'S_USER'),
(3, 'rish', 'niti', 'S_USER'),
(4, 'koibhi', 'kuchhbhi', 'S_USER'),
(5, 'koibhi', 'kuchhbhi', 'S_USER'),
(6, 'koi', 'kuchh', 'S_USER'),
(7, 'akshayB', 'Jhabaka', 'S_USER'),
(22, 'alpha@gmail.com', 'qwerty', 'S_USER'),
(23, 'alpha@gmail.com', 'qwerty', 'S_USER'),
(24, 'alpha@gmail.com', 'qwerty', 'S_USER'),
(25, 'alpha@gmail.com', 'qwerty', 'S_USER'),
(26, 'alpha@gmail.com', 'qwerty', 'S_USER'),
(27, 'klklj', 'lkjkj', 'S_USER'),
(28, 'alpjaq', 'lkjlkj', 'S_USER');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`s_id`),
  ADD KEY `u_id` (`u_id`);

--
-- Indexes for table `sup_prod`
--
ALTER TABLE `sup_prod`
  ADD PRIMARY KEY (`sp_id`),
  ADD KEY `s_id` (`s_id`),
  ADD KEY `p_id` (`p_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `s_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `sup_prod`
--
ALTER TABLE `sup_prod`
  MODIFY `sp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `supplier`
--
ALTER TABLE `supplier`
  ADD CONSTRAINT `supplier_ibfk_1` FOREIGN KEY (`u_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `sup_prod`
--
ALTER TABLE `sup_prod`
  ADD CONSTRAINT `sup_prod_ibfk_1` FOREIGN KEY (`s_id`) REFERENCES `supplier` (`s_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `sup_prod_ibfk_2` FOREIGN KEY (`p_id`) REFERENCES `product` (`p_id`) ON DELETE CASCADE;

insert into supplier(u_id,sname,s_city,contract_start,contract_finish) values(5,'koibhi','siroully','2018-11-10','2018-12-31');
select* from supplier;