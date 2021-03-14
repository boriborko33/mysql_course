-- CROSS JOIN
SELECT * FROM customer, orders;

-- INNER JOINS: 
-- /IMPLICIT INNER JOIN
SELECT * FROM customer, orders WHERE customer.id = orders.customer_id;

SELECT first_name, last_name, order_date, amount FROM customer, orders WHERE customer.id = orders.customer_id;

-- /EXPLICIT INNER JOIN 
SELECT * FROM customer JOIN orders ON customer.id = orders.customer_id;

-- LEFT JOIN 
SELECT * FROM customer LEFT JOIN orders ON customer.id = orders.customer_id; 

-- RIGHT JOIN 
SELECT * FROM customer RIGHT JOIN orders ON customer.id = orders.customer_id;

-- DELETE CASCADE 
CREATE TABLE orders (
    id INT AUTO_INCREMENT PRIMARY KEY,
    order_date DATE, 
    amount DEC(8,2),
    customer_id INT,
    FOREIGN KEY(customer_id) REFERENCES customer(id) ON DELETE CASCADE;  