WITH t AS
(SELECT 
    person_id,
    person_name,
    weight,
    turn,
    SUM(weight) OVER (ORDER BY turn) as tw
FROM Queue)

SELECT person_name
FROM t 
WHERE tw<=1000
ORDER BY turn DESC
LIMIT 1
