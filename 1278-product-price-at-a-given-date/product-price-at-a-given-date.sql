WITH t AS (SELECT
    product_id,
    new_price,
    change_date,
    ROW_NUMBER() OVER (PARTITION BY product_id ORDER BY change_date DESC) AS rk
FROM Products
WHERE change_date <= '2019-08-16')

SELECT 
    product_id,
    new_price AS price
FROM t
WHERE rk = 1

UNION 

SELECT 
    product_id,
    10 AS price
FROM Products
WHERE product_id NOT IN (SELECT product_id
FROM t)     