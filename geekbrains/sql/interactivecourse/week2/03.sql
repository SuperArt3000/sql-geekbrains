INSERT INTO sample.cat SELECT * FROM shop.catalogs ON DUPLICATE KEY UPDATE name=VALUES(name);
-- можно еще данной командой выполнить задание:
-- REPLACE INTO sample.cat SELECT * FROM shop.catalogs;