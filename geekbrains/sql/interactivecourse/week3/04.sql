SELECT * FROM users WHERE birthday_at IN ('may', 'august');

SELECT * FROM users WHERE DATE_FORMAT(birthday_at, '%M') IN ('may', 'august');