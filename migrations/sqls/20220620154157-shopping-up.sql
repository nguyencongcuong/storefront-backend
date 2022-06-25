CREATE TABLE products
(
	id       SERIAL PRIMARY KEY,
	name     VARCHAR,
	price    integer,
	category VARCHAR
);

CREATE TABLE users
(
	id        SERIAL PRIMARY KEY,
	username  VARCHAR,
	firstName VARCHAR,
	lastName  VARCHAR,
	password  VARCHAR
);

CREATE TABLE orders (
  id SERIAL PRIMARY KEY,
  product_id bigint REFERENCES products(id),
  user_id bigint REFERENCES users(id),
  quantity integer,
  status text
);

INSERT INTO products (name, price, category) VALUES ('Apple', 500,  'Fruit');
INSERT INTO products (name, price, category) VALUES ('Peach', 600, 'Fruit');
INSERT INTO products (name, price, category) VALUES ('Coconut', 200, 'Fruit');
INSERT INTO products (name, price, category) VALUES ('Yellow Pepper', 150, 'Vegetable');
INSERT INTO products (name, price, category) VALUES ('Mushroom', 20, 'Vegetable');
INSERT INTO products (name, price, category) VALUES ('Carrot', 70, 'Vegetable');
INSERT INTO products (name, price, category) VALUES ('Pork', 90, 'Meat');
INSERT INTO products (name, price, category) VALUES ('Chicken', 120, 'Meat');
INSERT INTO products (name, price, category) VALUES ('Beef', 540, 'Meat');

INSERT INTO users (username, firstName, lastName, password) VALUES ('cuongnc.fe', 'Cuong', 'Nguyen', '$2b$10$gNA7mS4cx4QHL4Nqohl8Eub9nQMMA7sVmIJ/42jzVHhQHhxXhf8LC');
INSERT INTO users (username, firstName, lastName, password) VALUES ('anhnln', 'Anh', 'Nguyen', '$2b$10$YnsUB3Db4JWzYRhlV/wRsOv/cBqFQKwmgATv0oKsyX2BTABXlk7du');
INSERT INTO users (username, firstName, lastName, password) VALUES ('tobokki', 'Tobo', 'Ki', '$2b$10$4/xn.8T.1lhj8PvPoO6ZzeWJ071iPsqvn7rrHL/MKV1ofwLNJdi/e');

INSERT INTO orders (product_id, user_id, quantity, status) VALUES (1, 1, 15, 'active');
INSERT INTO orders (product_id, user_id, quantity, status) VALUES (1, 3, 11, 'completed');
INSERT INTO orders (product_id, user_id, quantity, status) VALUES (2, 2, 8, 'active');
INSERT INTO orders (product_id, user_id, quantity, status) VALUES (2, 3, 6, 'completed');
INSERT INTO orders (product_id, user_id, quantity, status) VALUES (3, 1, 12, 'active');
INSERT INTO orders (product_id, user_id, quantity, status) VALUES (3, 2, 9, 'active');