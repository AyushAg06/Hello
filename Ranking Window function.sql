-- create table testing_data
-- ("new_id" bigint NOT NULL
-- );
-- INSERT INTO testing_data
-- (new_id)
-- VALUES
-- (100),
-- (200),
-- (200),
-- (300),
-- (500),
-- (500),
-- (700);
SELECT new_id,
ROW_NUMBER()OVER(order by new_id)AS "row_number",
RANK()OVER(order by new_id)AS "rank",
DENSE_RANK()OVER(order by new_id)AS "dense_rank",
PERCENT_RANK()OVER(order by new_id)AS "percent_rank"
FROM testing_data;