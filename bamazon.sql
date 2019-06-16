-- Drops the bamazon_db if it exists currently --
DROP DATABASE IF EXISTS bamazon_db;
-- Creates the "bamazon_db" database --
CREATE DATABASE bamazon_db;

-- Makes it so all of the following code will affect animals_db --
USE bamazon_db;

-- Creates the table "people" within animals_db --
CREATE TABLE products
(
    -- Creates a numeric column called "id" which will automatically increment its default value as we create new rows --
  item_id INTEGER (11) AUTO_INCREMENT NOT NULL,
    -- Makes a string column called "product_name" which cannot contain null --
  product_name VARCHAR (30) NOT NULL,
    -- Makes a string column called "department_name" which cannot contain null --
  department_name VARCHAR (30) NOT NULL,
    -- Makes an numeric column called "price" --
  price INTEGER (30) NOT NULL,
    -- Makes an numeric column called "stock_quantity" --
  stock_quantity INTEGER (30) NOT NULL,
   -- Sets id as this table's primary key which means all data contained within it will be unique --
  PRIMARY KEY (item_id)
);

SELECT * FROM products;

    -- Creates new rows containing data in all named columns --
    INSERT INTO products
        (item_id, product_name, department_name, price, stock_quantity)
    VALUES
        ( 1, "Sour Diesel", "sativa", 30, 100);

    INSERT INTO products
        (item_id, product_name, department_name, price, stock_quantity)
    VALUES
        ( 2, "Jack Herer", "sativa", 40, 100);

    INSERT INTO products
        (item_id, product_name, department_name, price, stock_quantity)
    VALUES
        ( 3, "Durban Poison", "sativa", 25, 100);

    INSERT INTO products
        (item_id, product_name, department_name, price, stock_quantity)
    VALUES
        ( 4, "Chemdog", "hybrid", 35, 100);

    INSERT INTO products
        (item_id, product_name, department_name, price, stock_quantity)
    VALUES
        ( 5, "Gelato", "hybrid", 20, 100);

    INSERT INTO products
        (item_id, product_name, department_name, price, stock_quantity)
    VALUES
        ( 6, "Trainwreck", "hybrid", 22, 100);

    INSERT INTO products
        (item_id, product_name, department_name, price, stock_quantity)
    VALUES
        ( 7, "Northern Lights", "indica", 35, 100);

    INSERT INTO products
        (item_id, product_name, department_name, price, stock_quantity)
    VALUES
        ( 8, "Grandaddy Purple", "indica", 20, 100);

    INSERT INTO products
        (item_id, product_name, department_name, price, stock_quantity)
    VALUES
        ( 9, "MK Ultra", "indica", 40, 100);

    INSERT INTO products
        (item_id, product_name, department_name, price, stock_quantity)
    VALUES
        ( 10, "Bubba Kush", "indica", 30, 100);

