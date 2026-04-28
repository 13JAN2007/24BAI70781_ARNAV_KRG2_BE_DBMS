
ALTER TABLE Tbl_Products
ADD sup_id INT;

ALTER TABLE Tbl_Products
ADD FOREIGN KEY (sup_id)
REFERENCES Tbl_Suppliers(sup_id);


UPDATE Tbl_Products
SET sup_id = 701
WHERE prod_id = 501;

UPDATE Tbl_Products
SET sup_id = 702
WHERE prod_id = 502;

SELECT s.sup_name, p.prod_name, o.qty
FROM Tbl_Suppliers s
JOIN Tbl_Products p
ON s.sup_id = p.sup_id
JOIN Tbl_Orders o
ON p.prod_id = o.prod_id;