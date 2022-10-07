SELECT * FROM invoices 
WHERE BillingCity is 'Stuttgart' and BillingCountry is 'Germany'
or BillingCity is 'Paris'
or BillingCity is 'Bordeaux' 
ORDER BY Total DESC
