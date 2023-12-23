-- TCL : Transaction Control Language
-- savepoint
-- rollback
-- commit
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

select * from employee;
-- ------------------------------------------------
insert into employee(emp_id, name, age, gender, doj, salary, skills, phone)
values(101, "Yash", 21, "m", "2023-08-12",50000,"java,python","9403642310");

insert into employee values
(102, "Vivek", 26, "m", "2023-07-13",48000,"python","9445132310"),
(103, "Akash", 25, "m", "2023-07-26",45500,"python","9436642310") ;

delete from employee;
truncate table employee;
select * from employee;

start transaction;

insert into employee values(104, "Kunal", 22, "m", "2023-07-23",45000,"python","9445642310");

savepoint insertion_step;

insert into employee values(105, "Rani", 20, "f", "2023-09-23",50000,"python","9453452310");

select * from employee;

update employee set name="John" where emp_id= 102;

rollback to insertion_step;

savepoint insertion_step_2;

select * from employee;

delete from employee where emp_id= 104;

commit;

rollback to insertion_step_2; -- gives error because we can't access after commit

select * from employee;
-- ------------------------------------------------
-- ------------------------------------------------
