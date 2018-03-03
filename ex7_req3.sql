CREATE OR REPLACE FUNCTION get_thirsty(amount INT)
  RETURNS SETOF TEXT AS
$$
DECLARE
  index RECORD;
BEGIN
  FOR index IN
    SELECT firstname, lastname, sum(capacity_cl) AS total
    FROM student_can_shop
      JOIN student ON student.login = student_can_shop.login
      JOIN can ON can.id = student_can_shop.can_id
    GROUP BY student.login
    HAVING sum(capacity_cl) > amount
    ORDER BY firstname, lastname
  LOOP
  RETURN NEXT index.firstname || '' ||
            index.lastname  || '('||
            index.total     || 'cl)';
  END LOOP;
RETURN;
END;
$$ LANGUAGE plpgsql;
