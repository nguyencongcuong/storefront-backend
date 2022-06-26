CREATE TABLE products
(
	id        SERIAL PRIMARY KEY,
	name      VARCHAR,
	price     integer,
	category  VARCHAR,
	inventory FLOAT
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

INSERT INTO products (name, price, category, inventory) VALUES ('Apple', 500,  'Fruit', 70000);
INSERT INTO products (name, price, category, inventory) VALUES ('Peach', 600, 'Fruit', 120000);
INSERT INTO products (name, price, category, inventory) VALUES ('Coconut', 200, 'Fruit', 40000);
INSERT INTO products (name, price, category, inventory) VALUES ('Yellow Pepper', 150, 'Vegetable', 869238);
INSERT INTO products (name, price, category, inventory) VALUES ('Mushroom', 20, 'Vegetable', 98321);
INSERT INTO products (name, price, category, inventory) VALUES ('Carrot', 70, 'Vegetable', 32987);
INSERT INTO products (name, price, category, inventory) VALUES ('Pork', 90, 'Meat', 129812);
INSERT INTO products (name, price, category, inventory) VALUES ('Chicken', 120, 'Meat', 1278921);
INSERT INTO products (name, price, category, inventory) VALUES ('Beef', 540, 'Meat', 129871);

INSERT INTO users (username, firstName, lastName, password) VALUES ('cuongnc.fe', 'Cuong', 'Nguyen', '$2b$10$gNA7mS4cx4QHL4Nqohl8Eub9nQMMA7sVmIJ/42jzVHhQHhxXhf8LC');
INSERT INTO users (username, firstName, lastName, password) VALUES ('anhnln', 'Anh', 'Nguyen', '$2b$10$YnsUB3Db4JWzYRhlV/wRsOv/cBqFQKwmgATv0oKsyX2BTABXlk7du');
INSERT INTO users (username, firstName, lastName, password) VALUES ('tobokki', 'Tobo', 'Ki', '$2b$10$4/xn.8T.1lhj8PvPoO6ZzeWJ071iPsqvn7rrHL/MKV1ofwLNJdi/e');

INSERT INTO orders (product_id, user_id, quantity, status) VALUES (1, 1, 15, 'active');
INSERT INTO orders (product_id, user_id, quantity, status) VALUES (1, 3, 11, 'completed');
INSERT INTO orders (product_id, user_id, quantity, status) VALUES (2, 2, 8, 'active');
INSERT INTO orders (product_id, user_id, quantity, status) VALUES (2, 3, 6, 'completed');
INSERT INTO orders (product_id, user_id, quantity, status) VALUES (3, 1, 12, 'active');
INSERT INTO orders (product_id, user_id, quantity, status) VALUES (3, 2, 9, 'active');
