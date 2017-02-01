-- SQL Assignment
-- Check out [W3Schools' SQL Reference](http://www.w3schools.com/sql/sql_syntax.asp) as a reference.

-- Provide one or more SQL queries that retrieve the requested data
-- below each of the following questions:

-- 1) Find the albums recorded by the artist Queen.
select title from albums where artist_id=51;



-- 2) [Count](http://www.w3schools.com/sql/sql_func_count.asp) how many tracks belong to the media type "Protected MPEG-4 video file".
select count(*) from tracks where media_type_id=3;


-- 3) Find the least expensive track that has the genre "Electronica/Dance".

select * from tracks where genre_id=15 order by unit_price limit 1;


-- 4) Find the all the artists whose names start with A.
select name from artists where name ilike 'a%';



-- 5) Find all the tracks that belong to playlist 1.
select * from tracks inner join playlists_tracks on playlists_tracks.track_id = tracks.id;
--or
select * from tracks where id in (select track_id from playlists_tracks where playlist_id=1);
