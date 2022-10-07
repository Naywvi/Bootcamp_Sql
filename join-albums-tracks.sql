SELECT DISTINCT Title AS AlbumName, Name AS TrackName, Composer AS Milliseconds FROM albums
JOIN tracks ON tracks.AlbumId = albums.AlbumId
LIMIT 50