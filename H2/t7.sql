SELECT 
    artist.first_name, 
    artist.last_name,
    artist.artist_id, 
    artwork.artwork_id, 
    artwork.artwork_name
FROM 
    artist
LEFT JOIN artwork ON artist.artist_id = artwork.artist_id
ORDER BY 
    artist.artist_id ASC, 
    artwork.artwork_id ASC;
