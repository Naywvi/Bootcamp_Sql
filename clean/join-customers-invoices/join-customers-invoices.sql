SELECT FirstName, LastName, Company, Total AS InvoiceTotalPrice FROM customers
JOIN invoices ON customers.CustomerId = invoices.CustomerId
WHERE Company IS NOT NULL