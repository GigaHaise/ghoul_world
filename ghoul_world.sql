-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 26, 2015 at 09:13 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `ghoul_world`
--

-- --------------------------------------------------------

--
-- Table structure for table `apps`
--

CREATE TABLE IF NOT EXISTS `apps` (
`appid` tinyint(2) NOT NULL,
  `appname` varchar(20) NOT NULL,
  `appicon` char(20) NOT NULL,
  `min_authlevel` double NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `apps`
--

INSERT INTO `apps` (`appid`, `appname`, `appicon`, `min_authlevel`) VALUES
(1, 'Settings', 'settings_', 1),
(2, 'PMs', 'pms_', 1),
(3, 'App Drawer', 'drawer_', 1),
(4, 'Chat', 'chat_', 1),
(5, 'Info', 'info_', 1);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE IF NOT EXISTS `sessions` (
  `sesskey` varchar(64) NOT NULL DEFAULT '',
  `expiry` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `expireref` varchar(250) DEFAULT '',
  `created` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `sessdata` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`sesskey`, `expiry`, `expireref`, `created`, `modified`, `sessdata`) VALUES
('e746me1j7uagvibb718u24c960', '2015-01-26 01:46:32', '', '2015-01-26 00:58:42', '2015-01-26 01:22:32', 'AXUGaVNhAnxQYlgeUyVRIFVjVEMEa1glVWJWQg4lAWJWZVRjUSIAaQ84WXlSZAEXVSUAJVVuBC5XPVNnB2QBNQElBjdTRgIqUHBYblMXUTBVdVQxBBtYJVVjVjEOSAExVj5UIVFiAH4POFluUnIBZlUSACZVagQvVyBTcQdmASIBZAYlUzICGlAmWHhTZVFEVWNUMAR/WDNVEFYmDjIBYlZmVGVRYgA9D29ZPVJgATZVYQBmVTIEOFcxUzcHOAEzATIGYVNkAmtQZVg+UzJRYFVpVDoEOFhlVTBWZw5hATNWclRgUTUAfg85WR5SNgEgVSQAPlVUBDBXNlNwB2wBPAElBjdTRgIqUHBYblMXUTRVdVQxBBtYJVVjVjEOMwF1VmVUYFEiAGgPSFksUj8BOlU+ADNVLgRrVxBTdQcsAWMBQQYyUzQCalBwWG5TF1EgVWJUMAR/WDdVE1YmDjIBYlY6VDdRaQAuDy9ZblJlAXBVYwAXVS4Ea1cRUyMHOwFiATEGJVM3AmtQcFhuUxdRIFViVDAEa1glVWNWMQ4lAWJWFFR3UTUAaQ84WXlSZQFnVXUAZVVKBHlXYVM0BzsBdQEyBjJTIAJrUBZYeFNkUTdVY1QnBGhYMlV0VjAOQQF1VmVUYFE0AH4POFluUnIBZ1UTAHNVOQRuV2dTIwc7AWIBJQYzU0QCfFBnWG9TYlEgVWJUMAR/WDJVElYmDjIBYlZiVHdRNQBpDy9Zb1IWAXBVYgBkVT4EeVdhUzQHLAFnAUQGJVM3AhpQcFhvU2RRdlUzVHAEP1hlVT9WMg4lAWJWZVR3UTQAGg8vWWtSFQFwVWIAZFU6BHlXYVM0BywBYwFBBiVTNwJrUHBYb1NkUSBVYlRBBH9YMlVjVjEOJQFiVmVUd1E0ABoPL1luUmUBcFViAGRVLgRuVxBTIwc7AWIBMwYlUzcCa1BwWG5TF1EgVWJUMAR/WDJVY1YmDjIBE1ZyVGBRNQBvDy9ZblJlAXBVYwAXVS4EbldhUyMHOwFiASUGMlNGAnxQZ1hvU2NRIFViVDAEf1gzVRBWJg4yAWJWclRgUTUAfg84WR9ScgFnVWIAYFUuBG5XYVMjBzoBEQElBjJTNwJ8UGdYb1NzUTdVE1QnBGhYMlVmViYOMgFiVnJUYVFGAH4POFluUnIBZ1ViAHNVOQQfV3ZTNAc7AWgBJQYyUzcCfFBmWBxTc1E3VWJUJwRoWDJVdFYxDkMBdVZlVGBRPgB+DzhZblJyAWZVEQBzVTkEbld2UzQHOwF1ATIGQ1MgAmtQZ1hsU2ZRIFViVDAEf1gzVRBWJg4yAWJWclRgUTUAfg84WR9ScgFnVWIAZ1U6BHlXYVM0BywBYwFBBiVTNwJrUHBYb1NkUSBVYlRBBH9YMlVjVjIOMgF1VmVUYFEiAGgPS1l5UmUBZ1V1AGRVOQR5V2FTRQcsAWIBMgYxUzYCfFBnWG9Tc1E2VRFUJwRoWDJVdFYxDjIBdVZlVBFRIgBpDzhZbVJjAXBVYgBkVS4Eb1cSUyMHOwFiASUGMlM3AnxQZ1geU3NRN1ViVDMEb1glVWNWMQ4lAWNWFlR3UTUAaQ8vWW5SZQFwVWIAFVUuBG5XYVM3Bz8BdQEyBjJTIAJqUBRYeFNkUTdVdVQwBGhYJVVjVkAOJQFiVmVUY1EwAH4POFluUnIBZlURAHNVOQRuV3ZTNAc7AXUBMgZDUyACa1BnWGxTblEgVWJUMAR/WDNVEFYmDjIBYlZyVGBRNQB+DzhZH1JyAWdVYgBnVTIEeVdhUzQHLAFjAUEGJVM3AmtQcFhvU2RRIFViVEEEf1gyVWNWMQ4wAXVWZVRgUSIAaA9LWXlSZQFnVXUAZFU5BHlXZFNCBywBZwFEBiVTNwJrUHBYblMU');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
`uid` mediumint(8) NOT NULL,
  `username` varchar(32) NOT NULL,
  `password` varchar(32) NOT NULL,
  `auth_level` double NOT NULL,
  `phone` mediumtext NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`uid`, `username`, `password`, `auth_level`, `phone`) VALUES
(1, 'Haise', '17efea7c109db11c2aa20cde98beadac', 3, '{"menu":{"1":"1","2":"2","3":"3","4":"4","5":"5"},"screen1":{"1":"","2":"","3":"","4":"","5":"","6":"","7":"","8":"","9":"","10":"","11":"","12":"","13":"","14":"","15":"","16":"","17":"","18":"","19":"","20":""}}');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `apps`
--
ALTER TABLE `apps`
 ADD PRIMARY KEY (`appid`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
 ADD PRIMARY KEY (`sesskey`), ADD KEY `sess2_expiry` (`expiry`), ADD KEY `sess2_expireref` (`expireref`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
 ADD PRIMARY KEY (`uid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `apps`
--
ALTER TABLE `apps`
MODIFY `appid` tinyint(2) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
MODIFY `uid` mediumint(8) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
