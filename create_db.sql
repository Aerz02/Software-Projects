
CREATE DATABASE IF NOT EXISTS `ChooseMini`;

use ChooseMini;

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;


-- --------------------------------------------------------

-- Table structure for table `options`

CREATE TABLE IF NOT EXISTS `options` (
  `OptionID` int(11) NOT NULL AUTO_INCREMENT,
  `OptionGroupID` int(11) DEFAULT NULL,
  `OptionName` varchar(50)   DEFAULT NULL,
  PRIMARY KEY (`OptionID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci AUTO_INCREMENT=9 ;


-- --------------------------------------------------------

-- Table structure for table `orderdetails`
CREATE TABLE IF NOT EXISTS `orderdetails` (
  `DetailID` int(11) NOT NULL AUTO_INCREMENT,
  `DetailOrderID` int(11) NOT NULL,
  `DetailProductID` int(11) NOT NULL,
  `DetailName` varchar(250)   NOT NULL,
  `DetailPrice` float NOT NULL,
  `DetailSKU` varchar(50)   NOT NULL,
  `DetailQuantity` int(11) NOT NULL,
  FOREIGN KEY (`DetailProductID`, `DetailName`,`DetailPrice`, `DetailSKU`) 
  REFERENCES `products` (`DetailProductID`,  `DetailName`,`DetailPrice`, `DetailSKU`),
  PRIMARY KEY (`DetailID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

-- Table structure for table `orders`
CREATE TABLE IF NOT EXISTS `orders` (
  `OrderID` int(11) NOT NULL AUTO_INCREMENT,
  `OrderUserID` int(11) NOT NULL,
  `OrderAmount` float NOT NULL,
  `OrderShipName` varchar(100)   NOT NULL,
  `OrderShipAddress` varchar(100)   NOT NULL,
  `OrderShipAddress2` varchar(100)   NOT NULL,
  `OrderCity` varchar(50)   NOT NULL,
  `OrderState` varchar(50)   NOT NULL,
  `OrderZip` varchar(20)   NOT NULL,
  `OrderCountry` varchar(50)   NOT NULL,
  `OrderPhone` varchar(20)   NOT NULL,
  `OrderShipping` float NOT NULL,
  `OrderTax` float NOT NULL,
  `OrderEmail` varchar(100)   NOT NULL,
  `OrderDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `OrderShipped` tinyint(1) NOT NULL DEFAULT '0',
  `OrderTrackingNumber` varchar(80)   DEFAULT NULL,
  PRIMARY KEY (`OrderID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci AUTO_INCREMENT=1 ;


-- --------------------------------------------------------

-- Table structure for table `products`
CREATE TABLE IF NOT EXISTS `products` (
  `ProductID` int(12) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `ProductSKU` varchar(50) NOT NULL,
  `ProductName` varchar(100) NOT NULL,
  `ProductPrice` varchar(10) NOT NULL,
  `ProductCartDesc` varchar(250) NOT NULL,
  `ProductShortDesc` varchar(1000) NOT NULL,
  `ProductLongDesc` text NOT NULL,
  `ProductImage` blob DEFAULT NULL,
  `ProductImage2` blob DEFAULT NULL,
  `ProductImage3` blob DEFAULT NULL,
  `ProductImage4` blob DEFAULT NULL,
  `ProductImage5` blob DEFAULT NULL,
  `ProductImage6` blob DEFAULT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci AUTO_INCREMENT=991 ;

-- -----------------------------------------------------------

-- Table structure for table `basket`

CREATE TABLE IF NOT EXISTS `basket`(
`ProductID` int(12) NOT NULL PRIMARY KEY AUTO_INCREMENT,
`ProductName` varchar(100) NOT NULL,
`ProductPrice` varchar(10) NOT NULL,
`ProductCartDesc` varchar(250) NOT NULL,
`ProductImage` blob DEFAULT NULL,
FOREIGN KEY (`ProductID`, `ProductName`, `ProductPrice`, `ProductCartDesc`) REFERENCES `products` (`ProductID`, `ProductName`, `ProductPrice`, `ProductCartDesc`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci AUTO_INCREMENT=1 ;

-- -----------------------------------------------------------

-- Table structure for table `users`
CREATE TABLE IF NOT EXISTS `users` (
  `UserID` int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `UserEmail` varchar(500)  NOT NULL,
  `UserPassword` varchar(500) NOT NULL,
  `UserFirstName` varchar(50) NOT NULL,
  `UserLastName` varchar(50) NOT NULL,
  `UserPhone` varchar(20) NOT NULL,
  `UserAddress` varchar(100) NOT NULL,
  `UserAddress2` varchar(100) DEFAULT NULL,
  `UserCity` varchar(100) NOT NULL,
  `UserState` varchar(50) NOT NULL,
  `UserZip` varchar(15) NOT NULL,
  `UserCountry` varchar(20) NOT NULL,
  `UserRegistrationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */
;