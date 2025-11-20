WITH t AS (SELECT 'Low Salary' AS category
UNION ALL SELECT 'Average Salary' UNION ALL SELECT 'High Salary'),

t1 AS (SELECT
    CASE 
    WHEN income<20000 THEN 'Low Salary'
    WHEN income >= 20000 AND income <= 50000 THEN 'Average Salary' 
    ELSE 'High Salary' END AS category
FROM Accounts)

SELECT t.category, COUNT(t1.category) AS accounts_count
FROM t
LEFT JOIN t1
ON t.category = t1.category
GROUP BY t.category