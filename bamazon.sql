DROP DATABASE IF EXISTS bamazon_DB;
CREATE DATABASE bamazon_DB;

USE bamazon_DB;

CREATE TABLE products(
  id INT NOT NULL AUTO_INCREMENT,
  item_id INT NOT NULL,
  product_name VARCHAR(100) NOT NULL,
  department_name VARCHAR(100) NOT NULL,
  price DECIMAL(10,2) NULL,
  stock_quantity INT NOT NULL,
  PRIMARY KEY (id)
);

INSERT INTO products(item_id, product_name, department_name, price, stock_quantity)
VALUES (555001, "Huawei Mate 20 Pro", "Electronics", 900, 1457);
INSERT INTO products(item_id, product_name, department_name, price, stock_quantity)
VALUES (555002, "Samsung 50 LCD TV", "Electronics", 553.98, 54);
INSERT INTO products(item_id, product_name, department_name, price, stock_quantity)
VALUES (555003, "Acme Paper Clips 500 Box", "Stationary", 3.95, 3250);
INSERT INTO products(item_id, product_name, department_name, price, stock_quantity)
VALUES (555004, "Microfiber Towels 20 Pack", "Household", 24.99, 355);
INSERT INTO products(item_id, product_name, department_name, price, stock_quantity)
VALUES (555005, "Kubbel Lounge Chair", "Furniture", 450.99, 23);
INSERT INTO products(item_id, product_name, department_name, price, stock_quantity)
VALUES (555006, "Vikkstra Coffee Table", "Furniture", 180.50, 68);
INSERT INTO products(item_id, product_name, department_name, price, stock_quantity)
VALUES (555007, "12mm Combi Wrench", "Tools", 12.99, 148);
INSERT INTO products(item_id, product_name, department_name, price, stock_quantity)
VALUES (555008, "Javascript, The Good Parts", "Books", 13.99, 12025);
INSERT INTO products(item_id, product_name, department_name, price, stock_quantity)
VALUES (555009, "Parker Fountain Pen", "Stationary", 5.98, 114);
INSERT INTO products(item_id, product_name, department_name, price, stock_quantity)
VALUES (555010, "Shakespeare Compendium", "Books", 25.99, 78);

SELECT * FROM products
