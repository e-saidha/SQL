WITH t AS (
    SELECT MAX(id) as id
    FROM Seat
)

,t1 AS (SELECT
CASE WHEN id%2 = 0 THEN id-1 WHEN id%2 = 1 AND id != (SELECT id FROM t) THEN id+1 ELSE id END AS id, student
FROM Seat)

SELECT id,student
FROM t1 
ORDER BY id

