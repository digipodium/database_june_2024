use sakila;
-- create table mytasks(
-- 	id int primary key auto_increment,
--     work varchar(50),
--     -- enum help in restriting values to a group of options
--     status enum('complete', 'incomplete', 'inprogress','inactive'),
--     created_at timestamp default current_timestamp
-- );
-- insert into mytasks
-- 	(work, status)
-- values
-- 	('eat food', 'complete'),
--     ('buy shirt', 'incomplete'),
--     ('sleep','inprogress'),
--     ('learn coding', 'incomplete'),
--     ('learn sql', 'inprogress');

-- field() function for custom sorting
select * from mytasks
order by field(status, 'incomplete', 'inprogress', 'complete');
