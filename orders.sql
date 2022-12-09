-- Create a table called orders that records: order_id, person_id, product_name, product_price, quantity.
CREATE TABLE orders (
    order_id SERIAL PRIMARY KEY,
    person_id INT NOT NULL,
    product_name VARCHAR(50) NOT NULL,
    product_price DECIMAL NOT NULL,
    quantity DECIMAL
);

-- Add 5 orders to the orders table.
-- Make orders for at least two different people.

-- person_id should be different for different people.
INSERT INTO orders (person_id, product_name, product_price, quantity) VALUES
(4, 'Laundry Detergent', 10.89, 2),
(2, 'Dryer Sheet', 6.55, 1),
(3, 'Stain Remover', 3.75, 3),
(2,'Bleach', 1.99, 2),
(1, 'Fabric Softener', 2.65, 2);

-- Select all the records from the orders table.
SELECT * FROM orders;

-- Calculate the total number of products ordered.
SELECT SUM(quantity) FROM orders;

-- Calculate the total order price.
SELECT SUM(product_price * quantity) FROM orders; 

-- Calculate the total order price by a single person_id.
SELECT SUM(product_price * quantity), person_id FROM orders 
GROUP BY person_id;






