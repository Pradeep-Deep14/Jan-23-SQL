CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100)
);

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

INSERT INTO customers (customer_id, customer_name) VALUES
(1, 'Alice'),
(2, 'Bob'),
(3, 'Charlie'),
(4, 'David');

INSERT INTO orders (order_id, customer_id, order_date) VALUES
(1, 1, '2023-01-01'),
(2, 2, '2023-01-02'),
(3, 1, '2023-01-03'),
(4, 3, '2023-01-04'),
(5, 1, '2023-01-05'),
(6, 2, '2023-01-06'),
(7, 4, '2023-01-07');

SELECT * FROM CUSTOMERS
SELECT * FROM ORDERS

/*
Write a SQL query to find the average number of orders per customer.
*/




SELECT AVG(order_count) AS average_orders
FROM (
    SELECT COUNT(o.order_id) AS order_count
    FROM customers c
    LEFT JOIN orders o ON c.customer_id = o.customer_id
    GROUP BY c.customer_id
) AS order_counts;
