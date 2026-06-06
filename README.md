# SQL Retail Sales Analysis Project

## Project Overview
This project is a retail sales analysis using MySQL. 
The goal is to explore and analyze retail sales data 
to uncover key business insights and answer important 
business questions.

## Author
**Abdul Kader**

## Tools Used
- MySQL Workbench
- Excel

## Dataset
The dataset contains retail sales transactions with 
the following columns:
- `transactions_id` - Unique transaction identifier
- `sale_date` - Date of sale
- `sale_time` - Time of sale
- `customer_id` - Unique customer identifier
- `gender` - Customer gender
- `age` - Customer age
- `category` - Product category
- `quantity` - Quantity sold
- `price_per_unit` - Price per unit
- `cogs` - Cost of goods sold
- `total_sale` - Total sale amount

## Project Steps

### 1. Database Setup
- Created database and table in MySQL
- Imported retail sales dataset

### 2. Data Cleaning
- Checked for NULL values in all columns using MySQL
- Replaced NULL values in numeric columns with 0 in Excel
- Replaced NULL values in text columns with 'Unknown' in Excel
- Clean data was then imported into MySQL
- Ensured data quality before analysis

### 3. Data Analysis
Solved 10 business problems using SQL:

**Q1.** Retrieve all columns for sales made on '2022-11-05'

**Q2.** Retrieve all transactions where category is 
'Clothing' and quantity sold is more than 10 in Nov-2022

**Q3.** Calculate the total sales for each category

**Q4.** Find the average age of customers who purchased 
from 'Beauty' category

**Q5.** Find all transactions where total_sale is 
greater than 1000

**Q6.** Find the total number of transactions made by 
each gender in each category

**Q7.** Calculate the average sale for each month and 
find the best selling month in each year

**Q8.** Find the top 5 customers based on highest 
total sales

**Q9.** Find the number of unique customers who 
purchased from each category

**Q10.** Create shifts based on time and count number 
of orders (Morning, Afternoon, Evening)

## Key Findings
- Identified top performing product categories
- Found best selling months across different years
- Identified top 5 highest spending customers
- Analyzed customer purchasing patterns by gender
- Created time-based shift analysis for order patterns

## Conclusion
This project demonstrates the use of SQL for 
real-world retail sales analysis including data 
cleaning, exploration and business problem solving.

## Data Cleaning Notes
-- NULL values in numeric columns were replaced with 0 in Excel
-- NULL values in text columns were replaced with 'Unknown' in Excel
-- Clean data was then imported into MySQL
