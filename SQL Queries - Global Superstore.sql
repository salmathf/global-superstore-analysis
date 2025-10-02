SELECT  `Sub-Category`,
        ROUND((SUM(Profit)/SUM(Sales)), 2) AS Profit_Margin
FROM `orbital-amulet-451418-c2.superstore_sales.global_superstore_sales`
GROUP BY `Sub-Category`
ORDER BY Profit_Margin DESC;

SELECT  `Country`,
        SUM(Sales) AS Total_Sales,
        ROUND(SUM(Profit), 2) AS Total_Profit,
        ROUND((SUM(Profit)/SUM(Sales)), 2) AS Profit_Margin
FROM `orbital-amulet-451418-c2.superstore_sales.global_superstore_sales`
GROUP BY `Country`
ORDER BY `Country`;

SELECT DISTINCT Year,
                SUM(Sales) AS Total_Sales,
                ROUND(SUM(Profit), 2) AS Total_Profit
FROM `orbital-amulet-451418-c2.superstore_sales.global_superstore_sales`
GROUP BY Year;