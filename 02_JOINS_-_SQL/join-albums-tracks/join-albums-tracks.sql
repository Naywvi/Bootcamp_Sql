SELECT DISTINCT Title AS AlbumName, Name AS TrackName, Milliseconds FROM albums
JOIN tracks ON tracks.AlbumId = albums.AlbumId
ORDER BY tracks.Milliseconds 
LIMIT 50