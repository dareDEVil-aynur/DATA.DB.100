SELECT pname as pname,
  MIN(rating) as min_rating,
  MAX(rating) as max_rating,
  AVG(rating) as avg_rating,
  COUNT(rating) as no_rating
FROM product
  LEFT JOIN evaluation USING(p_id)
GROUP BY pname
ORDER BY pname;
