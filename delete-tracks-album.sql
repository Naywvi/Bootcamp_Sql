delete from tracks where albums.AlbumId in (select * from albums where albums.Title = 'Facelift')
