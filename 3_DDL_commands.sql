-- DDL : Data Definition Language
-- create
-- drop
-- alter
-- truncate
-- ------------------------------------------------
show databases; -- To check all databases

-- To create new database
create database student_db; -- create databaase database_name;

drop database student_db; -- To delete database

use student_db; -- To select particular database

create table student(id int,name varchar(30) ); -- Creating a table inside student_db database

show tables; -- Showing all tables inside selected database(student_db)

describe student; -- Checking structure of newly created table(student)
-- ------------------------------------------------
-- ___________________alter_______________________
-- used to alter the structure of table.
-- 1. add column
-- 2. drop column
-- 3. modify size/type
-- 4. rename column

create database demo_db;
show databases;
drop database demo_db;
use demo_db;

create table employee(
 first_name varchar(50),
 last_name varchar(50));

drop table employee; 
show tables;
select * from employee;
 
alter table employee add age int not null;
alter table employee add (phone varchar (10), gender enum("m","f"));
alter table employee add id int primary key first;
alter table employee add doj date after last_name;
 
alter table employee drop column age;
 
alter table employee modify  first_name varchar(20);
  
alter table employee rename column phone to mobile;     
alter table employee rename to emp;
 
describe employee;
describe emp;
select * from employee;
--------------------------------------------------
-- _________________truncate_____________________
-- Delete or remove rows from table.
create database demo_db;
show databases;
drop database demo_db;
use demo_db;

create table employee(
 first_name varchar(50),
 last_name varchar(50));
 
 insert into employee values
 ("Yash" , "Barde"),
 ("Kunal" , "Singh"),
 ("Sanket" , "Patil");

drop table employee; 
show tables;
select * from employee;

truncate table employee;
truncate employee;
-- ------------------------------------------------
-- ------------------------------------------------