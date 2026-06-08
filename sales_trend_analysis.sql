CREATE DATABASE walmart_analysis;
USE walmart_analysis;
CREATE TABLE sales (
    invoice_id VARCHAR(30),
    branch VARCHAR(5),
    city VARCHAR(50),
    customer_type VARCHAR(20),
    gender VARCHAR(10),
    product_line VARCHAR(100),
    unit_price DECIMAL(10,2),
    quantity INT,
    tax_pct DECIMAL(10,2),
    total DECIMAL(10,2),
    date DATE,
    time TIME,
    payment VARCHAR(20),
    cogs DECIMAL(10,2),
    gross_margin_pct DECIMAL(10,2),
    gross_income DECIMAL(10,2),
    rating DECIMAL(3,1)
);

SELECT * FROM sales_data
LIMIT 10;

SELECT
    MONTH(date) AS month,
    SUM(total) AS monthly_revenue
FROM sales_data
GROUP BY MONTH(date)
ORDER BY month;

SELECT
    MONTH(date) AS month,
    COUNT(DISTINCT invoice_id) AS order_volume
FROM sales_data
GROUP BY MONTH(date
ORDER BY month;

SELECT
    MONTH(date) AS month,
    SUM(total) AS monthly_revenue
FROM sales_data
GROUP BY MONTH(date)
ORDER BY monthly_revenue DESC
LIMIT 3;