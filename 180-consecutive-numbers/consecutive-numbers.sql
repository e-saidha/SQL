WITH t AS (SELECT 
num,id,
LEAD(id,1) OVER (PARTITION BY num ORDER BY id) AS 1lead,
LEAD(id,2) OVER (PARTITION BY num ORDER BY id) AS 2lead
FROM Logs)



SELECT DISTINCT num AS ConsecutiveNums
FROM t
WHERE id = 1lead-1 AND id = 2lead-2 

