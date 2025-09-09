# Write your MySQL query statement below
WITH temp AS (SELECT p.product_name, SUM(o.unit) AS unit
FROM Orders AS o
JOIN Products AS p
ON o.product_id = p.product_id
WHERE order_date BETWEEN '2020-02-01' AND '2020-02-29'
GROUP BY o.product_id)

SELECT product_name,unit
FROM temp
WHERE unit >= 100

