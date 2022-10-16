SELECT Name FROM tracks
WHERE TrackId = (
    SELECT TrackId FROM invoice_items 
    WHERE InvoiceId = (SELECT MAX(InvoiceId) FROM invoices)
                ); 