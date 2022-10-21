SELECT DISTINCT Title AS AlbumName ,Name AS ArtistName FROM artists
INNER JOIN albums on artists.ArtistId = albums.ArtistId
LIMIT 100