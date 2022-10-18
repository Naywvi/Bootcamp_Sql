SELECT i.InvoiceId,it.UnitPrice as 'Average Price',CAST(ROUND(SUM(t.Milliseconds)/1000) as INT) as 'Track Total Time' , CAST(ROUND(it.UnitPrice/CAST(ROUND(SUM(t.Milliseconds)/1000) as INT),5) as FLOAT) || 'Є' as 'Price by second' FROM invoices as i
INNER JOIN invoice_items as it ON it.InvoiceId = i.InvoiceId
INNER JOIN tracks as t ON t.TrackId = it.TrackId
GROUP BY i.InvoiceId