CREATE TEMPORARY TABLE temp (day INT);
INSERT INTO temp VALUES
(1), (2), (3), (4), (5), (6), (7), (8), (9), (10), (11), (12), (13), (14), (15), (16), (17), (18), (19), (20),
(21), (22), (23), (24), (25), (26), (27), (28), (29), (30), (31);

SELECT ADDDATE('2018-07-31', INTERVAL temp.day DAY) AS august,
NOT ISNULL(tbl.name) AS total FROM temp 
LEFT JOIN tbl ON ADDDATE('2018-07-31', INTERVAL temp.day DAY) = tbl.created_at ORDER BY august;