SELECT properties.*
from properties
         JOIN reviews
              ON properties.property_id = reviews.property_id
where reviews.rating > 4.0;


SELECT users.*
FROM users
WHERE (SELECT count(*)
       FROM bookings
       WHERE bookings.booking_id = users.user_id) > 3;