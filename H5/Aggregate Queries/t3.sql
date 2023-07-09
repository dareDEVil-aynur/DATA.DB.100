SELECT technique, COUNT(*) AS count
FROM artwork
GROUP BY technique
ORDER BY technique ASC;
