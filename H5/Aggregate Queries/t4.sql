SELECT artist.artist_id, first_name, last_name, COUNT(artwork.artwork_id) AS artwork_count, MIN(value) AS min_value, MAX(value) AS max_value
FROM artist 
JOIN artwork ON artist.artist_id = artwork.artist_id
GROUP BY artist.artist_id, first_name, last_name
ORDER BY artist.artist_id ASC;
