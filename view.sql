-- views
-- a virtual TABLE based on the result-set of sql statment
-- the fieleds in the view are field from one or more real table from in the database
-- they are not rel table but can be interacted with as if they were

--  -- CREATEing a view  --
-- CREATE VIEW employes_attendance as 
--  SELECT first_name,last_name FROM employee


SELECT * from employes_attendance
ORDER BY LAST_name ASC;


-- dropping a view 
drop VIEW  employes_attendance