DROP TABLE IF EXISTS logs;
CREATE TABLE logs (
    created_at DATETIME,
	name_table VARCHAR(255),
	id_table BIGINT(20) UNSIGNED,
	content_table VARCHAR(255)
) ENGINE=Archive;

DROP TRIGGER IF EXISTS logs_users;
DELIMITER //
CREATE TRIGGER logs_users AFTER INSERT ON users
FOR EACH ROW
BEGIN
	INSERT INTO logs VALUES (NOW(), 'users', NEW.id, NEW.name);
END//

DROP TRIGGER IF EXISTS logs_products;
CREATE TRIGGER logs_products AFTER INSERT ON products
FOR EACH ROW
BEGIN
	INSERT INTO logs VALUES (NOW(), 'products', NEW.id, NEW.name);
END//

DROP TRIGGER IF EXISTS logs_catalogs;
CREATE TRIGGER logs_catalogs AFTER INSERT ON catalogs
FOR EACH ROW
BEGIN
	INSERT INTO logs VALUES (NOW(), 'catalogs', NEW.id, NEW.name);
END//
DELIMITER ;