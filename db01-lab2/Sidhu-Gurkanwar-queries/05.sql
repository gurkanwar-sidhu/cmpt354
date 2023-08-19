SELECT customers.custid, COUNT(DISTINCT orders.ordid), CAST(AVG(averages.totals) AS NUMERIC (8,2))
FROM customers, orders, details, (SELECT AVG(details.qty*products.price) AS totals
FROM details, products, orders
WHERE details.pcode = products.pcode
AND orders.ordid = details.ordid
GROUP BY orders.ordid) AS averages
WHERE customers.custid = orders.ocust
AND orders.ordid = details.ordid
GROUP BY customers.custid; 
