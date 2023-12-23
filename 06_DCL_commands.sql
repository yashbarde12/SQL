-- DCL : Data Control Language
-- grant
-- revoke
-- ------------------------------------------------
show databases;  -- cheking mysql database
show tables; -- checking user

-- ------------------------------------------------
-- checking_existing_users
use mysql;
select user from user;
select * from user;

-- ------------------------------------------------
-- creating_new_user
create user 'yash'@'localhost' identified by 'yash@123';
select user from user;
create user 'Yuri'@'localhost' identified by 'yuri@123';
select user from user;

-- ------------------------------------------------
-- checking_who_is_current_user
select user();
select current_user();

-- ------------------------------------------------
-- checking_permission_given_to_user  --root
show grants for 'root'@'localhost';
show grants for 'yash'@'localhost';

-- ------------------------------------------------
-- giving_one_permission_at_a_time
grant insert on employee_db.employee to 'yash'@'localhost';
show grants for 'yash'@'localhost';

-- ------------------------------------------------
-- giving_multiple_permission_at_a_time
grant update, delete on employee_db.employee to 'yash'@'localhost';
show grants for 'yash'@'localhost';

-- ------------------------------------------------
-- giving_all_permission_at_a_time_to_all_table
grant all on employee_db.employee to 'yash'@'localhost';
show grants for 'yash'@'localhost';

-- ------------------------------------------------
-- removing_permission
show grants for 'Yuri'@'localhost';
grant insert, update, delete on employee_db.employee to 'Yuri'@'localhost';
show grants for 'Yuri'@'localhost';
revoke insert on employee_db.employee from 'Yuri'@'localhost';
show grants for 'Yuri'@'localhost';

-- ------------------------------------------------
-- ------------------------------------------------
