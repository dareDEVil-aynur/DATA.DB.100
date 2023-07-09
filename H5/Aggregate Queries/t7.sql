SELECT artwork.artwork_id, artwork_name, technique
FROM artwork 
JOIN displayed_at ON artwork.artwork_id = displayed_at.artwork_id
GROUP BY artwork.artwork_id, artwork_name, technique
HAVING COUNT(exhibition_id) = 1
ORDER BY artwork.artwork_id ASC;
