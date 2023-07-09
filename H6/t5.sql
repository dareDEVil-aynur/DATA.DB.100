SELECT artist_id, first_name, last_name 
FROM artist 
WHERE artist_id IN (
    SELECT artist_id 
    FROM artwork 
    WHERE technique = 'painting'
)
INTERSECT
SELECT artist_id, first_name, last_name 
FROM artist 
WHERE artist_id IN (
    SELECT artist_id 
    FROM artwork 
    WHERE technique = 'drawing'
)
ORDER BY artist_id;
