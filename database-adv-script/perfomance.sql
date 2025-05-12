SELECT bookings.*,users.*,properties.*,payments.* FROM bookings
LEFT JOIN users ON bookings.user_id = users.user_id
LEFT JOIN properties ON bookings.property_id = properties.property_id
LEFT JOIN payments ON bookings.booking_id = payments.booking_id;


EXPLAIN ANALYZE SELECT bookings.*,users.*,properties.*,payments.* FROM bookings
LEFT JOIN users ON bookings.user_id = users.user_id
LEFT JOIN properties ON bookings.property_id = properties.property_id
LEFT JOIN payments ON bookings.booking_id = payments.booking_id;


SELECT bookings.*,users.*,properties.*,payments.* FROM bookings
 JOIN users ON bookings.user_id = users.user_id
 JOIN properties ON bookings.property_id = properties.property_id
LEFT JOIN payments ON bookings.booking_id = payments.booking_id
WHERE bookings.status = 'confirmed' AND payments.payment_method = 'paypal' ;
