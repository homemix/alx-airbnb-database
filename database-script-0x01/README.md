## Database Schema

The project follows a normalized relational database schema designed to support core Airbnb-like functionality, including users, properties, bookings, payments, reviews, and messaging.

### Main Entities:

- **Users**: Stores user information with roles such as guest, host, or admin.
- **Properties**: Represents listings created by hosts, including name, location, and nightly price.
- **Bookings**: Records reservations made by guests, linked to both users and properties.
- **Payments**: Tracks payment transactions related to bookings, including payment method and amount.
- **Reviews**: Allows users to leave ratings and comments for properties they have booked.
- **Messages**: Enables direct communication between users via a simple messaging system.

The schema enforces strong referential integrity using foreign keys and is fully normalized to **Third Normal Form (3NF)** to avoid redundancy and ensure data consistency. Each table uses a UUID primary key and timestamps for auditability.
