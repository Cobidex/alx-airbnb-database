EXPLAIN SELECT * FROM User WHERE id = 1;

EXPLAIN SELECT * FROM Booking WHERE user_id = 1 AND property_id = 1;

EXPLAIN SELECT * FROM Properties WHERE host_id = 1;


CREATE INDEX user_id_index ON User (id);

CREATE INDEX book_property_user_index ON Booking (user_id, property_id);

CREATE INDEX property_user_index ON Properties (host_id);

ANALYZE SELECT * FROM User WHERE id = 1;

ANALYZE SELECT * FROM Booking WHERE user_id = 1 AND property_id = 1;

ANALYZE SELECT * FROM Properties WHERE host_id = 1;