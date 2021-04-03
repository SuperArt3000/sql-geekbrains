SELECT catalogs.name, products.name FROM products
JOIN catalogs ON products.catalog_id = catalogs.id;

SELECT c.name, p.name FROM products AS p
LEFT JOIN catalogs AS c ON p.catalog_id = c.id;