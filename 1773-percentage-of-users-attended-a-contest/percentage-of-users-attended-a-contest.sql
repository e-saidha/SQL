SELECT r.contest_id, ROUND(COUNT(r.user_id)*100/ (SELECT COUNT(*) FROM Users) , 2) AS percentage
FROM Register as r
GROUP BY r.contest_id
ORDER BY percentage DESC, contest_id ASC




