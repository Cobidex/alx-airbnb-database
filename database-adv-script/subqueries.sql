SELECT * FROM Property p
WHERE p.id IN 
  (
    SELECT r.property_id FROM Review r
    GROUP BY r.property_id
    HAVING AVG(r.rating) > 4.0
    );

SELECT * FROM User u
WHERE (
    SELECT COUNT(*) FROM Booking b
    WHERE b.user_id = u.id
    ) > 3;