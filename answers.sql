-- Problem 1
SELECT * FROM salespeople;

-- Problem 2
SELECT * FROM salespeople WHERE region = 'Northwest'

-- Problem 3
SELECT email FROM salespeople WHERE region = 'Southwest'

-- Problem 4
SELECT givenname, surname, email FROM salespeople WHERE region = 'Northwest'

-- Problem 5
SELECT common_name FROM melons WHERE price > 5;

-- Problem 6
SELECT melon_type, common_name FROM melons WHERE melon_type = 'Watermelon' AND price > 5;

-- Problem 7
SELECT common_name FROM melons WHERE common_name LIKE 'C%';

-- Problem 8
SELECT common_name FROM melons WHERE common_name LIKE '%Golden%'

-- Problem 9
SELECT DISTINCT region FROM salespeople;

-- Problem 10
SELECT email FROM salespeople WHERE region = 'Northwest' OR region = 'Southwest'

-- Problem 11
SELECT email FROM salespeople WHERE region IN ('Northwest', 'Southwest');

-- Problem 12
SELECT email, givenname, surname FROM salespeople WHERE region IN ('Northwest', 'Southwest') AND surname LIKE ('M%')

-- Problem 13
SELECT melon_type, common_name, price, (price * 0.735693) AS euros FROM melons;

-- Problem 14
select count(*) from customers

-- Problem 15
SELECT count(*) FROM orders WHERE shipto_state = 'CA'

-- Problem 16
SELECT sum(order_total) FROM orders

-- Problem 17
SELECT AVG(order_total) FROM orders

-- Problem 18
SELECT min(order_total) FROM orders

-- Problem 19
SELECT id FROM customers WHERE email = 'phyllis@demizz.edu';

-- Problem 20
SELECT id, status, order_total FROM orders WHERE customer_id = '100'

-- Problem 21
SELECT id, status, order_total FROM orders WHERE customer_id = (SELECT id FROM customers WHERE email = 'phyllis@demizz.edu');

-- Problem 22
SELECT orders.id, status, order_total FROM orders JOIN customers ON (orders.customer_id = customers.id) WHERE customers.email = 'phyllis@demizz.edu'

-- Problem 23
SELECT *  FROM order_items WHERE order_id = '2725'

-- Problem 24
SELECT common_name, melon_type, order_items.quantity, order_items.unit_price, order_items.total_price FROM melons JOIN order_items ON (melons.id = order_items.melon_id) WHERE order_id = '2725'

-- Problem 25
SELECT SUM(order_total) FROM orders WHERE salesperson_id IS NULL

-- Problem 26
SELECT givenname, surname, SUM(order_total), (SUM(order_total)*.15) AS commission FROM salespeople LEFT JOIN orders ON (orders.salesperson_id = salespeople.id) GROUP BY salespeople.id

