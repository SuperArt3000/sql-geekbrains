DROP FUNCTION IF EXISTS hello;
DELIMITER //
CREATE FUNCTION hello ()
RETURNS VARCHAR(255) NOT DETERMINISTIC
BEGIN
    DECLARE hours TIME;
    SET hours = DATE_FORMAT(CURTIME(), '%H:%i:%s');
    IF (hours BETWEEN '06:00:00' AND '11:59:59') THEN
        RETURN 'Доброе утро';
    ELSEIF (hours BETWEEN '12:00:00' AND '17:59:59') THEN
        RETURN 'Добрый день';
    ELSEIF (hours BETWEEN '18:00:00' AND '23:59:59') THEN
	    RETURN 'Добрый вечер';
    ELSE
        RETURN 'Доброй ночи';
    END IF;
END//
DELIMITER ;