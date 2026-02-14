--exporer product categiry in databases;
select distinct category,subcategory,product_name from 
gold.dim_products
order by 1,2,3


--find first_order ad last_order in system   --Dataexploration..
--how many years and months of sales data available in system 
select 
min(order_date) as first_order_date,
max(order_date) as last_order_date,
EXTRACT(YEAR from max(order_date)) -  EXTRACT(YEAR from min(order_date))  as order_range_year,
(DATE_PART('year', MAX(order_date)) - DATE_PART('year', MIN(order_date))) * 12 
+ (DATE_PART('month', MAX(order_date)) - DATE_PART('month', MIN(order_date))) AS order_range_months
from gold.fact_sales
