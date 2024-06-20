use sakila;
drop table if exists books;
drop table if exists authors;
create table if not exists authors(
	id int auto_increment primary key,
    name varchar(25) not null,
    country varchar(25),
    gender varchar(1),
    created_at timestamp default current_timestamp
);
create table if not exists books(
	id int auto_increment primary key,
    title varchar(100) not null,
    publication varchar(25),
    author_id int,
    pages int,
    created_at timestamp default current_timestamp,
    foreign key (author_id) references authors(id)
);
-- 3 authors
insert into authors
	(name, country, gender)
values 
	('Brandon Sanderson', 'US', 'M'),
	('Amish', 'India', 'M'),
	('J K Rowling', 'UK', 'F');
-- view authors
select * from authors;

-- adding 3 books
insert into books
	(title, publication, author_id, pages)
values
	('Way of the kings', 'TOR books', 1, 499),
    ('The immortals of meluha', 'Harper Collins', 2, 415),
    ('The sunlit man', 'Dragonsteel', 1, 300);
select * from books;