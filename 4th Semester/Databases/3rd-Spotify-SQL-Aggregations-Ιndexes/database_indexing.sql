/*ALTER TABLE r_albums_artists 
ADD CONSTRAINT PK_r_albums_artists PRIMARY KEY CLUSTERED (album_id,artist_id);

ALTER TABLE r_albums_tracks 
ADD CONSTRAINT PK_r_albums_tracks PRIMARY KEY CLUSTERED (album_id,track_id);

ALTER TABLE r_artist_genre 
ADD CONSTRAINT PK_r_artist_genre PRIMARY KEY CLUSTERED (genre_name,artist_id);

ALTER TABLE r_track_artist 
ADD CONSTRAINT PK_r_track_artist PRIMARY KEY CLUSTERED (track_id,artist_id);
*/

/*
ALTER TABLE albums 
ADD release_year INT;

UPDATE albums 
SET release_year = YEAR(release_date); */


--CREATE INDEX albums_idx
--ON albums(release_date,id);
--drop index albums.albums_idx;

/*SELECT YEAR(release_date) AS release_year, COUNT(id) AS album_count
FROM albums
GROUP BY YEAR(release_date)
ORDER BY release_year;*/

--drop index artists.artists_idx
--drop index r_track_artist.r_track_artist_idx

/*CREATE INDEX artists_idx
ON artists(name,id);

CREATE INDEX  r_track_artist_idx
ON r_track_artist(artist_id,track_id);*/



SELECT t.name
FROM tracks t
JOIN r_track_artist rta ON t.id = rta.track_id
JOIN artists a ON rta.artist_id = a.id
WHERE a.name like 'Ludwig van Beethoven';

