
SELECT * FROM  staff;
select*from category;
select*from city;
select*from country;
select*from rental;
Select*from payment;

SELECT Staff.staff_id, Category.name
FROM Staff
INNER JOIN Category
ON Staff.staff_id = Category.category_id;

--To get the maximum return date from rental Table
select max(return_date) from rental;
select sum(Customer_id) from rental;
select max(rental_id) from rental;
select min(rental_id) from rental;


select rental.inventory_id, rental.customer_id, payment.amount,payment.payment_date 
from rental left JOIN payment ON rental.customer_id = payment.customer_id
ORDER BY payment_date ASC;


SELECT COUNT(*) AS record_count
FROM payment
where amount>1;


SELECT COUNT(*) AS record_count
FROM rental;










