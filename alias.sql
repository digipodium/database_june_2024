use sakila;

select
	name,
    price,
    discount,
    price - (discount/100*price) as marked_price
from
	myproducts
order by marked_price desc ;