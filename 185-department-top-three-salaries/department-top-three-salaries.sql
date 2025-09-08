# Write your MySQL query statement below
WITH t1 AS (SELECT d.name AS Department, e.name AS Employee, e.salary AS Salary, DENSE_RANK() OVER (PARTITION BY d.name ORDER BY e.salary DESC) AS rk
FROM Employee AS e
JOIN Department AS d
ON e.departmentId = d.id) 

SELECT 
    Department,
    Employee,
    Salary
FROM t1
WHERE rk<4
ORDER BY Department
