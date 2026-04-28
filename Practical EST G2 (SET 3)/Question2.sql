CREATE TABLE Products (
    prod_id INT PRIMARY KEY,
    prod_name VARCHAR(50),
    sup_id INT,
    stock_qty INT
);

CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    prod_id INT,
    qty INT
);

INSERT INTO Products VALUES 
(101, 'Laptop', 1, 10),
(102, 'Mouse', 1, 20);

DELIMITER //

CREATE TRIGGER update_stock_after_order
AFTER INSERT ON Orders
FOR EACH ROW
BEGIN
    UPDATE Products
    SET stock_qty = stock_qty - NEW.qty
    WHERE prod_id = NEW.prod_id;
END;

//

DELIMITER ;

INSERT INTO Orders VALUES (1, 101, 3);