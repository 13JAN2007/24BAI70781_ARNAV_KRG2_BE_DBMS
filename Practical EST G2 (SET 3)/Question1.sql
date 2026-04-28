CREATE TABLE Suppliers (
    sup_id INT PRIMARY KEY,
    sup_name VARCHAR(50)
);

CREATE TABLE Products (
    prod_id INT PRIMARY KEY,
    prod_name VARCHAR(50),
    sup_id INT,
    FOREIGN KEY (sup_id) REFERENCES Suppliers(sup_id)
);

CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    prod_id INT,
    qty INT,
    FOREIGN KEY (prod_id) REFERENCES Products(prod_id)
);

INSERT INTO Suppliers VALUES (1, 'ABC Suppliers'), (2, 'XYZ Suppliers');

INSERT INTO Products VALUES 
(101, 'Laptop', 1),
(102, 'Mouse', 1),
(103, 'Keyboard', 2);

INSERT INTO Orders VALUES
(1001, 101, 2),
(1002, 102, 5),
(1003, 103, 1);

SELECT s.sup_name, p.prod_name, o.qty
FROM Suppliers s
JOIN Products p ON s.sup_id = p.sup_id
JOIN Orders o ON p.prod_id = o.prod_id;

