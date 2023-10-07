# README

## Database Schema

### Customers

custid (INTEGER, PRIMARY KEY): Customer ID.<br>
cname (VARCHAR(14)): Customer name.<br>
country (CHAR(3)): Country code.<br>

### Products

pcode (INTEGER, PRIMARY KEY): Product code.<br>
pname (VARCHAR(10)): Product name.<br>
pdesc (VARCHAR(20)): Product description.<br>
ptype (VARCHAR(20)): Product type (e.g., MUSIC, BOOK, MOVIE).<br>
price (NUMERIC(6,2)): Product price.

### Orders

ordid (INTEGER, PRIMARY KEY): Order ID.<br>
odate (DATE): Order date.<br>
ocust (INTEGER, NOT NULL, REFERENCES Customers): Customer ID.<br>

### Details

ordid (INTEGER, REFERENCES Orders): Order ID.<br>
pcode (INTEGER, REFERENCES Products): Product code.<br>
qty (SMALLINT): Quantity.<br>

### Invoices

invid (SERIAL, PRIMARY KEY): Invoice ID.<br>
ordid (INTEGER, NOT NULL, UNIQUE, REFERENCES Orders): Order ID.<br>
amount (NUMERIC(8,2)): Invoice amount.<br>
issued (DATE): Invoice issued date.<br>
due (DATE): Invoice due date.<br>

### Payments

payid (INTEGER, PRIMARY KEY): Payment ID.<br>
tstamp (TIMESTAMP): Timestamp.<br>
amount (NUMERIC(8,2)): Payment amount.<br>
invid (INTEGER, NOT NULL, REFERENCES Invoices): Invoice ID.<br>

## SQL Query Descriptions and General Example Use Cases

### Query 1: Count of Unique Orders by Product Type

_Description_: This query calculates the count of unique orders for each product type in the database. It helps understand which product types are more popular among customers.<br>
_Example Use Case_: A retail manager wants to analyze the popularity of different product types to optimize inventory management.

### Query 2: Customers Who Didn't Order 'BOOK' in 2016

_Description_: This query identifies customers who did not purchase any books in the year 2016. It can be used to target book-related promotions to customers who haven't shown interest in books recently.<br>
_Example Use Case_: An online bookstore wants to identify customers for a special book sale promotion.

### Query 3: Customers with Total Spending Less Than $50 on 'MUSIC' in 2016

_Description_: This query finds customers who made music-related purchases in the first half of 2016 but spent less than $50 in total. It helps identify customers who may benefit from targeted music discounts.<br>
_Example Use Case_: A music streaming service wants to offer discounts to customers who have shown interest in music but have spent less than a certain threshold.

### Query 4: Customers with Maximum Time Between Orders

_Description_: This query identifies customers with the longest time gap between their consecutive orders. It helps in re-engaging customers who haven't made purchases in a while.<br>
_Example Use Case_: An e-commerce platform wants to send reactivation offers to customers who have been inactive for an extended period.

### Query 5: Customers with Average Time Between Orders Less Than 30 Days

_Description_: This query selects customers with an average time gap of less than 30 days between their orders. It indicates frequent and engaged customers.<br>
_Example Use Case_: A subscription-based service wants to identify active and loyal customers for special loyalty rewards.
