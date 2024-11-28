SELECT * FROM Properties p
WHERE p.id IN 
  (
    SELECT property_id FROM Review r
    GROUP BY r.property_id
    HAVING AVG(r.rating) > 4
    );