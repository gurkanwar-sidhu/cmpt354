SELECT DISTINCT(customers.custid)
FROM customers
WHERE customers.custid not in (SELECT orders.ocust
FROM customers, orders, details, products
WHERE customers.custid = orders.ocust
AND orders.ordid = details.ordid
AND details.pcode = products.pcode
AND details.qty <> 0
AND products.ptype = 'BOOK'
AND EXTRACT( year FROM orders.odate) = '2016') 
ORDER BY customers.custid ASC;
