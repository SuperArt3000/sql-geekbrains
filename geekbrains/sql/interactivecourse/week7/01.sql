CREATE USER shop_read;
GRANT SELECT ON shop.* TO 'shop_read'@'localhost' IDENTIFIED WITH sha256_password BY 'shop_read';

CREATE USER shop;
GRANT ALL ON shop.* TO 'shop'@'localhost' IDENTIFIED WITH sha256_password BY 'shop';