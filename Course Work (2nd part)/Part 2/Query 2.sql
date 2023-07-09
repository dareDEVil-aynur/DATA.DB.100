SELECT u_id,
  byear,
  uname
FROM evaluation
  INNER JOIN user USING(u_id)
  INNER JOIN product USING(p_id)
  INNER JOIN brand USING(b_id)
WHERE brand.bname = "KooTek"
INTERSECT
SELECT u_id,
  byear,
  uname
FROM evaluation
  INNER JOIN user USING(u_id)
  INNER JOIN product USING(p_id)
  INNER JOIN brand USING(b_id)
WHERE brand.bname = "McCee"
ORDER BY u_id,
  byear,
  uname;
