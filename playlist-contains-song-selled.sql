-- SELECT fff.name,fff.PlaylistId,fff.TrackId,fff.count,fff.TrackId,
-- CASE
-- WHEN fff.Name = 'Music' THEN count(*)/2
-- END as d
-- FROM(
--     SELECT * FROM 
--         (SELECT pt.PlaylistId,f.TrackId,count FROM(
--             SELECT ii.TrackId,COUNT(*) as count
--             from playlist_track as p
--             INNER JOIN playlists as pl ON p.PlaylistId = pl.PlaylistId
--             INNER JOIN tracks as t ON p.TrackId = t.TrackId
--             INNER join invoice_items as ii ON t.TrackId = ii.TrackId
--             where p.TrackId = ii.TrackId
--             GROUP by p.TrackId, ii.TrackId
--             having count(*) >= 2
--             order by pl.Name
--         )f
--     INNER JOIN playlist_track as pt ON pt.TrackId = f.TrackId)ff
-- INNER JOIN playlists as pt ON pt.PlaylistId = ff.PlaylistId)fff
SELECT p.PlaylistId, p.Name, 
IFNULL(
ROUND(
(
(SELECT COUNT(TrackId) FROM playlist_track WHERE TrackId IN 
(SELECT TrackId FROM invoice_items GROUP BY TrackId HAVING COUNT(TrackId) = 2) AND PlaylistId = p.PlaylistId GROUP BY PlaylistId)/(COUNT(pt.TrackId)* 1.0) * 100)
, 4)
, 0) AS '% song selled twice'
FROM playlists p 

LEFT JOIN playlist_track pt ON p.PlaylistId = pt.PlaylistId
GROUP BY p.PlaylistId
