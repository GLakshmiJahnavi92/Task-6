# Task 6: Sales Trend Analysis Using Aggregations

## Objective
Analyze monthly revenue and order volume from the `online_sales` dataset using SQL aggregations.

## Tools
- MySQL Workbench
- VS Code

## Steps
1. Created a database `sales_analysis`.
2. Created `online_sales` table and inserted dummy data.
3. Wrote SQL query to:
   - Calculate monthly revenue using `SUM(amount)`
   - Count total orders using `COUNT(DISTINCT order_id)`
   - Group by month (`DATE_FORMAT`)
   - Sort by revenue (`ORDER BY DESC`)

## Files Included
- `sales_analysis.sql` - SQL script for table creation, data insertion, and analysis query.
- `table_and_data_insertion.png` - Screenshot of table + data inserted.
- `monthly_sales_trend.png` - Screenshot of the query output (monthly revenue).
