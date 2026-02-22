# Jomato Restaurant Analytics System
## By : Manan Verma

A SQL-based restaurant analytics system that extracts insights on ratings, costs, and cuisine types from a Zomato-style food delivery dataset using MS SQL Server.

## 🗄️ Dataset
Zomato-style restaurant dataset containing restaurant names, cuisine types, ratings, and cost information for a city.

## 🛠️ Concepts Covered
- User-Defined Functions (UDF)
- STUFF() string function
- CASE expressions for conditional logic
- Math functions — CEIL, FLOOR, ABS
- Date functions — GETDATE(), YEAR(), MONTH(), DAY()
- GROUP BY with ROLLUP for subtotals
- Aggregate functions — MAX, AVG

## 📋 Tasks Performed
1. Created a UDF to stuff 'Chicken' into 'Quick Bites' → 'Quick Chicken Bites'
2. Used the function to display restaurant name and cuisine type with the highest rating
3. Created a Rating Status column — Excellent / Good / Average / Bad using CASE
4. Displayed CEIL, FLOOR, ABS of ratings and extracted Year, Month, Day from current date
5. Displayed restaurant type and total average cost using GROUP BY ROLLUP

## ▶️ How to Run
1. Open SQL Server Management Studio (SSMS)
2. Open `SQL_Assignment_2.sql`
3. Press **F5** to execute

## 🧰 Tools Used
- Microsoft SQL Server
- SQL Server Management Studio (SSMS)

## 📁 Source
Dataset provided by Intellipaat — SQL Mandatory Assignment 2
