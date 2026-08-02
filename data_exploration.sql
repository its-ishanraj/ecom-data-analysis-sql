-- DATA EXPLORATION

SELECT COUNT(*) FROM zepto;

-- sample data
SELECT * from zepto LIMIT 5;

-- null values
SELECT * FROM zepto 
WHERE name IS NULL
or
category IS NULL
or
mrp IS NULL
or
discountPercent IS NULL
or
availableQuantity IS NULL
or
discountedSellingPrice IS NULL
or
weightInGms IS NULL
or
outOfStock IS NULL
or
quantity IS NULL;

-- checking Product categories

SELECT distinct category
from zepto
order by category;

-- products out of stock or not

select outOfStock, count(id)
from zepto
group by outOfStock;

-- product name present multiple times

select name, count(id) as "Number of units"
from zepto
group by name
having count(id)>1
order by count(id) DESC;
