-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 25, 2022 at 03:43 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hospital`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `acount` (IN `acc_name` VARCHAR(40), IN `ac_institution` VARCHAR(40), IN `ac_blance` DOUBLE, IN `oper` VARCHAR(40), IN `id` INT)  BEGIN
case 
when oper = 'insert' THEN
if EXISTS (select * from accounts where  ac_name = acc_name) then 
select concat('alredy extis') as msg;
else 
insert into accounts values(null,acc_name,ac_institution,ac_blance);
SELECT 'insert is done' as msg;
end if;
when oper = 'update' THEN
IF EXISTS (select * from accounts where acc_no=id) THEN
update accounts set ac_name = acc_name,institution=ac_institution,balance=ac_blance where acc_no = id;
select 'update is Done' as msg;
else 
select concat('ID ',id,' is not exist') as msg;
end if;
when oper = 'Delete' THEN
if EXISTS(select * from accounts where acc_no=id)then 
DELETE from accounts where acc_no=id;
select 'delted success' as msg;
else
select concat('ID ',id,' is not exist') as msg;
end if;
end case;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `adress` (IN `ad_District` VARCHAR(40), IN `ad_village` VARCHAR(40), IN `ad_area` VARCHAR(40), IN `oper` VARCHAR(40), IN `id` INT)  BEGIN
case 
when oper = 'insert' THEN
if EXISTS (select * from address where  village = ad_village) then 
select concat('alredy extis') as msg;
else 
insert into address values(null,ad_District,ad_village,ad_area);
SELECT 'insert is done' as msg;
end if;
when oper = 'update' THEN
IF EXISTS (select * from address where ad_no=id) THEN
update address set District = ad_District,village=ad_village,area=ad_area where ad_no = id;
select 'update is Done' as msg;
else 
select concat('ID ',id,' is not exist') as msg;
end if;
when oper = 'Delete' THEN
if EXISTS(select * from address where ad_no=id)then 
DELETE from address where ad_no=id;
select 'delted success' as msg;
else
select concat('ID ',id,' is not exist') as msg;
end if;
end case;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `adress_view` ()  SELECT ad_no id,District,village xafad , area  FROM address$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `bill` (IN `p_no` INT, IN `amount` VARCHAR(40), IN `descriptions` VARCHAR(40), IN `taqrikh` DATE, IN `oper` VARCHAR(40), IN `id` INT)  BEGIN 
case 
when oper = 'insert'then 
if EXISTS(select * from bills where p_no_fk=p_no )then 
select concat('alredy extis') as msg;
else 
insert into bills VALUES(null,p_no,amount,descriptions,taqrikh);
select 'inserted seccess!' as msg;
end if;
when oper = 'update' then 
if EXISTS(select * from bills where bl_no = id) THEN
update bills set p_no_fk = p_no,bl_amount = amount,description = descriptions , bl_date = taqrikh where bl_no = id ;
select 'update seccess!' as msg;
else 
select concat('ID',id,'is not exits') as msg;
end if;
when oper = 'Delete' then 
if EXISTS(select * from bills where bl_no = id) THEN
DELETE from bills where bl_no = id;
SELECT 'delete seccess!' as msg;
else 
select concat('ID',id,'is not exits') as msg;
end if;
end case;
end$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `booqasho` (IN `em_no` INT, IN `p_no` INT, IN `Vdate` DATE, IN `oper` VARCHAR(40), IN `id` INT)  BEGIN
case 
when oper = 'insert'then 

insert into  visit values(null,em_no,p_no,Vdate);
select 'inserted seccess!' as msg;

when oper = 'update' then 
if EXISTS(SELECT * from visit where v_no = id)then 
update  visit set em_no_fk = em_no, p_no_fk = p_no, v_date=Vdate  where  v_no = id;
SELECT 'update seccess!' as msg;
else 
select concat('ID ',id,'is not exit') as msg;
end if;
when oper = 'Delete' then
if EXISTS(SELECT * from  visit where  v_no = id)then 
DELETE from  visit where  v_no = id;
SELECT 'Delete seccess!' as msg;
else 
select concat('ID',id,'is not exit') as msg;
end if;
end case;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `bukan` (IN `name` VARCHAR(40), IN `tell` VARCHAR(40), IN `sex` VARCHAR(40), IN `tarrikh` DATE, IN `ad_no` INT, IN `oper` VARCHAR(40), IN `id` INT)  BEGIN
case 
when oper = 'insert' then 
if EXISTS (select * from patient where p_tell=tell)then 
select concat('alredy extis') as msg;
else 
insert into patient VALUES(null,name,tell,sex,tarrikh,ad_no);
select 'inserted seccess!' as msg;
end if;
when oper='update'then 
if exists(select * from patient where p_no=id)then
update patient set p_name=name,p_tell=tell,p_sex=sex,p_brith_date=tarrikh,p_ad_no_fk=ad_no where p_no = id;
select 'update seccess!' as msg;
else 
select concat('ID',id,'majiro!') as msg;
end if;
when oper = 'Delete' then 
if exists(select * from patient where p_no=id)then 
DELETE from patient where p_no=id;
select 'delete succes!' as msg;
else 
select concat('ID',id,'majiro wllo')as msg;
end if;
end case;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `categoris` (IN `catName` VARCHAR(40), IN `oper` VARCHAR(401), IN `id` INT)  BEGIN
CASE
when oper = 'insert'THEN
if EXISTS(select * from categories where cat_name=catName)THEN
select concat('alredy extis') as msg;
else 
insert into categories VALUES (null,catName);
SELECT 'insert is succsess!' as msg;
end if;
when oper = 'update' then
if EXISTS(select * from categories where cat_no=id)THEN
update categories set cat_name=catName where cat_no=id;
select 'update secess!' as msg;
else 
select concat ('ID',id,'is not exits') as msg;
end if;
when oper='Delete'then
if EXISTS (select * from categories where cat_no=id)then
DELETE  FROM categories where cat_no=id;
select 'delete sucsess!' as msg;
else 
select concat ('ID',id,'is not exits');
end if;
end CASE;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `checkM` (IN `name` VARCHAR(40), IN `cat_no` INT, IN `oper` VARCHAR(40), IN `id` INT)  BEGIN
case 
when oper = 'insert'then 
if EXISTS(select * from checkment where ck_name = name) then 
select concat('alredy extis') as msg;
else 
insert into checkment values(null,name,cat_no);
select 'inserted seccess!' as msg;
end if;
when oper = 'update' then 
if EXISTS(SELECT * from checkment where ck_no = id)then 
update checkment set ck_name=name,cat_no_fk=cat_no  where ck_no=id;
SELECT 'update seccess!' as msg;
else 
select concat('ID',id,'is not exit') as msg;
end if;
when oper = 'Delete' then
if EXISTS(SELECT * from checkment where ck_no = id)then 
DELETE from checkment where ck_no = id;
SELECT 'Delete seccess!' as msg;
else 
select concat('ID',id,'is not exit') as msg;
end if;
end case;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `daawo` (IN `v_no` INT, IN `pr_magac` VARCHAR(40), IN `pr_desc` VARCHAR(40), IN `oper` VARCHAR(40), IN `id` INT)  BEGIN
case 
when oper = 'insert'then 
if EXISTS(select * from prescription where pr_name =  pr_magac) then 
select concat('alredy extis') as msg;
else 
insert into prescription values(null,v_no,pr_magac,pr_desc);
select 'inserted seccess!' as msg;
end if;
when oper = 'update' then 
if EXISTS(SELECT * from prescription where pr_no = id)then 
update prescription set v_no_fk = v_no,pr_name=pr_magac,description=pr_desc where pr_no=id;
SELECT 'update seccess!' as msg;
else 
select concat('ID',id,'is not exit') as msg;
end if;
when oper = 'Delete' then
if EXISTS(SELECT * from prescription where pr_no = id)then 
DELETE from prescription where pr_no = id;
SELECT 'Delete seccess!' as msg;
else 
select concat('ID',id,'is not exit') as msg;
end if;
end case;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `joptitle` (IN `magac` VARCHAR(40), IN `oper` VARCHAR(40), IN `id` INT)  BEGIN
case 
when oper = 'insert'then 
if EXISTS(select * from title where ti_name = magac)then
select concat(magac,'  ','already exits') as msg;
else 
insert into title VALUES(null,magac);
select 'insert seccess!' as msg;
end if;
when oper = 'update' then 
if EXISTS(select * from title where ti_no = id) then 
update title set ti_name=magac where ti_no = id;
select 'update seccess!' as msg;
else 
select concat('ID',id,'is not exit') as msg;
end if;
when oper = 'Delete'then 
if EXISTS (select * from title where ti_no = id)then 
DELETE from title where ti_no = id;
SELECT 'deleted seccess!' as msg;
else 
select concat('ID',id,'is not exit') as msg;
end if;
end case;
end$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `patientReport` ()  BEGIN
CREATE TEMPORARY TABLE billPaeint as SELECT p_no, p_name,p_tell,sum(bl_amount) billAmount, bl_date from bills bl , patient p where bl.p_no_fk=p.p_no GROUP by p_name;

CREATE TEMPORARY TABLE receiptPaeint as  SELECT p_no, p_name ,p_tell ,sum(amount) receptAmount , rec_date from receipt r ,patient p where r.p_no_fk=p.p_no group by p_name;

SELECT b.p_name,b.p_tell,billAmount ,ifnull(receptAmount,0) receptAmount , ifnull(billAmount-receptAmount,billAmount) balance from billPaeint b left join receiptPaeint r on b.p_no=r.p_no order by p_name;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `patient_checkM` (IN `v_no` INT, IN `ck_no` INT, IN `jawab` VARCHAR(40), IN `p_description` VARCHAR(40), IN `oper` VARCHAR(40), IN `id` INT)  BEGIN
case 
when oper = 'insert'then 
if EXISTS(select * from patient_checkment where v_no_fk = v_no and ck_no_fk = ck_no ) then 
select concat('alredy extis') as msg;
else 
insert into  patient_checkment values(null,v_no,ck_no,jawab,p_description);
select 'inserted seccess!' as msg;
end if;
when oper = 'update' then 
if EXISTS(SELECT * from patient_checkment where pc_no = id)then 
update  patient_checkment set v_no_fk = v_no,ck_no_fk = ck_no, result=jawab,description = p_description  where pc_no =id;
SELECT 'update seccess!' as msg;
else 
select concat('ID',id,'is not exit') as msg;
end if;
when oper = 'Delete' then
if EXISTS(SELECT * from  patient_checkment where pc_no = id)then 
DELETE from  patient_checkment where pc_no = id;
SELECT 'Delete seccess!' as msg;
else 
select concat('ID',id,'is not exit') as msg;
end if;
end case;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `receip` (IN `p_no` INT, IN `ac_no` INT, IN `lacag` VARCHAR(40), IN `tariq` DATE, IN `oper` VARCHAR(40), IN `id` INT)  BEGIN 
case 
when oper = 'insert' then 
if EXISTS(select * from receipt where p_no_fk=p_no and acc_no_fk=ac_no and amount = lacag)then 
select concat('alredy extis') as msg;
else 
insert into receipt values(null,p_no,ac_no,lacag,tariq);
select 'inserted secess!' as msg;
end if;
when oper = 'update' then 
IF EXISTS(select * from receipt where rec_no=id)then 
update receipt set p_no_fk=p_no,acc_no_fk=ac_no,amount=lacag,rec_date=tariq where rec_no=id;
SELECT 'update secess!' as msg;
else 
select concat('ID',id,'is not exits!')as msg;
end if;
when oper = 'Delete' then 
IF EXISTS(select * from receipt where rec_no=id)then 
DELETE from receipt where rec_no=id;
select 'delete seccess!' as msg;
else
select concat('ID',id,'is not exits!')as msg;
end if;
end case;
end$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `shaqaale` (IN `name` VARCHAR(40), IN `tell` VARCHAR(40), IN `sex` VARCHAR(40), IN `ad_no` INT, IN `t_no` INT, IN `sp_no` INT, IN `oper` VARCHAR(40), IN `id` INT)  BEGIN
case 
when oper = 'insert'then 
if EXISTS(select * from employee where em_tell = tell) then 
select concat('alredy extis') as msg;
else 
insert into employee values(null,name,tell,sex,ad_no,t_no,sp_no);
select 'inserted seccess!' as msg;
end if;
when oper = 'update' then 
if EXISTS(SELECT * from employee where em_no = id)then 
update employee set em_name=name,em_tell=tell,em_sex=sex,ad_no_fk=ad_no,t_no_fk=t_no,sp_no_fk=sp_no where em_no=id;
SELECT 'update seccess!' as msg;
else 
select concat('ID',id,'is not exit') as msg;
end if;
when oper = 'Delete' then
if EXISTS(SELECT * from employee where em_no = id)then 
DELETE from employee where em_no = id;
SELECT 'Delete seccess!' as msg;
else 
select concat('ID',id,'is not exit') as msg;
end if;
end case;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `specilization` (IN `spName` VARCHAR(40), IN `qeex` VARCHAR(40), IN `oper` VARCHAR(40), IN `id` INT)  BEGIN
CASE 
when oper = 'insert'THEN
if EXISTS(select * from specialization where sp_name=spName)then 
select concat('alredy extis') as msg;
else 
insert into specialization VALUES(null,spName,qeex);
select 'iserted secess!' as msg;
end if;
when oper = 'update' then
if EXISTS(SELECT * from specialization where sp_no=id)then
UPDATE specialization set sp_name = spName,description=qeex where sp_no=id;
select 'update Secsess!' as msg;
else 
select concat('ID',id,'majiro wllo');
end if;
when oper = 'Delete' THEN
if EXISTS(select * from specialization where sp_no=id)then 
DELETE from specialization where sp_no=id;
select 'delted success' as msg;
else
select concat('ID ',id,' is not exist') as msg;
end if;
end CASE;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `statement` (IN `magac` VARCHAR(50))  begin
create TEMPORARY table dalacaad as select p_name,p_tell, p_sex, bl_date tariikh, bl_amount  Dr, 0 Cr from patient p, bills b where p.p_no=b.p_no_fk;
insert into dalacaad SELECT p_name,p_tell, p_sex, r.rec_date tariikh, 0 Dr, r.amount Cr from patient p, receipt r where p.p_no=r.p_no_fk;
if(magac="") then
set @bal=0;
SELECT p_name, p_tell, p_sex,tariikh,Dr,Cr, @bal:=@bal+(Dr-Cr) balance from dalacaad  order by tariikh ;
else 
set @bal=0;
SELECT p_name, p_tell, p_sex,tariikh,Dr,Cr, @bal:=@bal+(Dr-Cr) balance from dalacaad where p_name=magac order by tariikh ;
end if;
end$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `userss` (IN `u_id` INT, IN `magac` VARCHAR(40), IN `u_name` VARCHAR(40), IN `userType` VARCHAR(40), IN `pass` VARCHAR(40), IN `oper` VARCHAR(40))  BEGIN
case 
when oper = 'insert'then 
if EXISTS(select * from users where name = magac and username=u_name and password = pass)then 
select ('already exits') as msg;
else 
insert into users VALUES(null,magac,u_name,userType,pass);
select concat('insert secess!') as msg;
end if;
when oper = 'update' then
if EXISTS(select * from users where id = u_id) then 
update users set name = magac,username=u_name, userType = userType,password = pass where id = u_id;
select concat('update secess!') as msg;
else 
select concat ('ID',u_id,'is not exit') as msg;
end if;
when oper = 'delete' then
if EXISTS(select * from users where id = u_id) then 
DELETE from  users  where id = u_id;
select concat('Delete secess!') as msg;
else 
select concat ('ID',u_id,'is not exit') as msg;
end if;
end case;
end$$

--
-- Functions
--
CREATE DEFINER=`root`@`localhost` FUNCTION `getBalance` (`num` INT) RETURNS DOUBLE BEGIN 
select sum(bl_amount) into @bil from bills b , patient p where b.p_no_fk = p.p_no and p.p_no = num;
select sum(amount) into @rep from receipt r , patient p where r.p_no_fk = p.p_no and p.p_no = num;
set @bal=@bil-@rep;
return @bal;
end$$

CREATE DEFINER=`root`@`localhost` FUNCTION `getBills` (`num` INT) RETURNS DOUBLE BEGIN 
SELECT sum(bl_amount) billsAmount INTO @bil from bills b , patient p WHERE b.p_no_fk=p.p_no;
RETURN @bil;
END$$

CREATE DEFINER=`root`@`localhost` FUNCTION `getReceipt` (`num` INT) RETURNS DOUBLE BEGIN 
SELECT sum(amount) receiptAmount INTO @rep from receipt r, patient p WHERE r.p_no_fk=p.p_no;
RETURN @rep;
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `acc_no` int(11) NOT NULL,
  `ac_name` varchar(40) NOT NULL,
  `institution` varchar(40) NOT NULL,
  `balance` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`acc_no`, `ac_name`, `institution`, `balance`) VALUES
(1, '547367584687', 'Som Bank', 3090),
(2, '78902567', 'IBS-Bank', 112),
(3, '67839227', 'salam-Bank', 300),
(4, '67839227', 'amal-Bank', 250),
(7, '444', 'salam-Bank', 400),
(10, '6789812', 'myBank', 0),
(11, '785240', 'salam-bank', 31);

-- --------------------------------------------------------

--
-- Stand-in structure for view `accounts_view`
-- (See below for the actual view)
--
CREATE TABLE `accounts_view` (
`id` int(11)
,`AccountName` varchar(40)
,`BankName` varchar(40)
,`Total` double
);

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `ad_no` int(11) NOT NULL,
  `District` varchar(40) NOT NULL,
  `village` varchar(40) NOT NULL,
  `area` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `address`
--

INSERT INTO `address` (`ad_no`, `District`, `village`, `area`) VALUES
(1, 'hodan', 'taleex', 'cabdi-qasim'),
(2, 'hhhh', 'vvvvv', 'zzzzzzz'),
(3, 'huraa', 'suuqa-xolaha', 'jiliyaale'),
(4, 'yaqshiid', 'juungal', 'xeelobariis'),
(5, 'wabiri', 'koodka', 'unishiife'),
(7, 'xamar-wayn', 'viyoRoma', 'viyoAjito'),
(10, 'hoden', 'taleex', 'werd'),
(11, 'dharkaynle', 'nasteexo', 'maska'),
(12, 'boondheere', 'bon', 'xaaji dheere'),
(13, 'kaaran', 'kar', 'hhyy'),
(15, 'jhhjhj', '7878', 'hjhjh'),
(18, 'waa bari', 'hh', '9'),
(19, 'yaashqiid', 'juugal', 'towqif'),
(24, 'hodnnnnn', 'taleexxx', 'muscab');

-- --------------------------------------------------------

--
-- Stand-in structure for view `address_view`
-- (See below for the actual view)
--
CREATE TABLE `address_view` (
`id` int(11)
,`dagmo` varchar(40)
,`xafad` varchar(40)
,`area` varchar(40)
);

-- --------------------------------------------------------

--
-- Table structure for table `bills`
--

CREATE TABLE `bills` (
  `bl_no` int(11) NOT NULL,
  `p_no_fk` int(11) NOT NULL,
  `bl_amount` double NOT NULL,
  `description` varchar(100) NOT NULL,
  `bl_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bills`
--

INSERT INTO `bills` (`bl_no`, `p_no_fk`, `bl_amount`, `description`, `bl_date`) VALUES
(3, 8, 20, 'wxa rabto iska gali', '2021-05-02'),
(4, 1, 50, 'waxan qabtay', '2021-04-09'),
(5, 9, 100, 'waxan qabtay', '2021-04-03'),
(7, 12, 100, 'hhhhhhhhhhhh', '2021-10-20'),
(8, 5, 120, 'gsh', '2021-10-12'),
(9, 3, 100, 'husni', '2021-10-04'),
(10, 13, 90, 'haji', '2021-10-03'),
(11, 12, 200, 'hamiid', '2021-10-08'),
(12, 1, 30, 'yahye', '2021-10-05'),
(13, 14, 200, 'daawo', '2022-01-20'),
(14, 16, 1, 'bbbb', '2022-03-28');

-- --------------------------------------------------------

--
-- Stand-in structure for view `bills_view`
-- (See below for the actual view)
--
CREATE TABLE `bills_view` (
`id` int(11)
,`bukan` varchar(40)
,`Money` double
,`faahfahin` varchar(100)
,`taariikh` date
);

-- --------------------------------------------------------

--
-- Table structure for table `bixin`
--

CREATE TABLE `bixin` (
  `id` int(11) NOT NULL DEFAULT 0,
  `p_name` varchar(40) NOT NULL,
  `p_tell` varchar(40) NOT NULL,
  `p_sex` varchar(40) NOT NULL,
  `tariikh` date NOT NULL,
  `Dr` int(1) NOT NULL,
  `Cr` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bixin`
--

INSERT INTO `bixin` (`id`, `p_name`, `p_tell`, `p_sex`, `tariikh`, `Dr`, `Cr`) VALUES
(3, 'Aisha', '1129223', 'female', '2021-03-01', 0, 100),
(12, 'munaser ali', '79978754', 'male', '2021-03-01', 0, 80),
(5, 'Nuur', '616270801', 'male', '2021-03-01', 0, 70),
(1, 'yaxye Ali', '9019292', 'male', '2021-03-04', 0, 60),
(2, 'dayax', '4838233', 'male', '2021-11-23', 0, 50),
(5, 'Nuur', '616270801', 'male', '2021-11-18', 0, 100),
(9, 'micraaj mahad', '687543', 'female', '2021-11-23', 0, 100),
(3, 'Aisha', '1129223', 'female', '2021-03-01', 0, 100),
(12, 'munaser ali', '79978754', 'male', '2021-03-01', 0, 80),
(5, 'Nuur', '616270801', 'male', '2021-03-01', 0, 70),
(1, 'yaxye Ali', '9019292', 'male', '2021-03-04', 0, 60),
(2, 'dayax', '4838233', 'male', '2021-11-23', 0, 50),
(5, 'Nuur', '616270801', 'male', '2021-11-18', 0, 100),
(9, 'micraaj mahad', '687543', 'female', '2021-11-23', 0, 100);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_no` int(11) NOT NULL,
  `cat_name` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_no`, `cat_name`) VALUES
(2, 'qaybta haweenka'),
(3, 'qaybta uurkujirta'),
(4, 'qaybta beerka'),
(5, 'dhiig-yare'),
(6, ' salmonellaParatyphi '),
(7, 'ent'),
(8, 'qalimada');

-- --------------------------------------------------------

--
-- Stand-in structure for view `categories_view`
-- (See below for the actual view)
--
CREATE TABLE `categories_view` (
`ID` int(11)
,`CategeroyName` varchar(40)
);

-- --------------------------------------------------------

--
-- Table structure for table `checkment`
--

CREATE TABLE `checkment` (
  `ck_no` int(11) NOT NULL,
  `ck_name` varchar(40) NOT NULL,
  `cat_no_fk` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `checkment`
--

INSERT INTO `checkment` (`ck_no`, `ck_name`, `cat_no_fk`) VALUES
(1, 'Dhegta', 8),
(2, 'Tiiphoga', 6),
(3, 'infekshin', 4),
(4, 'foosha', 2),
(5, 'dhagaha', 7),
(7, 'calosha', 2),
(8, 'uurkujirta', 3),
(9, 'malariyo', 5),
(10, 'isha', 8),
(11, 'Beer Xanun', 6);

-- --------------------------------------------------------

--
-- Stand-in structure for view `checkment_view`
-- (See below for the actual view)
--
CREATE TABLE `checkment_view` (
`ID` int(11)
,`checkName` varchar(40)
,`categoriesName` varchar(40)
);

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `em_no` int(11) NOT NULL,
  `em_name` varchar(40) NOT NULL,
  `em_tell` varchar(40) NOT NULL,
  `em_sex` varchar(40) NOT NULL,
  `ad_no_fk` int(11) NOT NULL,
  `t_no_fk` int(11) NOT NULL,
  `sp_no_fk` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`em_no`, `em_name`, `em_tell`, `em_sex`, `ad_no_fk`, `t_no_fk`, `sp_no_fk`) VALUES
(1, 'Dr.Luqmaan Mohamud', '43587454', 'male', 2, 1, 12),
(2, 'mahad ahmed', '612345677', 'male', 3, 1, 3),
(3, 'abdulla moha', '765421', 'male', 3, 1, 7),
(4, 'farhia ali', '765489', 'female', 5, 2, 3),
(5, 'abdirahman mohamed', '61235678', 'male', 7, 1, 10),
(6, 'husein', '754113679', 'male', 5, 2, 8),
(7, 'muxidiin ', '6123456', 'male', 5, 1, 9),
(8, 'xajji mohamed', '61234567', 'male', 1, 1, 5),
(9, 'xafsa moha', '6123457', 'femlae', 3, 1, 4),
(10, 'farhia moha', '713255', 'female', 5, 1, 7),
(11, 'gaabow', '7827912', 'male', 15, 1, 4),
(15, 'hhh', '36746234', 'male', 1, 2, 4),
(18, 'Dr.Maa ido Hassan Farah', '46354', 'male', 1, 1, 14);

-- --------------------------------------------------------

--
-- Stand-in structure for view `employee_view`
-- (See below for the actual view)
--
CREATE TABLE `employee_view` (
`ID` int(11)
,`Docter` varchar(40)
,`Tellephone` varchar(40)
,`Gender` varchar(40)
,`Dagmo` varchar(40)
,`xaafad` varchar(40)
,`JopTitle` varchar(40)
,`Takhasus` varchar(40)
);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `code` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `name`, `email`, `password`, `code`) VALUES
(1, 'abdi', 'suldaancarab143@gmail.com', '12345', '');

-- --------------------------------------------------------

--
-- Table structure for table `login_form`
--

CREATE TABLE `login_form` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `verify_token` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `p_no` int(11) NOT NULL,
  `p_name` varchar(40) NOT NULL,
  `p_tell` varchar(40) NOT NULL,
  `p_sex` varchar(40) NOT NULL,
  `p_brith_date` date NOT NULL,
  `p_ad_no_fk` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`p_no`, `p_name`, `p_tell`, `p_sex`, `p_brith_date`, `p_ad_no_fk`) VALUES
(1, 'Ma ido Mohamud', '235423', 'male', '2022-04-15', 2),
(2, 'dayax', '4838233', 'male', '2021-04-10', 2),
(3, 'Aisha', '1129223', 'female', '2021-04-19', 1),
(5, 'Nuur', '616270801', 'male', '2021-04-20', 1),
(8, 'miski', '987543', 'female', '2021-04-30', 11),
(9, 'micraaj mahad', '687543', 'female', '2021-11-12', 5),
(10, 'qali ahmed', '7997654', 'female', '2021-11-10', 1),
(11, 'ali moahmed', '6123400', 'male', '2000-11-11', 10),
(12, 'munaser ali', '79978754', 'male', '2001-11-10', 11),
(13, 'c.fitaax mahad', '612456789', 'male', '2006-11-03', 3),
(14, 'ali maxaned', '612345678', 'male', '2022-01-30', 3),
(16, 'Hassan Farah', '4386784', 'male', '2022-03-19', 13),
(17, 'Ma ido Mohamud', '235423', 'female', '2022-04-15', 2);

-- --------------------------------------------------------

--
-- Table structure for table `patient_checkment`
--

CREATE TABLE `patient_checkment` (
  `pc_no` int(11) NOT NULL,
  `v_no_fk` int(11) NOT NULL,
  `ck_no_fk` int(11) NOT NULL,
  `result` varchar(40) NOT NULL,
  `description` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patient_checkment`
--

INSERT INTO `patient_checkment` (`pc_no`, `v_no_fk`, `ck_no_fk`, `result`, `description`) VALUES
(2, 1, 5, 'Positive', 'waan is baxnaanesaa'),
(3, 5, 8, 'Negative', 'waan is baxnaanesaa'),
(4, 9, 1, 'Negitive', 'waan is baxneenaysaa'),
(5, 7, 2, 'Positive', 'waa in daawda si fcn u qataa'),
(6, 6, 4, 'Negative', 'waa in aya is xanaanaysaa'),
(7, 7, 5, 'Postive', 'husni1'),
(8, 1, 3, 'negative', 'bbb');

-- --------------------------------------------------------

--
-- Stand-in structure for view `patient_checkment_view`
-- (See below for the actual view)
--
CREATE TABLE `patient_checkment_view` (
`ID` int(11)
,`Decter` varchar(40)
,`Bukaan` varchar(40)
,`Tariikh` date
,`checkment` varchar(40)
,`Jawaab` varchar(40)
,`description` varchar(40)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `patient_view`
-- (See below for the actual view)
--
CREATE TABLE `patient_view` (
`ID` int(11)
,`Bukan` varchar(40)
,`Tellaphone` varchar(40)
,`Gender` varchar(40)
,`Tariikhda` date
,`Dagmo` varchar(40)
,`Xafad` varchar(40)
);

-- --------------------------------------------------------

--
-- Table structure for table `prescription`
--

CREATE TABLE `prescription` (
  `pr_no` int(11) NOT NULL,
  `v_no_fk` int(11) NOT NULL,
  `pr_name` varchar(40) NOT NULL,
  `description` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `prescription`
--

INSERT INTO `prescription` (`pr_no`, `v_no_fk`, `pr_name`, `description`) VALUES
(1, 8, 'barmol', 'labo waqti cun'),
(3, 6, 'barastamol', 'sedax waqti cun'),
(4, 3, 'emokis', 'hal waqti cun'),
(5, 4, 'ekmis', 'labo waqti cun'),
(8, 7, 'barmol', 'hal waqti cun'),
(9, 2, 'farasmol', 'sedex waqti qaado');

--
-- Triggers `prescription`
--
DELIMITER $$
CREATE TRIGGER `Pres_tr` AFTER INSERT ON `prescription` FOR EACH ROW BEGIN
if not EXISTS(SELECT v_no_fk FROM prescription_s WHERE v_no_fk= new.v_no_fk) THEN
INSERT INTO prescription_s  SELECT * FROM prescription WHERE v_no_fk=new.v_no_fk;

end if;

END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Stand-in structure for view `prescription_view`
-- (See below for the actual view)
--
CREATE TABLE `prescription_view` (
`ID` int(11)
,`Dector` varchar(40)
,`Bukaan` varchar(40)
,`Taariikh` date
,`Daawo` varchar(40)
,`description` varchar(40)
);

-- --------------------------------------------------------

--
-- Table structure for table `receipt`
--

CREATE TABLE `receipt` (
  `rec_no` int(11) NOT NULL,
  `p_no_fk` int(11) NOT NULL,
  `acc_no_fk` int(11) NOT NULL,
  `amount` double NOT NULL,
  `rec_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `receipt`
--

INSERT INTO `receipt` (`rec_no`, `p_no_fk`, `acc_no_fk`, `amount`, `rec_date`) VALUES
(1, 1, 1, 70, '2022-04-01'),
(2, 12, 4, 90, '2021-03-01'),
(3, 5, 1, 70, '2021-03-01'),
(5, 1, 2, 60, '2021-03-04'),
(7, 2, 4, 50, '2021-11-23'),
(8, 5, 2, 100, '2021-11-18'),
(9, 9, 7, 100, '2021-11-23'),
(10, 2, 3, 30, '2021-12-17'),
(11, 8, 2, 12, '2022-01-25'),
(12, 14, 7, 100, '2022-01-30'),
(13, 14, 11, 11, '2022-04-08'),
(16, 5, 3, 70, '2022-05-31');

--
-- Triggers `receipt`
--
DELIMITER $$
CREATE TRIGGER `triger_rp` AFTER INSERT ON `receipt` FOR EACH ROW begin
update accounts set balance=balance+new.amount where acc_no=new.acc_no_fk;
end
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Stand-in structure for view `receipt_view`
-- (See below for the actual view)
--
CREATE TABLE `receipt_view` (
`ID` int(11)
,`Bukaan` varchar(40)
,`AccountName` varchar(40)
,`Money` double
,`Tariikh` date
);

-- --------------------------------------------------------

--
-- Table structure for table `specialization`
--

CREATE TABLE `specialization` (
  `sp_no` int(11) NOT NULL,
  `sp_name` varchar(40) NOT NULL,
  `description` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `specialization`
--

INSERT INTO `specialization` (`sp_no`, `sp_name`, `description`) VALUES
(1, 'Eye', 'Waxa uu qaabil san yahay isha'),
(3, 'cunaha', 'dhaqtar ficn'),
(4, 'maqarka', 'is good docter'),
(5, 'madax', 'waa dhaqtar fcn'),
(7, 'wadnaha', 'waxan ku soo qasheyay 2 year'),
(8, 'beerka ', 'waxaan ku suqayay '),
(9, 'cudurada guud', 'waan ku so qasheyay'),
(10, 'qaliimada', 'waa dhaqtar qibrad baden'),
(12, 'sss', 'zzz'),
(14, 'Eye', 'Waxa uu qaabil san yhy isha');

-- --------------------------------------------------------

--
-- Stand-in structure for view `specialization_view`
-- (See below for the actual view)
--
CREATE TABLE `specialization_view` (
`ID` int(11)
,`Takhasus` varchar(40)
,`description` varchar(40)
);

-- --------------------------------------------------------

--
-- Table structure for table `title`
--

CREATE TABLE `title` (
  `ti_no` int(11) NOT NULL,
  `ti_name` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `title`
--

INSERT INTO `title` (`ti_no`, `ti_name`) VALUES
(1, 'Waardiye waye'),
(2, 'nurseing'),
(3, 'nadafad'),
(6, 'manegar'),
(7, 'lab'),
(8, 'shaqaale');

-- --------------------------------------------------------

--
-- Stand-in structure for view `title_view`
-- (See below for the actual view)
--
CREATE TABLE `title_view` (
`ID` int(11)
,`TitleName` varchar(40)
);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(40) DEFAULT NULL,
  `username` varchar(40) NOT NULL,
  `userType` varchar(40) NOT NULL,
  `password` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `userType`, `password`) VALUES
(1, 'husein', 'husni', 'admin', '123'),
(2, 'abdulla', 'ab', 'User', '1234'),
(3, 'mahad', 'mhd', 'User', '123');

-- --------------------------------------------------------

--
-- Stand-in structure for view `users_view`
-- (See below for the actual view)
--
CREATE TABLE `users_view` (
`ID` int(11)
,`magac` varchar(40)
,`username` varchar(40)
,`userType` varchar(40)
,`fure_Sereed` varchar(40)
);

-- --------------------------------------------------------

--
-- Table structure for table `visit`
--

CREATE TABLE `visit` (
  `v_no` int(11) NOT NULL,
  `em_no_fk` int(11) NOT NULL,
  `p_no_fk` int(11) NOT NULL,
  `v_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `visit`
--

INSERT INTO `visit` (`v_no`, `em_no_fk`, `p_no_fk`, `v_date`) VALUES
(1, 1, 3, '2022-04-03'),
(2, 2, 2, '2021-11-05'),
(3, 3, 3, '2021-11-11'),
(4, 4, 5, '2021-11-18'),
(5, 5, 8, '2021-11-11'),
(6, 7, 10, '2021-11-18'),
(7, 6, 9, '2021-11-09'),
(8, 9, 13, '2021-11-06'),
(9, 10, 12, '2021-11-23'),
(10, 1, 3, '2022-04-12');

-- --------------------------------------------------------

--
-- Stand-in structure for view `visit_view`
-- (See below for the actual view)
--
CREATE TABLE `visit_view` (
`ID` int(11)
,`Decter` varchar(40)
,`Bukaan` varchar(40)
,`Tariikh` date
);

-- --------------------------------------------------------

--
-- Structure for view `accounts_view`
--
DROP TABLE IF EXISTS `accounts_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `accounts_view`  AS SELECT `accounts`.`acc_no` AS `id`, `accounts`.`ac_name` AS `AccountName`, `accounts`.`institution` AS `BankName`, `accounts`.`balance` AS `Total` FROM `accounts` ;

-- --------------------------------------------------------

--
-- Structure for view `address_view`
--
DROP TABLE IF EXISTS `address_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `address_view`  AS SELECT `address`.`ad_no` AS `id`, `address`.`District` AS `dagmo`, `address`.`village` AS `xafad`, `address`.`area` AS `area` FROM `address` ;

-- --------------------------------------------------------

--
-- Structure for view `bills_view`
--
DROP TABLE IF EXISTS `bills_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `bills_view`  AS SELECT `b`.`bl_no` AS `id`, `p`.`p_name` AS `bukan`, `b`.`bl_amount` AS `Money`, `b`.`description` AS `faahfahin`, `b`.`bl_date` AS `taariikh` FROM (`bills` `b` join `patient` `p` on(`b`.`p_no_fk` = `p`.`p_no`)) ORDER BY `b`.`bl_no` ASC ;

-- --------------------------------------------------------

--
-- Structure for view `categories_view`
--
DROP TABLE IF EXISTS `categories_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `categories_view`  AS SELECT `categories`.`cat_no` AS `ID`, `categories`.`cat_name` AS `CategeroyName` FROM `categories` ORDER BY `categories`.`cat_no` ASC ;

-- --------------------------------------------------------

--
-- Structure for view `checkment_view`
--
DROP TABLE IF EXISTS `checkment_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `checkment_view`  AS SELECT `ch`.`ck_no` AS `ID`, `ch`.`ck_name` AS `checkName`, `c`.`cat_name` AS `categoriesName` FROM (`checkment` `ch` join `categories` `c`) WHERE `ch`.`cat_no_fk` = `c`.`cat_no` ORDER BY `ch`.`ck_no` ASC ;

-- --------------------------------------------------------

--
-- Structure for view `employee_view`
--
DROP TABLE IF EXISTS `employee_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `employee_view`  AS SELECT `e`.`em_no` AS `ID`, `e`.`em_name` AS `Docter`, `e`.`em_tell` AS `Tellephone`, `e`.`em_sex` AS `Gender`, `ad`.`District` AS `Dagmo`, `ad`.`village` AS `xaafad`, `t`.`ti_name` AS `JopTitle`, `sp`.`sp_name` AS `Takhasus` FROM (((`employee` `e` join `address` `ad`) join `title` `t`) join `specialization` `sp`) WHERE `e`.`ad_no_fk` = `ad`.`ad_no` AND `e`.`t_no_fk` = `t`.`ti_no` AND `e`.`sp_no_fk` = `sp`.`sp_no` ORDER BY `e`.`em_no` ASC ;

-- --------------------------------------------------------

--
-- Structure for view `patient_checkment_view`
--
DROP TABLE IF EXISTS `patient_checkment_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `patient_checkment_view`  AS SELECT `p`.`pc_no` AS `ID`, `em`.`em_name` AS `Decter`, `pa`.`p_name` AS `Bukaan`, `v`.`v_date` AS `Tariikh`, `ch`.`ck_name` AS `checkment`, `p`.`result` AS `Jawaab`, `p`.`description` AS `description` FROM ((((`patient_checkment` `p` join `patient` `pa`) join `employee` `em`) join `visit` `v`) join `checkment` `ch`) WHERE `v`.`em_no_fk` = `em`.`em_no` AND `v`.`p_no_fk` = `pa`.`p_no` AND `v`.`v_no` = `p`.`v_no_fk` AND `p`.`ck_no_fk` = `ch`.`ck_no` ORDER BY `p`.`pc_no` ASC ;

-- --------------------------------------------------------

--
-- Structure for view `patient_view`
--
DROP TABLE IF EXISTS `patient_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `patient_view`  AS SELECT `p`.`p_no` AS `ID`, `p`.`p_name` AS `Bukan`, `p`.`p_tell` AS `Tellaphone`, `p`.`p_sex` AS `Gender`, `p`.`p_brith_date` AS `Tariikhda`, `ad`.`District` AS `Dagmo`, `ad`.`village` AS `Xafad` FROM (`patient` `p` join `address` `ad`) WHERE `p`.`p_ad_no_fk` = `ad`.`ad_no` ORDER BY `p`.`p_no` ASC ;

-- --------------------------------------------------------

--
-- Structure for view `prescription_view`
--
DROP TABLE IF EXISTS `prescription_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `prescription_view`  AS SELECT `pr`.`pr_no` AS `ID`, `em`.`em_name` AS `Dector`, `pa`.`p_name` AS `Bukaan`, `v`.`v_date` AS `Taariikh`, `pr`.`pr_name` AS `Daawo`, `pr`.`description` AS `description` FROM (((`prescription` `pr` join `employee` `em`) join `patient` `pa`) join `visit` `v`) WHERE `v`.`em_no_fk` = `em`.`em_no` AND `v`.`p_no_fk` = `pa`.`p_no` AND `pr`.`v_no_fk` = `v`.`v_no` ;

-- --------------------------------------------------------

--
-- Structure for view `receipt_view`
--
DROP TABLE IF EXISTS `receipt_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `receipt_view`  AS SELECT `r`.`rec_no` AS `ID`, `pa`.`p_name` AS `Bukaan`, `ac`.`ac_name` AS `AccountName`, `r`.`amount` AS `Money`, `r`.`rec_date` AS `Tariikh` FROM ((`receipt` `r` join `patient` `pa`) join `accounts` `ac`) WHERE `r`.`p_no_fk` = `pa`.`p_no` AND `r`.`acc_no_fk` = `ac`.`acc_no` ORDER BY `r`.`rec_no` ASC ;

-- --------------------------------------------------------

--
-- Structure for view `specialization_view`
--
DROP TABLE IF EXISTS `specialization_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `specialization_view`  AS SELECT `specialization`.`sp_no` AS `ID`, `specialization`.`sp_name` AS `Takhasus`, `specialization`.`description` AS `description` FROM `specialization` ORDER BY `specialization`.`sp_no` ASC ;

-- --------------------------------------------------------

--
-- Structure for view `title_view`
--
DROP TABLE IF EXISTS `title_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `title_view`  AS SELECT `title`.`ti_no` AS `ID`, `title`.`ti_name` AS `TitleName` FROM `title` ORDER BY `title`.`ti_no` ASC ;

-- --------------------------------------------------------

--
-- Structure for view `users_view`
--
DROP TABLE IF EXISTS `users_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `users_view`  AS SELECT `users`.`id` AS `ID`, `users`.`name` AS `magac`, `users`.`username` AS `username`, `users`.`userType` AS `userType`, `users`.`password` AS `fure_Sereed` FROM `users` ;

-- --------------------------------------------------------

--
-- Structure for view `visit_view`
--
DROP TABLE IF EXISTS `visit_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `visit_view`  AS SELECT `v`.`v_no` AS `ID`, `em`.`em_name` AS `Decter`, `pa`.`p_name` AS `Bukaan`, `v`.`v_date` AS `Tariikh` FROM ((`visit` `v` join `employee` `em`) join `patient` `pa`) WHERE `v`.`em_no_fk` = `em`.`em_no` AND `v`.`p_no_fk` = `pa`.`p_no` ORDER BY `v`.`v_no` ASC ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`acc_no`);

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`ad_no`);

--
-- Indexes for table `bills`
--
ALTER TABLE `bills`
  ADD PRIMARY KEY (`bl_no`),
  ADD KEY `con_bl` (`p_no_fk`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_no`);

--
-- Indexes for table `checkment`
--
ALTER TABLE `checkment`
  ADD PRIMARY KEY (`ck_no`),
  ADD KEY `con_chec` (`cat_no_fk`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`em_no`),
  ADD KEY `cons_emp` (`ad_no_fk`),
  ADD KEY `cons_empl` (`t_no_fk`),
  ADD KEY `cons_em` (`sp_no_fk`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login_form`
--
ALTER TABLE `login_form`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`p_no`),
  ADD KEY `con_pt` (`p_ad_no_fk`);

--
-- Indexes for table `patient_checkment`
--
ALTER TABLE `patient_checkment`
  ADD PRIMARY KEY (`pc_no`),
  ADD KEY `con_pe` (`v_no_fk`),
  ADD KEY `con_pe1` (`ck_no_fk`);

--
-- Indexes for table `prescription`
--
ALTER TABLE `prescription`
  ADD PRIMARY KEY (`pr_no`),
  ADD KEY `con_vist` (`v_no_fk`);

--
-- Indexes for table `receipt`
--
ALTER TABLE `receipt`
  ADD PRIMARY KEY (`rec_no`),
  ADD KEY `con_re` (`p_no_fk`),
  ADD KEY `con_rec` (`acc_no_fk`);

--
-- Indexes for table `specialization`
--
ALTER TABLE `specialization`
  ADD PRIMARY KEY (`sp_no`);

--
-- Indexes for table `title`
--
ALTER TABLE `title`
  ADD PRIMARY KEY (`ti_no`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `visit`
--
ALTER TABLE `visit`
  ADD PRIMARY KEY (`v_no`),
  ADD KEY `con_visit` (`em_no_fk`),
  ADD KEY `con_visit1` (`p_no_fk`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `acc_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `address`
--
ALTER TABLE `address`
  MODIFY `ad_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `bills`
--
ALTER TABLE `bills`
  MODIFY `bl_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `checkment`
--
ALTER TABLE `checkment`
  MODIFY `ck_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `em_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `login_form`
--
ALTER TABLE `login_form`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `patient`
--
ALTER TABLE `patient`
  MODIFY `p_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `patient_checkment`
--
ALTER TABLE `patient_checkment`
  MODIFY `pc_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `prescription`
--
ALTER TABLE `prescription`
  MODIFY `pr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `receipt`
--
ALTER TABLE `receipt`
  MODIFY `rec_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `specialization`
--
ALTER TABLE `specialization`
  MODIFY `sp_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `title`
--
ALTER TABLE `title`
  MODIFY `ti_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `visit`
--
ALTER TABLE `visit`
  MODIFY `v_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bills`
--
ALTER TABLE `bills`
  ADD CONSTRAINT `con_bl` FOREIGN KEY (`p_no_fk`) REFERENCES `patient` (`p_no`) ON UPDATE CASCADE;

--
-- Constraints for table `checkment`
--
ALTER TABLE `checkment`
  ADD CONSTRAINT `con_chec` FOREIGN KEY (`cat_no_fk`) REFERENCES `categories` (`cat_no`) ON UPDATE CASCADE;

--
-- Constraints for table `employee`
--
ALTER TABLE `employee`
  ADD CONSTRAINT `cons_em` FOREIGN KEY (`sp_no_fk`) REFERENCES `specialization` (`sp_no`) ON UPDATE CASCADE,
  ADD CONSTRAINT `cons_emp` FOREIGN KEY (`ad_no_fk`) REFERENCES `address` (`ad_no`) ON UPDATE CASCADE,
  ADD CONSTRAINT `cons_empl` FOREIGN KEY (`t_no_fk`) REFERENCES `title` (`ti_no`) ON UPDATE CASCADE;

--
-- Constraints for table `patient`
--
ALTER TABLE `patient`
  ADD CONSTRAINT `con_pt` FOREIGN KEY (`p_ad_no_fk`) REFERENCES `address` (`ad_no`) ON UPDATE CASCADE;

--
-- Constraints for table `patient_checkment`
--
ALTER TABLE `patient_checkment`
  ADD CONSTRAINT `con_pe` FOREIGN KEY (`v_no_fk`) REFERENCES `visit` (`v_no`),
  ADD CONSTRAINT `con_pe1` FOREIGN KEY (`ck_no_fk`) REFERENCES `checkment` (`ck_no`);

--
-- Constraints for table `prescription`
--
ALTER TABLE `prescription`
  ADD CONSTRAINT `con_vist` FOREIGN KEY (`v_no_fk`) REFERENCES `visit` (`v_no`);

--
-- Constraints for table `receipt`
--
ALTER TABLE `receipt`
  ADD CONSTRAINT `con_re` FOREIGN KEY (`p_no_fk`) REFERENCES `patient` (`p_no`) ON UPDATE CASCADE,
  ADD CONSTRAINT `con_rec` FOREIGN KEY (`acc_no_fk`) REFERENCES `accounts` (`acc_no`) ON UPDATE CASCADE;

--
-- Constraints for table `visit`
--
ALTER TABLE `visit`
  ADD CONSTRAINT `con_visit` FOREIGN KEY (`em_no_fk`) REFERENCES `employee` (`em_no`),
  ADD CONSTRAINT `con_visit1` FOREIGN KEY (`p_no_fk`) REFERENCES `patient` (`p_no`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
