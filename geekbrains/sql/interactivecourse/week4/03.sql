SELECT ROUND(EXP(SUM(LOG(ABS(x))))) AS result FROM tbl;
-- с сотыми:
-- SELECT ROUND(EXP(SUM(LOG(ABS(x)))), 2) AS result FROM tbl;