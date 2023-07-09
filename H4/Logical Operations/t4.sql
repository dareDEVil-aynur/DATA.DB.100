SELECT a.technique, a.artwork_name, ar.last_name 
FROM artwork a
JOIN artist ar ON a.artist_id = ar.artist_id
WHERE a.technique IN ('drawing', 'sculpture')
ORDER BY a.technique ASC, a.artwork_name ASC;
