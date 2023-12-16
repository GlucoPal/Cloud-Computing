
use glucopal;

CREATE TABLE `food_category` (
  `id` int(11) NOT NULL,
  `category` varchar(255) NOT NULL
) ;
INSERT INTO `food_category` (`id`, `category`) VALUES
(1, 'Baked Product'),
(2, 'Beverages'),
(3, 'Dairy Foods');


CREATE TABLE `gi_food` (
  `id` int(11) NOT NULL,
  `id_category` int(11) NOT NULL,
  `food` varchar(255) NOT NULL,
  `GI` int(11) NOT NULL,
  `photo` varchar(255) NOT NULL
) ;
INSERT INTO `gi_food` (`id`, `id_category`, `food`, `GI`, `photo`) VALUES
(1, 1, 'Baguette (white)', 95, 'https://glycemic-index.net/images/km3qgnoJUj.webp'),
(2, 1, 'Baguette (whole grain)', 73, 'https://glycemic-index.net/images/a9QuVsuUee.webp'),
(3, 1, 'Bagel (wheat)', 70, 'https://glycemic-index.net/images/ZKf9MlK8Xv.webp'),
(4, 1, 'Biscuit', 70, 'https://glycemic-index.net/images/pajkDcy7fN.webp'),
(5, 1, 'Biscotti (dry cookies)', 70, 'https://glycemic-index.net/images/fpEMNt47f0.webp'),
(6, 1, 'Pancakes', 66, 'https://glycemic-index.net/images/kDsILe8Ikw.webp'),
(7, 1, 'Buckwheat pancakes', 40, 'https://glycemic-index.net/images/z5MVnDf3oY.webp'),
(8, 1, 'Brioche (bun)', 70, 'https://glycemic-index.net/images/aVqmAGjVTX.webp'),
(9, 1, 'Bagels', 70, 'https://glycemic-index.net/images/3t56uEo8h4.webp'),
(10, 1, 'Hamburger bun', 61, 'https://glycemic-index.net/images/9AjnElHjW1.webp'),
(11, 1, 'Waffles', 75, 'https://glycemic-index.net/images/KA0omnjciw.webp'),
(12, 1, 'Crackers', 80, 'https://glycemic-index.net/images/glPLlX2NZo.webp'),
(13, 1, 'Croissant', 70, 'https://glycemic-index.net/images/B7fuVM0MML.webp'),
(14, 1, 'Flatbread', 69, 'https://glycemic-index.net/images/LG0GCz9phG.webp'),
(15, 1, 'Shortbread Cookies (Integral Flour, Sugar Free)', 40, 'https://glycemic-index.net/images/dorInXt9PW.webp'),
(16, 1, 'Shortbread', 60, 'https://glycemic-index.net/images/Sv1J2eaU7E.webp'),
(17, 1, 'Cookies (whole grain flour, sugar free)', 50, 'https://glycemic-index.net/images/R4TGIv63PA.webp'),
(18, 1, 'Cookies (pastries)', 70, 'https://glycemic-index.net/images/eA1bA7JfWt.webp'),
(19, 1, 'Butter cookies (flour, butter, sugar)', 55, 'https://glycemic-index.net/images/22Qww81qoh.webp'),
(20, 1, 'Oatmeal cookies', 55, 'https://glycemic-index.net/images/qb6MFYGIad.webp'),
(21, 1, 'Multi Grain Cookies', 51, 'https://glycemic-index.net/images/JC61jucNub.webp'),
(22, 1, 'Banana pie', 47, 'https://glycemic-index.net/images/GFjQzLnAXd.webp'),
(23, 1, 'Pita', 57, 'https://glycemic-index.net/images/9zwTGMvNjC.webp'),
(24, 1, 'Pizza', 60, 'https://glycemic-index.net/images/DWNRAHikTn.webp'),
(25, 1, 'Donuts', 75, 'https://glycemic-index.net/images/MkHavmQFZu.webp'),
(26, 1, 'Bakery products (wheat)', 90, 'https://glycemic-index.net/images/maDth31oxn.webp'),
(27, 1, 'Wheat bread', 70, 'https://glycemic-index.net/images/Vy2XOOtMlA.webp'),
(28, 1, 'Rye bread', 65, 'https://glycemic-index.net/images/xEVRLZ9gy0.webp'),
(29, 1, 'Rice waffles', 64, 'https://glycemic-index.net/images/IIpvhCrZUk.webp'),
(30, 1, 'Rice biscuits', 85, 'https://glycemic-index.net/images/O1mOJwne6V.webp'),
(31, 1, 'Rice cake', 85, 'https://glycemic-index.net/images/Oe6K3ZDkwz.webp'),
(32, 1, 'Straw', 60, 'https://glycemic-index.net/images/D9jDWErZqn.webp'),
(33, 1, 'Rye crackers', 64, 'https://glycemic-index.net/images/6c7JkJrSwq.webp'),
(34, 1, 'Sandwich bread, white', 75, 'https://glycemic-index.net/images/Yx6702Slmh.webp'),
(35, 1, 'French baguette made from wheat flour', 70, 'https://glycemic-index.net/images/PBIXPmSNN3.webp'),
(36, 1, 'Bread (oatmeal)', 47, 'https://glycemic-index.net/images/ZSAs6KPWMg.webp'),
(37, 1, 'White bread ñbaguetteî', 70, 'https://glycemic-index.net/images/7glZbxWPcy.webp'),
(38, 1, 'Gluten free white bread', 90, 'https://glycemic-index.net/images/PF77NCPzEW.webp'),
(39, 1, 'Buckwheat bread', 50, 'https://glycemic-index.net/images/8zyVhyjhKg.webp'),
(40, 1, 'Brown yeast bread', 65, 'https://glycemic-index.net/images/CIj5N57PeH.webp'),
(41, 1, 'White flour bread', 90, 'https://glycemic-index.net/images/WBtmLBI95R.webp'),
(42, 1, 'Wholemeal bread', 65, 'https://glycemic-index.net/images/JzXU9TeY5Z.webp'),
(43, 1, 'Germinated bread', 35, 'https://glycemic-index.net/images/Eh7uL13iuv.webp'),
(44, 1, 'Wholemeal bread', 40, 'https://glycemic-index.net/images/JzXU9TeY5Z.webp'),
(45, 1, 'Milk bread', 60, 'https://glycemic-index.net/images/FZOfamIeW1.webp'),
(46, 1, 'Pumpernickel Bread', 45, 'https://glycemic-index.net/images/9qStdGVQiU.webp'),
(47, 1, 'Rice Bread', 70, 'https://glycemic-index.net/images/0scaIlEz2Z.webp'),
(48, 1, 'Bran bread', 65, 'https://glycemic-index.net/images/Rk4YASGlDx.webp'),
(50, 2, 'Coconut water', 35, 'https://pragativadi.com/wp-content/uploads/2021/02/3-cocu1600424507-0.jpg'),
(51, 2, 'Milk (skimmed)', 32, 'https://gwpriceltd.co.uk/wp-content/uploads/2020/04/GWPrice-Milk-skimmed-2ltr-min.jpg'),
(53, 2, 'Soy milk', 34, 'https://fthmb.tqn.com/2Z0bQWWcN9alZcEmJVMhx6oSQYA=/960x0/filters:no_upscale()/Soybeans-and-Soy-Milk-5827b45b3df78c6f6a738adf.jpg'),
(54, 2, 'Orange juice', 50, 'https://glycemic-index.net/images/wX4P5Ns5iP.webp'),
(55, 2, 'Apple juice', 41, 'https://glycemic-index.net/images/cCXy8qeuwb.webp'),
(56, 2, 'Grape juice', 46, 'https://glycemic-index.net/images/4dUrBbLets.webp'),
(57, 2, 'Cranberry juice', 52, 'https://glycemic-index.net/images/8J3UabrTAD.webp'),
(58, 2, 'Cola', 63, 'https://glycemic-info.com/site/assets/files/4476/adobestock_279494912_editorial_use_only.1200x630.jpeg'),
(59, 2, 'Lemonade', 54, 'https://glycemic-index.net/images/iYbYuHuo26.webp'),
(60, 2, 'Sports drink', 78, 'https://richmedia.ca-richimage.com/ImageDelivery/imageService?profileId=12028466&id=1517607&recipeId=739'),
(61, 2, 'Beer', 70, 'https://glycemic-info.com/site/assets/files/1604/adobestock_177416089.1200x630.jpeg'),
(62, 2, 'Red wine', 25, 'https://d.ibtimes.co.uk/en/full/1628878/red-wine.jpg'),
(63, 2, 'White wine', 43, 'https://1.bp.blogspot.com/-QrVE-ayU_iE/XVZth2khjXI/AAAAAAAAAEw/0yqje6kaE_Yte9S3SF6TNmjDxkspk15OgCLcBGAs/s1600/nap-sweetwines%2B.jpg'),
(64, 2, 'Champagne', 76, 'https://th.bing.com/th/id/R.fdd0a468186f0de1fb8b44f80132b336?rik=kO0a8VWjBt9L3w&riu=http%3a%2f%2fwww.themilliardaire.co%2fwp-content%2fuploads%2f2013%2f12%2fchampagne-gout-de-diamant-5.jpg&ehk=HA9az8dVjoKWeMKHc%2bdPksZ6sChwqMtpksNdPTxySIM%3d&risl=&pid=Img'),
(65, 3, 'Vanilla ice cream (regular, with sugar)', 60, 'https://glycemic-index.net/images/G0cIgo1Kb3.webp'),
(66, 3, 'Yogurt', 35, 'https://glycemic-index.net/images/YRbyiua0Bd.webp'),
(67, 3, 'Yogurt 1.5% natural', 35, 'https://glycemic-index.net/images/XAZ2vcWeHu.webp'),
(68, 3, 'Sweet yogurt', 52, 'https://glycemic-index.net/images/hW1I5jROrw.webp'),
(69, 3, 'Soy yogurt (natural)', 20, 'https://glycemic-index.net/images/ly78a4t9tc.webp'),
(70, 3, 'Fruit yogurt', 52, 'https://glycemic-index.net/images/yVMCG2tVNR.webp'),
(71, 3, 'Fat-free yogurt', 33, 'https://glycemic-index.net/images/Xm4emNKUan.webp'),
(72, 3, 'Kefir (1% fat)', 31, 'https://glycemic-index.net/images/dN6YyIuKrg.webp'),
(73, 3, 'Kefir (regular)', 36, 'https://glycemic-index.net/images/p07aOhgLuj.webp'),
(74, 3, 'Kefir low-fat', 25, 'https://glycemic-index.net/images/e36KenT2Zb.webp'),
(75, 3, 'Goat milk', 24, 'https://glycemic-index.net/images/R9F0rKZWSK.webp'),
(76, 3, 'Almond milk', 30, 'https://glycemic-index.net/images/ywJvDrsmJ8.webp'),
(77, 3, 'Milk', 31, 'https://glycemic-index.net/images/Aq4PG5y0BP.webp'),
(78, 3, 'Coconut Milk', 40, 'https://glycemic-index.net/images/INdRQJZ70t.webp'),
(79, 3, 'Natural milk', 32, 'https://glycemic-index.net/images/Kr72oe7NYh.webp'),
(80, 3, 'Skim milk', 27, 'https://glycemic-index.net/images/gmFq7H2Qq7.webp'),
(81, 3, 'Oat milk (raw)', 69, 'https://glycemic-index.net/images/yVd2cD06HM.webp'),
(82, 3, 'Rice Milk', 85, 'https://glycemic-index.net/images/6YahKCXm9i.webp'),
(83, 3, 'Soya milk', 30, 'https://glycemic-index.net/images/0FdQ7bqp5M.webp'),
(84, 3, 'Chocolate milk', 34, 'https://glycemic-index.net/images/0FdQ7bqp5M.webp'),
(85, 3, 'Skim milk', 31, 'https://glycemic-index.net/images/gmFq7H2Qq7.webp'),
(86, 3, 'Whole milk', 34, 'https://glycemic-index.net/images/CcjBBjdE4b.webp'),
(87, 3, 'Ice cream', 62, 'https://glycemic-index.net/images/vUFiyRIJp7.webp'),
(88, 3, 'Ice cream (with fructose)', 35, 'https://glycemic-index.net/images/zkM0leMEMd.webp'),
(89, 3, 'Soya milk ice cream', 35, 'https://glycemic-index.net/images/XieGTQ0hTP.webp'),
(90, 3, 'Ice cream (skim, vanilla)', 46, 'https://glycemic-index.net/images/AlJGzrxGsh.webp'),
(91, 3, 'Skim cheese', 30, 'https://glycemic-index.net/images/pUxrArCQGL.webp'),
(92, 3, 'Yogurt', 32, 'https://glycemic-index.net/images/YRbyiua0Bd.webp'),
(93, 3, 'Cream (18%)', 33, 'https://glycemic-index.net/images/5TvXfYEeIF.webp'),
(94, 3, 'Cream (10%)', 30, 'https://glycemic-index.net/images/olZpVHcQgf.webp'),
(95, 3, 'Sour cream (20%)', 56, 'https://glycemic-index.net/images/KyGKd7bJKC.webp'),
(96, 3, 'Soya cream', 20, 'https://glycemic-index.net/images/8CUGCiBN2K.webp'),
(97, 3, 'Processed cheese', 57, 'https://glycemic-index.net/images/i5BE2P6fW6.webp'),
(98, 3, 'Tofu cheese', 15, 'https://glycemic-index.net/images/47GfhbjMs2.webp'),
(99, 3, 'Chees Feta', 30, 'https://glycemic-index.net/images/udYCjL4S7S.webp'),
(100, 3, 'Cottage cheese pancakes', 70, 'https://glycemic-index.net/images/cfhAGI3YFn.webp'),
(101, 3, 'Cottage cheese', 30, 'https://glycemic-index.net/images/XtnY8OGuQN.webp'),
(102, 3, 'Cottage cheese 9% fat', 30, 'https://glycemic-index.net/images/cYOHYZr595.webp'),
(103, 3, 'Low-fat cottage cheese', 30, 'https://glycemic-index.net/images/9zSBsFlTI5.webp'),
(104, 3, 'Curd', 45, 'https://glycemic-index.net/images/k6Xaw5gM9X.webp'),
(105, 3, 'Whole milk 3%', 27, 'https://glycemic-index.net/images/sumn8qertD.webp');

CREATE TABLE `result` (
  `id` int(11) NOT NULL,
  `id_users` int(11) NOT NULL,
  `id_food` int(11) NOT NULL,
  `food_name` varchar(255) NOT NULL,
  `serving_size` varchar(255) DEFAULT NULL,
  `charbo` varchar(255) DEFAULT NULL,
  `protein` varchar(255) DEFAULT NULL,
  `fat` varchar(255) DEFAULT NULL,
  `calorie` varchar(255) DEFAULT NULL,
  `GL` varchar(255) DEFAULT NULL,
  `image_path` varchar(255) NOT NULL
) ;
CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
);
 ALTER TABLE `food_category`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `gi_food`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_category` (`id_category`);
ALTER TABLE `result`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_users` (`id_users`),
  ADD KEY `id_food` (`id_food`);

ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `food_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

ALTER TABLE `gi_food`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;
ALTER TABLE `result`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `gi_food`
  ADD CONSTRAINT `id_category` FOREIGN KEY (`id_category`) REFERENCES `food_category` (`id`);
ALTER TABLE `result`
  ADD CONSTRAINT `id_food` FOREIGN KEY (`id_food`) REFERENCES `gi_food` (`id`),
  ADD CONSTRAINT `id_users` FOREIGN KEY (`id_users`) REFERENCES `users` (`id`);
COMMIT;
