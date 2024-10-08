SELECT song_name, duration FROM songs 
WHERE duration IN (SELECT MAX(duration) FROM songs);
SELECT song_name FROM songs
WHERE duration>='00:03:30';
SELECT collection_name FROM collection
WHERE release_year BETWEEN 2018 AND 2020;
SELECT * FROM musicians
WHERE nickname NOT LIKE '% %';
SELECT song_name FROM songs
WHERE string_to_array(lower(song_name), ' ') && ARRAY['мой', 'мой %', '% мой', '%мой%', 'my', '% my', 'my %', '%my%'];