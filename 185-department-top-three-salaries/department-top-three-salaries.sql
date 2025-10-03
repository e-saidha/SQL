WITH t AS (SELECT DENSE_RANK() OVER(PARTITION BY d.name ORDER BY salary DESC) AS rk,d.name AS department,
e.name AS Employee, salary as Salary
FROM Employee e 
JOIN Department d 
ON e.departmentId = d.id)

SELECT Department,Employee,Salary
FROM t
WHERE rk<4

