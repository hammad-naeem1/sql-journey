-- subquery
-- is a subquery of query
-- 
-- query(subquery)

-- example # 1

SELECT order_item_id,order_id,product_id ,
(SELECT AVG(unit_price)
from order_items)  as avg_price
from order_items


-- example # 2 

SELECT order_item_id,order_id , unit_price
from order_items
WHERE unit_price>(SELECT AVG(unit_price) from order_items) 


-- example # 3 


 SELECT first_name,last_name 
 FROM  customers
 WHERE customer_id not in
(SELECT DISTINCT customer_id from customers
where refrerral_id is not null) 





