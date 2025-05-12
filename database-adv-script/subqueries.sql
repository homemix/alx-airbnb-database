SELECT properties.*
FROM properties
WHERE properties.property_id IN (SELECT property_id
                                 FROM reviews
                                 GROUP BY property_id
                                 HAVING AVG(rating) > 4.0);



SELECT users.*
FROM users
WHERE (SELECT COUNT(*)
       FROM bookings
       WHERE bookings.booking_id = users.user_id) > 3;