-- SELECT * FROM payments
-- SELECT * FROM customer
-- WITH my_cte AS(
-- 	SELECT *,AVG(p.amount)OVER(ORDER BY p.customer_id) AS "average",
-- 	COUNT(p.mode)OVER(ORDER BY c.customer_id)AS "count"
-- 	FROM payments AS p
-- 	INNER JOIN customer AS c
-- 	ON p.customer_id=c.customer_id
-- )
-- SELECT * FROM my_cte;
WITH my_cte AS(
SELECT mode,MAX(amount) AS max_amount,SUM(amount) AS total_price
FROM payments GROUP BY mode
)
SELECT p.*,my.max_amount,my.total_price FROM payments AS p
JOIN my_cte AS my ON p.mode=my.mode
ORDER BY p.mode;