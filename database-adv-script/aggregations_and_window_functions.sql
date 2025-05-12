SELECT count(bookings.user_id) FROM bookings
GROUP BY bookings.user_id;

SELECT properties.* ,
       RANK() over (ORDER BY  COUNT(bookings.booking_id) DESC ) AS bookings_rank,
       ROW_NUMBER() over (ORDER BY COUNT(bookings.booking_id) DESC ) AS boookings_number
FROM properties
JOIN bookings ON properties.property_id = bookings.property_id
GROUP BY  properties.property_id;
