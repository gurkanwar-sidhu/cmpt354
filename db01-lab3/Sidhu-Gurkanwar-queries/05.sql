SELECT ords.ocust
FROM customers, orders, (SELECT olast.ocust, (MIN(onext.odate) - olast.odate) AS odiff
FROM customers, orders as olast, orders as onext
WHERE customers.custid = olast.ocust
AND olast.ocust = onext.ocust
AND  olast.odate < onext.odate
AND olast.odate <> onext.odate
AND olast.ocust IN (SELECT orders.ocust
FROM orders
GROUP BY orders.ocust
HAVING COUNT(orders.ordid) >= 5) 
GROUP BY olast.ocust, olast.odate) AS ords
GROUP BY ords.ocust
HAVING AVG(ords.odiff) < 30
ORDER BY ords.ocust ASC;

