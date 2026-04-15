SELECT c.category, COUNT(a.income) AS accounts_count
FROM 
(SELECT 'Low Salary' AS category
UNION ALL
SELECT 'Average Salary'
UNION ALL
SELECT 'High Salary'
) AS c
LEFT JOIN Accounts AS a
ON CASE WHEN income<20000 THEN 'Low Salary'
        WHEN income<=50000 THEN 'Average Salary'
        ELSE 'High Salary' END = c.category
GROUP BY c.category
ORDER BY accounts_count DESC