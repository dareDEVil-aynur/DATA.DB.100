SELECT artwork_name, value, year_created, first_name, last_name
FROM artwork
JOIN artist ON artwork.artist_id = artist.artist_id
WHERE value = (
    SELECT MAX(value) 
    FROM artwork
);
