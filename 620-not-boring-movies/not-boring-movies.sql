

SELECT * 
FROM Cinema
WHERE id NOT IN (
    SELECT id
FROM Cinema
WHERE description LIKE '%boring%'
) AND MOD(id, 2) = 1
ORDER BY rating DESC