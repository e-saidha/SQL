WITH t AS(
SELECT COUNT(student) as kids,class
FROM Courses
GROUP BY class)


SELECT class
FROM t
WHERE kids>4
