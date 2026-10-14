SELECT users.name, products.name, orders.amount
FROM users
JOIN orders ON users.id = orders.user_id
JOIN products ON orders.product_id = products.id
WHERE orders.status = 'completed';
SELECT *
FROM users
LEFT JOIN orders ON users.id = orders.user_id;
