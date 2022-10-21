SELECT e.LastName, e.FirstName,
IFNULL(
    (
        SELECT CAST(count(*) as TEXT) FROM invoices as i
    ),0
) as 'Total sell'
,
IFNULL(
    (
        SELECT count(*) FROM customers as c
        INNER JOIN invoices as i ON i.CustomerId = c.CustomerId
        WHERE c.SupportRepId = e.EmployeeId
        
    ),0
) as 'Total Sell By Employee'
,
REPLACE(
    IFNULL(
        (
            SELECT c.Country FROM customers as c
            INNER JOIN invoices as i ON i.CustomerId = c.CustomerId
            WHERE c.SupportRepId = e.EmployeeId 
            GROUP by c.Country
            ORDER BY COUNT(*) DESC
            LIMIT 1
            
        ),0
    ) 
,'0','-')as 'Country With Most Sales'
,
REPLACE(
    IFNULL(
        (
            SELECT g.Name FROM customers as c
            INNER JOIN invoices as i ON i.CustomerId = c.CustomerId
            INNER JOIN invoice_items as it ON i.InvoiceId = it.InvoiceId
            INNER JOIN tracks as t ON it.TrackId = t.TrackId
            INNER JOIN genres as g ON t.GenreId = g.GenreId
            WHERE c.SupportRepId = e.EmployeeId 
            GROUP by g.Name
            ORDER BY COUNT(*) DESC
            LIMIT 1
            
        ),0
    ) 
,'0','-')as 'Most Genre Selled'
,
REPLACE(
    IFNULL(
        (
            SELECT m.Name FROM customers as c
            INNER JOIN invoices as i ON i.CustomerId = c.CustomerId
            INNER JOIN invoice_items as it ON i.InvoiceId = it.InvoiceId
            INNER JOIN tracks as t ON it.TrackId = t.TrackId
            INNER JOIN media_types as m ON t.MediaTypeId = m.MediaTypeId
            WHERE c.SupportRepId = e.EmployeeId 
            GROUP by m.Name
            ORDER BY COUNT(*) DESC
            LIMIT 1
            
        ),0
    ) 
,'0','-')as 'Most Media Type Selled'
,
REPLACE(
    IFNULL(
        (
            SELECT ROUND(ROUND(count(*))*100/146,2) as totall FROM customers as c
            INNER JOIN invoices as i ON i.CustomerId = c.CustomerId
            WHERE c.SupportRepId = e.EmployeeId and e.FirstName != 'Jane'
            LIMIT 1
        ),0
    ) 
,'0.0','-') as 'Percentage sales compared best seller'
FROM employees as e 