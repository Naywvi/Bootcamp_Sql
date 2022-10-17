-- SQLite
SELECT DISTINCT InvoiceId FROM invoice_items 
WHERE TrackId IN (
SELECT TrackId FROM tracks 
WHERE Milliseconds IN (
SELECT MAX(Milliseconds) FROM tracks
GROUP BY GenreId))
ORDER BY InvoiceId