EXPLAIN ANALYZE SELECT properties.* ,
       RANK() over (ORDER BY  COUNT(bookings.booking_id) DESC ) AS bookings_rank,
       ROW_NUMBER() over (ORDER BY COUNT(bookings.booking_id) DESC ) AS boookings_number
FROM properties
JOIN bookings ON properties.property_id = bookings.property_id
GROUP BY  properties.property_id;


EXPLAIN ANALYZE SELECT users.*
FROM users
WHERE (SELECT COUNT(*)
       FROM bookings
       WHERE bookings.booking_id = users.user_id) > 3;


EXPLAIN ANALYZE SELECT bookings.*,users.* FROM bookings
INNER JOIN users   ON bookings.user_id = users.user_id;

DESCRIBE bookings;

CREATE INDEX idx_bookings_status ON bookings(status);
CREATE INDEX idx_bookings_total_price ON bookings(total_price);

CREATE INDEX idx_properties_name ON properties(name);

CREATE INDEX idx_users_first_name ON users(first_name);
CREATE INDEX idx_users_last_name ON users(last_name);