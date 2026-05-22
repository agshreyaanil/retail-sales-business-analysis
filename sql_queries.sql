-- ============================================================
-- Project: Retail Sales Performance Analysis
-- Author:  Shreya Anil
-- Date:    May 2026
-- Dataset: Superstore Sales Dataset (Kaggle)
-- ============================================================


-- ------------------------------------------------------------
-- QUERY 1: Total Sales and Profit by Region
-- Business Question: Which regions are driving revenue vs profit?
-- ------------------------------------------------------------
SELECT 
    Region,
    ROUND(SUM(Sales), 2) AS Total_Sales,
    ROUND(SUM(Profit), 2) AS Total_Profit,
    ROUND((SUM(Profit) / SUM(Sales)) * 100, 2) AS Profit_Margin_Pct
FROM superstore
GROUP BY Region
ORDER BY Total_Sales DESC;


-- ------------------------------------------------------------
-- QUERY 2: Sales and Profit by Product Category
-- Business Question: Which categories are most and least profitable?
-- ------------------------------------------------------------
SELECT 
    Category,
    ROUND(SUM(Sales), 2) AS Total_Sales,
    ROUND(SUM(Profit), 2) AS Total_Profit,
    COUNT(DISTINCT Order_ID) AS Total_Orders,
    ROUND((SUM(Profit) / SUM(Sales)) * 100, 2) AS Profit_Margin_Pct
FROM superstore
GROUP BY Category
ORDER BY Profit_Margin_Pct DESC;


-- ------------------------------------------------------------
-- QUERY 3: Sub-Categories with Negative Profit Margin
-- Business Question: Which sub-categories are losing money?
-- ------------------------------------------------------------
SELECT 
    Category,
    Sub_Category,
    ROUND(SUM(Sales), 2) AS Total_Sales,
    ROUND(SUM(Profit), 2) AS Total_Profit,
    ROUND((SUM(Profit) / SUM(Sales)) * 100, 2) AS Profit_Margin_Pct
FROM superstore
GROUP BY Category, Sub_Category
HAVING SUM(Profit) < 0
ORDER BY Total_Profit ASC;


-- ------------------------------------------------------------
-- QUERY 4: Discount Impact on Profit Margin
-- Business Question: At what discount rate does profit turn negative?
-- ------------------------------------------------------------
SELECT 
    Discount,
    COUNT(Order_ID) AS Total_Orders,
    ROUND(SUM(Sales), 2) AS Total_Sales,
    ROUND(SUM(Profit), 2) AS Total_Profit,
    ROUND((SUM(Profit) / SUM(Sales)) * 100, 2) AS Profit_Margin_Pct
FROM superstore
GROUP BY Discount
ORDER BY Discount ASC;


-- ------------------------------------------------------------
-- QUERY 5: Monthly Sales Trend
-- Business Question: Are there seasonal patterns in sales?
-- ------------------------------------------------------------
SELECT 
    YEAR(Order_Date) AS Order_Year,
    MONTH(Order_Date) AS Order_Month,
    ROUND(SUM(Sales), 2) AS Monthly_Sales,
    ROUND(SUM(Profit), 2) AS Monthly_Profit
FROM superstore
GROUP BY YEAR(Order_Date), MONTH(Order_Date)
ORDER BY Order_Year ASC, Order_Month ASC;


-- ------------------------------------------------------------
-- QUERY 6: Top 10 Most Profitable Products
-- Business Question: Which individual products should we prioritize?
-- ------------------------------------------------------------
SELECT 
    Product_Name,
    Category,
    Sub_Category,
    ROUND(SUM(Sales), 2) AS Total_Sales,
    ROUND(SUM(Profit), 2) AS Total_Profit
FROM superstore
GROUP BY Product_Name, Category, Sub_Category
ORDER BY Total_Profit DESC
LIMIT 10;


-- ------------------------------------------------------------
-- QUERY 7: Bottom 10 Products by Profit (Loss Leaders)
-- Business Question: Which products should be reviewed or discontinued?
-- ------------------------------------------------------------
SELECT 
    Product_Name,
    Category,
    Sub_Category,
    ROUND(SUM(Sales), 2) AS Total_Sales,
    ROUND(SUM(Profit), 2) AS Total_Profit
FROM superstore
GROUP BY Product_Name, Category, Sub_Category
ORDER BY Total_Profit ASC
LIMIT 10;


-- ------------------------------------------------------------
-- QUERY 8: Order Volume by Region and Category
-- Business Question: Where is demand concentrated?
-- ------------------------------------------------------------
SELECT 
    Region,
    Category,
    COUNT(DISTINCT Order_ID) AS Total_Orders,
    ROUND(SUM(Sales), 2) AS Total_Sales
FROM superstore
GROUP BY Region, Category
ORDER BY Region ASC, Total_Orders DESC;
