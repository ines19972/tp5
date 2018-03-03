SELECT student.male, count(student.male) AS "count"
FROM student
GROUP BY student.male
