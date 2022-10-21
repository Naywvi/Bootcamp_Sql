SELECT artists.Name as ArtistName, albums.Title as AlbumName, tracks.Name as TrackName, ROUND(ROUND(tracks.Bytes/1000)/1000,2) || ' MB' as MegaBytes FROM tracks
INNER JOIN albums ON albums.AlbumId = tracks.AlbumId
INNER JOIN artists ON albums.ArtistId = artists.ArtistId
WHERE tracks.AlbumId = 89