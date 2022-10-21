SELECT invoices.InvoiceId, invoices.Total,
CASE
    WHEN invoices.Total < 5 THEN 'Price lower than 5$'
    WHEN invoices.Total < 10 THEN 'Price lower than 10$'
    WHEN invoices.Total > 10 THEN 'Price greater than 10$'
END as 'CASE'
FROM invoices
LIMIT 100