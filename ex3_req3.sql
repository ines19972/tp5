SELECT login, sum(price) AS total
FROM student_can_shop
JOIN shop_can ON 
shop_can.can_id = student_can_shop.can_id
AND student_can_shop.shop_id = shop_can.shop_id
GROUP BY student_can_shop.login
ORDER BY total DESC

/*SELECT login, sum(price) AS total
FROM student_can_shop
JOIN shop_can USING (shop_id, can_id)
GROUP BY student_can_shop.login
ORDER BY total DESC*/

