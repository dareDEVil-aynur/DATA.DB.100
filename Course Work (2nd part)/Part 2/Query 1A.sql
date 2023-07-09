SELECT bname,
  pname,
  edate,
  rating
FROM evaluation
  INNER JOIN product USING(p_id)
  INNER JOIN brand USING(b_id)
ORDER BY bname,
  pname,
  edate DESC