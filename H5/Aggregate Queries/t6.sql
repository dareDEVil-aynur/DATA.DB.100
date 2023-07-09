SELECT artwork.artwork_id, artwork_name, COUNT(exhibition_id) AS exhibition_count
FROM artwork 
LEFT JOIN displayed_at ON artwork.artwork_id = displayed_at.artwork_id
GROUP BY artwork.artwork_id, artwork_name
ORDER BY artwork.artwork_id ASC;
