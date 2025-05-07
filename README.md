#  Airbnb Database Schema

This project defines a relational database schema for an Airbnb-style platform, designed to support core functionalities like property listings, user bookings, payments, reviews, and messaging. 

##  Features

- User roles: `guest`, `host`, and `admin`
- Property listings managed by hosts
- Booking system with `pending`, `confirmed`, and `canceled` statuses
- Payment tracking via credit card, PayPal, or Stripe
- Review and rating system for properties
- Direct messaging between users
- UUID-based primary keys and timestamps for auditing
- Fully normalized schema with indexing and constraints

##  Entities and Relationships

- **Users**: People who use the platform (guests, hosts, admins)
- **Properties**: Listings added by hosts
- **Bookings**: Reservation records made by users for properties
- **Payments**: Transactions linked to bookings
- **Reviews**: Ratings and comments from users about properties
- **Messages**: Direct user-to-user communication

## 🗄 Database Support

- Relational databases.

##  Structure

- `postgres_schema.sql` – SQL commands for PostgreSQL setup
- `mysql_schema.sql` – SQL commands for MySQL setup
- `README.md` – Project documentation


