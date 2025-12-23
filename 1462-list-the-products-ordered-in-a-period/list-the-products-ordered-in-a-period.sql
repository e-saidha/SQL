WITH t AS (SELECT SUM(unit) AS sm, p.product_name
FROM Orders AS o
LEFT JOIN Products AS p
ON o.product_id = p.product_id
WHERE order_date BETWEEN '2020-02-01' AND '2020-02-29'
GROUP BY o.product_id)


SELECT product_name, sm AS unit
FROM t
WHERE sm>99