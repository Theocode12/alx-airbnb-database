INSERT INTO 
user (user_id, first_name, last_name, email, password_hash, phone_number, role) 
VALUES ('550e8400-e29b-41d4-a716-446655440000', 'John', 'Doe', 'Johndeo@gmail.com', 'password', '+23478344938', 'host');

INSERT INTO
property (property_id, host_id, name, description, location, pricepernight)
VALUES ('500e8400-e29b-41d4-a716-446655440001', '550e8400-e29b-41d4-a716-446655440000', 'Victoria Island', 'A 5 star house for your comfort', 'Lagos', 25.3);

INSERT INTO
booking (booking_id, property_id, user_id, start_date, end_date, status)
VALUES ('500e8400-e29b-41d4-a716-441155440001', '500e8400-e29b-41d4-a716-446655440001', '550e8400-e29b-41d4-a716-446655440000', '2024-11-28', '2024-12-01', 'confirmed');

INSERT INTO
payment (payment_id, booking_id, amount, payment_date, payment_method)
VALUES ('500e8411-e29b-41d4-a716-441155440001', '500e8400-e29b-41d4-a716-441155440001', 101.2, '2024-11-15', 'credit_card');

INSERT INTO
review (review_id, property_id, user_id, rating, comment)
VALUES ('540e8411-e29b-41d4-a716-441155441111', '500e8400-e29b-41d4-a716-446655440001', '550e8400-e29b-41d4-a716-446655440000', 5, 'Incredible service');

INSERT INTO
message (message_id, sender_id, recipient_id, message_body)
VALUES ('550e8500-e29b-41d4-a716-446655441234', '550e8400-e29b-41d4-a716-446655440000', '550e8400-e29b-41d4-a716-446655440000', 'Thanks for the service');

