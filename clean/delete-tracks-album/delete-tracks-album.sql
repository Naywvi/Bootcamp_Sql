DELETE FROM tracks 
WHERE tracks.AlbumId = (
    SELECT albums.AlbumId
    FROM albums
    WHERE albums.Title = 'Facelift'
)