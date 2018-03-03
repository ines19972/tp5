CREATE FUNCTION update_can_capacity(can_id INT, new_capacity INT)
  RETURNS VOID AS
$$ 
BEGIN
  UPDATE can
  SET capacity_cl = new_capacity
  WHERE can.can_id = can_id;
END;
$$ LANGUAGE plpgsql;
