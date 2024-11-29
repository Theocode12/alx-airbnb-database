INSERT INTO user (user_id, first_name, last_name, email, password_hash, phone_number, role) VALUES
('550e8400-e29b-41d4-a716-446655440001', 'Alice', 'Johnson', 'alice.johnson@example.com', 'hash1', '1234567890', 'host'),
('d4e8b4f1-17ed-4d9e-8b42-8df20228b01f', 'Bob', 'Smith', 'bob.smith@example.com', 'hash2', '1234567891', 'guest'),
('6e89c0e5-9cb4-4adf-b9e6-f0d00124a1f9', 'Charlie', 'Brown', 'charlie.brown@example.com', 'hash3', '1234567892', 'host'),
('c77a52d2-3bb7-45b6-8d25-37a0c12a0131', 'Diana', 'Prince', 'diana.prince@example.com', 'hash4', '1234567893', 'guest'),
('cece5c4b-c5dc-42ef-b2b6-0f02e8b63f2a', 'Eve', 'Adams', 'eve.adams@example.com', 'hash5', NULL, 'admin'),
('905dd740-1f38-47b2-bf36-2d40cfd74334', 'Frank', 'Wright', 'frank.wright@example.com', 'hash6', '1234567894', 'guest'),
('b3a60392-d6d4-41da-87e3-56f85e156a48', 'Grace', 'Lee', 'grace.lee@example.com', 'hash7', '1234567895', 'host'),
('f1a6bb65-c4fa-4878-bb4a-d8ec9c3d4f3e', 'Henry', 'Miller', 'henry.miller@example.com', 'hash8', '1234567896', 'guest'),
('9f64c545-37b8-4dcf-83c9-18b6e21f7a6a', 'Isla', 'Moore', 'isla.moore@example.com', 'hash9', '1234567897', 'guest'),
('d15a5a7d-8f4d-45d4-b5dc-e4afcb76c176', 'Jack', 'Wilson', 'jack.wilson@example.com', 'hash10', '1234567898', 'host'),
('71be1d91-70d3-4427-bf92-ef1c79b67f98', 'Kate', 'Anderson', 'kate.anderson@example.com', 'hash11', NULL, 'guest'),
('61f68b3c-6638-471c-9931-08648e942a0a', 'Liam', 'Taylor', 'liam.taylor@example.com', 'hash12', '1234567899', 'host'),
('12974d34-826c-4cf1-a7d5-4b7af14e178d', 'Mia', 'Walker', 'mia.walker@example.com', 'hash13', NULL, 'guest'),
('de73e198-9269-45b3-bdf7-14dfba3e7d21', 'Noah', 'Clark', 'noah.clark@example.com', 'hash14', '1234567810', 'guest'),
('4483feba-2603-4d1d-bc9a-81f67d45cbba', 'Olivia', 'Martinez', 'olivia.martinez@example.com', 'hash15', '1234567811', 'host');


INSERT INTO property (property_id, host_id, name, description, location, pricepernight) VALUES
('0bdea0a4-6e02-4c35-880c-1c4ab38c040b', '550e8400-e29b-41d4-a716-446655440000', 'Beachside Villa', 'A beautiful villa by the sea.', 'Malibu, CA', 300.00),
('eb4f8e96-f314-4a27-87b6-812476cfe7cb', '6e89c0e5-9cb4-4adf-b9e6-f0d00124a1f9', 'Mountain Cabin', 'Cozy cabin in the mountains.', 'Aspen, CO', 200.00),
('fae32e6d-8919-4b67-a4f2-759b47466b6a', 'b3a60392-d6d4-41da-87e3-56f85e156a48', 'Urban Apartment', 'Modern apartment in the city.', 'New York, NY', 150.00),
('d2d18a3c-71c8-4658-8821-e3be7755732b', 'd15a5a7d-8f4d-45d4-b5dc-e4afcb76c176', 'Lake House', 'Charming house by the lake.', 'Lake Tahoe, NV', 250.00),
('7f2e9ad4-1d41-41eb-a77e-1b60f1e5e762', '61f68b3c-6638-471c-9931-08648e942a0a', 'Desert Retreat', 'Peaceful retreat in the desert.', 'Phoenix, AZ', 180.00);
('7f2e9ad4-1d41-41eb-a77e-1b60f1e5e777', '61f68b3c-6638-471c-9931-08648e942a0a', 'Desert Lake', 'Under-water retreat, welcome.', 'California, AZ', 190.00);



INSERT INTO booking (booking_id, property_id, user_id, start_date, end_date, status) VALUES
('e1f0db85-d3e3-4a5b-9d77-731be6ddf8c1', '0bdea0a4-6e02-4c35-880c-1c4ab38c040b', 'd4e8b4f1-17ed-4d9e-8b42-8df20228b01f', '2024-12-01', '2024-12-07', 'confirmed'),
('b8ac30cc-0311-4d04-a6fc-6c44b5f7f82e', 'eb4f8e96-f314-4a27-87b6-812476cfe7cb', '905dd740-1f38-47b2-bf36-2d40cfd74334', '2024-12-10', '2024-12-15', 'pending'),
('c77f97d2-3ae3-42f7-a4e7-2a63401536b3', 'fae32e6d-8919-4b67-a4f2-759b47466b6a', 'c77a52d2-3bb7-45b6-8d25-37a0c12a0131', '2024-12-20', '2024-12-25', 'canceled'),
('ee58e620-b742-4dc6-ae4f-9473d77eb467', '7f2e9ad4-1d41-41eb-a77e-1b60f1e5e762', 'f1a6bb65-c4fa-4878-bb4a-d8ec9c3d4f3e', '2024-12-05', '2024-12-10', 'confirmed'),
('2fcee7c4-8744-4509-81c2-fefc2d917e76', 'd2d18a3c-71c8-4658-8821-e3be7755732b', '71be1d91-70d3-4427-bf92-ef1c79b67f98', '2024-12-12', '2024-12-18', 'confirmed'),
('fd8e5c09-7028-44a5-86e6-463dba8e4d4a', '0bdea0a4-6e02-4c35-880c-1c4ab38c040b', '9f64c545-37b8-4dcf-83c9-18b6e21f7a6a', '2024-12-15', '2024-12-20', 'pending');

INSERT INTO payment (payment_id, booking_id, amount, payment_method) VALUES
('13afc3bc-58f4-47d5-bc69-90229c4c9b21', 'e1f0db85-d3e3-4a5b-9d77-731be6ddf8c1', 2100.00, 'credit_card'),
('cb63f264-1c9a-4825-bae8-4fd7291c8c02', 'b8ac30cc-0311-4d04-a6fc-6c44b5f7f82e', 1000.00, 'paypal'),
('67c8e2b5-4746-4201-b9eb-94ecb9e7f391', 'ee58e620-b742-4dc6-ae4f-9473d77eb467', 1200.00, 'stripe'),
('a946f920-d61e-4fd0-8453-d01b8b75b052', '2fcee7c4-8744-4509-81c2-fefc2d917e76', 1500.00, 'credit_card');

INSERT INTO review (review_id, property_id, user_id, rating, comment) VALUES
('53044fae-0985-4727-83f4-f7993f15e8c5', '0bdea0a4-6e02-4c35-880c-1c4ab38c040b', 'd4e8b4f1-17ed-4d9e-8b42-8df20228b01f', 5, 'Amazing experience!'),
('21d5782f-d61e-4f8d-9907-cb93fcd378ef', 'eb4f8e96-f314-4a27-87b6-812476cfe7cb', '905dd740-1f38-47b2-bf36-2d40cfd74334', 4, 'Very cozy and peaceful.'),
('9473f62b-b00a-49f8-8331-4521d618e9e3', 'fae32e6d-8919-4b67-a4f2-759b47466b6a', 'c77a52d2-3bb7-45b6-8d25-37a0c12a0131', 3, 'Good, but could be better.'),
('e7e83bc2-0bc4-4fd8-978b-b91f03b64236', 'd2d18a3c-71c8-4658-8821-e3be7755732b', '71be1d91-70d3-4427-bf92-ef1c79b67f98', 5, 'Fantastic location and amenities!'),
('b2c4679b-5027-47cf-81b3-b1f51c78772f', '7f2e9ad4-1d41-41eb-a77e-1b60f1e5e762', 'f1a6bb65-c4fa-4878-bb4a-d8ec9c3d4f3e', 4, 'Relaxing and beautiful.');

INSERT INTO message (message_id, sender_id, recipient_id, message_body) VALUES
('3e176846-ea98-4da6-98e6-5c1b0e6f1f14', 'd4e8b4f1-17ed-4d9e-8b42-8df20228b01f', '550e8400-e29b-41d4-a716-446655440000', 'Is the villa available for next month?'),
('2f61d087-8083-41b4-b06d-4950659b3b44', '905dd740-1f38-47b2-bf36-2d40cfd74334', '6e89c0e5-9cb4-4adf-b9e6-f0d00124a1f9', 'Can I get a discount for the cabin?'),
('22ff0ab1-d78d-422b-b90e-e183f4ab3178', 'c77a52d2-3bb7-45b6-8d25-37a0c12a0131', 'b3a60392-d6d4-41da-87e3-56f85e156a48', 'What is the check-in process for the apartment?'),
('8437adbe-f086-4c85-8b96-817f5f56e76d', 'f1a6bb65-c4fa-4878-bb4a-d8ec9c3d4f3e', '61f68b3c-6638-471c-9931-08648e942a0a', 'Are pets allowed in the desert retreat?'),
('edfaecb4-c376-4eb2-9a02-cdd97d66d0d2', '71be1d91-70d3-4427-bf92-ef1c79b67f98', 'd15a5a7d-8f4d-45d4-b5dc-e4afcb76c176', 'Can I extend my stay at the lake house?');
