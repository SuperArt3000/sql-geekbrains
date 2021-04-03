DROP TRIGGER IF EXISTS check_name_and_desc;
DELIMITER //
CREATE TRIGGER check_name_and_desc BEFORE INSERT ON products
FOR EACH ROW
BEGIN
    IF (NEW.name is NULL AND NEW.description is NULL) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'INSERT canceled';
    END IF;
END//

DROP TRIGGER IF EXISTS update_name_and_desc;
CREATE TRIGGER update_name_and_desc BEFORE UPDATE ON products
FOR EACH ROW
BEGIN
    IF (NEW.name is NULL AND NEW.description is NULL) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'UPDATE canceled';
    END IF;
END//
DELIMITER ;