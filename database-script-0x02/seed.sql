INSERT INTO User (user_id, first_name, last_name, email, password_hash, phone_number, role)
VALUES 
('550e8400-e29b-41d4-a716-446655440001', 'Alice', 'Smith', 'alice@example.com', 'hashedpassword1', '1234567890', 'host'),
('550e8400-e29b-41d4-a716-446655440002', 'Bob', 'Jones', 'bob@example.com', 'hashedpassword2', '0987654321', 'guest'),
('550e8400-e29b-41d4-a716-446655440003', 'Charlie', 'Brown', 'charlie@example.com', 'hashedpassword3', NULL, 'admin');


INSERT INTO Property (property_id, host_id, name, description, location, pricepernight)
VALUES
('660e8400-e29b-41d4-a716-446655440001', '550e8400-e29b-41d4-a716-446655440001', 'Cozy Apartment', 'A lovely one-bedroom apartment in the city center.', 'New York, NY', 120.50),
('660e8400-e29b-41d4-a716-446655440002', '550e8400-e29b-41d4-a716-446655440001', 'Luxury Villa', 'A spacious villa with a private pool.', 'Miami, FL', 450.00);


INSERT INTO Booking (booking_id, property_id, user_id, start_date, end_date, total_price, status)
VALUES
('770e8400-e29b-41d4-a716-446655440001', '660e8400-e29b-41d4-a716-446655440001', '550e8400-e29b-41d4-a716-446655440002', '2024-12-01', '2024-12-07', 720.00, 'confirmed'),
('770e8400-e29b-41d4-a716-446655440002', '660e8400-e29b-41d4-a716-446655440002', '550e8400-e29b-41d4-a716-446655440002', '2024-12-10', '2024-12-15', 2250.00, 'pending');


INSERT INTO Payment (payment_id, booking_id, amount, payment_method)
VALUES
('880e8400-e29b-41d4-a716-446655440001', '770e8400-e29b-41d4-a716-446655440001', 720.00, 'credit_card'),
('880e8400-e29b-41d4-a716-446655440002', '770e8400-e29b-41d4-a716-446655440002', 2250.00, 'paypal');


INSERT INTO Review (review_id, property_id, user_id, rating, comment)
VALUES
('990e8400-e29b-41d4-a716-446655440001', '660e8400-e29b-41d4-a716-446655440001', '550e8400-e29b-41d4-a716-446655440002', 5, 'Fantastic stay! Highly recommended.'),
('990e8400-e29b-41d4-a716-446655440002', '660e8400-e29b-41d4-a716-446655440002', '550e8400-e29b-41d4-a716-446655440002', 4, 'The villa was amazing but a bit pricey.');


INSERT INTO Message (message_id, sender_id, recipient_id, message_body)
VALUES
('aa0e8400-e29b-41d4-a716-446655440001', '550e8400-e29b-41d4-a716-446655440002', '550e8400-e29b-41d4-a716-446655440001', 'Hi Alice, I’m interested in booking your apartment.'),
('aa0e8400-e29b-41d4-a716-446655440002', '550e8400-e29b-41d4-a716-446655440001', '550e8400-e29b-41d4-a716-446655440002', 'Hi Bob, sure thing! Let me know your dates.');

