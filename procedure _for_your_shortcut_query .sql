-- store procedure
-- is a prepared sql code that you can save 
--      greate if there is a query you write often

-- (1)
delimiter $
CREATE PROCEDURE find_customers(in id int)
BEGIN 
select * from customers
WHERE customer_id=id;
end$
delimiter ;

call finde_customers(1)

-- ==================================
-- (2)
delimiter $
CREATE PROCEDURE get_customers()
BEGIN 
select * from customers;
end$
delimiter ;
-- #-======================================
--  to call a  PROCEDURE
-- ```we use (        call            )
-- example
call get_customers()
-- -- ==========================================

-- droping a  procedure
drop  procedure get_customers()
-- ==========================1===========================================








