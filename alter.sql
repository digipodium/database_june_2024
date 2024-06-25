-- update
-- delete
-- truncate

-- alter : modifying the table
use sakila;
drop table if exists students;
create table if not exists students(
	id int primary key auto_increment,
    name varchar(20),
    created_at timestamp default current_timestamp
);

-- adding single column
alter table students 
add cls varchar(4) after name;

-- adding multiple column
alter table
	students
add rollno varchar(6) after cls,
add gender enum('M','F','O') after cls;

-- removing column
alter table students
drop gender;

-- renaming column / mixing all steps
alter table students
rename column cls to klass,
drop name,
add firstname varchar(10) after id,
add lastname varchar(10) after id;

desc students;

-- syntax
alter table table_name
[add column_name data_type after column_name],
[drop column_name],
[rename column column_name to new_column_name];
