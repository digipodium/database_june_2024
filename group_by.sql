use sakila;
select * from film;

select 
	count(title) as num_titles, 
    rental_duration
from film
group by rental_duration
order by num_titles;

-- find unique values in a column
select distinct rental_duration from film;

describe film;

select avg(length), rating
from film
group by rating;

select min(length), rating
from film
group by rating;
