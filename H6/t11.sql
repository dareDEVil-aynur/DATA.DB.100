SELECT a.artwork_id,
       a.artwork_name,
       a.artist_id,
       a.value,
       artist_data.artwork_count,
       artist_data.avg_value
FROM artwork a
JOIN (
    SELECT artist_id,
           COUNT(artwork_id) as artwork_count,
           AVG(value) as avg_value
    FROM artwork
    GROUP BY artist_id
) artist_data ON a.artist_id = artist_data.artist_id
ORDER BY artist_data.artwork_count, artist_data.avg_value;
