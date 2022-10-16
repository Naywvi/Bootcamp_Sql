SELECT * FROM genres
WHERE genres.Name IN (
SELECT albums.Title FROM albums
)