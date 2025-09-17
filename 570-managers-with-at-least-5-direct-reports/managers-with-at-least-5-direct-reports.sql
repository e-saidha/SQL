SELECT e2.name 
FROM Employee e1
JOIN Employee e2
ON e1.managerId = e2.id
GROUP BY e2.id
HAVING COUNT(e2.id)>4
