SELECT quantities.ptype, CAST(AVG(quants) AS NUMERIC (3,2))
FROM (SELECT SUM(details.qty) AS quants, details.ordid, products.ptype
FROM products, details, orders
WHERE products.pcode = details.pcode
AND details.ordid = orders.ordid
GROUP BY details.ordid, products.ptype) AS quantities
GROUP BY quantities.ptype;




