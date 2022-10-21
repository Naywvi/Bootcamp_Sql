SELECT p.PlaylistId, p.Name, 
IFNULL(
ROUND(
(
            (SELECT COUNT(TrackId) FROM playlist_track
                WHERE TrackId IN 
                    (
                        SELECT TrackId FROM invoice_items 
                        GROUP BY TrackId 
                        HAVING COUNT(TrackId) = 2
                    ) 
                AND PlaylistId = p.PlaylistId 
                GROUP BY PlaylistId
            ) 
                /(COUNT(pt.TrackId)
            * 1.0) 
        * 100)
    , 4)
, 0) AS '% song selled twice'
FROM playlists p 

LEFT JOIN playlist_track pt ON p.PlaylistId = pt.PlaylistId
GROUP BY p.PlaylistId