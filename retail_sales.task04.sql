use retail_sales;

select * from retail_sales01;

select naics_code, sum(sales) as total_sales,round(avg(sales), 2) as avg_sales,
max(sales) as max_sales, min(sales) as min_sales
from retail_sales01 where sales_month > '01-01-2013'
group by naics_code order by total_sales desc;


