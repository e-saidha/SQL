SELECT e2.name
FROM Employee as e1
JOIN Employee as e2 
ON e1.managerId = e2.id 
GROUP BY e2.id, e2.name
HAVING COUNT(*)>=5


