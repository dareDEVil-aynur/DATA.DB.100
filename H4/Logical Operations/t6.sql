SELECT DISTINCT a.artist_id, a.first_name 
FROM artist a
WHERE EXISTS (
    SELECT 1 FROM artwork aw1 
    WHERE aw1.artist_id = a.artist_id AND aw1.technique = 'painting'
) AND EXISTS (
    SELECT 1 FROM artwork aw2 
    WHERE aw2.artist_id = a.artist_id AND aw2.technique = 'drawing'
)
ORDER BY a.artist_id ASC;
