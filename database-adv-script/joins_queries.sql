select bookings.*,users.* from bookings
inner join users   on bookings.user_id = users.user_id;

select  properties.*,reviews.* from properties
left join reviews
on properties.property_id = reviews.property_id;

select users.*,bookings.* from users
left outer join bookings
on users.user_id = bookings.user_id;