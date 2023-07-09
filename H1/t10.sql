CREATE TABLE shoe (
    id          INT PRIMARY KEY NOT NULL,
    name        VARCHAR(50) NOT NULL UNIQUE,
    type        VARCHAR(30),
    price       DECIMAL(5,2)
);

INSERT INTO shoe
VALUES (1, 'X 10', 'sprint', 79.95);  

INSERT INTO shoe
VALUES (4, 'ABC 101', 'sprint', 124.95);  

INSERT INTO shoe
VALUES (6, 'ABC 201', 'long jump', 159.00);

INSERT INTO shoe
VALUES (7, 'X 20', 'middle-distance', NULL);
