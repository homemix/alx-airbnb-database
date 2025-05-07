## Sample Data Population

This project includes SQL scripts to populate the database with realistic sample data for testing and development purposes.

###  Tables Populated

- **Users**: Includes guests, a host, and an admin with valid contact information and roles.
- **Properties**: Two example listings hosted by a user (`Bob`), located in Kenya (Nairobi and Diani).
- **Bookings**: Sample reservations made by guests for listed properties, showing different statuses.
- **Payments**: Linked to confirmed bookings, using common payment methods like PayPal.
- **Reviews**: Reflect feedback from guests after their stays, with ratings and comments.
- **Messages**: Demonstrates direct communication between users (guest and host).

###  Usage

Run the provided `INSERT` statements after creating the schema to populate your database with this test data. Ensure UUID and ENUM support is configured in your SQL engine (PostgreSQL or MySQL 8+ recommended).

This data helps validate relationships, test queries, and simulate real-world usage in a controlled environment.
