SELECT 
    artwork.artwork_id, 
    artwork.artwork_name,
    exhibition.exhibition_id, 
    exhibition.exhibition_name,
    exhibition.year
FROM 
    artwork
LEFT JOIN displayed_at ON artwork.artwork_id = displayed_at.artwork_id
LEFT JOIN exhibition ON displayed_at.exhibition_id = exhibition.exhibition_id
ORDER BY 
    artwork.artwork_id ASC, 
    exhibition.exhibition_id ASC;
