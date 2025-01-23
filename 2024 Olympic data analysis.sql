-- SQL Queries for 2024 Olympics Medals Data Analysis

-- Query 1: Top Countries by Total Medal Count
SELECT country_name, total_count
FROM olympics_medals
ORDER BY total_count DESC;

-- Query 2: Medal Distribution (Gold, Silver, Bronze)
SELECT country_name, gold, silver, bronze
FROM olympics_medals
ORDER BY gold DESC, silver DESC, bronze DESC;

-- Query 3: Generate Medal Table Rankings
SELECT 
    country_name, 
    RANK() OVER (ORDER BY total_count DESC) AS rnk,
    total_count, 
    gold, 
    silver, 
    bronze
FROM olympics_medals;

-- Query 4: Countries with Most Gold Medals
SELECT country_name, gold
FROM olympics_medals
ORDER BY gold DESC;

-- Query 5: Total Medals Won by All Countries
SELECT SUM(gold) AS total_gold, SUM(silver) AS total_silver, SUM(bronze) AS total_bronze, SUM(total_count) AS total_medals
FROM olympics_medals;

-- Query 6: Average Medals Won Per Country
SELECT 
    AVG(gold) AS avg_gold,
    AVG(silver) AS avg_silver,
    AVG(bronze) AS avg_bronze,
    AVG(total_count) AS avg_total_medals
FROM olympics_medals;

-- Query 7: Countries with Less Than 20 Total Medals
SELECT country_name, total_count
FROM olympics_medals
WHERE total_count < 20
ORDER BY total_count ASC;

-- Query 8: Countries with At Least 10 Gold Medals
SELECT country_name, gold
FROM olympics_medals
WHERE gold >= 10
ORDER BY gold DESC;

-- Query 9: Percentage of Gold Medals Per Country
SELECT 
    country_name, 
    ROUND((gold / total_count) * 100, 2) AS gold_percentage
FROM olympics_medals
ORDER BY gold_percentage DESC;

-- Query 10: Region-Wise Medal Totals (If Region Data Available)
-- Uncomment if region data is part of the dataset
-- SELECT region, SUM(total_count) AS region_total
-- FROM olympics_medals
-- GROUP BY region
-- ORDER BY region_total DESC;
