WITH t AS 
(SELECT
    player_id,
    event_date,
    LEAD(event_date) OVER (PARTITION BY player_id ORDER BY event_date) AS nxtdate,
    event_date + INTERVAL 1 DAY AS nxtday,
    ROW_NUMBER() OVER (PARTITION BY player_id ORDER BY event_date) AS rn

FROM Activity)
,t2 AS 
(SELECT player_id
FROM t
WHERE rn = 1
AND nxtdate = nxtday)

SELECT ROUND(COUNT(*)/(SELECT COUNT(DISTINCT player_id) FROM Activity),2) AS fraction
FROM t2






