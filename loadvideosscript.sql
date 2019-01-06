-- loadvideo.sql


-- create videos table if it does not already exist

CREATE TABLE IF NOT EXISTS `videos` (
`video_ID` int(6) UNSIGNED NOT NULL PRIMARY KEY,
`title` varchar(100) NOT NULL,
`duration` int(6),
`url` varchar(50)
) DEFAULT CHARSET = utf8;
INSERT INTO `videos` (`video_ID`, `title`, `duration`, `url`) VALUES
('1', 'SQL-FULL COURSE FOR BEGINNERS', '50', 'https://www.youtube.com/watch?v=HXV3zeQKqGY'),
('2', 'LEARN SQL IN 1 HOUR', '15', 'https://www.youtube.com/watch?v=9Pzj7Aj25lw'),
('3', 'PERFORMING SQL QUERIES WITHIN R', '51', 'https://www.youtube.com/watch?v=s2oTUsAJfjI&t=537s'),
('4', 'HOW TO INSTALL MYSQL', '3', 'https://www.youtube.com/watch?v=WuBcTJnIuzo&t=568s'),
('5', 'LEARN BASIC SQL IN 10 MINUTES', '10', 'https://www.youtube.com/watch?v=bEtnYWuo2Bw'),
('6', 'WHAT IS DATABASE AND SQL', '500', 'https://www.youtube.com/watch?v=FR4QIeZaPeM');


-- create reviews table if it does not already exist

CREATE TABLE IF NOT EXISTS `reviews` (
`review_ID` int(6) UNSIGNED NOT NULL PRIMARY KEY,
`video_ID` int(6) UNSIGNED NOT NULL,
`reviewer_name` varchar(50),
`rating` int(2),
`review` varchar(50)
) DEFAULT CHARSET = utf8;
INSERT INTO `reviews` (`review_ID`,`video_ID`, `reviewer_name`, `rating`, `review`) VALUES
('1', '1', 'Derek Jeter', '5', 'This was a great video'),
('2', '1', 'Aaron Judge', '4', 'I liked it'),
('3', '2', 'Miquel Adujar', '5', 'Good, but wanted more'),
('4', '2', 'Didi Gregorius', '3', 'Fantastic. I learnd a bunch'),
('5', '3', 'Aaron Boone', '5', 'Best video ever'),
('6', '4', 'C.C. Sabathia', '4', '100 Green tomatoes');
