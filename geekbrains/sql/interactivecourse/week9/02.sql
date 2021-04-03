DROP PROCEDURE IF EXISTS million_records;
DELIMITER //
CREATE PROCEDURE million_records()
BEGIN
    DECLARE i INT DEFAULT 0;
    WHILE (i < 1000000) DO
		INSERT INTO users (name, birthday_at) VALUES ('test', NULL);
		SET i = i + 1;
	END WHILE;
END//
DELIMITER ;

SELECT COUNT (*) FROM samples AS fst, samples AS snd, samples AS thd, samples AS fth,
samples AS fif, samples AS sth;
INSERT INTO users (name, birthday_at) SELECT fst.name, fst.birthday_at
FROM samples AS fst, samples AS snd, samples AS thd, samples AS fth,
samples AS fif, samples AS sth;
