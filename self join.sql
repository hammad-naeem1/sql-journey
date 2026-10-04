# self join 
#join another copy of a TABLE to itself 
#ued to compare rows of the same table 
#helps to display a heirarchy of data

SELECT a.customer_id,a.first_name,a.last_name,
       Concat(b.first_name," ",b.last_name) as 'refreed by'
from customers as a
INNER JOIN customers as b
on a.refrerral_id=b.customer_id

