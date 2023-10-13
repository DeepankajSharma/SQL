create database walmart;

use walmart;

SELECT 
    *
FROM
    salesdata;

# How many unique cities does the data have?
SELECT DISTINCT
    City
FROM
    salesdata;


#-- In which city is each branch?
SELECT DISTINCT
    city, Branch
FROM
    salesdata
ORDER BY Branch;


#-- How many unique product lines does the data have?
SELECT DISTINCT
    Product_line
FROM
    salesdata;

 
 #-- What is the most selling product line
SELECT 
    SUM(Quantity) AS qnt, Product_line
FROM
    salesdata
GROUP BY Product_line
ORDER BY qnt DESC;
 
 
 #-- What is the total revenue by Date
SELECT 
    Date, SUM(Total) AS total_revenue
FROM
    salesdata
GROUP BY Date
ORDER BY total_revenue DESC;
 
 
 #-- What Date had the largest COGS?
SELECT 
    SUM(cogs) AS maximum_cogs, Date
FROM
    salesdata
GROUP BY Date
ORDER BY maximum_cogs DESC
LIMIT 1;
 
 
 #-- What product line had the largest revenue?
SELECT 
    Product_line, SUM(total) AS revenue
FROM
    salesdata
GROUP BY Product_line
ORDER BY revenue DESC;
 
 
 #-- What is the city with the largest revenue?
SELECT 
    City, SUM(total) AS revenue
FROM
    salesdata
GROUP BY City
ORDER BY revenue DESC;
 
 
 #-- Fetch each product line and add a column to those product 
#-- line showing "Good", "Bad". Good if its greater than average sales
SELECT 
    Product_line,
    AVG(Quantity) AS qnt,
    CASE
        WHEN AVG(Quantity) >= 5 THEN 'GOOD'
        WHEN AVG(Quantity) < 5 THEN ' BAD'
        ELSE 'AERAGE'
    END AS remarks
FROM
    salesdata
GROUP BY Product_line
ORDER BY qnt DESC;


# -- Which branch sold more products than average product sold?
SELECT 
    Branch, SUM(Quantity) AS total_sum
FROM
    salesdata
GROUP BY Branch
HAVING SUM(Quantity) > (SELECT 
        AVG(Quantity)
    FROM
        salesdata);


#-- What is the most common product line by gender
SELECT 
    Gender, Product_line, COUNT(Product_line) AS Total_product
FROM
    salesdata
GROUP BY Gender , Product_line
ORDER BY Total_product DESC;


# -- What is the average rating of each product line
SELECT 
    Product_line, ROUND(AVG(Rating), 2) AS avgRating
FROM
    salesdata
GROUP BY Product_line
ORDER BY avgRating;



-- --------------------------------------------------------------------
-- --------------------------------------------------------------------

-- --------------------------------------------------------------------
-- -------------------------- Customers -------------------------------
-- --------------------------------------------------------------------


#-- How many unique customer types does the data have?
SELECT DISTINCT
    Customer_type, COUNT(Customer_type) AS counts
FROM
    salesdata
GROUP BY Customer_type
ORDER BY counts;


#-- How many unique payment methods does the data have?
SELECT DISTINCT
    Payment, COUNT(Payment) AS counts
FROM
    salesdata
GROUP BY Payment
ORDER BY counts DESC;


#-- What is the most common customer type?
SELECT DISTINCT
    Customer_type, COUNT(Customer_type) AS counts
FROM
    salesdata
GROUP BY Customer_type
ORDER BY counts;


#-- Which customer type buys the most?
SELECT 
    customer_type, COUNT(*)
FROM
    salesdata
GROUP BY customer_type;


#-- What is the gender of most of the customers?
SELECT 
    Gender, COUNT(Customer_type) AS counts
FROM
    salesdata
GROUP BY Gender
ORDER BY counts DESC;


# -- What is the gender distribution per branch?
SELECT 
    Branch, Gender, COUNT(Gender) AS counts
FROM
    salesdata
GROUP BY Branch , gender
ORDER BY counts;


 -- --------------------------------------------------------------------
-- --------------------------------------------------------------------

-- --------------------------------------------------------------------
-- ---------------------------- Sales ---------------------------------
-- --------------------------------------------------------------------


#-- Which of the customer types brings the most revenue?
SELECT 
    Customer_type, SUM(Total) AS revenue
FROM
    salesdata
GROUP BY Customer_type
ORDER BY revenue DESC;

SELECT 
    *
FROM
    salesdata;