SELECT artists.Name as Name, count(albums.Title) as NbAlbums,
CASE 
       WHEN count(albums.Title)=1 THEN 'Unproductive'
       WHEN count(albums.Title)>=10 THEN 'Very Productive'
       WHEN count(albums.Title)>1 THEN 'Productive'
       
END as 'IsProductive'
FROM artists
INNER JOIN albums ON albums.ArtistId = artists.ArtistId
GROUP BY artists.ArtistId
LIMIT 100