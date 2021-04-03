CREATE OR REPLACE VIEW username AS SELECT id, name FROM accounts;
CREATE USER user_read;
GRANT SELECT ON shop.username TO 'user_read'@'localhost' IDENTIFIED WITH sha256_password BY 'user_read';