use pract1;
show tables;
select count(*) from bigbasket_products;
select product,rating from bigbasket_products order by rating desc Limit 10;
# •  Average Sale Price by Category: Calculate the average sale price for each category.
select category,avg(sale_price) as avg_sale_price from bigbasket_products group by category;
#•  Price Difference: List products where the difference between market price and sale price is greater than a specified amount.
select round(avg(market_price-sale_price)) as difference from bigbasket_products;

select product,market_price-sale_price as difference from bigbasket_products where market_price-sale_price >42;

#•  Category Wise Rating: Compute the average rating for each category.
select category ,avg(rating) as avg_rating from bigbasket_products group by category order by avg_rating desc ;

#Brands with Most Products: Identify the top 5 brands with the most number of products.
select brand,count(product) as product_count from bigbasket_products group by brand order by product_count desc;

#Product Count by Sub-Category: Count the number of products in each sub-category
select * from bigbasket_products;
select sub_category,count(product) as product_count from bigbasket_products group by sub_category order by product_count  desc;

#•  Price Comparison: Compare the average sale price and market price for each category.
select category,avg(sale_price) as average_sale_price,avg(market_price) as average_market_price,avg(market_price)-avg(sale_price) as difference from bigbasket_products group by category ;
 
#High Rating Low Price: List products with a rating of 4 and above that are priced below a specified sale price.
select product,sale_price,rating from bigbasket_products where rating>=4 and sale_price<=(select avg(sale_price) from bigbasket_products);

#Product Search: Find products that contain a specific keyword in their description.
select product from bigbasket_products where description like "%organic%";

#•  Category with Highest Average Rating: Determine which category has the highest average rating.
SELECT category, AVG(rating) AS average_rating
FROM bigbasket_products
GROUP BY category
ORDER BY average_rating DESC;

#: •  Category with Highest Average Rating: Determine which category has the highest average rating.
select product,sale_price from bigbasket_products where sale_price=(select max(sale_price)from bigbasket_products);


