use sakila;

desc mytasks;

select * from mytasks;

update mytasks
set 
	status = 'inprogress',
	work = 'buy suit'
where id = 2;

-- delete 
delete from mytasks where id = 1;

-- clear the table records (rows)
truncate mytasks;