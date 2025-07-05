-- CREATE TABLE customers (
--     customer_id INT PRIMARY KEY,
--     customer_name VARCHAR(100)
-- );
-- CREATE TABLE Transactions (
--     customer_id INT,
--     amount NUMERIC(10,2),
--     FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
-- );
-- -- Insert into customers
-- INSERT INTO customers (customer_id, customer_name) VALUES
-- (101, 'John'),
-- (102, 'Alice'),
-- (103, 'Bob'),
-- (104, 'Mary');

-- -- Insert into payments
-- INSERT INTO Transactions (customer_id, amount) VALUES
-- (101, 2500.00),
-- (102, 1500.50),
-- (103, 3200.75);
SELECT *
FROM customers AS c
FULL OUTER JOIN TRansactions AS t
ON c.customer_id=t.customer_id