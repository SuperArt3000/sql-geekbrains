DROP FUNCTION IF EXISTS FIBONACCI;
DELIMITER //
CREATE FUNCTION FIBONACCI(num INT)
RETURNS INT NOT DETERMINISTIC
BEGIN
    DECLARE i, fib1, fib2, res INT DEFAULT 0;
    SET fib1 = 1;
    SET fib2 = 1;
    IF (num < 0) THEN
        RETURN (-1);
    END IF;
    IF (num = 0) THEN
        RETURN num;
    END IF;
    WHILE (i < num - 2) DO
        SET res = fib1 + fib2;
        SET fib1 = fib2;
        SET fib2 = res;
        SET i = i + 1;
    END WHILE;
    RETURN fib2;
END//
DELIMITER ;