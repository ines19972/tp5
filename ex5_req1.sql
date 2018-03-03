SELECT login
FROM student
WHERE student.login NOT IN (SELECT login FROM student_can_shop)
ORDER BY login
