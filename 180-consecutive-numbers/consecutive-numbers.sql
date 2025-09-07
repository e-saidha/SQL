SELECT DISTINCT num AS ConsecutiveNums
FROM Logs
WHERE num IN (
    SELECT 
    CASE WHEN
    num = LEAD(num,1) OVER (ORDER BY id) AND
    num = LEAD(num,2) OVER (ORDER BY id)
    THEN num ELSE NULL END
FROM Logs
) IS NOT NULL