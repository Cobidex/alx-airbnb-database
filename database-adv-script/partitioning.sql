ALTER TABLE booking RENAME TO booking_original;

CREATE TABLE booking (
    id UUID NOT NULL,
    property_id UUID NOT NULL,
    user_id UUID NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    total_price DECIMAL(10, 2) NOT NULL,
    status booking_status NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (id, start_date),
    FOREIGN KEY (property_id) REFERENCES property(id),
    FOREIGN KEY (user_id) REFERENCES "user"(id)
) PARTITION BY RANGE (start_date);

CREATE TABLE booking_2023 PARTITION OF booking
    FOR VALUES FROM ('2023-01-01') TO ('2024-01-01');

CREATE TABLE booking_2024 PARTITION OF booking
    FOR VALUES FROM ('2024-01-01') TO ('2025-01-01');

INSERT INTO booking
SELECT * FROM booking_original;

CREATE INDEX idx_booking_2023_property_id ON booking_2023 (property_id);
CREATE INDEX idx_booking_2024_property_id ON booking_2024 (property_id);
