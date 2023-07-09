SELECT 
    artwork.artwork_id, 
    artwork.artwork_name
FROM 
    artwork
LEFT JOIN displayed_at ON artwork.artwork_id = displayed_at.artwork_id
WHERE 
    displayed_at.exhibition_id IS NULL
ORDER BY 
    artwork.artwork_id ASC;
