SELECT MIN(e2.name) AS name
FROM Employee as e1
JOIN Employee as e2 
ON e1.managerId = e2.id 
GROUP BY e2.id
HAVING COUNT(*)>=5


