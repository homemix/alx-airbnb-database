# SQL Joins – Airbnb Clone (Backend)

##  Objective

The goal of this task is to master the use of SQL joins by writing and understanding complex queries that pull related data from multiple tables such as `users`, `bookings`, `properties`, and `reviews`.

---

##  Summary of SQL Join Queries

### 1. INNER JOIN – Bookings and Users  
Retrieves all bookings along with the users who made them. Only returns rows where there is a match between a booking and a user.

### 2. LEFT JOIN – Properties and Reviews  
Fetches all properties and their associated reviews. It Also includes properties that do not have any reviews.

### 3. FULL OUTER JOIN Users and Bookings  
Retrieves all users and all bookings, even if a user has not made any booking or a booking is not linked to a registered user.

---

##  Key Learnings

- **INNER JOIN** helps fetch only related data from both tables.
- **LEFT JOIN** allows retrieval of all records from one table even if there's no match in the second.
- **FULL OUTER JOIN** provides a complete view by including all records from both tables, regardless of whether they match.

---

> This task reinforces understanding of data relationships and how to use joins effectively for accurate, comprehensive query results in relational databases.
