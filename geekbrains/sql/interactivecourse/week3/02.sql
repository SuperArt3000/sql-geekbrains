UPDATE users SET created_at = STR_TO_DATE(created_at, '%d.%m.%Y %T');
ALTER TABLE users MODIFY COLUMN created_at DATETIME;

SELECT STR_TO_DATE(created_at, '%d.%m.%Y %k:%i') FROM users;
UPDATE users SET created_at = STR_TO_DATE(created_at, '%d.%m.%Y %k:%i'),
UPDATE users SET updated_at = STR_TO_DATE(updated_at, '%d.%m.%Y %k:%i');
ALTER TABLE users CHANGE created_at created_at DATETIME DEFAULT CURRENT_TIMESTAMP;
ALTER TABLE users CHANGE updated_at updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP;