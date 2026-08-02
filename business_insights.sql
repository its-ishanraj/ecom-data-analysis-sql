-- BUSINESS INSIGHTS--

-- Q1. Find the top 10 best-value products based on the discount percentage.

select DISTINCT name, mrp, discountPercent
from zepto
order by discountPercent DESC 
LIMIT 10;

-- Q2.What are the Products with High MRP but Out of Stock?

SELECT distinct name, mrp
FROM ZEPTO
where outOfStock= 1 AND mrp>400
order by mrp desc;

-- Q3.Calculate Estimated Revenue for each category

select category,
sum(discountedSellingPrice * availableQuantity) as total_revenue
from zepto
group by category
order by total_revenue;

-- Q4. Find all products where MRP is greater than ₹500 and discount is less than 10%.

select distinct name, mrp, discountPercent
from zepto
where mrp>500 AND discountPercent<10
order by mrp desc, discountPercent desc;

-- Q5. Identify the top 5 categories offering the highest average discount percentage.

select category,
ROUND(avg(discountPercent),3) AS avg_discount
from zepto
group by category
order by avg_discount desc
LIMIT 5;

-- Q6. Find the price per gram for products above 100g and sort by best value.

select distinct name, weightInGms, discountedSellingPrice,
ROUND(discountedSellingPrice/weightInGms,2) AS price_per_gram
from zepto
where weightInGms>=100
order by price_per_gram ;


-- Q7.Group the products into categories like Low, Medium, Bulk.

select distinct name, weightInGms,
case 
	when weightInGms<1000 then 'low' 
    when weightInGms<4000 then 'medium'
    else 'bulk'
    END AS weight_category
    from zepto;
    

-- Q8.What is the Total Inventory Weight Per Category 

select distinct category, 
ROUND(sum( weightInGms* availableQuantity),2) AS total_weight
from zepto
group by category
order by total_weight;


