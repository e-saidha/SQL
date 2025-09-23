# Write your MySQL query statement below
WITH t AS (SELECT id,country,state,amount,DATE_FORMAT(trans_date, '%Y-%m') AS month
FROM Transactions)

SELECT month, country, COUNT(*) AS trans_count, SUM(amount) AS trans_total_amount, SUM(CASE WHEN state = 'approved' THEN 1 ELSE 0 END) AS approved_count, SUM(CASE WHEN state = 'approved' THEN amount ELSE 0 END) AS approved_total_amount
FROM t
GROUP BY country,month