SELECT artwork_name, technique
FROM artwork
WHERE technique IN ('painting', 'drawing')
ORDER BY technique ASC, artwork_name ASC;
