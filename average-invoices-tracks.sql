SELECT i.InvoiceId,it.UnitPrice as 'Average Price',CAST(ROUND(SUM(t.Milliseconds)/1000) as INT) as 'Track Total Time' , ROUND(it.UnitPrice/ROUND(SUM(t.Milliseconds)/1000),5) || '€' as 'Price by second' FROM invoices as i
INNER JOIN invoice_items as it ON it.InvoiceId = i.InvoiceId
INNER JOIN tracks as t ON t.TrackId = it.TrackId
GROUP BY i.InvoiceId