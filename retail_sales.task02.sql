use retail_sales;

select * from retail_sales01;

-- Historical Analysis of Revenue Share by Product Line
-- Calculate revenue share for each product line over time

-- Calculate total sales for each product line for each month
with product_sales as (select sales_month,naics_code,SUM(sales) as total_sales
from retail_sales01 group by sales_month,naics_code),
-- Calculate total sales for all product lines for each month
total_sales_per_month AS ( select sales_month, SUM(sales) as total_sales_all
   from  retail_sales01 group by sales_month)
-- Calculate revenue share for each product line for each month
select ps.sales_month,ps.naics_code,ps.total_sales, tsd.total_sales_all,
    (ps.total_sales / tsd.total_sales_all) as revenue_share
from product_sales ps
join total_sales_per_month tsd on ps.sales_month = tsd.sales_month
order by ps.sales_month, ps.naics_code;
