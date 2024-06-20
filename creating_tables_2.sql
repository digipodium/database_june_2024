use sakila;
-- users
-- id, name, age, gender, created_at
drop table if exists users;
create table if not exists users(
	id int auto_increment primary key,
    name varchar(15) unique,
    age int,
    gender varchar(1),
    created_at timestamp default current_timestamp
);

describe users;