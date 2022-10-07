SELECT Name, Title as AlbumTitle FROM artists
LEFT JOIN albums on albums.artistId =artists.ArtistId 