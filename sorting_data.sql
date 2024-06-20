use world;

show tables;

select * from country;

-- sorting by a single column
select
	name, continent, region, population
from country
order by continent;

-- sorting on multiple columns
select 
	continent, region, name, population
from 
	country
order by
	continent,
    region,
    population desc;

-- display the top 10 countries with highest population
select 
	name, continent, population
from 
	country
order by 
	population desc
limit 10;
