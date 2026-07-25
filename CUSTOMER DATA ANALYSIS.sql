use project_customer_segmentation;
select * from customer;

-- Total number of customers
SELECT COUNT(DISTINCT customer_id) AS Total_Customers
FROM customer; 

-- Customers by Gender
SELECT COUNT(distinct customer_id) AS Total_customers
From customer GROUP BY gender;

-- Revenue by product category
SELECT category, sum(price*quantity) AS revenue
from customer group by category;

-- Revenue by shopping mall
select shopping_mall, sum(price*quantity) AS revenue
from customer group by shopping_mall;

-- Products sold by category
select category, sum(quantity) as products_sold
from customer group by category
order by products_sold desc;

-- payment method distribution
select payment_method, count(*) 
from customer group by payment_method;

-- Average Transaction value by payment method
select payment_method, avg(price*quantity) AS average_transaction
from customer group by payment_method;

