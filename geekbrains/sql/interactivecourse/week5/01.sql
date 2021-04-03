SELECT DISTINCT users.name FROM users
JOIN orders ON orders.user_id = users.id;

SELECT name FROM users WHERE id IN (SELECT user_id FROM orders);
