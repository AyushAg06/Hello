--general case statement
-- SELECT customer_id,amount,
-- CASE
-- WHEN amount>2000 THEN 'expensive product'
-- WHEN amount=2000 THEN 'Moderate product'
-- ELSE 'inexpensive'
-- END AS productstatus
-- FROM payments;
--case expression statement
SELECT customer_id,
CASE amount
WHEN 2500 THEN 'prime member'
WHEN 3200.75 THEN 'plus member'
ELSE 'General member'
END AS customerstatus
FROM payments;

