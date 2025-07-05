-- CREATE TABLE test_data
-- ("new_id" int8 NOT NULL,
-- "new_cat" varchar(10) NOT NUll
-- );
-- INSERT INTO test_data
-- (new_id,new_cat)
-- VALUES
-- (100,'Agni'),
-- (200,'Agni'),
-- (500,'Dharti'),
-- (700,'Dharti'),
-- (200,'Vayu'),
-- (300,'Vayu'),
-- (500,'Vayu');
SELECT new_id,new_cat,
SUM(new_id)OVER(PARTITION BY new_cat ORDER BY new_id) AS "total",
AVG(new_id)OVER(PARTITION BY new_cat ORDER BY new_id) AS "average",
COUNT(new_id)OVER(PARTITION BY new_cat ORDER BY new_id) AS "count",
MIN(new_id)OVER(PARTITION BY new_cat ORDER BY new_id) AS "min",
MAX(new_id)OVER(PARTITION BY new_cat ORDER BY new_id) AS "max"
FROM test_data;