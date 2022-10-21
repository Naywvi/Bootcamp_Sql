SELECT invoice_items.InvoiceId, tracks.Name as InvoiceItem, tracks.UnitPrice FROM invoice_items
INNER JOIN tracks ON invoice_items.trackId = tracks.TrackId
WHERE invoice_items.InvoiceId = 10
ORDER BY tracks.Name