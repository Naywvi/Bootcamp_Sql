SELECT Name, Title as AlbumTitle FROM artists
LEFT JOIN albums on artists.ArtistId = albums.artistId