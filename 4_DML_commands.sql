-- DDL : Data Manupulation Language
-- insert
-- update
-- delete
-- ------------------------------------------------
create database employee_db;
drop database employee_db;
use employee_db;

create table employee(
emp_id int primary key,
name varchar(50) not null,
age int  not null check(age>0 and age<100),
gender enum("m","f","t") not null,
doj date not null,
salary int default 0,
skills set("sql", "java", "python"),
phone varchar(10) unique not null
);
show tables;
drop table employee;
describe employee;
-- ------------------------------------------------
-- ___________________insert______________________
select * from employee;

insert into employee(emp_id, name, age, gender, doj, salary, skills, phone)
values(101, "Jim", 21, "m", "2023-08-12",50000,"java,python","9403642310");

insert into employee value(102, "kunal", 22, "m", "2023-07-23",45000,"python","9445642310"),
(103, "Pam", 20, "f", "2023-09-23",50000,"python","9453452310"),
(104, "Ryan", 26, "m", "2023-07-13",48000,"python","9445132310"),
(105, "Dwight", 25, "m", "2023-07-26",45500,"python","9436642310") ;

create table employee_table_2(
emp_id int primary key,
name varchar(50) not null,
salary int default 0
);

insert into employee_table_2 select emp_id,name,salary from employee;
select * from employee_table_2;

-- ------------------------------------------------
-- ___________________update______________________
select * from employee;
-- UPDATE One column at a time
update employee set salary=30000 where emp_id= 105;

-- UPDATE Multiple columns at a time
update employee set age= 30, salary=20000 where emp_id= 102;

-- UPDATE without any condition (where)
update employee set age=35;

-- ------------------------------------------------
-- ___________________delete______________________
select * from employee;
-- Delete one record at a time
delete from employee where emp_id = 102;

-- Delete multiple record at a time
delete from employee where gender= "m";

-- Delete all record
delete from employee;

select * from employee;
-- ------------------------------------------------
-- ------------------------------------------------