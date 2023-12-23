-- ____________________constraints________________________
/* SQL Constraints: 
constraints are set of rules that are applied to table.
	1. primanry key
	2. foreign key
	3. unique
	4. not null
	5. check
	6. default
	7. enum (one in multiple)
	8. set (multiple in multiple) */
    
-- --------------------------------------------------------
create database employee_db;
drop database employee_db;
use employee_db;
create table employee(
emp_id int primary key,
name varchar(15) not null,
age int check(age>0 and age<100) not null,
gender enum('m','f','t') not null,
doj date not null,
salary int default 0,
skills set('sql','java','python'),
phone varchar(10) unique not null);
show tables;
describe employee;           
drop table employee;         

-- Inserting right data inside employee table
insert into employee(emp_id,name,age,gender,doj,salary,skills,phone)
values(101,"aniket",29,"m","2023-08-12",25000,"sql,java","7896587452");
select * from employee;

-- Lets add wrong data into table that violets the constraints. so we can get better understanding of working of constraints
-- Not passing employee id in the field emp_id
insert into employee(name,age,gender,doj,salary,skills,phone) values
('aniket',29,'m','2023-08-12',25000,'sql,java','7896587452');

-- Not passing name
insert into employee(emp_id,age,gender,doj,salary,skills,phone)
values(102,29,'m','2023-08-12',25000,'sql,java','7896587452');

-- Adding wrong age value which is not in given RANGE
insert into employee(emp_id,name,age,gender,doj,salary,skills,phone)
values(102,'aniket',290,'m','2023-08-12',25000,'sql,java','7896587452');

-- Adding wrong ENUM — Adding gender other than m, f, t
insert into employee(emp_id,name,age,gender,doj,salary,skills,phone)
values(102,'aniket',29,'x','2023-08-12',25000,'sql,java','7896587452');

-- Not adding salary
insert into employee(emp_id,name,age,gender,doj,skills,phone)
values(103,'rani',30,'f','2023-08-12','sql,java','7896587451');

-- Not adding any skills — it will add null
insert into employee(emp_id,name,age,gender,doj,salary,phone)
values(104,'stella',21,'f','2023-08-15',25000,'7896587412');

-- Adding dupicate phone number
insert into employee(emp_id,name,age,gender,doj,salary,skills,phone)
values(110,'raju',25,'m','2023-08-12',25000,'sql,java','7896587452');

-- --------------------------------------------------------
-- froreign key constraint;
create table dept (
dept_code int primary key,
name varchar(20) not null,
hod varchar(20) not null);

create table emp (
emp_id int primary key,
name varchar(20) not null,
salary decimal(8,2) not null,
dept_code int references dept.dept_code); 
-- ----OR WE CAN ADD LIKE THIS----   
-- dept_code int,
-- foreign key(dept_code) references dept(dept_code)

drop table emp;
desc emp;
-- --------------------------------------------------------
-- --------------------------------------------------------
