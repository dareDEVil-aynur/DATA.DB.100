PRAGMA foreign_keys = ON;

CREATE TABLE tea_shop (
    shop_id INTEGER PRIMARY KEY,
    shop_name VARCHAR(100) UNIQUE NOT NULL,
    address VARCHAR(255) NOT NULL
);

INSERT INTO tea_shop (shop_id, shop_name, address) 
VALUES (1, 'Tea Corner', '123 Tea St.');

INSERT INTO tea_shop (shop_id, shop_name, address) 
VALUES (2, 'Brew & Leaf', '456 Brew Blvd.');

INSERT INTO tea_shop (shop_id, shop_name, address) 
VALUES (3, 'Sip and Savor', '789 Savor Rd.');

CREATE TABLE sells (
    tea_id INTEGER,
    shop_id INTEGER,
    PRIMARY KEY (tea_id, shop_id),
    FOREIGN KEY (tea_id) REFERENCES tea(tea_id),
    FOREIGN KEY (shop_id) REFERENCES tea_shop(shop_id)
);

INSERT INTO sells (tea_id, shop_id) VALUES (1, 1);
INSERT INTO sells (tea_id, shop_id) VALUES (2, 1);
INSERT INTO sells (tea_id, shop_id) VALUES (3, 2);
INSERT INTO sells (tea_id, shop_id) VALUES (1, 3);
