SELECT name
FROM can
WHERE id IN (SELECT can_id FROM shop_can WHERE shop_id = 1)
ORDER BY name
