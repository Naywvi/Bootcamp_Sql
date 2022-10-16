SELECT tracks.Composer as ArtistName, albums.Title as AlbumName, tracks.Name as TrackName, ROUND(ROUND(tracks.Bytes/1000)/1000,2) || ' MB' as MegaBytes FROM tracks
INNER JOIN albums ON albums.AlbumId = tracks.AlbumId
WHERE tracks.AlbumId = 89