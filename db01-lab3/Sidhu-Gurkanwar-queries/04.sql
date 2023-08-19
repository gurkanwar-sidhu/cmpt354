SELECT ords.ocust, MAX(ords.odiff)
FROM customers, orders, (SELECT olast.ocust, (MIN(onext.odate) - olast.odate) AS odiff
FROM customers, orders as olast, orders as onext
WHERE customers.custid = olast.ocust
AND olast.ocust = onext.ocust
AND  olast.odate < onext.odate
AND olast.ocust IN (SELECT orders.ocust
FROM orders
GROUP BY orders.ocust
HAVING COUNT(orders.ordid) >= 2) 
GROUP BY olast.ocust, olast.odate) AS ords
GROUP BY ords.ocust
UNION
SELECT customers.custid, 0
FROM customers, orders
WHERE customers.custid = orders.ocust
GROUP BY customers.custid
HAVING COUNT(orders.ordid) >= 2 AND (MAX(orders.odate) - MIN(orders.odate)) = 0;


