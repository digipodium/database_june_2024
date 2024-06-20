use sakila;
-- name varchar(15), email varchar(30), subject varchar(100), message varchar(255)
create table if not exists contacts(
	name varchar(15),
    email varchar(30),
    subject varchar(100),
    message varchar(255)
);
-- look at the table schema
describe contacts;
-- basic data insertion
insert into contacts values(
	"rohan", "rohan@gmail.com", 
	"kuch bhi", "aesi hi spam kiya"
);
insert into contacts values(
	"mohan", "mohan@gmail.com", 
	"i found a bug", "Your website is buggy!"
);
-- viewing the data
select * from contacts;