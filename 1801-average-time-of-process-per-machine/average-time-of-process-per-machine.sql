WITH temp AS (
SELECT a.machine_id,a.process_id, b.timestamp - a.timestamp AS time
FROM Activity AS a
JOIN Activity AS b
ON a.machine_id = b.machine_id AND a.process_id = b.process_id
WHERE a.activity_type = 'start' AND b.activity_type = 'end'
)
SELECT machine_id, ROUND(AVG(time),3) AS processing_time
FROM temp 
GROUP BY machine_id
