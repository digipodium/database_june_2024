use sakila;

select * from authors;

-- cross join (not used in maximum situations)
select * from authors cross join books;

-- inner join
select 
	name, title, pages, books.created_at
from authors
inner join books
on authors.id = books.author_id
order by name;

-- outer join (not in version 8.0)
-- select 
-- 	name, title, pages, books.created_at
-- from authors
-- full outer join books
-- on authors.id = books.author_id
-- order by name;

-- left join
select 
	name, title, pages, books.created_at
from authors
left join books
on authors.id = books.author_id
order by name;

-- right join
select 
	name, title, pages, books.created_at
from authors
right join books
on authors.id = books.author_id
order by name;

