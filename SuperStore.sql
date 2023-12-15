SELECT *
FROM PortfolioProject..superstore$
order by 3,4

--total Sales SuperStrore
SELECT sum(Sales) as TotalSales
from PortfolioProject..superstore$

--total Profit
SELECT SUM(Profit) as TotalProfit
FROM PortfolioProject..superstore$

-- product performance

--most ordered products
SELECT TOP 15 "Product#Name", MAX(Quantity) as MaxQuantity
FROM PortfolioProject..superstore$ 
Group by "Product#Name" order by MaxQuantity DESC;


--most profitable category in region
SELECT TOP 10 "Region", "Category", MAX(Profit) as MaxProfit
FROM PortfolioProject..superstore$ 
Group by "Region", "Category" order by MaxProfit DESC;

--most profitable product in region
SELECT TOP 10 "State", "Product#Name", MAX(Profit) as MaxProfit
FROM PortfolioProject..superstore$ 
Group by "State", "Product#Name" order by MaxProfit DESC;

--most profitable product in country
SELECT TOP 10 "Country", "City", "Product#Name", "Category", MAX(Profit) as MaxProfit
FROM PortfolioProject..superstore$ 
Group by "Country", "City", "Product#Name", "Category" order by MaxProfit DESC;

-- YEAR 
SELECT top 10 "Product#Name", "Year", AVG(Profit) as AvgProfit 
FROM PortfolioProject..superstore$ 
WHERE year = 2014
Group by "Product#Name", "year" 
Order By AvgProfit DESC


SELECT top 10 "Product#Name", "Year", sum(Sales) as TotalSales 
FROM PortfolioProject..superstore$ 
WHERE year = 2014
Group by "Product#Name", "year" 
Order By TotalSales DESC