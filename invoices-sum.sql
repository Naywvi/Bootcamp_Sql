SELECT sum(Total) as AllInvoicesTotalPrice FROM invoices
JOIN customers on customers.CustomerId = invoices.CustomerId WHERE customers.CustomerId = 19