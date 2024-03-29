SELECT DISTINCT 
    artwork.artwork_id, 
    artwork.artwork_name
FROM 
    artwork
INNER JOIN displayed_at ON artwork.artwork_id = displayed_at.artwork_id
ORDER BY 
    artwork.artwork_id ASC;
