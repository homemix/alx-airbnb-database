

create table bookings
(
    booking_id  char(36)                                  not null
        primary key,
    property_id char(36)                                  not null,
    user_id     char(36)                                  not null,
    start_date  date                                      not null,
    end_date    date                                      not null,
    total_price decimal(10, 2)                            not null,
    status      enum ('pending', 'confirmed', 'canceled') not null,
    created_at  timestamp default CURRENT_TIMESTAMP       null,
    constraint bookings_ibfk_1
        foreign key (property_id) references properties (property_id)
            on delete cascade,
    constraint bookings_ibfk_2
        foreign key (user_id) references users (user_id)
            on delete cascade
)PARTITION BY RANGE (YEAR(start_date)) (
    PARTITION p2023 VALUES LESS THAN (2024),
    PARTITION p2024 VALUES LESS THAN (2025),
    PARTITION p2025 VALUES LESS THAN (2026),
    PARTITION pmax  VALUES LESS THAN MAXVALUE
);


create index idx_bookings_booking_id
    on bookings (booking_id);

create index idx_bookings_property_id
    on bookings (property_id);

create index idx_bookings_status
    on bookings (status);

create index idx_bookings_total_price
    on bookings (total_price);

create index user_id
    on bookings (user_id);



EXPLAIN ANALYZE SELECT * FROM bookings
WHERE start_date BETWEEN '2024-01-01' AND '2024-12-31';
