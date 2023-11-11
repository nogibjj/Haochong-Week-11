%sql
SELECT
  artist_name,
  count(artist_name)
AS
  num_songs,
  year
FROM
  prepared_song_data
WHERE
  year > 0
GROUP BY
  artist_name,
  year
ORDER BY
  num_songs DESC,
  year DESC

%sql
 -- Find songs for your DJ list
 SELECT
   artist_name,
   title,
   tempo
 FROM
   prepared_song_data
 WHERE
   time_signature = 4
   AND
   tempo between 100 and 140;