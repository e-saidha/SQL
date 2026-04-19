
SELECT e1.unique_id, name
FROM EmployeeUNI AS e1
RIGHT JOIN Employees AS e2
ON e1.id = e2.id