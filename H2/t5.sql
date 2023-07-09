SELECT artwork_id,
  artwork_name,
  technique
FROM displayed_at
  INNER JOIN artwork USING(artwork_id)
  INNER JOIN exhibition USING(exhibition_id)
  INNER JOIN artist USING(artist_id)
WHERE location = "Museum of Modern Art"
ORDER BY artwork_id