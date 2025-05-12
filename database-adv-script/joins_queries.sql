SELECT bookings.*,users.* FROM bookings
INNER JOIN users   ON bookings.user_id = users.user_id;

SELECT  properties.*,reviews.* FROM properties
LEFT JOIN  reviews
ON properties.property_id = reviews.property_id
ORDER BY properties.created_at;

SELECT users.*,bookings.* FROM users
FULL OUTER JOIN  bookings
ON users.user_id = bookings.user_id;