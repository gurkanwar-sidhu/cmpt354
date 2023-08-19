SELECT customers.country , COUNT(orders.ocust)
FROM customers
LEFT JOIN orders ON customers.custid = orders.ocust
AND EXTRACT( year FROM orders.odate) = 2016
GROUP BY customers.country;
