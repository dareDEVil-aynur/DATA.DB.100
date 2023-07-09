SELECT technique
FROM artwork
GROUP BY technique
HAVING AVG(value) > (
    SELECT AVG(value) 
    FROM artwork
);
