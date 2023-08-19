SELECT products.ptype, COUNT(DISTINCT singles.ordid) 
FROM products, details, (SELECT ords.ordid
FROM (SELECT orders.ordid, products.ptype
FROM orders, products, details
WHERE orders.ordid = details.ordid
AND details.pcode = products.pcode
GROUP BY orders.ordid, products.ptype) AS ords
GROUP BY ords.ordid
HAVING COUNT(ords.ptype) = 1) AS singles
WHERE singles.ordid = details.ordid
AND details.pcode = products.pcode
GROUP BY products.ptype;
