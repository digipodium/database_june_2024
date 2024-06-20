use sakila;

-- show table schema
describe actor;

-- get all columns 
select * from actor;

-- get a specific column
select first_name from actor;

-- get a list of column
select first_name, last_name from actor;

-- get a list of column and limit records to 10
select actor_id, first_name, last_name from actor limit 10;