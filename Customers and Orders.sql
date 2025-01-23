CREATE TABLE orders (
         order_id INT PRIMARY KEY, 
         customer_id INT, 
         order_date DATE
     );
     INSERT INTO orders VALUES 
         (1, 1, '2024-01-10'), 
         (2, 2, '2024-01-15'), 
         (3, 3, '2024-02-20');


SELECT * FROM ORDERS

SELECT * FROM CUSTOMERS

/*
List all orders along with customer names.
*/

SELECT C.CUSTOMER_NAME,
	   O.ORDER_ID
FROM CUSTOMERS C
JOIN ORDERS O
ON C.CUSTOMER_ID = O.CUSTOMER_ID