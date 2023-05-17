create database sanjana;
show databases;
use sanjana;
CREATE TABLE USERS (
   ID INT NOT NULL AUTO_INCREMENT,
   NAME VARCHAR(50) NOT NULL,
   AGE INT NOT NULL,
   PRIMARY KEY(ID)
);
SHOW tables;
DESCRIBE USERS;
ALTER TABLE USERS ADD GENDER VARCHAR(6) NOT NULL AFTER AGE;
SHOW TABLES;
DESCRIBE USERS;
ALTER TABLE USERS
   ADD CITY VARCHAR(20) NOT NULL,
   ADD COUNTRY Double NOT NULL;
DESCRIBE USERS;
ALTER TABLE USERS MODIFY COUNTRY VARCHAR(50) NOT NULL;
alter table users rename students;
select * from students;
alter table students rename column country to CONTACT ;
DESCRIBE students;
alter table students rename column contact to CONTACT ;
DESCRIBE students;
insert into students values (null, "anjana", 21, "female", "pondicherry", "12345");
insert into students values (null, "swassthika", 18, "female", "pondy", "54321");
SELECT name FROM students;
CREATE TABLE USERS (
   ID INT NOT NULL AUTO_INCREMENT,
   NAME VARCHAR(50) NOT NULL,
   AGE INT NOT NULL,
   PRIMARY KEY(ID)
);
ALTER TABLE USERS ADD GENDER VARCHAR(6) NOT NULL AFTER AGE;
ALTER TABLE USERS
   ADD CITY VARCHAR(20) NOT NULL,
   ADD COUNTRY Double NOT NULL;
alter table USERS rename column country to CONTACT ;
alter table users rename student;
insert into student values (null, "anjana", 21, "female", "pondicherry", "12345");
insert into student values (null, "swassthika", 18, "female", "pondy", "54321");
select * from student;
insert into student (name, age, gender, city, contact) values ("kaviya", 20, "female", "villupuram", "500821") ;
insert into student (name, age, gender, city, contact) values ("deepika", 1, "female", "villianur", "86421"),
("snega", 17, "female", "lawspet", "4678821");
delete from student where id=4;
update student set city="bus stand", contact="2662462" where id=2;
truncate table student;
insert into student (name, age, gender, city, contact) values 
("anjana", 21, "female", "pondicherry", "12345"),
("deepika", 1, "female", "villianur", "86421"),
("snega", 17, "female", "lawspet", "4678821"),
("kaviya", 20, "female", "villupuram", "500821"),
("swassthika", 18, "female", "pondy", "54321");
select name, age from student;
select name, age, city from student where city="pondy";
select name, age, city from student where city="pondy" and age<=20;
select name, age, city from student where (city="pondy" or city ="lawspet") and age<=20;
select city from student;
select distinct city from student;
select count(city) from student;
select count(distinct city) from student;
select * from student;
select * from student limit 1,5;
select max(age) from student;
select min(age) from student;
select avg(age) from student;
select round (avg(age), 0) from student;
select sum(age) from student;
select gender, count(id) from student group by gender;
select city, count(id) as total from student group by city;
select * from student where city="pondicherry" or city="pondy";
select * from student where city in ("pondicherry", "pondy");
select * from student where city not in ("pondicherry", "pondy");
select name from student where name like "%ka";
select name from student where name not like "%ka";
select name, age from student where age between 12 and 22;

create table attendance (
   AID int not null auto_increment,
   ID int not null,
   ADATE date not null,
   ASTATUS varchar(10) not null,
   primary key(AID));
show tables;
insert into attendance(ID, ADATE, ASTATUS) values 
(1, "2018-11-01","P"),
(1, "2018-11-02","P"),
(1, "2018-11-03","A"),
(1, "2018-11-04","P"),
(2, "2018-11-01","P"),
(2, "2018-11-02","A"),
(2, "2018-11-03","P"),
(2, "2018-11-04","P"),
(3, "2018-11-01","P"),
(3, "2018-11-02","P"),
(3, "2018-11-03","P"),
(3, "2018-11-04","P"),
(4, "2018-11-01","P"),
(4, "2018-11-02","P"),
(4, "2018-11-03","A"),
(4, "2018-11-04","P"),
(5, "2018-11-01","P"),
(5, "2018-11-02","P"),
(5, "2018-11-03","P"),
(5, "2018-11-04","P"),
(6, "2018-11-01","P"),
(6, "2018-11-02","P"),
(6, "2018-11-03","P"),
(6, "2018-11-04","P"),
(7, "2018-11-01","A"),
(7, "2018-11-02","A"),
(7, "2018-11-03","P"),
(7, "2018-11-04","P"),
(8, "2018-11-01","P"),
(8, "2018-11-02","P"),
(8, "2018-11-03","P"),
(8, "2018-11-04","P"),
(9, "2018-11-01","P"),
(9, "2018-11-02","P"),
(9, "2018-11-03","A"),
(9, "2018-11-04","P"),
(10, "2018-11-01","P"),
(10, "2018-11-02","P"),
(10, "2018-11-03","P"),
(10, "2018-11-04","A");
select * from student;
select * from attendance;
TRUNCATE TABLE attendance;
select * from attendance where id=1;
select id,count(adate) as WORKING from attendance group by id; 
insert into student (name, age, gender, city, contact) values 
("ram", 23, "male", "chennai", "12345578"),
("sam", 21, "male", "villupuram", "243421"),
("uma", 24, "female", "chennai", "4508821"),
("priya", 22, "female", "pondicherrt", "5268821"),
("veniga", 23, "female", "pondy", "47286681");
select id,count(adate) as WORKING,
count(if(ASTATUS = "P",1,NULL)) as present
from attendance group by id; 

create table EMP(
ID INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
NAME VARCHAR(15) NOT NULL,
DESIGN VARCHAR(30) NOT NULL,
DOJ DATE NOT NULL,
primary key(ID));
insert into emp(name, design, doj) values
("Ram", "Manager","2017-11-23"),
("Sam", "Sales","2019-5-20"),
("Ravi", "AMC","2017-10-21"),
("Tom", "Sales","2015-3-21"),
("Kaialash", "Hr","2012-8-20");
select * from emp;
create table salary(
SID int not null auto_increment,
ID int not null,
SDATE DATE not null,
AMOUNT int not null,
PRIMARY KEY(SID));
select * from salary;
insert into salary(id, sdate, amount) values
(1, "2018-4-20", 30000),
(2, "2018-4-20", 17000),
(7, "2018-4-20", 25000),
(4, "2018-4-20", 17000),
(5, "2018-4-20", 30000);
drop table salary;
truncate table salary;