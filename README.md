# TikTok Marketing Insights

# About Me

I’m Haaris Malik, a passionate digital marketer and data enthusiast with over two years of experience specializing in TikTok affiliate marketing. I’ve collaborated with well-known brands like Anker, Goli, Wyze, and Javy Coffee to create strategic marketing campaigns that drive engagement and sales on TikTok.

My expertise lies in leveraging data to optimize marketing performance — from analyzing campaign metrics and identifying trends to developing actionable insights that boost ROI. I combine my deep understanding of social media dynamics with strong data analysis skills using SQL, Google Sheets, and visualization tools.

This project showcases my ability to connect raw marketing data to real business outcomes through clear analysis and compelling visual storytelling. I’m eager to bring this data-driven mindset to new challenges and help brands grow by making smarter marketing decisions.



## Overview
This project analyzes TikTok affiliate marketing campaign data to uncover insights about engagement trends, revenue, and campaign performance.

## Dataset
The data includes campaign name, dates, product names, views, clicks, sales, revenue, and commission.

## Key Analyses
- Total revenue and commission by campaign
- Engagement trends over time
- Performance comparison before and after campaign changes

## Tools Used
- SQLite for data storage and querying
- SQL for data analysis
- Google Sheets for visualization (charts exported as PNG)
- Markdown for project documentation

## Files
- `tiktok_data.csv` - Raw campaign data
- `queries.sql` - SQL queries used for analysis
- `charts/` - Folder containing chart images (e.g., revenue trends, engagement)
- `README.md` - Project documentation (this file)

## Sample SQL Queries

```sql
-- Total revenue and commission by campaign
SELECT campaign, 
       SUM(revenue) AS total_revenue, 
       SUM(commission) AS total_commission
FROM tiktok_insights
GROUP BY campaign;

-- Average revenue earned per click by campaign
SELECT Campaign, 
       SUM(Revenue) * 1.0 / SUM(Clicks) AS revenue_per_click
FROM tiktok_insights
GROUP BY Campaign;

