create database joins;
use joins;
show tables;

-- SQL joins used to combie the records from two or more tables bases on common field between them.

/* creating a table */
create table player(
player_id int primary key,
name varchar(20) not null,
age int not null,
city varchar(20) not null,
leader_id int);

desc player;

-- inserting values to a table

insert into player(player_id,name,age,city,leader_id)
values
(101,'Siddhesh',25,'Pune',105),
(102,'Sachin',28,'Delhi',105),
(103,'Sukanya',25,'Mumbai',106),
(104,'Samiksha',30,'Pune',106),
(105,'Shreeyash',27,'Delhi',null),
(106,'Vishal',25,'Chennai',Null);

select * from player;



/* create another table */
create table game(
id int primary key auto_increment,
name varchar(20) not null,
pid int not null);

desc player;

-- inserting values into the table
insert into game(name,pid)
values('cricket',101),
('football',102),
('cricket',102),
('chess',101),
('hockey',103),
('cricket',205);

select * from player;
select * from game;

# Inner Join : used to select all rows from both the tables as long as condition satisfies 
#i.e. The value of common field will be same
select player_id,player.name as player_name, game.name as game_name
from player
join game
on player.player_id = game.pid;-- default join is inner join

select player_id,player.name as player_name, game.name as game_name
from player
inner join game
on player.player_id = game.pid;

#Left Join : This join returns all the records of the left table and matching records from the right table.

select player_id,player.name as player_name, game.name as game_name
from player
left join game
on player.player_id = game.pid;

#Right Join : This join returns all the records of the right table and matching records from the left table.
select player_id,player.name as player_name, game.name as game_name
from player
right join game
on player.player_id = game.pid;

#Outer join : used to combine all the records from the both tables
select player_id,player.name as player_name, game.name as game_name
from player
left join game
on player.player_id = game.pid
union all
select player_id,player.name as player_name, game.name as game_name
from player
right join game
on player.player_id = game.pid;-- union all : allow duplicates

select player_id,player.name as player_name, game.name as game_name
from player
left join game
on player.player_id = game.pid
union
select player_id,player.name as player_name, game.name as game_name
from player
right join game
on player.player_id = game.pid;-- union : duplicates not allowed

-- self join : create hierarchy in the table itself
select * from player;

select p1.name as leader, p2.name as player
from player as p1 join player as p2
on p1.player_id = p2.leader_id;

/* Views */
-- virtual table created from existig table
create view inner_join
as
select player.name as player_name, game.name as game_name
from player
inner join game
on player.player_id = game.pid;