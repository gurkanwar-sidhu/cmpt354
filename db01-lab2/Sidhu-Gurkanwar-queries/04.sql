SELECT DISTINCT most.ptype, most.ocust
FROM details, (SELECT products.ptype, orders.ocust, SUM(details.qty) AS quantities
FROM customers, products, details, orders
WHERE customers.custid = orders.ocust
AND orders.ordid = details.ordid
AND products.pcode = details.pcode
GROUP BY products.ptype, orders.ocust) AS most
WHERE most.quantities >= ALL(SELECT SUM(details.qty)
FROM customers, products, details, orders
WHERE customers.custid = orders.ocust
AND orders.ordid = details.ordid
AND products.pcode = details.pcode
AND most.ptype = products.ptype
GROUP BY products.ptype, orders.ocust);


