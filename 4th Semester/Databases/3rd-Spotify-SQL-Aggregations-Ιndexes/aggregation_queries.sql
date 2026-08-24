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
group by a.name
--Επιστρφει τα ονόματα των καλλιτεχνών που έχουν πάνω από 500000 followers 
--και επίσης επιστρέφει τη μέση,ελάχιστη και μέγιστη διάρκεια των τραγουδιών τους που έχουν τιμή δημοτικότητας μεγαλύτερη του 25
--και τέλος κρατάει μόνο τις ομάδε(δηλαδή τους καλλιτέχνες) που έχουν μέση διάρκεια τραγουδιών μεγαλύτερη του 240000
--Επιστράφηκαν 13 εγγραφές


select distinct artists.name as artist_name,artists.followers
from artists 
join r_artist_genre on artists.id = r_artist_genre.artist_id
join genres on genres.name = r_artist_genre.genre_name
where genre_name like '%pop%' and artists.followers > 800000
order by artists.followers desc;
-- Επιστρέφει τα ονόματα και τον αριθμό των ακολούθων των καλλιτεχνών που έχουν πάνω από 800000 followers 
-- το όνομα τουλάχιστον ενός εκ των ειδών μουσικής τους περιέχει τη λέξη pop
-- Οι εγγραφές που επιτρέφονται είναι ταξινομημένες σε φθίνουσα σειρά ως προς τον αριθμό των followers του κάθε καλλιτέχνη
-- Επιστράφηκαν 11 εγγραφές


select YEAR(albums.release_date) as release_album_year,avg(albums.popularity) as average_popularity,count(albums.id) as number_of_albums
from albums 
join r_albums_tracks on r_albums_tracks.album_id = albums.id
join  tracks on r_albums_tracks.track_id = tracks.id
where albums.name like '%p%r%' and tracks.popularity > 10
group by YEAR(albums.release_date)
having avg(albums.popularity) > 10;
-- Εφαρμόζει αρχικά join στους πίνακες r_albums_tracks,albums,tracks και αφαιρεί τις εγγραφές τους που δεν επαληθεύουν τη where συνθήκη
-- Εν συνεχεία κατατάσσει τις εγγραφές σε ομάδες με βάση τη χρονιά έκδοσης των αλμπουμ και κρατάει μόνο τις ομάδες που έχουν μέση
-- δημοτικότητα άλμπουμ μεγαλύτερη  του 10
-- Εμφανίζει χρονιά έκδοσης άλμπουμ,τη μέση δημοτικότητα εκείνης της χρονιάς και αριθμό των άλμπουμ εκείνης της χρονιάς που πληρούν τα παραπάνω κριτήρια
-- Επιστράφηκαν 32 εγγραφές


select genres.name as genre_name,count(*) as Number_of_artists
from genres 
join r_artist_genre on r_artist_genre.genre_name = genres.name
join artists on artists.id = r_artist_genre.artist_id
group by genres.name
HAVING count(*) > 10;
-- Εφαρμόζει αρχικά join στους πίνακες genres,r_artist_genre,artists
-- Στη συνέχεια κατατάσσει τις εγγραφές σε ομάδες με βάση το είδος του καλλιτέχνη
-- Και κρατάει μόνο τις ομάδες(δηλαδή τα είδη τραγουδιών) που συσχετίζονται με περισσότερους από 10 καλλιτέχνες
-- Εμφανίζει όνομα είδους τραγουδιού και αριθμό συσχετισμένων καλλιτεχνών
-- Επιστράφηκαν 20 εγγραφές