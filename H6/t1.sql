SELECT artwork_id, artwork_name
FROM artwork
WHERE artwork_id IN (
    SELECT artwork_id
    FROM displayed_at
)
ORDER BY artwork_id;
