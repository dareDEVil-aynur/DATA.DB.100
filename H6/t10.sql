SELECT a.artist_id, a.first_name, a.last_name, 
       COUNT(DISTINCT w.artwork_id) AS created_artwork,
       COUNT(DISTINCT d.exhibition_id) AS exhibitions
FROM artist a
LEFT JOIN artwork w ON a.artist_id = w.artist_id
LEFT JOIN displayed_at d ON w.artwork_id = d.artwork_id
GROUP BY a.artist_id, a.first_name, a.last_name
ORDER BY a.artist_id;
