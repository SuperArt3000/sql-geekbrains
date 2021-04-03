SELECT AVG(TIMESTAMPDIFF(YEAR, birthday_at, NOW())) AS 'average age' FROM users WHERE birthday_at IS NOT NULL;
-- можно убрать сотые через FLOOR:
-- SELECT FLOOR(AVG(TIMESTAMPDIFF(YEAR, birthday_at, NOW()))) AS 'average age' FROM users WHERE birthday_at IS NOT NULL;
