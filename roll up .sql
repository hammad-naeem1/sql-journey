
-- Roll up
-- it is a extension for group by clause
-- produces another row and shows the grand total (super-aggerate-value)

-- example #1
SELECT SUM(amount),order_date
from transactions
GROUP by order_date WITH ROLLUP


-- example #2
SELECT count(transaction_id),order_date
from transactions
GROUP by order_date WITH ROLLUP


-- example #3 
SELECT count(transaction_id) as " # of orders",customer_id
FROM transactions
GROUP by customer_id WITH ROLLUP
 


