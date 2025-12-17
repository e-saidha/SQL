WITH t AS (SELECT
CASE WHEN id%2 = 0 THEN id-1 WHEN id%2 = 1 AND id NOT IN (SELECT MAX(id) FROM Seat) THEN id+1 ELSE id END AS id, student
FROM Seat)

SELECT id,student
FROM t 
ORDER BY id

