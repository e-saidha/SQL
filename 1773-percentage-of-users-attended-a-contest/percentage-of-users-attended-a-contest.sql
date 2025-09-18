WITH t AS (SELECT COUNT(user_id) as num
FROM Users)

SELECT contest_id, ROUND(COUNT(user_id)/num *100,2) AS percentage
FROM Register, t
GROUP BY contest_id
ORDER BY percentage DESC, contest_id