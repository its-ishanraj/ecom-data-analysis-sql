-- DATA CLEANING

-- changing safe updates 
SET SQL_SAFE_UPDATES=0;
-- products where price=0
SELECT *FROM zepto
where mrp=0 or discountedSellingPrice=0;

DELETE from zepto
where mrp=0 AND id>0;

-- conversion of paise to rupees

update zepto
SET mrp=mrp/100.0 ,
discountedSellingPrice= discountedSellingPrice/100.0
where id>0;

select id, mrp, discountedSellingPrice from zepto;


