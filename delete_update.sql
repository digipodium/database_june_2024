use sakila;

desc mytasks;

select * from mytasks;

update mytasks
set 
	status = 'inprogress',
	work = 'buy suit'
where id = 2;

-- delete 
delete from 
	mytasks 
where id = 1;

-- clear the table records (rows)
truncate mytasks;

-- delete syntax
delete from 
	table_name 
where 
	condition;

-- update syntax
update table_name
set 
	column_name = value
where 
	condition;