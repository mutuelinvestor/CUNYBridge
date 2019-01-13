-- loadgrantaccess.sql

-- create users table
CREATE TABLE IF NOT EXISTS `users` (
`user_ID` int(6) UNSIGNED NOT NULL PRIMARY KEY,
`name` varchar(100) NOT NULL,
`group_ID` int(6)
) DEFAULT CHARSET = utf8;
INSERT INTO `users` (`user_ID`, `name`, `group_ID`) VALUES
('1', 'MODESTO', '1'),
('2', 'AYINE', '1'),
('3', 'CHRISTOPHER', '2'),
('4', 'CHEONG WOO', '2'),
('5', 'SAULAT', '4'),
('6', 'HEIDY', '99')

-- create groups table
CREATE TABLE IF NOT EXISTS `groups` (
`group_ID` int(6) UNSIGNED NOT NULL PRIMARY KEY,
`group_name` varchar(100) NOT NULL
) DEFAULT CHARSET = utf8;
INSERT INTO `groups` (`group_ID`, `group_name`) VALUES
('1', 'IT'),
('2', 'SALES'),
('3', 'OPERATIONS'),
('4', 'ADMIN'),
('99', 'No Group Assignment')

-- create rooms table
CREATE TABLE IF NOT EXISTS `rooms` (
`room_ID` int(6) UNSIGNED NOT NULL PRIMARY KEY,
`room_name` varchar(100) NOT NULL
) DEFAULT CHARSET = utf8;
INSERT INTO `rooms` (`room_ID`, `room_name`) VALUES
('1', 'Room 101'),
('2', 'Room 102'),
('3', 'Auditorium A'),
('4', 'Auditorium B'),
('98', 'No Room Access'),
('99', 'No Room Assignment')

-- create grouprooms table
CREATE TABLE IF NOT EXISTS `grouprooms` (
`groroo_ID` int(6) UNSIGNED NOT NULL PRIMARY KEY,
`group_ID` int(6),
`room_ID` int(6)
) DEFAULT CHARSET = utf8;
INSERT INTO `grouprooms` (`groroo_ID`, `group_ID`, `room_ID`) VALUES
('1', '1','1'),
('2', '1','2'),
('3', '2','2'),
('4', '2','3'),
('5', '4','98'),
('6', '3','99'),
('7', null,'4')