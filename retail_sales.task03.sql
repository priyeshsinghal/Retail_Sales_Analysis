use retail_sales;

select * from retail_sales01;

select kind_of_business as product_line, sum(sales) AS total_sales
from retail_sales01
where kind_of_business in ('Women''s clothing stores', 'Men''s clothing stores')
group by kind_of_business
order by total_sales desc;

