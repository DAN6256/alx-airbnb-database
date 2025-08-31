
INSERT INTO User (user_id, first_name, last_name, email, password_hash, phone_number, role, created_at) VALUES
-- Hosts
('550e8400-e29b-41d4-a716-446655440001', 'Sarah', 'Johnson', 'sarah.johnson@email.com', '$2a$10$N9qo8uLOickgx2ZMRZoMye', '+1-555-0101', 'host', '2024-01-15 10:30:00'),
('550e8400-e29b-41d4-a716-446655440002', 'Michael', 'Chen', 'michael.chen@email.com', '$2a$10$N9qo8uLOickgx2ZMRZoMyf', '+1-555-0102', 'host', '2024-02-20 14:45:00'),
('550e8400-e29b-41d4-a716-446655440003', 'Elena', 'Rodriguez', 'elena.rodriguez@email.com', '$2a$10$N9qo8uLOickgx2ZMRZoMyg', '+34-91-555-0103', 'host', '2024-03-10 09:15:00'),
('550e8400-e29b-41d4-a716-446655440004', 'David', 'Thompson', 'david.thompson@email.com', '$2a$10$N9qo8uLOickgx2ZMRZoMyh', '+44-20-555-0104', 'host', '2024-03-25 16:20:00'),

-- Guests
('550e8400-e29b-41d4-a716-446655440005', 'Emma', 'Williams', 'emma.williams@email.com', '$2a$10$N9qo8uLOickgx2ZMRZoMyi', '+1-555-0105', 'guest', '2024-04-01 11:00:00'),
('550e8400-e29b-41d4-a716-446655440006', 'James', 'Brown', 'james.brown@email.com', '$2a$10$N9qo8uLOickgx2ZMRZoMyj', '+1-555-0106', 'guest', '2024-04-15 13:30:00'),
('550e8400-e29b-41d4-a716-446655440007', 'Lisa', 'Davis', 'lisa.davis@email.com', '$2a$10$N9qo8uLOickgx2ZMRZoMyk', '+1-555-0107', 'guest', '2024-05-02 08:45:00'),
('550e8400-e29b-41d4-a716-446655440008', 'Robert', 'Wilson', 'robert.wilson@email.com', '$2a$10$N9qo8uLOickgx2ZMRZoMyl', '+1-555-0108', 'guest', '2024-05-18 17:10:00'),
('550e8400-e29b-41d4-a716-446655440009', 'Maria', 'Garcia', 'maria.garcia@email.com', '$2a$10$N9qo8uLOickgx2ZMRZoMym', '+1-555-0109', 'guest', '2024-06-05 12:25:00'),
('550e8400-e29b-41d4-a716-446655440010', 'Alex', 'Kumar', 'alex.kumar@email.com', '$2a$10$N9qo8uLOickgx2ZMRZoMyn', '+1-555-0110', 'guest', '2024-06-20 15:40:00'),

-- Admins
('550e8400-e29b-41d4-a716-446655440011', 'Jennifer', 'Admin', 'jennifer.admin@airbnb.com', '$2a$10$N9qo8uLOickgx2ZMRZoMyo', '+1-555-0111', 'admin', '2024-01-01 00:00:00'),
('550e8400-e29b-41d4-a716-446655440012', 'Thomas', 'Support', 'thomas.support@airbnb.com', '$2a$10$N9qo8uLOickgx2ZMRZoMyp', '+1-555-0112', 'admin', '2024-01-01 00:00:00');



INSERT INTO Property (property_id, host_id, name, description, location, price_per_night, created_at, updated_at) VALUES
-- Sarah's Properties
('650e8400-e29b-41d4-a716-446655440001', '550e8400-e29b-41d4-a716-446655440001', 'Cozy Downtown Apartment', 'Beautiful 2-bedroom apartment in the heart of downtown. Walking distance to restaurants, shops, and public transportation. Perfect for business travelers and tourists alike.', 'New York, NY', 120.00, '2024-01-16 09:00:00', '2024-01-16 09:00:00'),
('650e8400-e29b-41d4-a716-446655440002', '550e8400-e29b-41d4-a716-446655440001', 'Sunny Studio Loft', 'Bright and airy studio loft with high ceilings and large windows. Newly renovated with modern amenities and a fully equipped kitchen.', 'New York, NY', 85.00, '2024-02-01 14:30:00', '2024-02-01 14:30:00'),

-- Michael's Properties
('650e8400-e29b-41d4-a716-446655440003', '550e8400-e29b-41d4-a716-446655440002', 'Beachfront Villa', 'Stunning 4-bedroom villa with direct beach access. Private pool, outdoor dining area, and breathtaking ocean views. Ideal for families and groups.', 'San Diego, CA', 350.00, '2024-02-21 10:15:00', '2024-02-21 10:15:00'),
('650e8400-e29b-41d4-a716-446655440004', '550e8400-e29b-41d4-a716-446655440002', 'Mountain Cabin Retreat', 'Rustic yet comfortable 3-bedroom cabin in the mountains. Fireplace, hot tub, and hiking trails nearby. Perfect for a peaceful getaway.', 'Aspen, CO', 200.00, '2024-03-05 11:45:00', '2024-03-05 11:45:00'),

-- Elena's Properties
('650e8400-e29b-41d4-a716-446655440005', '550e8400-e29b-41d4-a716-446655440003', 'Historic Barcelona Flat', 'Charming 2-bedroom apartment in the Gothic Quarter. Original architecture with modern comforts. Close to beaches and major attractions.', 'Barcelona, Spain', 95.00, '2024-03-11 16:20:00', '2024-03-11 16:20:00'),
('650e8400-e29b-41d4-a716-446655440006', '550e8400-e29b-41d4-a716-446655440003', 'Madrid City Center Penthouse', 'Luxurious penthouse with panoramic city views. 3 bedrooms, 2 bathrooms, and a private terrace. Premium location near Puerta del Sol.', 'Madrid, Spain', 180.00, '2024-04-02 12:10:00', '2024-04-02 12:10:00'),

-- David's Properties
('650e8400-e29b-41d4-a716-446655440007', '550e8400-e29b-41d4-a716-446655440004', 'London Garden Flat', 'Elegant ground-floor flat with private garden. Located in trendy Notting Hill area. 2 bedrooms, vintage charm with modern amenities.', 'London, UK', 140.00, '2024-03-26 13:55:00', '2024-03-26 13:55:00'),
('650e8400-e29b-41d4-a716-446655440008', '550e8400-e29b-41d4-a716-446655440004', 'Thames View Apartment', 'Modern 1-bedroom apartment with stunning Thames river views. High-end finishes, gym access, and 24/7 concierge service.', 'London, UK', 160.00, '2024-04-10 10:30:00', '2024-04-10 10:30:00');



INSERT INTO Booking (booking_id, property_id, user_id, start_date, end_date, total_price, status, created_at) VALUES
-- Confirmed Bookings
('750e8400-e29b-41d4-a716-446655440001', '650e8400-e29b-41d4-a716-446655440001', '550e8400-e29b-41d4-a716-446655440005', '2024-07-15', '2024-07-18', 360.00, 'confirmed', '2024-06-20 14:30:00'),
('750e8400-e29b-41d4-a716-446655440002', '650e8400-e29b-41d4-a716-446655440003', '550e8400-e29b-41d4-a716-446655440006', '2024-08-01', '2024-08-07', 2100.00, 'confirmed', '2024-07-10 09:15:00'),
('750e8400-e29b-41d4-a716-446655440003', '650e8400-e29b-41d4-a716-446655440005', '550e8400-e29b-41d4-a716-446655440007', '2024-09-10', '2024-09-15', 475.00, 'confirmed', '2024-08-05 16:45:00'),
('750e8400-e29b-41d4-a716-446655440004', '650e8400-e29b-41d4-a716-446655440007', '550e8400-e29b-41d4-a716-446655440008', '2024-10-01', '2024-10-05', 560.00, 'confirmed', '2024-09-01 11:20:00'),
('750e8400-e29b-41d4-a716-446655440005', '650e8400-e29b-41d4-a716-446655440002', '550e8400-e29b-41d4-a716-446655440009', '2024-11-15', '2024-11-17', 170.00, 'confirmed', '2024-10-20 13:00:00'),

-- Pending Bookings
('750e8400-e29b-41d4-a716-446655440006', '650e8400-e29b-41d4-a716-446655440004', '550e8400-e29b-41d4-a716-446655440010', '2024-12-20', '2024-12-25', 1000.00, 'pending', '2024-11-15 10:30:00'),
('750e8400-e29b-41d4-a716-446655440007', '650e8400-e29b-41d4-a716-446655440008', '550e8400-e29b-41d4-a716-446655440005', '2025-01-10', '2025-01-14', 640.00, 'pending', '2024-12-01 15:45:00'),

-- Canceled Bookings
('750e8400-e29b-41d4-a716-446655440008', '650e8400-e29b-41d4-a716-446655440006', '550e8400-e29b-41d4-a716-446655440006', '2024-08-15', '2024-08-20', 900.00, 'canceled', '2024-07-25 12:10:00'),
('750e8400-e29b-41d4-a716-446655440009', '650e8400-e29b-41d4-a716-446655440001', '550e8400-e29b-41d4-a716-446655440007', '2024-09-01', '2024-09-03', 240.00, 'canceled', '2024-08-20 17:30:00');



INSERT INTO Payment (payment_id, booking_id, amount, payment_date, payment_method) VALUES
('850e8400-e29b-41d4-a716-446655440001', '750e8400-e29b-41d4-a716-446655440001', 360.00, '2024-06-20 14:35:00', 'credit_card'),
('850e8400-e29b-41d4-a716-446655440002', '750e8400-e29b-41d4-a716-446655440002', 2100.00, '2024-07-10 09:20:00', 'stripe'),
('850e8400-e29b-41d4-a716-446655440003', '750e8400-e29b-41d4-a716-446655440003', 475.00, '2024-08-05 16:50:00', 'paypal'),
('850e8400-e29b-41d4-a716-446655440004', '750e8400-e29b-41d4-a716-446655440004', 560.00, '2024-09-01 11:25:00', 'credit_card'),
('850e8400-e29b-41d4-a716-446655440005', '750e8400-e29b-41d4-a716-446655440005', 170.00, '2024-10-20 13:05:00', 'stripe');



INSERT INTO Review (review_id, property_id, user_id, rating, comment, created_at) VALUES
-- Reviews for past completed stays
('950e8400-e29b-41d4-a716-446655440001', '650e8400-e29b-41d4-a716-446655440001', '550e8400-e29b-41d4-a716-446655440005', 5, 'Absolutely wonderful stay! The apartment was exactly as described and Sarah was an amazing host. The location couldn\'t be better - walked everywhere. Will definitely book again!', '2024-07-19 10:15:00'),

('950e8400-e29b-41d4-a716-446655440002', '650e8400-e29b-41d4-a716-446655440003', '550e8400-e29b-41d4-a716-446655440006', 4, 'Beautiful beachfront villa with stunning views. The pool was perfect and the beach access was amazing. Only minor issue was the WiFi was a bit slow, but overall fantastic experience.', '2024-08-08 16:20:00'),

('950e8400-e29b-41d4-a716-446655440003', '650e8400-e29b-41d4-a716-446655440005', '550e8400-e29b-41d4-a716-446655440007', 5, 'Perfect location in Barcelona! Elena was super helpful with recommendations. The apartment is charming with all the historical character intact but modern conveniences. Loved it!', '2024-09-16 14:45:00'),

('950e8400-e29b-41d4-a716-446655440004', '650e8400-e29b-41d4-a716-446655440007', '550e8400-e29b-41d4-a716-446655440008', 4, 'Great stay in Notting Hill! The garden was lovely and the flat was very comfortable. David was responsive to all our questions. Would recommend to anyone visiting London.', '2024-10-06 11:30:00'),

('950e8400-e29b-41d4-a716-446655440005', '650e8400-e29b-41d4-a716-446655440002', '550e8400-e29b-41d4-a716-446655440009', 3, 'The studio was clean and well-located, but smaller than expected. Good for a short stay but might be cramped for longer visits. Host was helpful though.', '2024-11-18 09:20:00'),

-- Additional reviews for different properties
('950e8400-e29b-41d4-a716-446655440006', '650e8400-e29b-41d4-a716-446655440001', '550e8400-e29b-41d4-a716-446655440008', 5, 'Exceptional property and host! The apartment exceeded all expectations. Sarah provided excellent local tips and the space was immaculate. Highly recommend!', '2024-05-10 13:25:00'),

('950e8400-e29b-41d4-a716-446655440007', '650e8400-e29b-41d4-a716-446655440003', '550e8400-e29b-41d4-a716-446655440009', 5, 'Dream vacation! The villa was perfect for our family reunion. Michael was an outstanding host and the property amenities were top-notch. The kids loved the pool!', '2024-06-15 18:40:00'),

('950e8400-e29b-41d4-a716-446655440008', '650e8400-e29b-41d4-a716-446655440004', '550e8400-e29b-41d4-a716-446655440007', 4, 'Wonderful mountain retreat! The cabin was cozy and well-equipped. Great hiking nearby and the hot tub was perfect after long days outdoors. Just what we needed to disconnect.', '2024-04-20 12:15:00');


INSERT INTO Message (message_id, sender_id, recipient_id, message_body, sent_at) VALUES
-- Guest inquiries to hosts
('a50e8400-e29b-41d4-a716-446655440001', '550e8400-e29b-41d4-a716-446655440005', '550e8400-e29b-41d4-a716-446655440001', 'Hi Sarah! I\'m interested in your downtown apartment for July 15-18. Is it available? Also, is there parking available?', '2024-06-18 14:20:00'),

('a50e8400-e29b-41d4-a716-446655440002', '550e8400-e29b-41d4-a716-446655440001', '550e8400-e29b-41d4-a716-446655440005', 'Hi Emma! Yes, the apartment is available for those dates. There\'s a parking garage two blocks away for $15/day. The apartment is perfect for exploring the city on foot though!', '2024-06-18 15:45:00'),

('a50e8400-e29b-41d4-a716-446655440003', '550e8400-e29b-41d4-a716-446655440005', '550e8400-e29b-41d4-a716-446655440001', 'Perfect! I\'ll book it. Can you recommend any good restaurants nearby?', '2024-06-18 16:10:00'),

('a50e8400-e29b-41d4-a716-446655440004', '550e8400-e29b-41d4-a716-446655440001', '550e8400-e29b-41d4-a716-446655440005', 'Great choice! I\'ll send you a list of my favorite local spots after you book. There\'s an amazing Italian place right around the corner!', '2024-06-18 16:30:00'),


('a50e8400-e29b-41d4-a716-446655440005', '550e8400-e29b-41d4-a716-446655440002', '550e8400-e29b-41d4-a716-446655440006', 'Hi James! Just wanted to confirm your check-in time for tomorrow. The villa will be ready by 3 PM. Looking forward to hosting you!', '2024-07-31 18:00:00'),

('a50e8400-e29b-41d4-a716-446655440006', '550e8400-e29b-41d4-a716-446655440006', '550e8400-e29b-41d4-a716-446655440002', 'Thanks Michael! We should arrive around 4 PM. Really excited about the beach access. Any recommendations for dinner tonight?', '2024-07-31 19:15:00'),

('a50e8400-e29b-41d4-a716-446655440007', '550e8400-e29b-41d4-a716-446655440007', '550e8400-e29b-41d4-a716-446655440003', 'Hola Elena! We\'re celebrating our anniversary during our stay. Are there any romantic restaurants you\'d recommend in the Gothic Quarter?', '2024-09-08 20:30:00'),

('a50e8400-e29b-41d4-a716-446655440008', '550e8400-e29b-41d4-a716-446655440003', '550e8400-e29b-41d4-a716-446655440007', '¡Congratulations! There\'s a beautiful rooftop restaurant called "El Cielo" just 3 minutes walk away. Perfect for anniversaries. I can make a reservation if you\'d like!', '2024-09-08 21:45:00'),

('a50e8400-e29b-41d4-a716-446655440009', '550e8400-e29b-41d4-a716-446655440011', '550e8400-e29b-41d4-a716-446655440001', 'Hi Sarah, we noticed you have excellent reviews! We\'d like to feature your downtown apartment in our "Top Rated" section. Are you interested?', '2024-08-15 10:00:00'),

('a50e8400-e29b-41d4-a716-446655440010', '550e8400-e29b-41d4-a716-446655440001', '550e8400-e29b-41d4-a716-446655440011', 'That sounds wonderful! I\'d be honored to be featured. What do I need to do?', '2024-08-15 14:30:00'),

('a50e8400-e29b-41d4-a716-446655440011', '550e8400-e29b-41d4-a716-446655440006', '550e8400-e29b-41d4-a716-446655440012', 'Hi, I had to cancel my booking for the Madrid penthouse due to a family emergency. Can you help with the refund process?', '2024-08-18 22:15:00'),

('a50e8400-e29b-41d4-a716-446655440012', '550e8400-e29b-41d4-a716-446655440012', '550e8400-e29b-41d4-a716-446655440006', 'I\'m sorry to hear about your emergency. I\'ve processed your cancellation and you should see the refund within 3-5 business days. Take care!', '2024-08-19 09:00:00');


