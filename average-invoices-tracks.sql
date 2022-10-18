SELECT i.InvoiceId, ROUND(AVG(i.UnitPrice * i.Quantity), 2) AS 'Average Price', 
    CAST(SUM(t.Milliseconds)/1000 AS INT) AS 'Track Total Time',
    ROUND(AVG(i."UnitPrice" * i.Quantity) / (SUM(t.Milliseconds)/1000), 5) || '€' AS 'Price by second'
FROM invoice_items i
INNER JOIN tracks t ON t.TrackId = i.TrackId
GROUP BY i.InvoiceId