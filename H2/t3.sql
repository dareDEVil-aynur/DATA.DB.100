SELECT artwork_id,
  artwork_name,
  first_name,
  last_name,
  year_created
FROM artwork
  INNER JOIN artist USING(artist_id)
WHERE technique = "painting"
ORDER BY artwork_id ASC