--Ορισμός ξένου κλειδιού του πίνακα ratings(Το πρωτεύον κλειδί έχει ήδη οριστεί κατά την εισαγωγή του πίνακα)
/*ALTER TABLE ratings
ADD CONSTRAINT FK_ratings FOREIGN KEY (album_id)
REFERENCES albums(id)
ON DELETE CASCADE 
ON UPDATE CASCADE;*/


--------------------ΕΡΩΤΗΜΑ 1---------------------
--ALTER TABLE albums
--ADD AVG_Rating FLOAT;

--------------------ΕΡΩΤΗΜΑ 2---------------------
UPDATE albums
SET AVG_Rating = 
(SELECT AVG(rating * 1.0)
    FROM ratings
    where album_id = albums.id
);

--------------------ΕΡΩΤΗΜΑ 3---------------------
/*CREATE TRIGGER  AVG_updates 
ON ratings  
AFTER INSERT,UPDATE,DELETE
AS
BEGIN
    UPDATE albums
    SET AVG_Rating = (
        SELECT AVG(ratings.rating * 1.0)
        FROM ratings
        WHERE ratings.album_id = albums.id
    )
    WHERE albums.id IN (
    SELECT album_id FROM (
        SELECT DISTINCT album_id FROM inserted
        UNION
        SELECT DISTINCT album_id FROM deleted
        ) as UpdatedRows
    );
END*/

--Εντολές insert,delete και update
/*Insert into ratings (user_id,album_id,rating) values (100,54,10);
Insert into ratings (user_id,album_id,rating) values (2,10,3);
Insert into ratings (user_id,album_id,rating) values (24,75,4);

delete from ratings where user_id = 1 and album_id = 74;
delete from ratings where user_id = 78;
delete from ratings where album_id = 201;

update ratings 
set rating = 4
where user_id = 1 and album_id = 54 ;

update ratings
set rating = 5
where user_id = 12;

update ratings
set rating = 5
where album_id = 25;*/



--------------------ΕΡΩΤΗΜΑ 4---------------------
--create index triggerIndex
--on ratings(album_id);





--------------------ΕΡΩΤΗΜΑ 5---------------------
SELECT YEAR(release_date) AS year,COUNT(*) AS albums_per_year 
FROM albums
WHERE popularity > 40
GROUP BY YEAR(release_date);
-- Επιστρέφει 33 εγγραφές


--------------------ΕΡΩΤΗΜΑ 6---------------------
SELECT YEAR(release_date) AS year,COUNT(*) AS albums_per_year
FROM albums
WHERE popularity > 40 OR album_type = 'single'
GROUP BY YEAR(release_date);
-- Επιστρέφει 45 εγγραφές

--------------------ΕΡΩΤΗΜΑ 7---------------------
SELECT album_type, YEAR(release_date) AS year, COUNT(*) AS albums_per_type_year
FROM albums
GROUP BY album_type, YEAR(release_date)
ORDER BY album_type,YEAR(release_date);
-- Επιστρέφει 178 εγγραφές


--------------------ΕΡΩΤΗΜΑ 8---------------------
SELECT artists.name AS artist, YEAR(release_date) AS year, COUNT(*) AS albums_per_year
FROM r_albums_artists
JOIN albums ON r_albums_artists.album_id = albums.id
JOIN artists ON r_albums_artists.artist_id = artists.id
WHERE artists.name = 'Various Artists'
GROUP BY YEAR(release_date), artists.name;
-- Επιστρέφει 29 εγγραφές


--------------------ΕΡΩΤΗΜΑ 9---------------------
SELECT YEAR(release_date) AS year , MAX(popularity) AS max_popularity 
FROM albums
WHERE popularity <> 0
GROUP BY YEAR(release_date);
-- Επιστρέφει 65 εγγραφές


--------------------ΕΡΩΤΗΜΑ 10---------------------
SELECT artists.name
FROM r_albums_artists
JOIN artists ON r_albums_artists.artist_id = artists.id
GROUP BY artists.name
HAVING COUNT(r_albums_artists.album_id) > 1;
-- Επιστρέφει 28 εγγραφές

--------------------ΕΡΩΤΗΜΑ 11---------------------
/*CREATE VIEW user2 AS
SELECT user_id,AVG(rating) AS avg_rating, COUNT(rating) AS rating_count
FROM ratings
GROUP BY user_id;*/




--------------------ΕΡΩΤΗΜΑ 12---------------------
select top(10) name as album_title,popularity
from albums
order by popularity desc;
--Επιστρέφει 10 εγγραφές


--------------------ΕΡΩΤΗΜΑ 13---------------------
select year(release_date) as year,a1.name as most_popular_album
from albums a1
where popularity = (
    select max(popularity)
    from albums a2
    where year(a1.release_date) = year(a2.release_date)
)
order by year(release_date),a1.name;
--Επιστρέφει 145 εγγραφές

--------------------ΕΡΩΤΗΜΑ 14---------------------
select  distinct name 
from artists a
where exists (select * 
              from r_artist_genre rg
              where rg.artist_id = a.id and genre_name = 'Blues'
             )
and  exists (select * 
                from r_artist_genre rg
                where rg.artist_id = a.id and genre_name = 'Rock'
            )
and  not exists(select * 
                from r_artist_genre rg
                where  rg.artist_id = a.id and genre_name <> 'Rock' and genre_name <> 'Blues'
);
--Επιστρέφει 0 εγγραφές


--------------------ΕΡΩΤΗΜΑ 15---------------------
select  distinct name 
from artists a,r_artist_genre a_g
where a_g.artist_id = a.id and genre_name = 'Blues'
INTERSECT
select  distinct name 
from artists a,r_artist_genre a_g
where a_g.artist_id = a.id and genre_name = 'Rock'
EXCEPT
select  distinct name 
from artists a,r_artist_genre a_g
where  a_g.artist_id = a.id and genre_name <>'Rock' and genre_name <>'Blues';
--Επιστρέφει 0 εγγραφές

--------------------ΕΡΩΤΗΜΑ 16---------------------
select r1.user_id as user_1,r2.user_id as user_2
from ratings r1, ratings r2
where r1.album_id = r2.album_id and r1.rating = r2.rating
and r1.user_id < r2.user_id
group by r1.user_id,r2.user_id
having count(*) >=4
--Επιστρέφει 84 εγγραφές

