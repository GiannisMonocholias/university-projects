/*SELECT t.id,t.name AS track_name
FROM albums AS a
JOIN r_albums_tracks AS a_t 
    ON a.id = a_t.album_id
JOIN tracks AS t 
    ON a_t.track_id = t.id 
WHERE a.album_type ='album' AND t.popularity >= 30 AND t.is_playable<>'NULL';
--Επιστρέφει το όνομα και το id των τραγουδιών που έχουν την ιδιότητα is_playable διάφορη του NULL και ανήκουν σε αλμπουμ του τύπου album
--και έχουν δημοτικότητα τραγουδιού μεγαλύτερη ή ίση του 14
--Επιστράφηκαν 8 εγγραφές

SELECT Distinct a.name
FROM albums AS a
JOIN r_albums_tracks AS a_t 
    ON a.id = a_t.album_id
JOIN tracks AS t 
    ON a_t.track_id = t.id 
WHERE a.name like '%or%' AND t.popularity BETWEEN 50 AND 85;
--Επιστρέφει τα ονόματα των αλμπουμ που το όνομα τους περιέχει τη συμβολοσειρά or και 
--έχουν τουλάχιστον ένα τραγούδι με τιμή δημοτικότητας ανάμεσα στο 50 και στο 85
--Επιστράφηκαν 15 εγγραφές 

SELECT count(*),album_type
from albums 
where popularity BETWEEN 1 and 5 and name not like '%p%l%'
GROUP BY album_type
HAVING count(*) > 28
order by count(*);
--Επιστρέφει το πλήθος των αλμπουμ κάθε τύπου(αν αυτό είναι μεγαλύτερος του 28) ταξινομημένο κατά αύξουσα σειρά και το όνομα τύπου αλμπουμ
--Επίσης τα αλμπουμ που λαμβάνονται υπόψιν είναι αυτά που έχουν τιμή δημοτικότητας ανάμεσα στο 1 και το 5 και περιέχουν το γράμμα p πριν από το l στο όνομα τους υποχρεωτικά 
--Επιστράφηκαν 2 εγγραφές

select distinct  a.name,avg(t.duration) as average_duration
,min(t.duration) as min_duration
,max(t.duration) as max_duration
from artists as a
join r_track_artist as t_a on a.id = t_a.artist_id
join tracks as t on t.id = t_a.track_id
where a.followers >500000 and t.popularity > 25 
group by a.name;
--Επιστρφει τα ονόματα των καλλιτεχνών που έχουν πάνω από 500000 followers 
--και επίσης επιστρέφει τη μέση,ελάχιστη και μέγιστη διάρκεια των τραγουδιών τους που έχουν τιμή δημοτικότητας μεγαλύτερη του 25
--Επιστράφηκαν 32 εγγραφές και με χρήση του τελεστή top επιστρέφονται οι 10 πρώτες εγγραφές

    
select  distinct top(30) name 
from albums a
left outer join r_albums_tracks a_t on a.id = a_t.album_id
where a_t.track_id is NULL and a_t.album_id is NULL;
--Επιστρέφει τα ονόματα των άλμπουμ του πίνακα albums που δεν συσχετίζονται με κανένα τραγούδι στον πίνακα r_albums_tracks
--Επιστράφηκαν 8154 εγγραφές και με χρήση του τελεστή top επιστρέφονται οι 30 πρώτες εγγραφές


SELECT DISTINCT artists.name
FROM artists 
JOIN r_albums_artists ON artists.id = r_albums_artists.artist_id
JOIN albums ON r_albums_artists.album_id = albums.id
WHERE album_type = 'single';
-- Επιλέγει τα ονόματα των καλλιτεχνών οι οποίοι έχουν κάποιο αλμπουμ τύπου single 
-- Επιστράφηκαν 561 εγγραφές


SELECT DISTINCT artists.name
FROM artists 
JOIN r_albums_artists ON artists.id = r_albums_artists.artist_id
JOIN albums ON r_albums_artists.album_id = albums.id
WHERE albums.popularity > 70;
-- Επιλέγει τα ονόματα των καλλιτεχνών, οι οποίοι έχουν κάποιο άλμπουμ με δημοτικότητα μεγαλύτερη από 70
-- Επιστράφηκαν 3 εγγραφές
*/


SELECT distinct artists.name 
FROM artists
lEFT OUTER JOIN r_artist_genre ON r_artist_genre.artist_id = artists.id
WHERE r_artist_genre.genre_name is null and r_artist_genre.genre_name is NULL;
-- Επιστρέφει τα ονόματα των καλλιτεχνών που δεν συσχετίζονται με κανένα είδος μουσικής στον πίνακα r_artist_genre
-- Επιστράφηκαν 484 εγγραφές

/*
SELECT name,followers
FROM artists
WHERE popularity > 50 and name like '%dd%e%';*/ 
-- Επιλέγει το όνομα και τους ακολούθους των καλλιτεχνών που έχουν τιμή δημοτικότητας μεγαλύτερη του 50
-- και περιέχονται στο όνομα τους οι υποσυμβολοσειρές dd και e
-- Επιστράφηκαν 3 εγγραφές 

/*
SELECT DISTINCT artists.name
FROM artists 
JOIN r_track_artist ON artists.id = r_track_artist.artist_id
JOIN tracks ON r_track_artist.track_id = tracks.id
WHERE tracks.popularity > (SELECT AVG(popularity) FROM tracks)*/
-- Επιλέγει τα ονόματα των καλλιτεχνών που έχουν κομμάτι με δημοτικότητα μεγαλύτερη απο τον μέσο όρο
-- Επιστράφηκαν 897 εγγραφές

/*
SELECT DISTINCT tracks.name
FROM artists 
JOIN r_track_artist ON artists.id = r_track_artist.artist_id
JOIN tracks ON r_track_artist.track_id = tracks.id
WHERE (tracks.duration > 400000 or disc_number <> 1) and artists.name like '%______________________________%';*/
-- Επιλέγει τα ονόματα των τραγουδιών που είτε έχουν διάρκεια μεγαλύτερη του 400000 είτε αριθμό δίσκου διάφορο του 1
-- και το ονοματεπώνυμο του καλλιτέχνη τους έχει τουλάχιστον 30 χαρακτήρες  
-- Επιστράφηκαν 212 εγγραφές

/*
select distinct artists.name as artist_name,artists.followers
from artists 
join r_artist_genre on artists.id = r_artist_genre.artist_id
join genres on genres.name = r_artist_genre.genre_name
where genre_name like '%pop%' and artists.followers > 800000
order by artists.followers desc;*/
-- Επιστρέφει τα ονόματα και τον αριθμό των ακολούθων των καλλιτεχνών που έχουν πάνω από 800000 followers 
-- το όνομα τουλάχιστον ενός εκ των ειδών μουσικής τους περιέχει τη λέξη pop
-- Οι εγγραφές που επιτρέφονται είναι ταξινομημένες σε φθίνουσα σειρά ως προς τον αριθμό των followers του κάθε καλλιτέχνη
-- Επιστράφηκαν 11 εγγραφές
