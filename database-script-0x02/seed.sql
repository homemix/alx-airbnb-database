-- Sample data for users
INSERT INTO users (user_id, first_name, last_name, email, password_hash, phone_number, role, created_at) VALUES
(UUID(), 'Alice', 'Johnson', 'alice@example.com', 'hashed_password_1', '1234567890', 'guest', NOW()),
(UUID(), 'Bob', 'Smith', 'bob@example.com', 'hashed_password_2', '0987654321', 'host', NOW()),
(UUID(), 'Clara', 'Lee', 'clara@example.com', 'hashed_password_3', NULL, 'guest', NOW()),
(UUID(), 'David', 'Ngugi', 'david@example.com', 'hashed_password_4', '0712345678', 'admin', NOW());

-- Sample data for properties
INSERT INTO properties (property_id, host_id, name, description, location, pricepernight, created_at, updated_at)
SELECT UUID(), user_id, 'Cozy Loft', 'A cozy loft in downtown.', 'Nairobi, Kenya', 45.00, NOW(), NOW()
FROM users WHERE email = 'bob@example.com'
UNION ALL
SELECT UUID(), user_id, 'Beachside Cottage', 'A peaceful cottage by the beach.', 'Diani, Kenya', 120.00, NOW(), NOW()
FROM users WHERE email = 'bob@example.com';

-- Sample data for bookings
INSERT INTO bookings (booking_id, property_id, user_id, start_date, end_date, total_price, status, created_at)
SELECT UUID(), p.property_id, u.user_id, '2025-06-01', '2025-06-05', 180.00, 'confirmed', NOW()
FROM properties p JOIN users u ON u.email = 'alice@example.com'
WHERE p.name = 'Cozy Loft'
UNION ALL
SELECT UUID(), p.property_id, u.user_id, '2025-07-10', '2025-07-12', 240.00, 'pending', NOW()
FROM properties p JOIN users u ON u.email = 'clara@example.com'
WHERE p.name = 'Beachside Cottage';

-- Sample data for payments
INSERT INTO payments (payment_id, booking_id, amount, payment_date, payment_method)
SELECT UUID(), b.booking_id, b.total_price, NOW(), 'paypal'
FROM bookings b WHERE b.status = 'confirmed';

-- Sample data for reviews
INSERT INTO reviews (review_id, property_id, user_id, rating, comment, created_at)
SELECT UUID(), p.property_id, u.user_id, 5, 'Amazing stay! Super clean and quiet.', NOW()
FROM properties p JOIN users u ON u.email = 'alice@example.com'
WHERE p.name = 'Cozy Loft'
UNION ALL
SELECT UUID(), p.property_id, u.user_id, 4, 'Great spot near the beach.', NOW()
FROM properties p JOIN users u ON u.email = 'clara@example.com'
WHERE p.name = 'Beachside Cottage';

-- Sample data for messages
INSERT INTO messages (message_id, sender_id, recipient_id, message_body, sent_at)
SELECT UUID(), u1.user_id, u2.user_id, 'Hi Bob, is your loft available in June?', NOW()
FROM users u1, users u2
WHERE u1.email = 'alice@example.com' AND u2.email = 'bob@example.com'
UNION ALL
SELECT UUID(), u2.user_id, u1.user_id, 'Yes, it is! You can book it now.', NOW()
FROM users u1, users u2
WHERE u1.email = 'alice@example.com' AND u2.email = 'bob@example.com';
