
USE RetailSalesDB;
GO

-- Check total rows
SELECT COUNT(*) AS TotalRows
FROM dbo.StandardSales;

-- Preview 10 rows
SELECT TOP 10 *
FROM dbo.StandardSales;

-- Check total revenue
SELECT ROUND(SUM(Revenue), 2) AS TotalRevenue
FROM dbo.StandardSales;
SELECT
    Year_Month,
    ROUND(SUM(Revenue), 2) AS TotalRevenue,
    SUM(Quantity) AS TotalQuantity,
    COUNT(DISTINCT Invoice) AS UniqueInvoices
FROM dbo.StandardSales
GROUP BY Year_Month
ORDER BY Year_Month;
SELECT TOP 5
    Country,
    ROUND(SUM(Revenue), 2) AS TotalRevenue
FROM dbo.StandardSales
GROUP BY Country
ORDER BY SUM(Revenue) DESC;