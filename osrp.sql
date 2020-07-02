-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 23, 2019 at 07:34 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `osrp`
--

-- --------------------------------------------------------

--
-- Table structure for table `achievements`
--

CREATE TABLE `achievements` (
  `uid` int(10) DEFAULT NULL,
  `achievement` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `actordb`
--

CREATE TABLE `actordb` (
  `ID` int(11) NOT NULL,
  `ActorName` text NOT NULL,
  `ActorVirtual` int(11) NOT NULL,
  `ActorX` float NOT NULL,
  `ActorA` float NOT NULL,
  `ActorY` float NOT NULL,
  `ActorZ` float NOT NULL,
  `Skin` int(11) NOT NULL,
  `AActive` int(11) NOT NULL,
  `Text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `uid` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `aName` varchar(255) NOT NULL,
  `aLevel` int(11) NOT NULL,
  `totalReports` int(11) NOT NULL,
  `monthlyReports` int(11) NOT NULL,
  `weeklyReports` int(11) NOT NULL,
  `monthlyReset` int(11) NOT NULL,
  `weeklyReset` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `arrestpoints`
--

CREATE TABLE `arrestpoints` (
  `id` int(2) NOT NULL,
  `PosX` float(10,5) NOT NULL DEFAULT '0.00000',
  `PosY` float(10,5) NOT NULL DEFAULT '0.00000',
  `PosZ` float(10,5) NOT NULL DEFAULT '0.00000',
  `VW` int(5) NOT NULL DEFAULT '0',
  `Int` int(5) NOT NULL DEFAULT '0',
  `Type` int(1) NOT NULL DEFAULT '0',
  `jailVW` int(5) NOT NULL DEFAULT '0',
  `jailInt` int(5) NOT NULL DEFAULT '0',
  `jailpos1x` float(10,5) NOT NULL DEFAULT '0.00000',
  `jailpos1y` float(10,5) NOT NULL DEFAULT '0.00000',
  `jailpos1z` float(10,5) NOT NULL DEFAULT '0.00000',
  `jailpos2x` float(10,5) NOT NULL DEFAULT '0.00000',
  `jailpos2y` float(10,5) NOT NULL DEFAULT '0.00000',
  `jailpos2z` float(10,5) NOT NULL DEFAULT '0.00000'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auctions`
--

CREATE TABLE `auctions` (
  `id` int(11) NOT NULL,
  `BiddingFor` varchar(64) NOT NULL DEFAULT '(none)',
  `InProgress` int(11) NOT NULL DEFAULT '0',
  `Bid` int(11) NOT NULL DEFAULT '0',
  `Bidder` int(11) NOT NULL DEFAULT '0',
  `Expires` int(11) NOT NULL DEFAULT '0',
  `Wining` varchar(24) NOT NULL DEFAULT '(none)',
  `Increment` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `backpack`
--

CREATE TABLE `backpack` (
  `pid` int(11) NOT NULL,
  `type` int(2) NOT NULL,
  `store1` int(2) DEFAULT NULL,
  `store2` int(2) DEFAULT NULL,
  `food` int(11) NOT NULL DEFAULT '0',
  `food2` int(11) NOT NULL DEFAULT '0',
  `mats` int(11) NOT NULL DEFAULT '0',
  `pot` int(5) DEFAULT '0',
  `crack` int(5) DEFAULT '0',
  `heroine` int(5) DEFAULT '0',
  `weap1` varchar(50) DEFAULT NULL,
  `weap2` varchar(50) DEFAULT NULL,
  `weap3` varchar(50) DEFAULT NULL,
  `weap4` varchar(50) DEFAULT NULL,
  `weap5` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `bans`
--

CREATE TABLE `bans` (
  `id` int(10) NOT NULL,
  `username` varchar(24) DEFAULT NULL,
  `ip` varchar(16) DEFAULT NULL,
  `bannedby` varchar(24) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `reason` varchar(128) DEFAULT NULL,
  `permanent` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `businesses`
--

CREATE TABLE `businesses` (
  `id` int(10) NOT NULL,
  `ownerid` int(10) DEFAULT '0',
  `owner` varchar(24) DEFAULT 'Nobody',
  `type` tinyint(2) DEFAULT '0',
  `price` int(10) DEFAULT '0',
  `entryfee` int(10) DEFAULT '0',
  `locked` tinyint(1) DEFAULT '0',
  `timestamp` int(10) DEFAULT '0',
  `pos_x` float DEFAULT '0',
  `pos_y` float DEFAULT '0',
  `pos_z` float DEFAULT '0',
  `pos_a` float DEFAULT '0',
  `int_x` float DEFAULT '0',
  `int_y` float DEFAULT '0',
  `int_z` float DEFAULT '0',
  `int_a` float DEFAULT '0',
  `interior` tinyint(2) DEFAULT '0',
  `world` int(10) DEFAULT '0',
  `outsideint` tinyint(2) DEFAULT '0',
  `outsidevw` int(10) DEFAULT '0',
  `cash` int(10) DEFAULT '0',
  `products` int(10) DEFAULT '500',
  `materials` int(10) DEFAULT '0',
  `color` int(10) DEFAULT '-256',
  `description` varchar(128) DEFAULT 'None',
  `cVehicleX` float DEFAULT '0',
  `cVehicleY` float DEFAULT '0',
  `cVehicleZ` float DEFAULT '0',
  `cVehicleA` float DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `changes`
--

CREATE TABLE `changes` (
  `slot` tinyint(2) DEFAULT NULL,
  `text` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `charges`
--

CREATE TABLE `charges` (
  `id` int(10) NOT NULL,
  `uid` int(10) DEFAULT NULL,
  `chargedby` varchar(24) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `reason` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `clothing`
--

CREATE TABLE `clothing` (
  `id` int(10) NOT NULL,
  `uid` int(10) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL,
  `modelid` smallint(5) DEFAULT NULL,
  `boneid` tinyint(2) DEFAULT NULL,
  `attached` tinyint(1) DEFAULT NULL,
  `pos_x` float DEFAULT NULL,
  `pos_y` float DEFAULT NULL,
  `pos_z` float DEFAULT NULL,
  `rot_x` float DEFAULT NULL,
  `rot_y` float DEFAULT NULL,
  `rot_z` float DEFAULT NULL,
  `scale_x` float DEFAULT NULL,
  `scale_y` float DEFAULT NULL,
  `scale_z` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `crates`
--

CREATE TABLE `crates` (
  `id` int(11) NOT NULL,
  `Active` int(11) NOT NULL DEFAULT '0',
  `CrateX` float NOT NULL DEFAULT '0',
  `CrateY` float NOT NULL DEFAULT '0',
  `CrateZ` float NOT NULL DEFAULT '0',
  `GunQuantity` int(11) NOT NULL DEFAULT '50',
  `InVehicle` int(11) NOT NULL DEFAULT '0',
  `Int` int(11) NOT NULL DEFAULT '0',
  `VW` int(11) NOT NULL DEFAULT '0',
  `PlacedBy` varchar(24) NOT NULL DEFAULT 'Unknown'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `crews`
--

CREATE TABLE `crews` (
  `id` tinyint(2) DEFAULT NULL,
  `crewid` tinyint(2) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `criminals`
--

CREATE TABLE `criminals` (
  `ID` int(11) NOT NULL,
  `player` varchar(24) NOT NULL,
  `officer` varchar(24) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `crime` text NOT NULL,
  `served` int(11) NOT NULL,
  `minutes` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `divisions`
--

CREATE TABLE `divisions` (
  `id` tinyint(2) DEFAULT NULL,
  `divisionid` tinyint(2) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `entrances`
--

CREATE TABLE `entrances` (
  `id` int(10) NOT NULL,
  `ownerid` int(10) DEFAULT '0',
  `owner` varchar(24) DEFAULT NULL,
  `name` varchar(40) DEFAULT NULL,
  `iconid` smallint(5) DEFAULT '1239',
  `locked` tinyint(1) DEFAULT '0',
  `radius` float DEFAULT '3',
  `pos_x` float DEFAULT '0',
  `pos_y` float DEFAULT '0',
  `pos_z` float DEFAULT '0',
  `pos_a` float DEFAULT '0',
  `int_x` float DEFAULT '0',
  `int_y` float DEFAULT '0',
  `int_z` float DEFAULT '0',
  `int_a` float DEFAULT '0',
  `interior` tinyint(2) DEFAULT '0',
  `world` int(10) DEFAULT '0',
  `outsideint` tinyint(2) DEFAULT '0',
  `outsidevw` int(10) DEFAULT '0',
  `adminlevel` tinyint(2) DEFAULT '0',
  `factiontype` tinyint(2) DEFAULT '0',
  `vip` tinyint(2) DEFAULT '0',
  `vehicles` tinyint(1) DEFAULT '0',
  `freeze` tinyint(1) DEFAULT '0',
  `password` varchar(64) DEFAULT 'None',
  `label` tinyint(1) DEFAULT '1',
  `mapicon` tinyint(3) NOT NULL DEFAULT '0',
  `gang` tinyint(2) DEFAULT '-1',
  `type` tinyint(2) DEFAULT '0',
  `color` int(10) DEFAULT '-256'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `factionlockers`
--

CREATE TABLE `factionlockers` (
  `id` int(10) NOT NULL,
  `factionid` tinyint(2) DEFAULT NULL,
  `pos_x` float DEFAULT '0',
  `pos_y` float DEFAULT '0',
  `pos_z` float DEFAULT '0',
  `interior` tinyint(2) DEFAULT '0',
  `world` int(10) DEFAULT '0',
  `iconid` smallint(5) DEFAULT '1239',
  `label` tinyint(1) DEFAULT '1',
  `weapon_kevlar` tinyint(1) DEFAULT '1',
  `weapon_medkit` tinyint(1) DEFAULT '1',
  `weapon_nitestick` varchar(1) DEFAULT '0',
  `weapon_mace` tinyint(1) DEFAULT '0',
  `weapon_deagle` tinyint(1) DEFAULT '1',
  `weapon_shotgun` tinyint(1) DEFAULT '1',
  `weapon_mp5` tinyint(1) DEFAULT '1',
  `weapon_m4` tinyint(1) DEFAULT '1',
  `weapon_spas12` tinyint(1) DEFAULT '1',
  `weapon_sniper` tinyint(1) DEFAULT '1',
  `weapon_camera` tinyint(1) DEFAULT '0',
  `weapon_fire_extinguisher` tinyint(1) DEFAULT '0',
  `weapon_painkillers` tinyint(1) DEFAULT '0',
  `price_kevlar` smallint(5) DEFAULT '100',
  `price_medkit` smallint(5) DEFAULT '50',
  `price_nitestick` smallint(5) DEFAULT '0',
  `price_mace` smallint(5) DEFAULT '0',
  `price_deagle` smallint(5) DEFAULT '850',
  `price_shotgun` smallint(5) DEFAULT '1000',
  `price_mp5` smallint(5) DEFAULT '1500',
  `price_m4` smallint(5) DEFAULT '2500',
  `price_spas12` smallint(5) DEFAULT '3500',
  `price_sniper` smallint(5) DEFAULT '5000',
  `price_camera` smallint(5) DEFAULT '0',
  `price_fire_extinguisher` smallint(5) DEFAULT '0',
  `price_painkillers` smallint(5) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `factionpay`
--

CREATE TABLE `factionpay` (
  `id` tinyint(2) DEFAULT NULL,
  `rank` tinyint(2) DEFAULT NULL,
  `amount` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `factionranks`
--

CREATE TABLE `factionranks` (
  `id` tinyint(2) DEFAULT NULL,
  `rank` tinyint(2) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `factions`
--

CREATE TABLE `factions` (
  `id` tinyint(2) DEFAULT NULL,
  `name` varchar(48) DEFAULT NULL,
  `leader` varchar(24) DEFAULT 'No-one',
  `type` tinyint(2) DEFAULT '0',
  `color` int(10) DEFAULT '-1',
  `rankcount` tinyint(2) DEFAULT '6',
  `lockerx` float DEFAULT '0',
  `lockery` float DEFAULT '0',
  `lockerz` float DEFAULT '0',
  `lockerinterior` tinyint(2) DEFAULT '0',
  `lockerworld` int(10) DEFAULT '0',
  `turftokens` int(10) DEFAULT NULL,
  `shortname` varchar(64) DEFAULT NULL,
  `motd` varchar(128) DEFAULT NULL,
  `budget` int(8) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `factionskins`
--

CREATE TABLE `factionskins` (
  `id` tinyint(2) DEFAULT NULL,
  `slot` tinyint(2) DEFAULT NULL,
  `skinid` smallint(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `flags`
--

CREATE TABLE `flags` (
  `id` int(10) NOT NULL,
  `uid` int(10) DEFAULT NULL,
  `flaggedby` varchar(24) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `description` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `furniture`
--

CREATE TABLE `furniture` (
  `id` int(10) NOT NULL,
  `houseid` int(10) DEFAULT NULL,
  `modelid` smallint(5) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL,
  `price` int(10) DEFAULT NULL,
  `pos_x` float DEFAULT NULL,
  `pos_y` float DEFAULT NULL,
  `pos_z` float DEFAULT NULL,
  `rot_x` float DEFAULT NULL,
  `rot_y` float DEFAULT NULL,
  `rot_z` float DEFAULT NULL,
  `interior` tinyint(2) DEFAULT NULL,
  `world` int(10) DEFAULT NULL,
  `door_opened` tinyint(1) DEFAULT '0',
  `door_locked` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `gangranks`
--

CREATE TABLE `gangranks` (
  `id` tinyint(2) DEFAULT NULL,
  `rank` tinyint(2) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `gangs`
--

CREATE TABLE `gangs` (
  `id` tinyint(2) DEFAULT NULL,
  `name` varchar(32) DEFAULT 'None',
  `motd` varchar(128) DEFAULT 'None',
  `leader` varchar(24) DEFAULT 'No-one',
  `color` int(10) DEFAULT '-256',
  `strikes` tinyint(1) DEFAULT '0',
  `level` tinyint(2) DEFAULT '1',
  `points` int(10) DEFAULT '0',
  `turftokens` int(10) DEFAULT '0',
  `stash_x` float DEFAULT '0',
  `stash_y` float DEFAULT '0',
  `stash_z` float DEFAULT '0',
  `stashinterior` tinyint(2) DEFAULT '0',
  `stashworld` int(10) DEFAULT '0',
  `cash` int(10) DEFAULT '0',
  `materials` int(10) DEFAULT '0',
  `weed` int(10) DEFAULT '0',
  `cocaine` int(10) DEFAULT '0',
  `meth` int(10) DEFAULT '0',
  `painkillers` int(10) DEFAULT '0',
  `pistolammo` int(10) DEFAULT '0',
  `shotgunammo` int(10) DEFAULT '0',
  `smgammo` int(10) DEFAULT '0',
  `arammo` int(10) DEFAULT '0',
  `rifleammo` int(10) DEFAULT '0',
  `hpammo` int(10) DEFAULT '0',
  `poisonammo` int(10) DEFAULT '0',
  `fmjammo` int(10) DEFAULT '0',
  `weapon_9mm` int(10) DEFAULT '0',
  `weapon_sdpistol` int(10) DEFAULT '0',
  `weapon_deagle` int(10) DEFAULT '0',
  `weapon_shotgun` int(10) DEFAULT '0',
  `weapon_spas12` int(10) DEFAULT '0',
  `weapon_sawnoff` int(10) DEFAULT '0',
  `weapon_tec9` int(10) DEFAULT '0',
  `weapon_uzi` int(10) DEFAULT '0',
  `weapon_mp5` int(10) DEFAULT '0',
  `weapon_ak47` int(10) DEFAULT '0',
  `weapon_m4` int(10) DEFAULT '0',
  `weapon_rifle` int(10) DEFAULT '0',
  `weapon_sniper` int(10) DEFAULT '0',
  `weapon_molotov` int(10) DEFAULT '0',
  `armsdealer` tinyint(1) DEFAULT '0',
  `drugdealer` tinyint(1) DEFAULT '0',
  `arms_x` float DEFAULT '0',
  `arms_y` float DEFAULT '0',
  `arms_z` float DEFAULT '0',
  `arms_a` float DEFAULT '0',
  `drug_x` float DEFAULT '0',
  `drug_y` float DEFAULT '0',
  `drug_z` float DEFAULT '0',
  `drug_a` float DEFAULT '0',
  `armsworld` int(10) DEFAULT '0',
  `drugworld` int(10) DEFAULT '0',
  `drugweed` int(10) DEFAULT '0',
  `drugcocaine` int(10) DEFAULT '0',
  `drugmeth` int(10) DEFAULT '0',
  `armsmaterials` int(10) DEFAULT '0',
  `armsprice_1` int(10) DEFAULT '0',
  `armsprice_2` int(10) DEFAULT '0',
  `armsprice_3` int(10) DEFAULT '0',
  `armsprice_4` int(10) DEFAULT '0',
  `armsprice_5` int(10) DEFAULT '0',
  `armsprice_6` int(10) DEFAULT '0',
  `armsprice_7` int(10) DEFAULT '0',
  `armsprice_8` int(10) DEFAULT '0',
  `armsprice_9` int(10) NOT NULL DEFAULT '0',
  `armsprice_10` int(10) NOT NULL DEFAULT '0',
  `armsprice_11` int(10) NOT NULL DEFAULT '0',
  `armsprice_12` tinyint(2) NOT NULL DEFAULT '0',
  `weed_price` int(10) DEFAULT '0',
  `cocaine_price` int(10) DEFAULT '0',
  `meth_price` int(10) DEFAULT '0',
  `matlevel` tinyint(3) NOT NULL DEFAULT '0',
  `gunlevel` tinyint(3) NOT NULL DEFAULT '0',
  `alliance` tinyint(4) NOT NULL DEFAULT '-1',
  `rivals` tinyint(4) DEFAULT '-1',
  `war1` tinyint(2) NOT NULL DEFAULT '0',
  `war2` tinyint(2) NOT NULL DEFAULT '0',
  `war3` tinyint(2) NOT NULL DEFAULT '0',
  `rank_9mm` tinyint(2) NOT NULL DEFAULT '1',
  `rank_sdpistol` tinyint(2) NOT NULL DEFAULT '1',
  `rank_deagle` tinyint(2) NOT NULL DEFAULT '2',
  `rank_shotgun` tinyint(2) NOT NULL DEFAULT '1',
  `rank_spas12` tinyint(2) NOT NULL DEFAULT '4',
  `rank_sawnoff` tinyint(2) NOT NULL DEFAULT '4',
  `rank_tec9` tinyint(2) NOT NULL DEFAULT '1',
  `rank_uzi` tinyint(2) NOT NULL DEFAULT '1',
  `rank_mp5` tinyint(2) NOT NULL DEFAULT '2',
  `rank_ak47` tinyint(2) NOT NULL DEFAULT '3',
  `rank_m4` tinyint(2) NOT NULL DEFAULT '4',
  `rank_rifle` tinyint(2) NOT NULL DEFAULT '2',
  `rank_sniper` tinyint(2) NOT NULL DEFAULT '5',
  `rank_molotov` tinyint(2) NOT NULL DEFAULT '5',
  `rank_vest` tinyint(2) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `gangskins`
--

CREATE TABLE `gangskins` (
  `id` tinyint(2) DEFAULT NULL,
  `slot` tinyint(2) DEFAULT NULL,
  `skinid` smallint(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `gangsold`
--

CREATE TABLE `gangsold` (
  `id` tinyint(2) DEFAULT NULL,
  `name` varchar(32) DEFAULT 'None',
  `motd` varchar(128) DEFAULT 'None',
  `leader` varchar(24) DEFAULT 'No-one',
  `color` int(10) DEFAULT '-256',
  `strikes` tinyint(1) DEFAULT '0',
  `level` tinyint(2) DEFAULT '1',
  `points` int(10) DEFAULT '0',
  `turftokens` int(10) DEFAULT '0',
  `stash_x` float DEFAULT '0',
  `stash_y` float DEFAULT '0',
  `stash_z` float DEFAULT '0',
  `stashinterior` tinyint(2) DEFAULT '0',
  `stashworld` int(10) DEFAULT '0',
  `cash` int(10) DEFAULT '0',
  `materials` int(10) DEFAULT '0',
  `weed` int(10) DEFAULT '0',
  `cocaine` int(10) DEFAULT '0',
  `meth` int(10) DEFAULT '0',
  `painkillers` int(10) DEFAULT '0',
  `pistolammo` int(10) DEFAULT '0',
  `shotgunammo` int(10) DEFAULT '0',
  `smgammo` int(10) DEFAULT '0',
  `arammo` int(10) DEFAULT '0',
  `rifleammo` int(10) DEFAULT '0',
  `hpammo` int(10) DEFAULT '0',
  `poisonammo` int(10) DEFAULT '0',
  `fmjammo` int(10) DEFAULT '0',
  `weapon_9mm` int(10) DEFAULT '0',
  `weapon_sdpistol` int(10) DEFAULT '0',
  `weapon_deagle` int(10) DEFAULT '0',
  `weapon_shotgun` int(10) DEFAULT '0',
  `weapon_spas12` int(10) DEFAULT '0',
  `weapon_sawnoff` int(10) DEFAULT '0',
  `weapon_tec9` int(10) DEFAULT '0',
  `weapon_uzi` int(10) DEFAULT '0',
  `weapon_mp5` int(10) DEFAULT '0',
  `weapon_ak47` int(10) DEFAULT '0',
  `weapon_m4` int(10) DEFAULT '0',
  `weapon_rifle` int(10) DEFAULT '0',
  `weapon_sniper` int(10) DEFAULT '0',
  `weapon_molotov` int(10) DEFAULT '0',
  `armsdealer` tinyint(1) DEFAULT '0',
  `drugdealer` tinyint(1) DEFAULT '0',
  `arms_x` float DEFAULT '0',
  `arms_y` float DEFAULT '0',
  `arms_z` float DEFAULT '0',
  `arms_a` float DEFAULT '0',
  `drug_x` float DEFAULT '0',
  `drug_y` float DEFAULT '0',
  `drug_z` float DEFAULT '0',
  `drug_a` float DEFAULT '0',
  `armsworld` int(10) DEFAULT '0',
  `drugworld` int(10) DEFAULT '0',
  `drugweed` int(10) DEFAULT '0',
  `drugcocaine` int(10) DEFAULT '0',
  `drugmeth` int(10) DEFAULT '0',
  `armsmaterials` int(10) DEFAULT '0',
  `armsprice_1` int(10) DEFAULT '0',
  `armsprice_2` int(10) DEFAULT '0',
  `armsprice_3` int(10) DEFAULT '0',
  `armsprice_4` int(10) DEFAULT '0',
  `armsprice_5` int(10) DEFAULT '0',
  `armsprice_6` int(10) DEFAULT '0',
  `armsprice_7` int(10) DEFAULT '0',
  `armsprice_8` int(10) DEFAULT '0',
  `armsprice_9` int(10) NOT NULL DEFAULT '0',
  `armsprice_10` int(10) NOT NULL DEFAULT '0',
  `armsprice_11` int(10) NOT NULL DEFAULT '0',
  `armsprice_12` tinyint(2) NOT NULL DEFAULT '0',
  `weed_price` int(10) DEFAULT '0',
  `cocaine_price` int(10) DEFAULT '0',
  `meth_price` int(10) DEFAULT '0',
  `matlevel` tinyint(3) NOT NULL DEFAULT '0',
  `gunlevel` tinyint(3) NOT NULL DEFAULT '0',
  `alliance` tinyint(4) NOT NULL DEFAULT '-1',
  `war1` tinyint(2) NOT NULL DEFAULT '0',
  `war2` tinyint(2) NOT NULL DEFAULT '0',
  `war3` tinyint(2) NOT NULL DEFAULT '0',
  `rank_9mm` tinyint(2) NOT NULL DEFAULT '1',
  `rank_sdpistol` tinyint(2) NOT NULL DEFAULT '1',
  `rank_deagle` tinyint(2) NOT NULL DEFAULT '2',
  `rank_shotgun` tinyint(2) NOT NULL DEFAULT '1',
  `rank_spas12` tinyint(2) NOT NULL DEFAULT '4',
  `rank_sawnoff` tinyint(2) NOT NULL DEFAULT '4',
  `rank_tec9` tinyint(2) NOT NULL DEFAULT '1',
  `rank_uzi` tinyint(2) NOT NULL DEFAULT '1',
  `rank_mp5` tinyint(2) NOT NULL DEFAULT '2',
  `rank_ak47` tinyint(2) NOT NULL DEFAULT '3',
  `rank_m4` tinyint(2) NOT NULL DEFAULT '4',
  `rank_rifle` tinyint(2) NOT NULL DEFAULT '2',
  `rank_sniper` tinyint(2) NOT NULL DEFAULT '5',
  `rank_molotov` tinyint(2) NOT NULL DEFAULT '5',
  `rank_vest` tinyint(2) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `gangtags`
--

CREATE TABLE `gangtags` (
  `gangid` int(11) NOT NULL,
  `text` text NOT NULL,
  `fontid` int(11) NOT NULL,
  `pname` text NOT NULL,
  `color` int(11) NOT NULL,
  `x` float(11,4) NOT NULL DEFAULT '0.0000',
  `y` float(11,4) NOT NULL DEFAULT '0.0000',
  `z` float(11,4) NOT NULL DEFAULT '0.0000',
  `rx` float(11,4) NOT NULL DEFAULT '0.0000',
  `ry` float(11,4) NOT NULL DEFAULT '0.0000',
  `rz` float(11,4) NOT NULL DEFAULT '0.0000',
  `ID` int(11) NOT NULL,
  `pdbid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `garages`
--

CREATE TABLE `garages` (
  `id` int(10) NOT NULL,
  `ownerid` int(10) DEFAULT '0',
  `owner` varchar(24) DEFAULT NULL,
  `type` tinyint(1) DEFAULT '0',
  `price` int(10) DEFAULT '0',
  `locked` tinyint(1) DEFAULT '0',
  `freeze` tinyint(1) NOT NULL DEFAULT '0',
  `timestamp` int(10) DEFAULT '0',
  `pos_x` float DEFAULT '0',
  `pos_y` float DEFAULT '0',
  `pos_z` float DEFAULT '0',
  `pos_a` float DEFAULT '0',
  `exit_x` float DEFAULT '0',
  `exit_y` float DEFAULT '0',
  `exit_z` float DEFAULT '0',
  `exit_a` float DEFAULT '0',
  `world` int(10) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `gates`
--

CREATE TABLE `gates` (
  `ID` int(11) NOT NULL,
  `HID` int(11) NOT NULL DEFAULT '-1',
  `Speed` float NOT NULL DEFAULT '10',
  `Range` float NOT NULL DEFAULT '10',
  `Model` int(11) NOT NULL DEFAULT '18631',
  `VW` int(11) NOT NULL DEFAULT '0',
  `Int` int(11) NOT NULL DEFAULT '0',
  `Pass` varchar(24) NOT NULL DEFAULT '',
  `PosX` float NOT NULL DEFAULT '0',
  `PosY` float NOT NULL DEFAULT '0',
  `PosZ` float NOT NULL DEFAULT '0',
  `RotX` float NOT NULL DEFAULT '0',
  `RotY` float NOT NULL DEFAULT '0',
  `RotZ` float NOT NULL DEFAULT '0',
  `PosXM` float NOT NULL DEFAULT '0',
  `PosYM` float NOT NULL DEFAULT '0',
  `PosZM` float NOT NULL DEFAULT '0',
  `RotXM` float NOT NULL DEFAULT '0',
  `RotYM` float NOT NULL DEFAULT '0',
  `RotZM` float NOT NULL DEFAULT '0',
  `Allegiance` int(11) NOT NULL DEFAULT '0',
  `GroupType` int(11) NOT NULL DEFAULT '0',
  `GroupID` int(2) NOT NULL DEFAULT '-1',
  `GangID` int(2) NOT NULL DEFAULT '-1',
  `RenderHQ` int(11) NOT NULL DEFAULT '1',
  `Timer` int(1) NOT NULL DEFAULT '0',
  `Automate` int(11) NOT NULL,
  `Locked` int(11) NOT NULL,
  `TIndex` int(11) NOT NULL,
  `TModel` int(11) NOT NULL,
  `TColor` int(11) NOT NULL,
  `Facility` int(11) NOT NULL,
  `TTXD` varchar(32) NOT NULL,
  `TTexture` varchar(42) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `graffiti`
--

CREATE TABLE `graffiti` (
  `graffitiID` int(12) NOT NULL,
  `graffitiX` float DEFAULT '0',
  `graffitiY` float DEFAULT '0',
  `graffitiZ` float DEFAULT '0',
  `graffitiAngle` float DEFAULT '0',
  `graffitiColor` int(12) DEFAULT '0',
  `graffitiText` varchar(64) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `gunracks`
--

CREATE TABLE `gunracks` (
  `rackID` int(12) NOT NULL,
  `rackHouse` int(12) DEFAULT '0',
  `rackX` float DEFAULT '0',
  `rackY` float DEFAULT '0',
  `rackZ` float DEFAULT '0',
  `rackA` float DEFAULT '0',
  `rackInterior` int(12) DEFAULT '0',
  `rackWorld` int(12) DEFAULT '0',
  `rackWeapon1` int(12) DEFAULT '0',
  `rackAmmo1` int(12) DEFAULT '0',
  `rackWeapon2` int(12) DEFAULT '0',
  `rackAmmo2` int(12) DEFAULT '0',
  `rackWeapon3` int(12) DEFAULT '0',
  `rackAmmo3` int(12) DEFAULT '0',
  `rackWeapon4` int(12) DEFAULT '0',
  `rackAmmo4` int(12) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `houses`
--

CREATE TABLE `houses` (
  `id` int(10) NOT NULL,
  `ownerid` int(10) DEFAULT '0',
  `owner` varchar(24) DEFAULT 'Nobody',
  `type` tinyint(2) DEFAULT '0',
  `price` int(10) DEFAULT '0',
  `rentprice` int(10) DEFAULT '0',
  `level` tinyint(2) DEFAULT '1',
  `locked` tinyint(1) DEFAULT '0',
  `timestamp` int(10) DEFAULT '0',
  `pos_x` float DEFAULT '0',
  `pos_y` float DEFAULT '0',
  `pos_z` float DEFAULT '0',
  `pos_a` float DEFAULT '0',
  `int_x` float DEFAULT '0',
  `int_y` float DEFAULT '0',
  `int_z` float DEFAULT '0',
  `int_a` float DEFAULT '0',
  `interior` tinyint(2) DEFAULT '0',
  `world` int(10) DEFAULT '0',
  `outsideint` int(10) DEFAULT '0',
  `outsidevw` int(10) DEFAULT '0',
  `cash` int(10) DEFAULT '0',
  `materials` int(10) DEFAULT '0',
  `weed` int(10) DEFAULT '0',
  `cocaine` int(10) DEFAULT '0',
  `meth` int(10) DEFAULT '0',
  `painkillers` int(10) DEFAULT '0',
  `weapon_1` tinyint(2) DEFAULT '0',
  `weapon_2` tinyint(2) DEFAULT '0',
  `weapon_3` tinyint(2) DEFAULT '0',
  `weapon_4` tinyint(2) DEFAULT '0',
  `weapon_5` tinyint(2) DEFAULT '0',
  `weapon_6` tinyint(2) DEFAULT '0',
  `weapon_7` tinyint(2) DEFAULT '0',
  `weapon_8` tinyint(2) DEFAULT '0',
  `weapon_9` tinyint(2) DEFAULT '0',
  `weapon_10` tinyint(2) DEFAULT '0',
  `ammo_1` smallint(5) DEFAULT '0',
  `ammo_2` smallint(5) DEFAULT '0',
  `ammo_3` smallint(5) DEFAULT '0',
  `ammo_4` smallint(5) DEFAULT '0',
  `ammo_5` smallint(5) DEFAULT '0',
  `ammo_6` tinyint(2) DEFAULT '0',
  `ammo_7` tinyint(2) DEFAULT '0',
  `ammo_8` tinyint(2) DEFAULT '0',
  `ammo_9` tinyint(2) DEFAULT '0',
  `ammo_10` tinyint(2) DEFAULT '0',
  `pistolammo` smallint(5) DEFAULT '0',
  `shotgunammo` smallint(5) DEFAULT '0',
  `smgammo` smallint(5) DEFAULT '0',
  `arammo` smallint(5) DEFAULT '0',
  `rifleammo` smallint(5) DEFAULT '0',
  `hpammo` smallint(5) DEFAULT '0',
  `poisonammo` smallint(5) DEFAULT '0',
  `fmjammo` smallint(5) DEFAULT '0',
  `delivery` tinyint(2) DEFAULT '1',
  `lights` tinyint(1) DEFAULT '1',
  `alarm` int(2) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `kills`
--

CREATE TABLE `kills` (
  `id` int(10) NOT NULL,
  `killer_uid` int(10) DEFAULT NULL,
  `target_uid` int(10) DEFAULT NULL,
  `killer` varchar(24) DEFAULT NULL,
  `target` varchar(24) DEFAULT NULL,
  `reason` varchar(24) DEFAULT NULL,
  `date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `landobjects`
--

CREATE TABLE `landobjects` (
  `id` int(10) NOT NULL,
  `landid` int(10) DEFAULT NULL,
  `modelid` smallint(5) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL,
  `price` int(10) DEFAULT NULL,
  `pos_x` float DEFAULT NULL,
  `pos_y` float DEFAULT NULL,
  `pos_z` float DEFAULT NULL,
  `rot_x` float DEFAULT NULL,
  `rot_y` float DEFAULT NULL,
  `rot_z` float DEFAULT NULL,
  `door_opened` tinyint(1) DEFAULT '0',
  `door_locked` tinyint(1) DEFAULT '0',
  `move_x` float DEFAULT '0',
  `move_y` float DEFAULT '0',
  `move_z` float DEFAULT '0',
  `move_rx` float DEFAULT '0',
  `move_ry` float DEFAULT '0',
  `move_rz` float DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `lands`
--

CREATE TABLE `lands` (
  `id` int(10) NOT NULL,
  `ownerid` int(10) DEFAULT '0',
  `owner` varchar(24) DEFAULT 'Nobody',
  `price` int(10) DEFAULT '0',
  `min_x` float DEFAULT '0',
  `min_y` float DEFAULT '0',
  `max_x` float DEFAULT '0',
  `max_y` float DEFAULT '0',
  `heightx` float DEFAULT '0',
  `heightz` float NOT NULL DEFAULT '0',
  `heighty` float NOT NULL DEFAULT '0',
  `level` tinyint(2) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE `locations` (
  `id` int(4) NOT NULL,
  `name` varchar(64) NOT NULL,
  `pos_x` float NOT NULL,
  `pos_y` float NOT NULL,
  `pos_z` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `log_admin`
--

CREATE TABLE `log_admin` (
  `id` int(10) NOT NULL,
  `date` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `log_bans`
--

CREATE TABLE `log_bans` (
  `id` int(10) NOT NULL,
  `uid` int(10) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `log_cheat`
--

CREATE TABLE `log_cheat` (
  `id` int(10) NOT NULL,
  `date` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `log_command`
--

CREATE TABLE `log_command` (
  `id` int(10) NOT NULL,
  `date` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `log_contracts`
--

CREATE TABLE `log_contracts` (
  `id` int(10) NOT NULL,
  `date` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `log_cp`
--

CREATE TABLE `log_cp` (
  `id` int(11) NOT NULL,
  `executer` text,
  `description` text,
  `date` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `log_dicebet`
--

CREATE TABLE `log_dicebet` (
  `id` int(10) NOT NULL,
  `date` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `log_faction`
--

CREATE TABLE `log_faction` (
  `id` int(10) NOT NULL,
  `date` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `log_gang`
--

CREATE TABLE `log_gang` (
  `id` int(10) NOT NULL,
  `date` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `log_give`
--

CREATE TABLE `log_give` (
  `id` int(10) NOT NULL,
  `date` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `log_givecookie`
--

CREATE TABLE `log_givecookie` (
  `id` int(10) NOT NULL,
  `date` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `log_givegun`
--

CREATE TABLE `log_givegun` (
  `id` int(10) NOT NULL,
  `date` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `log_givemoney`
--

CREATE TABLE `log_givemoney` (
  `id` int(10) NOT NULL,
  `date` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `log_makeadmin`
--

CREATE TABLE `log_makeadmin` (
  `id` int(10) NOT NULL,
  `date` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `log_makehelper`
--

CREATE TABLE `log_makehelper` (
  `id` int(10) NOT NULL,
  `date` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `log_namechanges`
--

CREATE TABLE `log_namechanges` (
  `id` int(10) NOT NULL,
  `date` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `log_namehistory`
--

CREATE TABLE `log_namehistory` (
  `id` int(10) NOT NULL,
  `uid` int(10) DEFAULT NULL,
  `oldname` varchar(24) DEFAULT NULL,
  `newname` varchar(24) DEFAULT NULL,
  `changedby` varchar(24) DEFAULT NULL,
  `date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `log_property`
--

CREATE TABLE `log_property` (
  `id` int(10) NOT NULL,
  `date` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `log_punishments`
--

CREATE TABLE `log_punishments` (
  `id` int(10) NOT NULL,
  `date` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `log_referrals`
--

CREATE TABLE `log_referrals` (
  `id` int(10) NOT NULL,
  `date` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `log_setstat`
--

CREATE TABLE `log_setstat` (
  `id` int(10) NOT NULL,
  `date` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `log_vip`
--

CREATE TABLE `log_vip` (
  `id` int(10) NOT NULL,
  `date` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `postedby` varchar(200) COLLATE latin1_spanish_ci NOT NULL,
  `news` text COLLATE latin1_spanish_ci NOT NULL,
  `subject` varchar(200) COLLATE latin1_spanish_ci NOT NULL,
  `date` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `phonebook`
--

CREATE TABLE `phonebook` (
  `name` varchar(24) DEFAULT NULL,
  `number` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `playerbackpack`
--

CREATE TABLE `playerbackpack` (
  `ID` int(11) NOT NULL,
  `BackpackCreated` int(11) NOT NULL DEFAULT '0',
  `BackpackOwner` int(11) NOT NULL DEFAULT '-1',
  `BackpackOwnerName` varchar(24) NOT NULL DEFAULT 'Vacant',
  `BackpackSize` int(11) NOT NULL DEFAULT '0',
  `Attached` int(11) NOT NULL DEFAULT '0',
  `PosX` float NOT NULL DEFAULT '0',
  `PosY` float NOT NULL DEFAULT '0',
  `PosZ` float NOT NULL DEFAULT '0',
  `VirtualWorld` int(11) NOT NULL DEFAULT '-1',
  `InteriorWorld` int(11) NOT NULL DEFAULT '-1',
  `Cash` int(11) NOT NULL DEFAULT '0',
  `Crack` int(11) NOT NULL DEFAULT '0',
  `Pot` int(11) NOT NULL DEFAULT '0',
  `Mats` int(11) NOT NULL DEFAULT '0',
  `Gun0` int(11) NOT NULL DEFAULT '0',
  `Gun1` int(11) NOT NULL DEFAULT '0',
  `Gun2` int(11) NOT NULL DEFAULT '0',
  `Gun3` int(11) NOT NULL DEFAULT '0',
  `Gun4` int(11) NOT NULL DEFAULT '0',
  `Gun5` int(11) NOT NULL DEFAULT '0',
  `Gun6` int(11) NOT NULL DEFAULT '0',
  `Gun7` int(11) NOT NULL DEFAULT '0',
  `Gun8` int(11) NOT NULL DEFAULT '0',
  `Gun9` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `points`
--

CREATE TABLE `points` (
  `id` tinyint(2) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL,
  `capturedby` varchar(24) DEFAULT 'No-one',
  `capturedgang` tinyint(2) DEFAULT '-1',
  `type` tinyint(2) DEFAULT '0',
  `profits` int(10) DEFAULT '0',
  `time` tinyint(2) DEFAULT '24',
  `point_x` float DEFAULT '0',
  `point_y` float DEFAULT '0',
  `point_z` float DEFAULT '0',
  `pointinterior` tinyint(2) DEFAULT '0',
  `pointworld` int(10) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `posts_acp`
--

CREATE TABLE `posts_acp` (
  `title` varchar(64) NOT NULL,
  `date` date NOT NULL,
  `description` text NOT NULL,
  `postedby` varchar(24) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `radiostations`
--

CREATE TABLE `radiostations` (
  `id` int(11) NOT NULL,
  `name` varchar(90) NOT NULL,
  `url` varchar(128) NOT NULL,
  `genre` varchar(90) NOT NULL,
  `subgenre` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rp_atms`
--

CREATE TABLE `rp_atms` (
  `atmID` int(12) NOT NULL,
  `atmX` float DEFAULT '0',
  `atmY` float DEFAULT '0',
  `atmZ` float DEFAULT '0',
  `atmA` float DEFAULT '0',
  `atmInterior` int(12) DEFAULT '0',
  `atmWorld` int(12) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rp_contacts`
--

CREATE TABLE `rp_contacts` (
  `ID` int(12) NOT NULL,
  `Phone` int(12) DEFAULT '0',
  `Contact` varchar(24) DEFAULT NULL,
  `Number` int(12) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rp_dealercars`
--

CREATE TABLE `rp_dealercars` (
  `ID` int(12) NOT NULL,
  `Company` int(12) DEFAULT '0',
  `Model` int(4) DEFAULT '0',
  `Price` int(12) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rp_furniture`
--

CREATE TABLE `rp_furniture` (
  `fID` int(12) NOT NULL,
  `fHouseID` int(12) DEFAULT '0',
  `fModel` int(6) DEFAULT '0',
  `fX` float DEFAULT '0',
  `fY` float DEFAULT '0',
  `fZ` float DEFAULT '0',
  `fRX` float DEFAULT '0',
  `fRY` float DEFAULT '0',
  `fRZ` float DEFAULT '0',
  `fInterior` int(12) DEFAULT '0',
  `fWorld` int(12) DEFAULT '0',
  `fCode` int(12) DEFAULT '0',
  `fMoney` int(12) DEFAULT '0',
  `Mat1` int(11) DEFAULT '0',
  `Mat2` int(11) DEFAULT '0',
  `Mat3` int(11) DEFAULT '0',
  `MatColor1` int(11) DEFAULT '0',
  `MatColor2` int(11) DEFAULT '0',
  `MatColor3` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rp_gundamages`
--

CREATE TABLE `rp_gundamages` (
  `Weapon` tinyint(2) DEFAULT NULL,
  `Damage` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rp_payphones`
--

CREATE TABLE `rp_payphones` (
  `phID` int(12) NOT NULL,
  `phNumber` int(12) DEFAULT '0',
  `phX` float DEFAULT '0',
  `phY` float DEFAULT '0',
  `phZ` float DEFAULT '0',
  `phA` float DEFAULT '0',
  `phInterior` int(12) DEFAULT '0',
  `phWorld` int(12) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `server_info`
--

CREATE TABLE `server_info` (
  `totalconnections` int(11) NOT NULL,
  `tax` int(11) NOT NULL,
  `govvault` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shots`
--

CREATE TABLE `shots` (
  `id` int(10) NOT NULL,
  `playerid` smallint(3) DEFAULT NULL,
  `weaponid` tinyint(2) DEFAULT NULL,
  `hittype` tinyint(2) DEFAULT NULL,
  `hitid` int(10) DEFAULT NULL,
  `hitplayer` varchar(24) DEFAULT NULL,
  `pos_x` float DEFAULT NULL,
  `pos_y` float DEFAULT NULL,
  `pos_z` float DEFAULT NULL,
  `timestamp` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `speedcameras`
--

CREATE TABLE `speedcameras` (
  `speedID` int(12) NOT NULL,
  `speedRange` float DEFAULT '0',
  `speedLimit` float DEFAULT '0',
  `speedX` float DEFAULT '0',
  `speedY` float DEFAULT '0',
  `speedZ` float DEFAULT '0',
  `speedAngle` float DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `texts`
--

CREATE TABLE `texts` (
  `id` int(10) NOT NULL,
  `sender_number` int(10) DEFAULT NULL,
  `recipient_number` int(10) DEFAULT NULL,
  `sender` varchar(24) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `ID` int(11) NOT NULL,
  `player` varchar(25) NOT NULL,
  `officer` varchar(25) NOT NULL,
  `time` time NOT NULL,
  `date` date NOT NULL,
  `amount` int(11) NOT NULL,
  `reason` varchar(64) NOT NULL,
  `paid` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `turfs`
--

CREATE TABLE `turfs` (
  `id` tinyint(2) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL,
  `capturedby` varchar(24) DEFAULT 'No-one',
  `capturedgang` tinyint(2) DEFAULT '-1',
  `type` tinyint(2) DEFAULT '0',
  `time` tinyint(2) DEFAULT '12',
  `min_x` float DEFAULT '0',
  `min_y` float DEFAULT '0',
  `max_x` float DEFAULT '0',
  `max_y` float DEFAULT '0',
  `height` float DEFAULT '0',
  `count` int(4) NOT NULL DEFAULT '3'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `passwordchanged` tinyint(1) NOT NULL DEFAULT '0',
  `uid` int(10) NOT NULL,
  `username` varchar(24) DEFAULT NULL,
  `password` varchar(129) DEFAULT NULL,
  `regdate` datetime DEFAULT NULL,
  `lastlogin` datetime DEFAULT NULL,
  `ip` varchar(16) DEFAULT NULL,
  `setup` tinyint(1) DEFAULT '1',
  `gender` tinyint(1) DEFAULT '1',
  `age` tinyint(3) DEFAULT '18',
  `skin` smallint(3) DEFAULT '299',
  `camera_x` float DEFAULT '0',
  `camera_y` float DEFAULT '0',
  `camera_z` float DEFAULT '0',
  `pos_x` float DEFAULT '0',
  `pos_y` float DEFAULT '0',
  `pos_z` float DEFAULT '0',
  `pos_a` float DEFAULT '0',
  `interior` tinyint(2) DEFAULT '0',
  `world` int(10) DEFAULT '0',
  `cash` int(10) DEFAULT '5000',
  `bank` int(10) DEFAULT '10000',
  `paycheck` int(10) DEFAULT '0',
  `level` int(10) DEFAULT '1',
  `exp` int(10) DEFAULT '0',
  `minutes` tinyint(2) DEFAULT '0',
  `hours` int(10) DEFAULT '0',
  `adminlevel` int(10) DEFAULT '0',
  `adminname` varchar(24) DEFAULT 'None',
  `helperlevel` tinyint(2) DEFAULT '0',
  `health` float DEFAULT '100',
  `armor` float DEFAULT '0',
  `upgradepoints` int(10) DEFAULT '0',
  `warnings` tinyint(3) DEFAULT '0',
  `injured` tinyint(1) DEFAULT '0',
  `hospital` tinyint(1) DEFAULT '0',
  `spawnhealth` float DEFAULT '50',
  `spawnarmor` float DEFAULT '0',
  `jailtype` tinyint(1) DEFAULT '0',
  `jailtime` int(10) DEFAULT '0',
  `newbiemuted` tinyint(1) DEFAULT '0',
  `helpmuted` tinyint(1) DEFAULT '0',
  `admuted` tinyint(1) DEFAULT '0',
  `livemuted` tinyint(1) DEFAULT '0',
  `globalmuted` tinyint(1) DEFAULT '0',
  `reportmuted` tinyint(2) DEFAULT '0',
  `reportwarns` tinyint(2) DEFAULT '0',
  `fightstyle` tinyint(2) DEFAULT '4',
  `locked` tinyint(1) DEFAULT '0',
  `accent` varchar(16) DEFAULT 'None',
  `cookies` int(10) DEFAULT '0',
  `phone` int(10) DEFAULT '0',
  `job` int(10) DEFAULT '-1',
  `secondjob` tinyint(2) DEFAULT '-1',
  `crimes` int(10) DEFAULT '0',
  `arrested` int(10) DEFAULT '0',
  `wantedlevel` tinyint(2) DEFAULT '0',
  `materials` int(10) DEFAULT '0',
  `weed` int(10) DEFAULT '0',
  `cocaine` int(10) DEFAULT '0',
  `meth` int(10) DEFAULT '0',
  `painkillers` int(10) DEFAULT '0',
  `seeds` int(10) DEFAULT '0',
  `ephedrine` int(10) DEFAULT '0',
  `muriaticacid` int(10) DEFAULT '0',
  `bakingsoda` int(10) DEFAULT '0',
  `cigars` int(10) DEFAULT '0',
  `walkietalkie` tinyint(1) DEFAULT '0',
  `channel` int(10) DEFAULT '0',
  `rentinghouse` int(10) DEFAULT '0',
  `spraycans` int(10) DEFAULT '0',
  `boombox` tinyint(1) DEFAULT '0',
  `mp3player` tinyint(1) DEFAULT '0',
  `phonebook` tinyint(1) DEFAULT '0',
  `fishingrod` tinyint(1) DEFAULT '0',
  `fishingbait` int(10) DEFAULT '0',
  `fishweight` int(10) DEFAULT '0',
  `components` int(10) DEFAULT '0',
  `courierskill` int(10) DEFAULT '0',
  `fishingskill` int(10) DEFAULT '0',
  `guardskill` int(10) DEFAULT '0',
  `weaponskill` int(10) DEFAULT '0',
  `mechanicskill` int(10) DEFAULT '0',
  `lawyerskill` int(10) DEFAULT '0',
  `detectiveskill` int(10) DEFAULT '0',
  `smugglerskill` int(10) DEFAULT '0',
  `toggletextdraws` tinyint(1) DEFAULT '0',
  `togglebug` tinyint(1) DEFAULT '0',
  `toggleooc` tinyint(1) DEFAULT '0',
  `togglephone` tinyint(1) DEFAULT '0',
  `toggleadmin` tinyint(1) DEFAULT '0',
  `togglehelper` tinyint(1) DEFAULT '0',
  `togglenewbie` tinyint(1) DEFAULT '0',
  `togglewt` tinyint(1) DEFAULT '0',
  `toggleradio` tinyint(1) DEFAULT '0',
  `togglevip` tinyint(1) DEFAULT '0',
  `togglemusic` tinyint(1) DEFAULT '0',
  `togglefaction` tinyint(1) DEFAULT '0',
  `togglegang` tinyint(1) DEFAULT '0',
  `togglenews` tinyint(1) DEFAULT '0',
  `toggleglobal` tinyint(1) DEFAULT '1',
  `togglecam` tinyint(1) DEFAULT '0',
  `carlicense` tinyint(1) DEFAULT '0',
  `vippackage` tinyint(2) DEFAULT '0',
  `viptime` int(10) DEFAULT '0',
  `vipcooldown` int(10) DEFAULT '0',
  `weapon_0` tinyint(2) DEFAULT '0',
  `weapon_1` tinyint(2) DEFAULT '0',
  `weapon_2` tinyint(2) DEFAULT '0',
  `weapon_3` tinyint(2) DEFAULT '0',
  `weapon_4` tinyint(2) DEFAULT '0',
  `weapon_5` tinyint(2) DEFAULT '0',
  `weapon_6` tinyint(2) DEFAULT '0',
  `weapon_7` tinyint(2) DEFAULT '0',
  `weapon_8` tinyint(2) DEFAULT '0',
  `weapon_9` tinyint(2) DEFAULT '0',
  `weapon_10` tinyint(2) DEFAULT '0',
  `weapon_11` tinyint(2) DEFAULT '0',
  `weapon_12` tinyint(2) DEFAULT '0',
  `ammo_0` smallint(5) DEFAULT '0',
  `ammo_1` smallint(5) DEFAULT '0',
  `ammo_2` smallint(5) DEFAULT '0',
  `ammo_3` smallint(5) DEFAULT '0',
  `ammo_4` smallint(5) DEFAULT '0',
  `ammo_5` smallint(5) DEFAULT '0',
  `ammo_6` smallint(5) DEFAULT '0',
  `ammo_7` smallint(5) DEFAULT '0',
  `ammo_8` smallint(5) DEFAULT '0',
  `ammo_9` smallint(5) DEFAULT '0',
  `ammo_10` smallint(5) DEFAULT '0',
  `ammo_11` smallint(5) DEFAULT '0',
  `ammo_12` smallint(5) DEFAULT '0',
  `faction` tinyint(2) DEFAULT '-1',
  `gang` tinyint(2) DEFAULT '-1',
  `factionrank` tinyint(2) DEFAULT '0',
  `gangrank` tinyint(2) DEFAULT '0',
  `division` tinyint(2) DEFAULT '-1',
  `contracted` int(10) DEFAULT '0',
  `contractby` varchar(24) DEFAULT 'Nobody',
  `bombs` int(10) DEFAULT '0',
  `completedhits` int(10) DEFAULT '0',
  `failedhits` int(10) DEFAULT '0',
  `reports` int(10) DEFAULT '0',
  `helprequests` int(10) DEFAULT '0',
  `speedometer` tinyint(1) DEFAULT '1',
  `factionmod` tinyint(1) DEFAULT '0',
  `gangmod` tinyint(1) DEFAULT '0',
  `banappealer` tinyint(1) DEFAULT '0',
  `helpermanager` tinyint(1) DEFAULT '0',
  `dynamicadmin` tinyint(1) DEFAULT '0',
  `adminpersonnel` tinyint(1) DEFAULT '0',
  `weedplanted` tinyint(1) DEFAULT '0',
  `weedtime` int(10) DEFAULT '0',
  `weedgrams` int(10) DEFAULT '0',
  `weed_x` float DEFAULT '0',
  `weed_y` float DEFAULT '0',
  `weed_z` float DEFAULT '0',
  `weed_a` float DEFAULT '0',
  `inventoryupgrade` int(10) DEFAULT '0',
  `addictupgrade` int(10) DEFAULT '0',
  `traderupgrade` int(10) DEFAULT '0',
  `assetupgrade` int(10) DEFAULT '0',
  `pistolammo` smallint(5) DEFAULT '0',
  `shotgunammo` smallint(5) DEFAULT '0',
  `smgammo` smallint(5) DEFAULT '0',
  `arammo` smallint(5) DEFAULT '0',
  `rifleammo` smallint(5) DEFAULT '0',
  `hpammo` smallint(5) DEFAULT '0',
  `poisonammo` smallint(5) DEFAULT '0',
  `fmjammo` smallint(5) DEFAULT '0',
  `ammotype` tinyint(2) DEFAULT '0',
  `ammoweapon` tinyint(2) DEFAULT '0',
  `dmwarnings` tinyint(2) DEFAULT '0',
  `weaponrestricted` int(10) DEFAULT '0',
  `referral_uid` int(10) DEFAULT '0',
  `refercount` int(10) DEFAULT '0',
  `watch` tinyint(1) DEFAULT '0',
  `gps` tinyint(1) DEFAULT '0',
  `prisonedby` varchar(24) DEFAULT 'No-one',
  `prisonreason` varchar(128) DEFAULT 'None',
  `togglehud` tinyint(1) DEFAULT '1',
  `clothes` smallint(3) DEFAULT '-1',
  `showturfs` tinyint(1) DEFAULT '0',
  `showlands` tinyint(1) DEFAULT '0',
  `watchon` tinyint(1) DEFAULT '0',
  `gpson` tinyint(1) DEFAULT '0',
  `doublexp` int(10) DEFAULT '0',
  `couriercooldown` int(10) DEFAULT '0',
  `pizzacooldown` int(10) DEFAULT '0',
  `detectivecooldown` int(10) DEFAULT '0',
  `gascan` tinyint(1) DEFAULT NULL,
  `duty` int(1) DEFAULT NULL,
  `bandana` tinyint(10) DEFAULT NULL,
  `login_date` date DEFAULT NULL,
  `FormerAdmin` tinyint(3) NOT NULL DEFAULT '0',
  `customtitle` varchar(128) NOT NULL,
  `customcolor` int(10) NOT NULL DEFAULT '-256',
  `scanneron` tinyint(1) DEFAULT '0',
  `rimkits` int(10) DEFAULT '0',
  `bodykits` int(10) DEFAULT '0',
  `policescanner` tinyint(1) DEFAULT '0',
  `firstaid` int(10) DEFAULT '0',
  `extraSongs` int(11) NOT NULL DEFAULT '0',
  `top10` tinyint(1) NOT NULL DEFAULT '1',
  `totalfires` int(10) DEFAULT '0',
  `totalpatients` int(10) DEFAULT '0',
  `money_earned` bigint(20) DEFAULT '0',
  `money_spent` bigint(20) DEFAULT '0',
  `rope` int(10) DEFAULT '0',
  `insurance` tinyint(1) DEFAULT '0',
  `adminhide` tinyint(1) DEFAULT '0',
  `passportphone` int(10) DEFAULT '0',
  `passportskin` smallint(3) DEFAULT '0',
  `passportlevel` int(10) DEFAULT '0',
  `passportname` varchar(24) DEFAULT 'None',
  `passport` tinyint(1) DEFAULT '0',
  `globalmutetime` int(10) DEFAULT '0',
  `reportmutetime` int(10) DEFAULT '0',
  `newbiemutetime` int(10) DEFAULT '0',
  `togglereports` tinyint(1) DEFAULT '0',
  `thiefcooldown` int(10) DEFAULT '0',
  `crackcooldown` int(10) DEFAULT '0',
  `laborupgrade` int(10) DEFAULT '0',
  `scripter` tinyint(1) DEFAULT '0',
  `factionleader` tinyint(1) DEFAULT '0',
  `thiefskill` int(10) DEFAULT '0',
  `togglewhisper` tinyint(1) DEFAULT '0',
  `landkeys` tinyint(3) NOT NULL DEFAULT '-1',
  `rarecooldown` int(8) DEFAULT '0',
  `diamonds` smallint(5) DEFAULT '0',
  `bugged` tinyint(1) DEFAULT '0',
  `gameaffairs` tinyint(1) DEFAULT '0',
  `crew` tinyint(2) DEFAULT '-1',
  `newbies` mediumint(5) DEFAULT '0',
  `rollerskates` tinyint(2) DEFAULT '0',
  `marriedto` int(10) DEFAULT '-1',
  `humanresources` tinyint(1) DEFAULT '0',
  `complaintmod` tinyint(1) DEFAULT '0',
  `webdev` tinyint(1) DEFAULT '0',
  `graphic` tinyint(1) DEFAULT '0',
  `vehlock` tinyint(1) DEFAULT '0',
  `sprunk` int(10) DEFAULT '0',
  `truckinglevel` int(10) DEFAULT '0',
  `truckingxp` int(10) DEFAULT '0',
  `santagifts` int(10) DEFAULT '0',
  `seckey` int(11) UNSIGNED NOT NULL,
  `togglepoint` tinyint(4) NOT NULL DEFAULT '0',
  `togglepm` tinyint(1) DEFAULT '0',
  `toggleturfs` tinyint(1) DEFAULT '0',
  `togglepoints` tinyint(1) DEFAULT '0',
  `tuckinglevel` int(10) NOT NULL DEFAULT '1',
  `notoriety` int(11) DEFAULT '0',
  `thirsttimer` int(11) NOT NULL,
  `thirst` int(11) NOT NULL,
  `thrist` int(11) NOT NULL,
  `gunlicense` tinyint(2) NOT NULL DEFAULT '0',
  `togglevehicle` tinyint(2) NOT NULL DEFAULT '0',
  `housealarm` tinyint(2) NOT NULL DEFAULT '0',
  `dj` int(2) NOT NULL DEFAULT '0',
  `helmet` int(1) NOT NULL DEFAULT '0',
  `blindfold` int(1) NOT NULL DEFAULT '0',
  `Ammo1` int(12) DEFAULT '50',
  `Ammo2` int(12) DEFAULT '50',
  `Ammo3` int(12) DEFAULT '50',
  `Ammo4` int(12) DEFAULT '50',
  `Ammo5` int(12) DEFAULT '50',
  `Ammo6` int(12) DEFAULT '50',
  `Ammo7` int(12) DEFAULT '50',
  `Ammo8` int(12) DEFAULT '50',
  `Ammo9` int(12) DEFAULT '50',
  `Ammo10` int(12) DEFAULT '50',
  `Ammo11` int(12) DEFAULT '50',
  `Ammo12` int(12) DEFAULT '50',
  `Ammo13` int(12) DEFAULT '50',
  `weapon_13` int(12) DEFAULT '0',
  `HungerDeathTimer` int(11) NOT NULL DEFAULT '0',
  `Hunger` int(11) NOT NULL DEFAULT '50',
  `HungerTimer` int(11) NOT NULL DEFAULT '0',
  `spawnhouse` int(11) NOT NULL DEFAULT '-1',
  `spawntype` int(11) NOT NULL DEFAULT '0',
  `chatstyle` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;


-- --------------------------------------------------------

--
-- Table structure for table `impoundlots`
--

CREATE TABLE `impoundlots` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

ALTER TABLE `impoundlots`
  ADD KEY `id` (`id`);

ALTER TABLE `impoundlots`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

-- --------------------------------------------------------

--
-- Table structure for table `vehicles`
--

CREATE TABLE `vehicles` (
  `id` int(10) NOT NULL,
  `ownerid` int(10) DEFAULT '0',
  `owner` varchar(24) DEFAULT 'Nobody',
  `modelid` smallint(3) DEFAULT '0',
  `price` int(10) DEFAULT '0',
  `tickets` int(10) DEFAULT '0',
  `locked` tinyint(1) DEFAULT '0',
  `plate` varchar(32) DEFAULT 'None',
  `fuel` tinyint(3) DEFAULT '100',
  `health` float DEFAULT '1000',
  `pos_x` float DEFAULT '0',
  `pos_y` float DEFAULT '0',
  `pos_z` float DEFAULT '0',
  `pos_a` float DEFAULT '0',
  `color1` smallint(3) DEFAULT '0',
  `color2` smallint(3) DEFAULT '0',
  `paintjob` tinyint(2) DEFAULT '-1',
  `interior` tinyint(2) DEFAULT '0',
  `world` int(10) DEFAULT '0',
  `neon` smallint(5) DEFAULT '0',
  `neonenabled` tinyint(1) DEFAULT '0',
  `trunk` tinyint(1) DEFAULT '0',
  `mod_1` smallint(4) DEFAULT '0',
  `mod_2` smallint(4) DEFAULT '0',
  `mod_3` smallint(4) DEFAULT '0',
  `mod_4` smallint(4) DEFAULT '0',
  `mod_5` smallint(4) DEFAULT '0',
  `mod_6` smallint(4) DEFAULT '0',
  `mod_7` smallint(4) DEFAULT '0',
  `mod_8` smallint(4) DEFAULT '0',
  `mod_9` smallint(4) DEFAULT '0',
  `mod_10` smallint(4) DEFAULT '0',
  `mod_11` smallint(4) DEFAULT '0',
  `mod_12` smallint(4) DEFAULT '0',
  `mod_13` smallint(4) DEFAULT '0',
  `mod_14` smallint(4) DEFAULT '0',
  `cash` int(10) DEFAULT '0',
  `materials` int(10) DEFAULT '0',
  `weed` int(10) DEFAULT '0',
  `cocaine` int(10) DEFAULT '0',
  `meth` int(10) DEFAULT '0',
  `painkillers` int(10) DEFAULT '0',
  `weapon_1` tinyint(2) DEFAULT '0',
  `weapon_2` tinyint(2) DEFAULT '0',
  `weapon_3` tinyint(2) DEFAULT '0',
  `ammo_1` smallint(5) DEFAULT '0',
  `ammo_2` smallint(5) DEFAULT '0',
  `ammo_3` smallint(5) DEFAULT '0',
  `gangid` tinyint(2) DEFAULT '-1',
  `factiontype` tinyint(2) DEFAULT '0',
  `vippackage` tinyint(2) NOT NULL DEFAULT '0',
  `job` tinyint(2) DEFAULT '-1',
  `respawndelay` int(10) DEFAULT '0',
  `pistolammo` smallint(5) DEFAULT '0',
  `shotgunammo` smallint(5) DEFAULT '0',
  `smgammo` smallint(5) DEFAULT '0',
  `arammo` smallint(5) DEFAULT '0',
  `rifleammo` smallint(5) DEFAULT '0',
  `hpammo` smallint(5) DEFAULT '0',
  `poisonammo` smallint(5) DEFAULT '0',
  `fmjammo` smallint(5) DEFAULT '0',
  `alarm` tinyint(2) NOT NULL DEFAULT '0',
  `weapon_4` tinyint(2) NOT NULL DEFAULT '0',
  `weapon_5` tinyint(2) NOT NULL DEFAULT '0',
  `siren` tinyint(2) DEFAULT '0',
  `rank` tinyint(3) DEFAULT '0',
  `carImpounded` int(12) DEFAULT '0',
  `carImpoundPrice` int(12) DEFAULT '0',
  `forsaleprice` int(11) NOT NULL DEFAULT '0',
  `forsale` int(11) NOT NULL DEFAULT '0',
  `mileage` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `weapons`
--

CREATE TABLE `weapons` (
  `uid` int(10) DEFAULT NULL,
  `slot` tinyint(2) DEFAULT NULL,
  `weaponid` tinyint(2) DEFAULT NULL,
  `ammo` smallint(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `achievements`
--
ALTER TABLE `achievements`
  ADD UNIQUE KEY `uid` (`uid`,`achievement`) USING BTREE;

--
-- Indexes for table `actordb`
--
ALTER TABLE `actordb`
  ADD PRIMARY KEY (`ID`) USING BTREE;

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD UNIQUE KEY `uid` (`uid`) USING BTREE;

--
-- Indexes for table `arrestpoints`
--
ALTER TABLE `arrestpoints`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bans`
--
ALTER TABLE `bans`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `businesses`
--
ALTER TABLE `businesses`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `changes`
--
ALTER TABLE `changes`
  ADD UNIQUE KEY `slot` (`slot`) USING BTREE;

--
-- Indexes for table `charges`
--
ALTER TABLE `charges`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `clothing`
--
ALTER TABLE `clothing`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `crews`
--
ALTER TABLE `crews`
  ADD UNIQUE KEY `id` (`id`,`crewid`) USING BTREE;

--
-- Indexes for table `divisions`
--
ALTER TABLE `divisions`
  ADD UNIQUE KEY `id` (`id`,`divisionid`) USING BTREE;

--
-- Indexes for table `entrances`
--
ALTER TABLE `entrances`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `factionlockers`
--
ALTER TABLE `factionlockers`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `factionpay`
--
ALTER TABLE `factionpay`
  ADD UNIQUE KEY `id` (`id`,`rank`) USING BTREE;

--
-- Indexes for table `factionranks`
--
ALTER TABLE `factionranks`
  ADD UNIQUE KEY `id` (`id`,`rank`) USING BTREE;

--
-- Indexes for table `factions`
--
ALTER TABLE `factions`
  ADD UNIQUE KEY `id` (`id`) USING BTREE;

--
-- Indexes for table `factionskins`
--
ALTER TABLE `factionskins`
  ADD UNIQUE KEY `id` (`id`,`slot`) USING BTREE;

--
-- Indexes for table `flags`
--
ALTER TABLE `flags`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `furniture`
--
ALTER TABLE `furniture`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `gangranks`
--
ALTER TABLE `gangranks`
  ADD UNIQUE KEY `id` (`id`,`rank`) USING BTREE;

--
-- Indexes for table `gangskins`
--
ALTER TABLE `gangskins`
  ADD UNIQUE KEY `id` (`id`,`slot`) USING BTREE;

--
-- Indexes for table `gangsold`
--
ALTER TABLE `gangsold`
  ADD UNIQUE KEY `id` (`id`) USING BTREE;

--
-- Indexes for table `garages`
--
ALTER TABLE `garages`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `graffiti`
--
ALTER TABLE `graffiti`
  ADD PRIMARY KEY (`graffitiID`) USING BTREE;

--
-- Indexes for table `gunracks`
--
ALTER TABLE `gunracks`
  ADD PRIMARY KEY (`rackID`);

--
-- Indexes for table `houses`
--
ALTER TABLE `houses`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `kills`
--
ALTER TABLE `kills`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `landobjects`
--
ALTER TABLE `landobjects`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `lands`
--
ALTER TABLE `lands`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `log_admin`
--
ALTER TABLE `log_admin`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `log_bans`
--
ALTER TABLE `log_bans`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `log_cheat`
--
ALTER TABLE `log_cheat`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `log_command`
--
ALTER TABLE `log_command`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `log_contracts`
--
ALTER TABLE `log_contracts`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `log_cp`
--
ALTER TABLE `log_cp`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `log_dicebet`
--
ALTER TABLE `log_dicebet`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `log_faction`
--
ALTER TABLE `log_faction`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `log_gang`
--
ALTER TABLE `log_gang`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `log_give`
--
ALTER TABLE `log_give`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `log_givecookie`
--
ALTER TABLE `log_givecookie`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `log_givegun`
--
ALTER TABLE `log_givegun`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `log_givemoney`
--
ALTER TABLE `log_givemoney`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `log_makeadmin`
--
ALTER TABLE `log_makeadmin`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `log_makehelper`
--
ALTER TABLE `log_makehelper`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `log_namechanges`
--
ALTER TABLE `log_namechanges`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `log_namehistory`
--
ALTER TABLE `log_namehistory`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `log_property`
--
ALTER TABLE `log_property`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `log_punishments`
--
ALTER TABLE `log_punishments`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `log_referrals`
--
ALTER TABLE `log_referrals`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `log_setstat`
--
ALTER TABLE `log_setstat`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `log_vip`
--
ALTER TABLE `log_vip`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `phonebook`
--
ALTER TABLE `phonebook`
  ADD UNIQUE KEY `number` (`number`) USING BTREE;

--
-- Indexes for table `playerbackpack`
--
ALTER TABLE `playerbackpack`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `points`
--
ALTER TABLE `points`
  ADD UNIQUE KEY `id` (`id`) USING BTREE;

--
-- Indexes for table `radiostations`
--
ALTER TABLE `radiostations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rp_atms`
--
ALTER TABLE `rp_atms`
  ADD PRIMARY KEY (`atmID`);

--
-- Indexes for table `rp_contacts`
--
ALTER TABLE `rp_contacts`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `rp_dealercars`
--
ALTER TABLE `rp_dealercars`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Company` (`Company`);

--
-- Indexes for table `rp_furniture`
--
ALTER TABLE `rp_furniture`
  ADD PRIMARY KEY (`fID`),
  ADD KEY `fHouseID` (`fHouseID`);

--
-- Indexes for table `rp_gundamages`
--
ALTER TABLE `rp_gundamages`
  ADD UNIQUE KEY `Weapon` (`Weapon`);

--
-- Indexes for table `rp_payphones`
--
ALTER TABLE `rp_payphones`
  ADD PRIMARY KEY (`phID`);

--
-- Indexes for table `shots`
--
ALTER TABLE `shots`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `speedcameras`
--
ALTER TABLE `speedcameras`
  ADD PRIMARY KEY (`speedID`);

--
-- Indexes for table `texts`
--
ALTER TABLE `texts`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `turfs`
--
ALTER TABLE `turfs`
  ADD UNIQUE KEY `id` (`id`) USING BTREE;

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`uid`) USING BTREE;

--
-- Indexes for table `vehicles`
--
ALTER TABLE `vehicles`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `weapons`
--
ALTER TABLE `weapons`
  ADD UNIQUE KEY `uid` (`uid`,`slot`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `arrestpoints`
--
ALTER TABLE `arrestpoints`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bans`
--
ALTER TABLE `bans`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `businesses`
--
ALTER TABLE `businesses`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `charges`
--
ALTER TABLE `charges`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `clothing`
--
ALTER TABLE `clothing`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `entrances`
--
ALTER TABLE `entrances`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `factionlockers`
--
ALTER TABLE `factionlockers`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `flags`
--
ALTER TABLE `flags`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `furniture`
--
ALTER TABLE `furniture`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `garages`
--
ALTER TABLE `garages`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `graffiti`
--
ALTER TABLE `graffiti`
  MODIFY `graffitiID` int(12) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gunracks`
--
ALTER TABLE `gunracks`
  MODIFY `rackID` int(12) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `houses`
--
ALTER TABLE `houses`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kills`
--
ALTER TABLE `kills`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `landobjects`
--
ALTER TABLE `landobjects`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lands`
--
ALTER TABLE `lands`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `locations`
--
ALTER TABLE `locations`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `log_admin`
--
ALTER TABLE `log_admin`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `log_bans`
--
ALTER TABLE `log_bans`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `log_cheat`
--
ALTER TABLE `log_cheat`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `log_command`
--
ALTER TABLE `log_command`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `log_contracts`
--
ALTER TABLE `log_contracts`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `log_cp`
--
ALTER TABLE `log_cp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `log_dicebet`
--
ALTER TABLE `log_dicebet`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `log_faction`
--
ALTER TABLE `log_faction`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `log_gang`
--
ALTER TABLE `log_gang`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `log_give`
--
ALTER TABLE `log_give`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `log_givecookie`
--
ALTER TABLE `log_givecookie`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `log_givegun`
--
ALTER TABLE `log_givegun`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `log_givemoney`
--
ALTER TABLE `log_givemoney`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `log_makeadmin`
--
ALTER TABLE `log_makeadmin`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `log_makehelper`
--
ALTER TABLE `log_makehelper`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `log_namechanges`
--
ALTER TABLE `log_namechanges`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `log_namehistory`
--
ALTER TABLE `log_namehistory`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `log_property`
--
ALTER TABLE `log_property`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `log_punishments`
--
ALTER TABLE `log_punishments`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `log_referrals`
--
ALTER TABLE `log_referrals`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `log_setstat`
--
ALTER TABLE `log_setstat`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `log_vip`
--
ALTER TABLE `log_vip`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `playerbackpack`
--
ALTER TABLE `playerbackpack`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `radiostations`
--
ALTER TABLE `radiostations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rp_atms`
--
ALTER TABLE `rp_atms`
  MODIFY `atmID` int(12) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rp_contacts`
--
ALTER TABLE `rp_contacts`
  MODIFY `ID` int(12) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rp_dealercars`
--
ALTER TABLE `rp_dealercars`
  MODIFY `ID` int(12) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rp_furniture`
--
ALTER TABLE `rp_furniture`
  MODIFY `fID` int(12) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rp_payphones`
--
ALTER TABLE `rp_payphones`
  MODIFY `phID` int(12) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shots`
--
ALTER TABLE `shots`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `speedcameras`
--
ALTER TABLE `speedcameras`
  MODIFY `speedID` int(12) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `texts`
--
ALTER TABLE `texts`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `uid` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vehicles`
--
ALTER TABLE `vehicles`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
