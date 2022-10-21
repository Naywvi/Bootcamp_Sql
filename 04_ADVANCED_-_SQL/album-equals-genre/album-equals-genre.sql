SELECT * FROM albums
WHERE albums.Title IN  (
SELECT genres.Name FROM genres
)