SELECT customers.custid, CAST(SUM(details.qty*products.price) AS NUMERIC(8,2))
FROM customers, orders, details, products
WHERE customers.custid = orders.ocust
AND orders.ordid = details.ordid
AND details.pcode = products.pcode
AND products.ptype = 'MUSIC'
AND orders.odate >= '2016-01-01'
AND orders.odate <= '2016-06-30'
GROUP BY customers.custid
HAVING SUM(details.qty*products.price) < 50
UNION
SELECT customers.custid, 0.00
FROM customers
WHERE customers.custid NOT IN ( SELECT DISTINCT(orders.ocust)
FROM orders, details, products
WHERE orders.ordid = details.ordid
AND details.pcode = products.pcode
AND products.ptype = 'MUSIC'
AND orders.odate >= '2016-01-01'
AND orders.odate <= '2016-06-30')
GROUP BY customers.custid;

