
WITH t AS 
(SELECT DISTINCT sell_date, product
FROM Activities)




SELECT
    sell_date,
    COUNT(*) AS num_sold,
    GROUP_CONCAT(DISTINCT product ORDER BY product SEPARATOR ',') AS products
FROM t
GROUP BY sell_date
