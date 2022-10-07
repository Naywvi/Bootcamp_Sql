SELECT DISTINCT Name,Title FROM artists
INNER JOIN albums on artists.ArtistId = albums.ArtistId
LIMIT 100