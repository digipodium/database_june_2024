create database if not exists practice;
use practice;

drop table if exists student_report;
drop table if exists student_awards;
drop table if exists students;

create table if not exists students(
	id int primary key auto_increment,
    lastname varchar(10),
    firstname varchar(10),
    klass varchar(4),
    rollno varchar(6),
    created_at timestamp default current_timestamp
);
-- main logic starts here
create table if not exists student_report(
	id int primary key auto_increment,
    sid int,
    english int default 0,
    hindi int default 0,
    maths int default 0,
    sst int default 0,
    science int default 0,
    created_at timestamp default current_timestamp,
    foreign key (sid) references students(id)
);

create table student_awards(
	id int primary key auto_increment,
    sid int,
    title varchar(25),
    created_at timestamp default current_timestamp,
    foreign key (sid) references students(id)    
);

-- insert data into table
insert into students
	(firstname, lastname, klass, rollno)
values
	('Radhe', 'lal', '9th', 'NT2094'),
    ('Sunder', 'verma', '10th','TN1229'),
    ('Vikram', 'rathore', '10th','TN1230'),
    ('Ajay', 'Garg', '10th','TN1231'),
    ('Raman', 'Kishore', '10th','TN1232'),
    ('Arti', 'Sharma', '9th', 'NT2095');

insert into student_report
	(sid, english, hindi, maths, sst, science)
values
	(1, 50, 60, 20, 50, 25),
    (2, 89, 90, 99, 95, 96),
    (3, 76, 59, 67, 89, 70),
    (4, 67, 77, 77, 69, 49);

-- inserting a single report
insert into student_report
	(sid, english)
values
	(5, 55);
    
-- awards
insert into student_awards
	(sid, title)
values
	(2, 'Class Topper '),
    (3, 'Full Attendance'); 

select * from students;
select * from student_report;
select * from student_awards;

-- display detail of students that have any awards
select firstname, lastname from students
where id in (select sid from student_awards);

-- display student with highest marks in eng
select firstname, lastname from students
where id in
	(select sid from student_report
	where english =
		(select max(english)
		from student_report));
-- or --
select 
	students.id, firstname, lastname, english 
from 
	students join student_report 
on 
	students.id = student_report.sid 
where english=(
	select max(english)
	from student_report
);
-- display student with lowest marks in hindi
select * from students
where id in (
    select sid from 
	student_report where hindi = (
		select min(hindi) from student_report
	)
);

-- all student with higher than avg in maths
select 
	firstname,lastname, rollno, klass, english, hindi, maths, sst, science
from 
	students join student_report
on students.id = student_report.sid 
where students.id in (
	select sid from student_report 
    where maths>(
		select avg(maths)
		from student_report
	)
);
-- all students that have are higher than the avg total marks
select 
	firstname,lastname, rollno, klass, english, hindi, maths, sst, science
from 
	students join student_report
on 
	students.id = student_report.sid 
where 
	students.id in
		(select sid
		from student_report
		where english+hindi+maths+sst+science > (
			select avg(english+hindi+maths+sst+science) from student_report
		));


