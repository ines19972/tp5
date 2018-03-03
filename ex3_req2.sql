SELECT shop.name, round(cast(avg(shop_can.price) AS numeric), 2) 
FROM shop_can
JOIN shop ON
shop.id = id
GROUP BY shop.name
