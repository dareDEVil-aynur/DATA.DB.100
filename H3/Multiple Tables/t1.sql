SELECT b1.title, b2.title as predecessor_title
FROM book b1
INNER JOIN book b2 ON b1.predecessor_id = b2.id
ORDER BY b1.id;
