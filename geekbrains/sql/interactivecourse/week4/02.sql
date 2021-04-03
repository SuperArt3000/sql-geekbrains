SELECT DAYNAME(birthday_at + INTERVAL(YEAR(NOW()) - YEAR(birthday_at)) YEAR) AS `day of the week`, COUNT(*) AS total FROM users GROUP BY `day of the week`
ORDER BY FIELD(`day of the week`, 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday');

SELECT DATE_FORMAT(DATE(CONCAT_WS('-', YEAR(NOW()), MONTH(birthday_at), DAY(birthday_at))), '%W') AS day, COUNT(*) AS total FROM users GROUP BY day;
