INSERT INTO User (user_id, first_name, last_name, email, password_hash, phone_number, role)
VALUES
('uuid-1', 'Alice', 'Smith', 'alice@example.com', 'hashedpassword1', '1234567890', 'host'),
('uuid-2', 'Bob', 'Johnson', 'bob@example.com', 'hashedpassword2', '0987654321', 'guest'),
('uuid-3', 'Charlie', 'Williams', 'charlie@example.com', 'hashedpassword3', '1122334455', 'admin''');

INSERT INTO Property (property_id, host_id, name, description, location, pricepernight)
VALUES
('prop-1', 'uuid-1', 'Cozy Cottage', 'A beautiful cottage in the countryside.', 'Countryside, USA', 120.00),
('prop-2', 'uuid-1', 'Beach House', 'Luxury beach house with stunning views.', 'Seaside, USA', 250.00),
('prop-3', 'uuid-3', 'Urban Apartment', 'Modern apartment in the city center.', 'City Center, USA', 180.00);

INSERT INTO Booking (booking_id, property_id, user_id, start_date, end_date, total_price, status)
VALUES
('book-1', 'prop-1', 'uuid-2', '2024-12-01', '2024-12-05', 480.00, 'confirmed'),
('book-2', 'prop-2', 'uuid-2', '2024-12-10', '2024-12-15', 1250.00, 'pending'),
('book-3', 'prop-3', 'uuid-2', '2025-01-05', '2025-01-10', 900.00, 'canceled');

INSERT INTO Payment (payment_id, booking_id, amount, payment_date, payment_method)
VALUES
('pay-1', 'book-1', 480.00, 'credit_card'),
('pay-2', 'book-2', 1250.00, 'paypal');

INSERT INTO Review (review_id, property_id, user_id, rating, comment)
VALUES
('rev-1', 'prop-1', 'uuid-2', 5, 'Amazing place, highly recommended!'),
('rev-2', 'prop-2', 'uuid-2', 4, 'Great stay, but a bit pricey.'),
('rev-3', 'prop-3', 'uuid-1', 3, 'Decent, but could be better.');

INSERT INTO Message (message_id, sender_id, recipient_id, message_body)
VALUES
('msg-1', 'uuid-2', 'uuid-1', 'Hi, is the cottage available for the holidays?'),
('msg-2', 'uuid-1', 'uuid-2', 'Yes, it is. Let me know your dates.'),
('msg-3', 'uuid-2', 'uuid-3', 'Can I get a discount on the beach house?');
