SELECT brand.bname AS bname,
  product.pname AS pname,
  evaluation.edate AS edate,
  evaluation.rating AS rating
FROM evaluation
  INNER JOIN product ON evaluation.p_id = product.p_id
  INNER JOIN brand ON product.b_id = brand.b_id
  INNER JOIN user ON evaluation.u_id = user.u_id
WHERE user.name = 'Anni N'
ORDER BY brand.bname ASC,
  product.pname ASC,
  evaluation.edate DESC
