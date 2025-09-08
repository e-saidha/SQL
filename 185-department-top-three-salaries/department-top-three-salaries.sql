# Write your MySQL query statement below
WITH t1 AS (SELECT d.name AS Dep, e.name AS Ep, e.salary AS sal, DENSE_RANK() OVER (PARTITION BY d.name ORDER BY e.salary DESC) AS rk
FROM Employee AS e
JOIN Department AS d
ON e.departmentId = d.id) 

SELECT 
    Dep AS Department,
    Ep AS Employee,
    sal AS Salary
FROM t1
WHERE rk<4
ORDER BY Department
