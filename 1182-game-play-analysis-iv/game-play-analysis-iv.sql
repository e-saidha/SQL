# Write your MySQL query statement below
WITH first_login AS 
(
    SELECT player_id,
    MIN(event_date) AS first
    FROM Activity
    GROUP BY player_id
)
, next_login AS
(
    SELECT player_id,
    event_date,
    LEAD(event_date) OVER (PARTITION BY player_id ORDER BY event_date) AS next
    FROM Activity
)

SELECT ROUND(SUM(CASE WHEN DATEDIFF(n.next,f.first) = 1 THEN 1 ELSE 0 END)
/COUNT(DISTINCT f.player_id),2) AS fraction
FROM first_login AS f
JOIN next_login AS n
ON f.player_id = n.player_id 

