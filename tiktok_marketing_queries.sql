-- TikTok Marketing Insights Queries
-- By Haaris Malik

-- This file contains SQL queries used to analyze TikTok affiliate marketing data.
-- Dataset columns: Campaign, Date, Product, Views, Clicks, Sales, Revenue, Commission.

-- 1. Total Revenue and Commission by Campaign
SELECT 
    Campaign, 
    SUM(Revenue) AS Total_Revenue, 
    SUM(Commission) AS Total_Commission
FROM tiktok_insights
GROUP BY Campaign;

-- 2. Engagement Metrics (Views, Clicks, Sales) by Product
SELECT 
    Product,
    SUM(Views) AS Total_Views,
    SUM(Clicks) AS Total_Clicks,
    SUM(Sales) AS Total_Sales
FROM tiktok_insights
GROUP BY Product;

-- 3. Campaign Performance Over Time (Revenue by Date)
SELECT 
    Date, 
    SUM(Revenue) AS Daily_Revenue
FROM tiktok_insights
GROUP BY Date
ORDER BY Date;

-- 4. Conversion Rate per Campaign (Clicks to Sales)
SELECT 
    Campaign,
    SUM(Clicks) AS Total_Clicks,
    SUM(Sales) AS Total_Sales,
    ROUND(CAST(SUM(Sales) AS FLOAT) / SUM(Clicks), 4) AS Conversion_Rate
FROM tiktok_insights
GROUP BY Campaign;

-- 5. Average Commission per Sale by Product
SELECT 
    Product,
    ROUND(AVG(Commission / Sales), 2) AS Avg_Commission_Per_Sale
FROM tiktok_insights
WHERE Sales > 0
GROUP BY Product;
