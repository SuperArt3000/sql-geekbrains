SELECT * FROM storehouses_products ORDER BY IF(`values` = 0, 999999999, `values`);
-- SELECT * FROM <table_name> ORDER BY IF(<sort> = 0, 999999999, <sort>);

SELECT * FROM storehouses_products ORDER BY IF(`values` > 0, 0, 1), `values`;