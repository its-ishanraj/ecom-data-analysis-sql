-- TABLE CREATION

USE ecom;
DROP TABLE IF EXISTS zepto;
CREATE TABLE zepto(
	id INT AUTO_INCREMENT PRIMARY KEY,
    category VARCHAR(100),
    name VARCHAR(200) NOT NULL,
    mrp NUMERIC(8,2),
    discountPercent NUMERIC(5,2),
    availableQuantity INT,
    discountedSellingPrice NUMERIC(8,2),
    weightInGms INT,
    outOfStock BOOLEAN,
    quantity INT
    );

SELECT * from zepto;
   
