
/* 1. Query all of the entries in the Genre table */
/* SELECT * FROM Genre */

/* 2. Using the INSERT statement, add one of your favorite artists to the Artist table. */
/*INSERT into Artist
VALUES (29, 'Radiohead', 1991);*/

/* 3. Using the INSERT statement, add one, or more, albums by your artist to the Album table. */
/*INSERT INTO Album
  (AlbumId, Title, ReleaseDate, AlbumLength, Label, ArtistId, GenreId)
  VALUES (24, 'OK Computer', '5/21/1997', 3201, 'Capitol', 29, 2);*/

/* 4. Using the INSERT statement, add some songs that are on that album to the Song table. */
/*INSERT INTO Song
  VALUES (24, 'Paranoid Android', 379, '5/21/1997', 2, 29, 24),
  (25, 'Fitter, Happier', 298, '5/21/1997', 2, 29, 24),
  (26, 'Electioneering', 322, '5/21/1997', 2, 29, 24); */

/* 5. Write a SELECT query that provides the song titles, album title, and artist name for all of the data you just entered in. Use the LEFT JOIN keyword sequence to connect the tables, and the WHERE keyword to filter the results to the album and artist you added. Here is some more info on joins that might help. */
/* SELECT s.Title AS 'Track', a.Title AS 'Album', r.ArtistName AS 'Artist'
FROM Album a
LEFT JOIN Song s
LEFT JOIN Artist r
ON a.AlbumId = s.AlbumId AND s.ArtistId = r.ArtistId
WHERE a.AlbumId = 24 AND r.ArtistId = 29; */

/* 6. Write a SELECT statement to display how many songs exist for each album. You'll need to use the COUNT() function and the GROUP BY keyword sequence. */
/* SELECT Album.Title AS Album, COUNT(Song.Title) AS 'Number of tracks'
FROM Album
INNER JOIN Song
ON Album.AlbumId = Song.AlbumId
GROUP BY Album.Title */

/* 7. Write a SELECT statement to display how many songs exist for each artist. You'll need to use the COUNT() function and the GROUP BY keyword sequence. */
/* SELECT Artist.ArtistName AS Artist, COUNT(Song.Title) AS 'Number of Songs'
FROM Artist
INNER JOIN Song
ON Artist.ArtistId = Song.ArtistId
GROUP BY Artist.ArtistName */

/* 8. Write a SELECT statement to display how many songs exist for each genre. You'll need to use the COUNT() function and the GROUP BY keyword sequence. */
/* SELECT Genre.Label AS 'Genre', COUNT(Song.GenreId) AS '# of Songs'
FROM Genre INNER JOIN Song
ON Genre.GenreId = Song.GenreId
GROUP BY Genre.Label */

/* 9. Using MAX() function, write a select statement to find the album with the longest duration. The result should display the album title and the duration. */
/* SELECT Album.Title AS 'Longest Album', MAX(Album.AlbumLength) AS 'Length'
FROM Album */

/* 10. Using MAX() function, write a select statement to find the song with the longest duration. The result should display the song title and the duration. */
/* SELECT Song.Title AS 'Longest Song', MAX(Song.SongLength) AS 'Length'
FROM Song */

/* 11. Modify the previous query to also display the title of the album. */
/* SELECT Song.Title AS 'Longest Song', MAX(Song.SongLength) AS 'Length', Album.Title AS 'Album'
FROM Song INNER JOIN Album
WHERE Song.AlbumId = Album.AlbumId */
