SELECT @del := created_at FROM tbl ORDER BY created_at DESC LIMIT 5;
DELETE FROM tbl WHERE created_at < @del;