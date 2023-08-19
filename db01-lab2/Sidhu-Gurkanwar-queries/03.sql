SELECT DISTINCT taxes.invid
FROM invoices, (SELECT invoices.invid, CAST(SUM(products.price*details.qty)*1.2 AS NUMERIC(8,2)) AS tax
FROM invoices, details, products, orders
WHERE invoices.ordid = details.ordid
AND orders.ordid = details.ordid 
AND details.pcode = products.pcode
GROUP BY invoices.invid) AS taxes
WHERE invoices.amount = taxes.tax
AND taxes.invid = invoices.invid
ORDER BY taxes.invid ASC;


