-- =========================================
-- Project: Retail Sales Analysis
-- Author: Abdul Kader
-- Tool: MySQL
-- =========================================

-- =========================================
-- Part 1: Database Setup
-- =========================================

create database project;

create table project.retail_sales (
	transactions_id int primary key,
	sale_date date,
	sale_time time,
	customer_id int,
	gender varchar(10),
	age int,
	category varchar(15),
	quantity int,
	price_per_unit float,
	cogs float,
	total_sale float
);

-- =========================================
-- Part 2: Data Cleaning
-- =========================================

select * from project.retail_sales
where transactions_id is null or
sale_date is null or
sale_time is null or
customer_id is null or
gender is null or
age is null or
category is null or
quantity is null or
price_per_unit is null or
cogs is null or
total_sale is null;

-- =========================================
-- Part 3: Data Analysis
-- =========================================

-- Q1. Retrieve all columns for sales made on '2022-11-05'
select * 
from project.retail_sales 
where sale_date='2022-11-05';

-- Q2. Retrieve all transactions where category is 'Clothing' 
-- and quantity sold is more than 10 in the month of Nov-2022
select * 
from project.retail_sales 
where category='Clothing' 
and quantity > 10 
and month(sale_date)= 11 
and year(sale_date)=2022;

-- Q3. Calculate the total sales for each category
select category , sum(total_sale) as Total_sales 
from project.retail_sales 
group by category;

-- Q4. Find the average age of customers who purchased from 'Beauty' category
select avg(age) 
from project.retail_sales 
where category='Beauty';

-- Q5. Find all transactions where total_sale is greater than 1000
select transactions_id as Above_1000_transaction 
from project.retail_sales 
where total_sale>1000;

-- Q6. Find the total number of transactions made by each gender in each category
select count(transactions_id) as Total_transaction , gender, category 
from project.retail_sales 
group by gender , category;

-- Q7. Calculate the average sale for each month. Find best selling month in each year
select avg(total_sale) as Avg_sale , month(sale_date) as Month, year(sale_date) as Year 
from project.retail_sales 
group by month(sale_date), year(sale_date) 
order by avg(total_sale) desc;

-- Q8. Find the top 5 customers based on the highest total sales
select sum(total_sale) as Total_sales ,customer_id 
from project.retail_sales 
group by customer_id 
order by sum(total_sale) desc 
limit 5;

-- Q9. Find the number of unique customers who purchased from each category
select count(distinct(customer_id)) as Unique_customers, category 
from project.retail_sales 
group by category;

-- Q10. Create each shift and number of orders
-- Morning <=12, Afternoon Between 12 & 17, Evening >17
select case 
    when hour(sale_time) <=12 then 'Morning' 
    when hour(sale_time) between 12 and 17 then 'Afternoon' 
    else 'evening' 
end as shifts, count(transactions_id) as Total_orders
from project.retail_sales 
group by shifts;