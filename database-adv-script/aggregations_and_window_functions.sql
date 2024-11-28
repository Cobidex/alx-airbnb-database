SELECT COUNT(*) FROM Booking b
GROUP BY b.user_id;

SELECT
  b.property_id,
  RANK() OVER (ORDER BY COUNT(*) DESC)
FROM Booking b
GROUP BY b.property_id;

SELECT
  b.property_id,
  ROW_NUMBER() OVER (ORDER BY COUNT(*) DESC)
FROM Booking b
GROUP BY b.property_id;