DROP DATABASE IF EXISTS bamazon_DB;
CREATE DATABASE bamazon_DB;

USE bamazon_DB;

CREATE TABLE products(
  item_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  product_name VARCHAR(100) NOT NULL,
  department_name VARCHAR(100) NOT NULL,
  price DECIMAL(10,2) NULL,
  stock_quantity INT NOT NULL
);

INSERT INTO products(product_name, department_name, price, stock_quantity)
VALUES ("Huawei Mate 20 Pro", "Electronics", 900, 1457);
INSERT INTO products(product_name, department_name, price, stock_quantity)
VALUES ("Samsung 50 LCD TV", "Electronics", 553.98, 54);
INSERT INTO products(product_name, department_name, price, stock_quantity)
VALUES ("Acme Paper Clips 500 Box", "Stationary", 3.95, 3250);
INSERT INTO products(product_name, department_name, price, stock_quantity)
VALUES ("Microfiber Towels 20 Pack", "Household", 24.99, 355);
INSERT INTO products(product_name, department_name, price, stock_quantity)
VALUES ("Kubbel Lounge Chair", "Furniture", 450.99, 23);
INSERT INTO products(product_name, department_name, price, stock_quantity)
VALUES ("Vikkstra Coffee Table", "Furniture", 180.50, 68);
INSERT INTO products(product_name, department_name, price, stock_quantity)
VALUES ("12mm Combi Wrench", "Tools", 12.99, 148);
INSERT INTO products(product_name, department_name, price, stock_quantity)
VALUES ("Javascript, The Good Parts", "Books", 13.99, 12025);
INSERT INTO products(product_name, department_name, price, stock_quantity)
VALUES ("Parker Fountain Pen", "Stationary", 5.98, 114);
INSERT INTO products(product_name, department_name, price, stock_quantity)
VALUES ("Shakespeare Compendium", "Books", 25.99, 78);

SELECT * FROM products
