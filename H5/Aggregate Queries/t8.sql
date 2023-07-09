SELECT artwork.artwork_id, artwork_name, technique, first_name, last_name
FROM artwork 
JOIN displayed_at ON artwork.artwork_id = displayed_at.artwork_id
JOIN artist ON artwork.artist_id = artist.artist_id
GROUP BY artwork.artwork_id, artwork_name, technique, first_name, last_name
HAVING COUNT(exhibition_id) = 1
ORDER BY artwork.artwork_id ASC;
