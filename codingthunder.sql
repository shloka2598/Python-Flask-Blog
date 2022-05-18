-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 18, 2022 at 09:07 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `codingthunder`
--

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `sno` int(11) NOT NULL,
  `name` text NOT NULL,
  `phone_num` varchar(50) NOT NULL,
  `msg` text NOT NULL,
  `date` datetime DEFAULT current_timestamp(),
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`sno`, `name`, `phone_num`, `msg`, `date`, `email`) VALUES
(1, 'first contact', '123456789', 'First Post', '2022-05-15 15:06:19', 'firstpost@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `sno` int(11) NOT NULL,
  `title` text NOT NULL,
  `tagline` text NOT NULL,
  `slug` varchar(25) NOT NULL,
  `content` text NOT NULL,
  `img_file` varchar(25) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`sno`, `title`, `tagline`, `slug`, `content`, `img_file`, `date`) VALUES
(1, 'Let\'s Learn about stock market', 'stock market', 'first-post', 'In finance, stock (also capital stock) consists of all of the shares into which ownership of a corporation or company is divided.[1] (Especially in American English, the word \"stocks\" is also used to refer to shares.)[1][2] A single share of the stock means fractional ownership of the corporation in proportion to the total number of shares. This typically entitles the shareholder (stockholder) to that fraction of the company\'s earnings, proceeds from liquidation of assets (after discharge of all senior claims such as secured and unsecured debt),[3] or voting power, often dividing these up in proportion to the amount of money each stockholder has invested. Not all stock is necessarily equal, as certain classes of stock may be issued for example without voting rights, with enhanced voting rights, or with a certain priority to receive profits or liquidation proceeds before or after other classes of shareholders.', 'home-bg1.jpg', '2022-05-16 13:22:00'),
(2, 'This is second post', 'coolest post ever', 'second-post', 'By writing extensions you can add custom tags to Jinja. This is a non-trivial task and usually not needed as the default tags and expressions cover all common use cases. The i18n extension is a good example of why extensions are useful. Another one would be fragment caching.\r\n\r\nWhen writing extensions you have to keep in mind that you are working with the Jinja template compiler which does not validate the node tree you are passing to it. If the AST is malformed you will get all kinds of compiler or runtime errors that are horrible to debug. Always make sure you are using the nodes you create correctly. The API documentation below shows which nodes exist and how to use them.', 'about-bg.jpg', '2022-05-16 11:19:38'),
(3, 'This is the third post', 'op post bro op!!', 'third-post', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vel mollis ipsum. Vestibulum a lorem nibh. Ut blandit non nisl ut ultricies. In efficitur diam et lectus tempor, id semper augue vulputate. Donec arcu turpis, lacinia vitae dapibus nec, posuere sit amet lacus. Fusce maximus magna at eros pharetra imperdiet. Maecenas dignissim volutpat ultrices. Aenean eu sem consequat, sodales ex non, accumsan eros. Proin imperdiet elit id consectetur tempor. Morbi tellus lacus, finibus nec quam eget, scelerisque vestibulum turpis. Cras eu tempus ante, at porttitor nisl. Ut lacinia purus eget justo mattis, id maximus ante euismod.\r\n\r\nDuis sollicitudin finibus vehicula. Nam in felis enim. Phasellus imperdiet sodales nisi, a porttitor arcu molestie non. Nulla sed euismod nulla. Duis eget ipsum felis. Cras consequat magna ut libero egestas posuere. Proin aliquam arcu vitae ipsum pulvinar, ut porta augue mattis. Mauris bibendum maximus quam nec laoreet. Duis a turpis a risus condimentum mollis. Nam id mi pellentesque metus pretium scelerisque in quis tortor. Nam nec ante nibh. Donec pharetra, eros nec aliquet condimentum, lorem nisi posuere ante, nec tincidunt elit mauris in ligula.', 'post-bg.jpg', '2022-05-16 13:23:34'),
(4, 'Fourth Post', 'dummy text bro duumy', 'fourth-post', 'Nunc porttitor tempor gravida. Phasellus in nisi iaculis, feugiat nunc sed, finibus orci. Nullam eget quam et massa bibendum fermentum. Donec eget urna lacus. Quisque pulvinar quis diam non finibus. Fusce gravida mauris ligula, ac suscipit nunc vehicula eget. Nulla sodales scelerisque dictum. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer mollis pellentesque ex viverra condimentum. Cras commodo, est ut tempus facilisis, est neque scelerisque massa, vel iaculis urna metus ullamcorper metus. Sed in luctus turpis. Suspendisse dapibus pulvinar ullamcorper. Maecenas commodo feugiat bibendum. Cras posuere velit diam, consectetur pharetra elit dapibus sed. Quisque facilisis metus mauris, nec condimentum sapien blandit consectetur. Maecenas sit amet lacus pulvinar, dignissim sem a, vulputate leo.\r\n\r\nInteger vehicula ex sed felis convallis, vestibulum interdum dolor lobortis. Vestibulum molestie enim eu sollicitudin finibus. Sed rhoncus, nisi aliquam posuere mattis, neque arcu venenatis erat, sit amet vehicula nisl ipsum at sapien. Aliquam vestibulum leo eget auctor ornare. Nullam id pulvinar enim, ac varius nisi. Nullam nec felis semper, sagittis eros aliquet, malesuada libero. Sed aliquam lectus id venenatis pharetra. Suspendisse pellentesque tellus est, non rhoncus quam iaculis eget. Phasellus vitae nisi sed massa condimentum semper non eget metus. Maecenas eu pretium diam. Nulla in libero felis. Suspendisse interdum ipsum at neque porttitor, vel elementum lectus malesuada.', 'post-sample-image.jpg', '2022-05-16 11:38:26'),
(5, 'Fifth Post', 'typing these posts for filling space!!', 'fifth-post', 'Integer vehicula ex sed felis convallis, vestibulum interdum dolor lobortis. Vestibulum molestie enim eu sollicitudin finibus. Sed rhoncus, nisi aliquam posuere mattis, neque arcu venenatis erat, sit amet vehicula nisl ipsum at sapien. Aliquam vestibulum leo eget auctor ornare. Nullam id pulvinar enim, ac varius nisi. Nullam nec felis semper, sagittis eros aliquet, malesuada libero. Sed aliquam lectus id venenatis pharetra. Suspendisse pellentesque tellus est, non rhoncus quam iaculis eget. Phasellus vitae nisi sed massa condimentum semper non eget metus. Maecenas eu pretium diam. Nulla in libero felis. Suspendisse interdum ipsum at neque porttitor, vel elementum lectus malesuada.\r\n\r\nSed sit amet venenatis neque. Vestibulum suscipit a nulla non aliquam. Aenean porta malesuada odio sed hendrerit. Nulla at suscipit leo, id gravida sapien. Vivamus blandit nibh purus, eu ullamcorper nibh facilisis eget. Donec mattis neque ut purus mattis rhoncus. Sed vulputate urna vitae iaculis fringilla. Vestibulum quis nibh vel eros molestie tincidunt et venenatis justo. Nulla a ullamcorper tellus, quis faucibus velit. Mauris pretium tellus sed porttitor scelerisque. Sed condimentum diam sit amet sapien vulputate ornare. In sed metus semper, placerat arcu ullamcorper, sodales nulla. Curabitur nibh ipsum, faucibus nec nulla tempor, porta aliquam tellus. Curabitur convallis, urna eget sagittis blandit, orci enim blandit ex, non lobortis odio tortor vitae odio. Aenean porta sapien at elit vestibulum commodo. Vivamus facilisis turpis tellus, vitae faucibus dui rhoncus vitae.', 'contact-bg.jpg', '2022-05-16 11:43:48'),
(6, 'Sixth Post', 'finally, last to add manually', 'sixth-post', 'Integer vehicula ex sed felis convallis, vestibulum interdum dolor lobortis. Vestibulum molestie enim eu sollicitudin finibus. Sed rhoncus, nisi aliquam posuere mattis, neque arcu venenatis erat, sit amet vehicula nisl ipsum at sapien. Aliquam vestibulum leo eget auctor ornare. Nullam id pulvinar enim, ac varius nisi. Nullam nec felis semper, sagittis eros aliquet, malesuada libero. Sed aliquam lectus id venenatis pharetra. Suspendisse pellentesque tellus est, non rhoncus quam iaculis eget. Phasellus vitae nisi sed massa condimentum semper non eget metus. Maecenas eu pretium diam. Nulla in libero felis. Suspendisse interdum ipsum at neque porttitor, vel elementum lectus malesuada.\r\n\r\nSed sit amet venenatis neque. Vestibulum suscipit a nulla non aliquam. Aenean porta malesuada odio sed hendrerit. Nulla at suscipit leo, id gravida sapien. Vivamus blandit nibh purus, eu ullamcorper nibh facilisis eget. Donec mattis neque ut purus mattis rhoncus. Sed vulputate urna vitae iaculis fringilla. Vestibulum quis nibh vel eros molestie tincidunt et venenatis justo. Nulla a ullamcorper tellus, quis faucibus velit. Mauris pretium tellus sed porttitor scelerisque. Sed condimentum diam sit amet sapien vulputate ornare. In sed metus semper, placerat arcu ullamcorper, sodales nulla. Curabitur nibh ipsum, faucibus nec nulla tempor, porta aliquam tellus. Curabitur convallis, urna eget sagittis blandit, orci enim blandit ex, non lobortis odio tortor vitae odio. Aenean porta sapien at elit vestibulum commodo. Vivamus facilisis turpis tellus, vitae faucibus dui rhoncus vitae.', 'post-bg.jpg', '2022-05-16 11:44:23');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
