-- (1)
create database Sports;

use Sports;

-- (2)
create table TEAM(
TeamID int primary key,
TeamName varchar(50),
Department varchar(50));

insert into TEAM values
(100,"Team Titan","Information Technology"),
(101,"Team Rockers","Computer science"),
(102,"Team Magnet","Computer Science"),
(103,"Team Hurricane","Information Technology");