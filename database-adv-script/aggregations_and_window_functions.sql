SELECT COUNT(*) FROM Booking b
GROUP BY b.user_id;

SELECT b.property_id, RANK() OVER (PARTITION BY b.property_id ORDER BY COUNT(*) DESC) AS rank FROM Booking b;