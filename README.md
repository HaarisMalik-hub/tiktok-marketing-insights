# TikTok Marketing Insights

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
