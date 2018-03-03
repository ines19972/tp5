CREATE VIEW v_shop_time (name, purchase_time) AS
  SELECT shop.name, purchase_time
  FROM shop
  JOIN student_can_shop
    ON  shop.id = shop_id
  ORDER BY shop.name, purchase_time
