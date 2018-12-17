CREATE DATABASE bamazon;

USE bamazon;

CREATE TABLE products (
id INTEGER(21),
product_name VARCHAR(21),
department_name VARCHAR(21),
price DECIMAL(5,2),
stock_quantity INTEGER (21),
PRIMARY KEY (ID)
);

select * from products;

INSERT INTO products (id, product_name, department_name, price, stock_quantity )
VALUES ("1", "Dove Body Wash", "Beauty/Health", "3.99", "11");

INSERT INTO products (id, product_name, department_name, price, stock_quantity )
VALUES ("2", "Colgate Toothpaste", "Beauty/Health", "2.99", "19");

INSERT INTO products (id, product_name, department_name, price, stock_quantity )
VALUES ("3", "Gillette Shaver ", "Beauty/Health", "3.99", "7");

INSERT INTO products (id, product_name, department_name, price, stock_quantity )
VALUES ("4", "Doritos", "Food", "1.89", "21");

INSERT INTO products (id, product_name, department_name, price, stock_quantity )
VALUES ("5", "Snickers", "Food", "1.29", "13");

INSERT INTO products (id, product_name, department_name, price, stock_quantity )
VALUES ("6", "Dove Soap", "Beauty/Health", "3.99", "11");

INSERT INTO products (id, product_name, department_name, price, stock_quantity )
VALUES ("7", "Xbox One S", "Enterntainment", "199.99", "2");

INSERT INTO products (id, product_name, department_name, price, stock_quantity )
VALUES ("8", "Nintendo Switch", "Entertainment", "299.99", "1");

INSERT INTO products (id, product_name, department_name, price, stock_quantity )
VALUES ("9", "Hoverboard", "Sports/Outdoors", "279.00", "10");

INSERT INTO products (id, product_name, department_name, price, stock_quantity )
VALUES ("10", "Schwinn Hybrid Bike", "Sports/Outdoors", "249.00", "4");