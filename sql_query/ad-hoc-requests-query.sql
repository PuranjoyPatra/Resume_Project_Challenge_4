# SQL Queries to get answers of given 10 ad-hoc requests:

-- 1) Provide the list of markets in which customer Atliq Exclusive operates its business in the APAC region.

SELECT distinct(market) 
FROM dim_customer
where customer="Atliq Exclusive" and region = "APAC";

-- additional query to deep dive data for analyze purpose

SELECT market, sum(sold_quantity*gross_price) as gross_sales FROM dim_customer
join fact_sales_monthly using(customer_code)
join fact_gross_price using(product_code, fiscal_year)
where customer="Atliq Exclusive" and region = "APAC"
group by market
order by gross_sales desc;

-- 2) What is the percentage of unique product increase in 2021 vs. 2020?

with unique_products_20 as (
select count(distinct(product_code)) as unique_products_2020 
from fact_sales_monthly
where fiscal_year = 2020),

unique_products_21 as (
select count(distinct(product_code)) as unique_products_2021 
from fact_sales_monthly
where fiscal_year = 2021)

select 
	unique_products_2020, 
	unique_products_2021, 
	round(((unique_products_2021-unique_products_2020)/unique_products_2020)*100,2) as pecentage_chg
from unique_products_20, unique_products_21;

-- 3) Provide a report with all the unique product counts for each segment.

select segment, count(distinct(product_code)) as product_count 
from dim_product
group by segment
order by product_count desc;
    
-- 4) Which segment had the most increase in unique products in 2021 vs 2020?

with unique_products as (
select count(distinct(product_code)) as unique_products_count, segment, fiscal_year 
from fact_sales_monthly s
join dim_product p using(product_code)
group by p.segment, s.fiscal_year)

select 
	up20.segment, up20.unique_products_count as product_count_2020,
	up21.unique_products_count as product_count_2021,
	up21.unique_products_count - up20.unique_products_count as difference
from unique_products up20
join unique_products up21
on up20.segment = up21.segment and up20.fiscal_year = 2020 and up21.fiscal_year = 2021
order by difference desc;

-- 5) Get the products that have the highest and lowest manufacturing costs

select 
	p.product_code, 
	product, segment, 
	manufacturing_cost 
from fact_manufacturing_cost mc
join dim_product p using(product_code)
where manufacturing_cost in (
	(select max(manufacturing_cost) from fact_manufacturing_cost),
	(select min(manufacturing_cost) from fact_manufacturing_cost)
)
order by manufacturing_cost desc;

-- 6) Generate a report which contains the top 5 customers who received an average high Pre Invoice Discount %  for the fiscal year 2021 and in the Indian market.

select 
	c.customer_code, 
    customer, 
    round(avg(pre_invoice_discount_pct),4) as average_discount_percentage 
from dim_customer c
join fact_pre_invoice_deductions pd using(customer_code)
where market = "India" and fiscal_year = 2021
group by c.customer_code, customer
order by average_discount_percentage desc
limit 5;

-- 7) Get the complete report of the Gross sales amount for the customer Atliq Exclusive for each month. 

select 
	monthname(date) as Month, 
	year(date) as Year, 
	round(sum(gross_price*sold_quantity)/1000000, 2) as gross_sales_amount 
from fact_gross_price
join fact_sales_monthly using(product_code, fiscal_year)
join dim_customer using(customer_code)
where customer = "Atliq Exclusive"
group by date
order by Year asc;

-- 8) In which quarter of 2020, got the maximum total sold quantity?

with qtrly_sales as (
select 
	date, 
	concat("Q",ceil(month(adddate(date, interval 4 month))/3)) as qtr, 
	sold_quantity
from fact_sales_monthly
where fiscal_year = 2020)

select 
	qtr as Quarter,
    round(sum(sold_quantity)/1000000,2) as Total_sold_quantity 
from qtrly_sales
group by qtr
order by Total_sold_quantity desc;

-- 9) Which channel helped to bring more gross sales in the fiscal year 2021 and the percentage of contribution?

with channel_gs as(
select 
	channel, 
	sum(gross_price*sold_quantity) as gross_sales 
from fact_gross_price
join fact_sales_monthly using(product_code, fiscal_year)
join dim_customer using(customer_code)
where fiscal_year = 2021
group by channel)

select 
	channel, 
	round(gross_sales/1000000,2) as gross_sales_mln, 
	round((gross_sales/(select sum(gross_sales) from channel_gs))*100,2) as percentage
from channel_gs
order by percentage desc; 

-- 10) Get the Top 3 products in each division that have a high total sold quantity in the fiscal year 2021?

with div_sales as (
select 
	division, 
	product_code, 
	concat(product," ",variant) as product_name, 
	sum(sold_quantity) as total_sold_quantity,
	rank() over (partition by division order by sum(sold_quantity) desc) as rank_order  
from fact_sales_monthly
join dim_product using(product_code)
where fiscal_year = 2021
group by division, product_code, product_name)

select 
	*
from div_sales
where rank_order <=3;













    

   




