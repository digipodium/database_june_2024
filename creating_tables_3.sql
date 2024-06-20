use sakila;

create table if not exists myproducts(
	id int primary key auto_increment,
    name varchar(20),
    price float,
    discount float,
    qty int default 100,
    created_at timestamp default current_timestamp
);
-- inserting
insert into myproducts
	(name, price, discount) 
values
	('ice-tea', 50.25, 5),
    ('colddrink', 20, 3),
    ('icecream', 250, 5);
-- display
select * from myproducts;
