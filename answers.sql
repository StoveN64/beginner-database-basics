-- TABLE-PERSON
-- 1
CREATE TABLE person (
  person_id SERIAL PRIMARY KEY,
  name VARCHAR (200),
  age INTEGER,
  height INTEGER,
  city VARCHAR(100),
  favorite_color VARCHAR(50)
  );
-- 2
INSERT INTO person (name, age, height, city, favorite_color)
VALUES ( 'bob', 48, 175, 'Detroit', 'orange'),
('steve', 26, 186, 'Madison', 'purple'),
('craig', 28, 192, 'Chicago', 'pink'),
('michele', 39, 170, 'Milwaukee', 'red'),
('emily', 28, 172, 'Denver', 'blue');
-- 3
SELECT * FROM person
ORDER BY height DESC;
-- 4
SELECT * FROM person
ORDER BY height ASC;
-- 5
SELECT * FROM person
ORDER BY age DESC;
-- 6
SELECT * FROM person 
WHERE age > 20;
-- 7
SELECT * FROM person 
WHERE age = 18;
-- 8
SELECT * FROM person 
WHERE age < 20 OR age > 30;
-- 9
SELECT * FROM person 
WHERE age != 27;
-- 10
SELECT * FROM person 
WHERE favorite_color != 'red';
-- 11
SELECT * FROM person 
WHERE favorite_color != 'red' AND favorite_color != 'blue';
-- 12
SELECT * FROM person
WHERE favorite_color = 'orange' OR favorite_color = 'green';
-- 13
SELECT * FROM person 
WHERE favorite_color IN ( 'orange', 'green', 'blue' );
-- 14
SELECT * FROM person 
WHERE favorite_color IN ( 'yellow', 'purple' )

-- TABLE-ORDERS
-- 1
CREATE TABLE orders (
    order_id SERIAL PRIMARY KEY, 
    person_id INTEGER, 
    product_name VARCHAR(300), 
    product_price NUMERIC, 
    quantity INTEGER
)
-- 2
INSERT INTO orders ( person_id, product_name, product_price, quantity ) 
VALUES ( 1, 'Chair', 19.99 , 6 ),
( 2, 'Fridge', 1999.99, 1 ),
( 3, 'Oven', 3500.99, 2 ),
( 4, 'Microwave', 79.99, 2 ),
( 5, 'Table', 120.99 ,  4);
-- 3
SELECT * FROM orders;
-- 4
SELECT SUM(quantity) FROM orders;
-- 5
SELECT SUM(product_price * quantity) FROM orders;
-- 6
SELECT SUM(product_price * quantity) FROM orders WHERE person_id = 1;
-- TABLE-ARTIST
-- 1
INSERT INTO artist (name) 
VALUES ('steve'), 
('trevor'),
('bryan');
-- 2
SELECT * FROM artist 
ORDER BY name DESC LIMIT 10;
-- 3
SELECT * FROM artist 
ORDER BY name ASC LIMIT 5;
-- 4
SELECT * FROM artist 
WHERE name LIKE 'Black%';
-- 5
SELECT * FROM artist 
WHERE name LIKE '%Black%';
-- TABLE-EMPLOYEE
-- 1
SELECT first_name, last_name FROM employee 
WHERE city = 'Calgary';
-- 2
SELECT MAX(birth_date) FROM employee;
-- 3
SELECT MIN(birth_date) FROM employee;
-- 4
SELECT * FROM employee 
WHERE reports_to = 2;
-- 5
SELECT COUNT(*) FROM employee 
WHERE city = 'Lethbridge';
-- TABLE-INVOICE
-- 1
SELECT COUNT(*) FROM invoice 
WHERE billing_country = 'USA';
-- 2
SELECT MAX(total) FROM invoice;
-- 3
SELECT MIN(total) FROM invoice;
-- 4
SELECT * FROM invoice 
WHERE total > 5;
-- 5
SELECT COUNT(*) FROM invoice 
WHERE total < 5;
-- 6
SELECT COUNT(*) FROM invoice 
WHERE billing_state IN ('CA', 'TX', 'AZ');
-- 7
SELECT AVG(total) FROM invoice;
-- 8
SELECT SUM(total) FROM invoice;