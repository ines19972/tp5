SELECT login
FROM student_can_shop
WHERE purchase_time <= ALL (SELECT purchase_time FROM student_can_shop)
