WITH t AS (SELECT id,salary,
DENSE_RANK() OVER (ORDER BY salary DESC) AS rk
FROM Employee)

SELECT MAX(salary) AS SecondHighestSalary
FROM t
WHERE rk = 2