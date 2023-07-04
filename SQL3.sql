select*from payment

select min (amount) from payment;
select max (amount) from payment;
select STDDEV (amount) from payment;
select SUM (amount) from payment;
select AVG (amount) from payment;
select count (amount) from payment;
select Variance (amount) from payment;


select*from payment 
order by customer_id

--to calculate the sum of each customer_id
select customer_id, sum(amount) as Sum_amount
from payment
group by customer_id
order by customer_id

--To calculate the sum of a range of values from "a" to "b" 
select sum(amount) as total_sum
from payment 
where customer_id>=1 and customer_id<2; 

--The window function, to performs calculations across a set of rows
select customer_id,amount, sum (amount) over(order by customer_id) as Total_amount
from payment

select 
p. customer_id,
p.amount,
sum(p.amount) over(order by customer_id) as Total_amount,
sum(p.amount) over (PARTITION BY customer_id order by payment_date) as cumulative_amount 
from 
payment p
window
my_window as (PARTITION BY p.customer_id)



SELECT
  p.customer_id,
  r.rental_id,
  r.rental_date, p.amount,
  SUM(p.amount) OVER my_window AS cumulative_revenue,
  AVG(p.amount) OVER my_window AS average_revenue,
  MAX(p.amount) OVER my_window AS max_payment,
  sum(p.amount) over(order by p.customer_id) as Total_amount
FROM
  payment p
JOIN rental r ON p.rental_id = r.rental_id
WINDOW
  my_window AS (PARTITION BY p.customer_id ORDER BY r.rental_date)
ORDER BY
  customer_id, rental_date;
  


  
  
 









