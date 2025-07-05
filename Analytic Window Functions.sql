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
select new_id,
FIRST_VALUE(new_id)OVER(ORDER BY new_id)AS "first_value",
LAST_VALUE(new_id)OVER(ORDER BY new_id)AS "last_value",
LEAD(new_id)OVER(ORDER BY new_id)AS "lead",
LAG(new_id)OVER(ORDER BY new_id)AS "lag"
FROM testing_data;
-- select new_id,
-- LEAD(new_id,2)OVER(ORDER BY new_id)AS "lead",
-- LAG(new_id,2)OVER(ORDER BY new_id)AS "lag"
-- FROM testing_data;