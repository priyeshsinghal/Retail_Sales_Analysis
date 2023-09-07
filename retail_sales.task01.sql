use retail_sales;
create table retail_sales (
  sales_month timestamp ,
  naics_code varchar(255),
  kind_of_business varchar(255),
  reason_for_null varchar(255),
  sales int
);
select * from retail_sales.retail_sales;
show databases;
rename table  retail_sales.retail_sales to retail_sales01;
select * from retail_sales01;

# What is the average monthly sales for each NAICS code?
select naics_code,avg(sales) as average_sales
from retail_sales01 group by naics_code;

# What are the top 10 most profitable businesses?
select kind_of_business, sum(sales) as total_sales
from retail_sales01
group by kind_of_business order by total_sales desc limit 10;