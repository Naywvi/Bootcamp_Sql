SELECT DISTINCT tracks.Name AS TrackName, playlists.Name AS PlaylistName FROM playlist_track 
JOIN playlists ON playlist_track.PlaylistId = playlists.PlaylistId 
JOIN tracks ON playlist_track.TrackId = tracks.TrackId WHERE playlists.Name = 'TV Shows' 
LIMIT 100