-- Case Statement

-- ------------------------------------------------
create database employee_db;
drop database employee_db;
use employee_db;
show tables;

create table emp(
emp_id int primary key auto_increment,
first_name varchar(20),
last_name varchar(20),
job_role varchar(20),
salary int default 0,
age int);
drop table emp;

insert into emp (first_name,last_name,job_role,salary,age) values
("Jim","Halpert","Designer",3000,27),
("Pam","Beesly","Developer",6000,26),
("Dwight","Schrute","Tester",3500,22),
("Angela","Martin","Developer",2500,21),
("Ryan","Howard","Developer",3000,30),
("Holly","Flax","Designer",3000,28),
("Michael","Scott","Manager",6000,31);
truncate table emp;
select * from emp;
-- ------------------------------------------------
select first_name, last_name, age,
CASE
 when age > 30 then 'Very Experienced'
 when age between 25 and 30 then 'Less Experienced'
 else 'New joinee'
END as Employee_status
from emp
where Age is not null
order by age;

-- ------------------------------------------------
-- ------------------------------------------------
