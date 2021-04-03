START TRANSACTION;
INSERT INTO sample.users (name, birthday_at) SELECT src.name, src.birthday_at FROM shop.users AS src WHERE src.id = 1;
DELETE FROM shop.users WHERE users.id = 1;
COMMIT;