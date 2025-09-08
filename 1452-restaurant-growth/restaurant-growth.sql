# Write your MySQL query statement below
WITH sum_all AS (SELECT visited_on, SUM(amount) AS am 
FROM Customer
GROUP BY visited_on)

,t2 AS ( SELECT visited_on, SUM(am) OVER (ORDER BY visited_on ROWS BETWEEN 6 PRECEDING AND CURRENT ROW) AS amount
FROM sum_all 
ORDER BY visited_on
LIMIT 18446744073709551615 OFFSET 6
)
SELECT visited_on, amount, ROUND(amount/7,2) AS average_amount
FROM t2
ORDER BY visited_on
