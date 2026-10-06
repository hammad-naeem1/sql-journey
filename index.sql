            -- (   index    )
-- index are used to find values within a specific coloum more quacikly
-- my sql seach normlly sequncely through a coloum
-- the more the coloum ,the more expensive the opertaion is. 

--  usage :
--  using indexing the searching and SELECTing takes less time
--  update the more time

-- showing a index 
SHOW INDEX from customers;


-- -- creating a index
CREATE INDEX last_name_idx
on customers(last_name)


-- creating  a multi coloum index 
create index last_and_first_name_idx
on customers(last_name,first_name)


-- dropping a index
ALTER TABLE customers
drop INDEX last_name_idx









