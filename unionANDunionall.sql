-- CREATE TABLE cusA
-- ("cust_name" varchar(20),
--  "amount" numeric
-- );
-- CREATE TABLE cusB
-- ("cust_name" varchar(20),
-- "amount" numeric
-- );
-- INSERT INTO cusA
-- (cust_name,amount)
-- VALUES
-- ('MOHAN',2100),
-- ('GOPI',1200),
-- ('GOVIND',5000);
-- INSERT INTO cusB
-- (cust_name,amount)
-- VALUES
-- ('MOHAN',2100),
-- ('GOPAL',1500);
-- SELECT cust_name,amount FROM cusA
-- UNION
-- SELECT cust_name,amount FROM cusB;
SELECT cust_name,amount FROM cusA
UNION ALL
SELECT cust_name,amount FROM cusB;