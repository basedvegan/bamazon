-- Drops the bamazon_DB if it exists currently --
DROP DATABASE IF EXISTS bamazon_DB;
-- Creates the "amazon_DB" database --
CREATE DATABASE bamazon_DB;

-- Makes it so all of the following code will affect animals_db --
USE bamazon_DB;

-- Creates the table "products" within bamazon_DB --
CREATE TABLE products
(
    -- Creates a numeric column called "item_id" 
  item_id INTEGER (11) NOT NULL,
    -- Makes a string column called "product_name" which cannot contain null --
  product_name VARCHAR (30) NOT NULL,
    -- Makes a string column called "department_name" which cannot contain null --
  department_name VARCHAR (30) NOT NULL,
    -- Makes an numeric column called "price" --
  price INTEGER (30) NOT NULL,
    -- Makes an numeric column called "stock_quantity" --
  stock_quantity INTEGER (30) NOT NULL,
   -- Sets item_id as this table's primary key which means all data contained within it will be unique --
  PRIMARY KEY (item_id)
);



    -- Creates new rows containing data in all named columns --
    INSERT INTO products
        (item_id, product_name, department_name, price, stock_quantity)
    VALUES
        ( 1, "Mango", fruit, 2, 100);

    INSERT INTO products
        (item_id, product_name, department_name, price, stock_quantity)
    VALUES
        ( 2, "Plum", "fruit", 3, 100);

    INSERT INTO products
        (item_id, product_name, department_name, price, stock_quantity)
    VALUES
        ( 3, "Peach", "fruit", 1, 100);

    INSERT INTO products
        (item_id, product_name, department_name, price, stock_quantity)
    VALUES
        ( 4, "Tomato", "fruit", 2, 100);

    INSERT INTO products
        (item_id, product_name, department_name, price, stock_quantity)
    VALUES
        ( 5, "Watermelon", "fruit", 6, 100);

    INSERT INTO products
        (item_id, product_name, department_name, price, stock_quantity)
    VALUES
        ( 6, "Broccoli", "vegetable", 3, 100);

    INSERT INTO products
        (item_id, product_name, department_name, price, stock_quantity)
    VALUES
        ( 7, "Turnip", "vegetable", 4, 100);

    INSERT INTO products
        (item_id, product_name, department_name, price, stock_quantity)
    VALUES
        ( 8, "Asparagus", "vegetable", 2, 100);

    INSERT INTO products
        (item_id, product_name, department_name, price, stock_quantity)
    VALUES
        ( 9, "Artichoke", "vegetable", 4, 100);

    INSERT INTO products
        (item_id, product_name, department_name, price, stock_quantity)
    VALUES
        ( 10, "Corn", "vegetable", 3, 100);

