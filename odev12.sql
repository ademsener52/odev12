select count(*) from film where length>(select avg(length) from film);  --1

select count(*) from film where rental_rate=(select max(rental_rate) from film);  --2

(select * from film where rental_rate=(select min(rental_rate) from film))
union
(select * from film where replacement_cost=(select min(replacement_cost) from film));  --3

select customer_id,count(payment)  from payment group by customer_id order by count(*) desc --4