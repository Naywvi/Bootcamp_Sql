SELECT genres.Name, COUNT(genres.GenreId) AS NumberOfTracks FROM genres
JOIN tracks ON tracks.GenreId = genres.GenreId
ORDER BY genres.Name