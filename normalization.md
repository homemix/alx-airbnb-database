#  Normalization – Airbnb Database Schema

This document summarizes the analysis of normalization within the Airbnb-style relational database schema.

##  What is a Transitive Dependency?

A **transitive dependency** occurs when a non-key attribute depends on another non-key attribute rather than directly on the primary key. In other words, if A → B and B → C, then A → C is a transitive dependency. These can lead to data anomalies and redundancy if not addressed properly.

To satisfy **Third Normal Form (3NF)**, a schema must eliminate all transitive dependencies, ensuring that every non-key attribute is dependent only on the primary key.

##  Schema Analysis Summary

Upon reviewing all the tables in the Airbnb schema (`users`, `properties`, `bookings`, `payments`, `reviews`, and `messages`), we confirmed the following:

- All non-key attributes in each table depend **directly on the primary key**.
- No non-key attributes are dependent on other non-key attributes.
- ENUM fields (like `role`, `status`, `payment_method`) are atomic and not derived from other fields.
- Foreign key relationships do not introduce transitive dependencies; they help maintain referential integrity.

For example, in the `users` table, attributes like `first_name`, `email`, and `role` are all directly dependent on `user_id`. There’s no field that depends on, say, `email` or `first_name`.

##  Conclusion

There are **no transitive dependencies** present in the schema. This confirms that the database is fully normalized to **Third Normal Form (3NF)**, promoting data integrity, reducing redundancy, and ensuring efficient database design.

