DELETE FROM tracks 
WHERE tracks.AlbumId = (
    SELECT *
    FROM albums
    WHERE albums.Title = 'Facelift'
)