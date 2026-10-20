-- group by 
-- agerrate all raw by a specfic coloum
-- often used wih areegate functions
-- 
-- ex = sum (),max(),min()..

-- example 1
SELECT  min(amount) ,order_date
from transactions
GROUP by order_date

-- example 2 
SELECT max(amount),customer_id
 from transactions
 GROUP by customer_id
HAVING count(amount)>1 and customer_id is NOT null
-- instead of using where
--  we use HAVING with group by 

