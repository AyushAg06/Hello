-- CREATE TABLE emp
-- ("emp_id" bigint PRIMARY KEY,
-- "empname" varchar(30) NOT NULL,
-- "manager_id" bigint 
-- );
-- INSERT INTO emp
-- (emp_id,empname,manager_id)
-- VALUES
-- (1,'Agni',3),
-- (2,'Akash',4),
-- (3,'Dharti',2),
-- (4,'Vayu',3);
SELECT t2.empname AS employeename,t1.empname AS managername
FROM emp AS t1 JOIN
emp AS t2
ON t1.emp_id=t2.manager_id;