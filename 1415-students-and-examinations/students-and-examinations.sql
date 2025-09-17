SELECT s.student_id, s.student_name, sj.subject_name, COUNT(e.subject_name) AS attended_exams
FROM Students s
CROSS JOIN subjects sj
LEFT JOIN Examinations e
ON e.student_id = s.student_id AND e.subject_name = sj.subject_name
GROUP BY s.student_id, s.student_name, sj.subject_name
ORDER BY student_id, subject_name








