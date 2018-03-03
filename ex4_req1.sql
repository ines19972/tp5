CREATE VIEW v_student_can (login, name) AS
  SELECT login, can.name
  FROM student_can_shop
  JOIN can
    ON student_can_shop.can_id = can.id
  ORDER BY login, can.name
