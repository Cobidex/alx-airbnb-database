EXPLAIN SELECT * FROM booking b
JOIN user u ON b.user_id = u.id
JOIN property p ON b.property_id = p.id
JOIN payment pay ON b.id = pay.booking_id

CREATE INDEX user_id_index ON user (id);
CREATE INDEX property_id_index ON property (id);
CREATE INDEX booking_id_index ON booking (id);
CREATE INDEX payment_id_index ON payment (id);

EXPLAIN SELECT * FROM booking b
JOIN user u ON b.user_id = u.id
JOIN property p ON b.property_id = p.id
JOIN payment pay ON b.id = pay.booking_id