# Write your MySQL query statement below
SELECT e2.employee_id, e2.name, COUNT(*) AS reports_count, ROUND(AVG(e1.age),0) AS average_age
FROM Employees AS e1
LEFT JOIN Employees AS e2
ON e1.reports_to = e2.employee_id
WHERE e2.employee_id IS NOT NULL
GROUP BY e2.employee_id
ORDER BY employee_id