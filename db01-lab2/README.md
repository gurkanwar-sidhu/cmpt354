README
This repository contains a collection of SQL queries designed to retrieve and analyze data from a shared database. The queries serve various analytical and reporting purposes within the context of the provided database schema. Below, you'll find an overview of the database schema and detailed explanations of each SQL query.

Database Schema
The database schema consists of the following tables:

Customers
custid (INTEGER): Customer ID (Primary Key).
cname (VARCHAR(14)): Customer name.
country (CHAR(3)): Country code.
Products
pcode (INTEGER): Product code (Primary Key).
pname (VARCHAR(10)): Product name.
pdesc (VARCHAR(20)): Product description.
ptype (VARCHAR(20)): Product type.
price (NUMERIC(6,2)): Product price.
Orders
ordid (INTEGER): Order ID (Primary Key).
odate (DATE): Order date.
ocust (INTEGER): Customer ID (Foreign Key).
Details
ordid (INTEGER): Order ID (Foreign Key).
pcode (INTEGER): Product code (Foreign Key).
qty (SMALLINT): Quantity ordered.
Invoices
invid (SERIAL): Invoice ID (Primary Key).
ordid (INTEGER): Order ID (Foreign Key).
amount (NUMERIC(8,2)): Invoice amount.
issued (DATE): Issued date.
due (DATE): Due date.
Payments
payid (INTEGER): Payment ID (Primary Key).
tstamp (TIMESTAMP): Payment timestamp.
amount (NUMERIC(8,2)): Payment amount.
invid (INTEGER): Invoice ID (Foreign Key).
SQL Query 1: Customer Counts by Country in 2016
Purpose
This SQL query counts the number of orders placed by customers in each country for the year 2016. It provides insights into order distribution by country for that specific year.

Usage
Open your preferred SQL client and connect to the database.

Copy and paste the SQL query titled "Query 1" from this repository into your SQL client.

Execute the query to obtain the results.

Example Use Cases
Analyzing customer order distribution by country for a specific year.
Understanding the geographical reach of customer orders.
SQL Query 2: Average Product Quantities by Type
Purpose
This SQL query calculates the average product quantities by product type. It provides insights into the average quantities of each product type ordered.

Usage
Open your preferred SQL client and connect to the database.

Copy and paste the SQL query titled "Query 2" from this repository into your SQL client.

Execute the query to obtain the results.

Example Use Cases
Analyzing product type preferences based on average quantities.
Identifying product types with higher or lower average quantities.
SQL Query 3: Distinct Invoice IDs with Matching Amounts
Purpose
This SQL query retrieves distinct invoice IDs where the invoice amount matches the calculated tax amount for each invoice. It is used to verify invoices with accurate tax calculations.

Usage
Open your preferred SQL client and connect to the database.

Copy and paste the SQL query titled "Query 3" from this repository into your SQL client.

Execute the query to obtain the results.

Example Use Cases
Auditing invoices to ensure accurate tax calculations.
Verifying the correctness of invoice amounts based on tax calculations.
SQL Query 4: Customers with Most Purchased Product Types
Purpose
This SQL query identifies customers who have purchased the most of a particular product type. It calculates the total quantities of each product type purchased by each customer and identifies customers who have purchased the highest quantities of their respective product types.

Usage
Open your preferred SQL client and connect to the database.

Copy and paste the SQL query titled "Query 4" from this repository into your SQL client.

Execute the query to obtain the results.

Example Use Cases
Customer segmentation based on purchasing behavior.
Targeted marketing campaigns for high-value customers.
SQL Query 5: Customer Order Statistics
Purpose
This SQL query gathers statistics related to customer orders. It provides information for each customer, including the customer's ID, the total number of distinct orders placed by the customer, and the average order total (rounded to two decimal places).

Usage
Open your preferred SQL client and connect to the database.

Copy and paste the SQL query titled "Query 5" from this repository into your SQL client.

Execute the query to obtain the results.

Example Use Cases
Understanding customer order behavior.
Analyzing average order totals for different customer segments.
