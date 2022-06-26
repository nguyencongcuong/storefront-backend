CREATE TABLE products
(
	id SERIAL PRIMARY KEY,
	name VARCHAR,
	price integer,
	category VARCHAR,
	inventory float
);

CREATE TABLE users
(
	id SERIAL PRIMARY KEY,
	username VARCHAR,
	firstName VARCHAR,
	lastName VARCHAR,
	password VARCHAR
);

CREATE TABLE orders
(
	id SERIAL PRIMARY KEY,
	user_id bigint REFERENCES users (id),
	status text,
	date text
);

CREATE TABLE order_details
(
	id SERIAL PRIMARY KEY,
	order_id bigint REFERENCES orders (id),
	product_id bigint REFERENCES products (id),
	quantity float
);

INSERT INTO products (name, price, category, inventory)
VALUES ('Apple', 500, 'Fruit', 70000);
INSERT INTO products (name, price, category, inventory)
VALUES ('Peach', 600, 'Fruit', 120000);
INSERT INTO products (name, price, category, inventory)
VALUES ('Coconut', 200, 'Fruit', 40000);
INSERT INTO products (name, price, category, inventory)
VALUES ('Yellow Pepper', 150, 'Vegetable', 869238);
INSERT INTO products (name, price, category, inventory)
VALUES ('Mushroom', 20, 'Vegetable', 98321);
INSERT INTO products (name, price, category, inventory)
VALUES ('Carrot', 70, 'Vegetable', 32987);
INSERT INTO products (name, price, category, inventory)
VALUES ('Pork', 90, 'Meat', 129812);
INSERT INTO products (name, price, category, inventory)
VALUES ('Chicken', 120, 'Meat', 1278921);
INSERT INTO products (name, price, category, inventory)
VALUES ('Beef', 540, 'Meat', 129871);

INSERT INTO users (username, firstName, lastName, password)
VALUES ('cuongnc.fe', 'Cuong', 'Nguyen', '$2b$10$gNA7mS4cx4QHL4Nqohl8Eub9nQMMA7sVmIJ/42jzVHhQHhxXhf8LC');
INSERT INTO users (username, firstName, lastName, password)
VALUES ('anhnln', 'Anh', 'Nguyen', '$2b$10$YnsUB3Db4JWzYRhlV/wRsOv/cBqFQKwmgATv0oKsyX2BTABXlk7du');
INSERT INTO users (username, firstName, lastName, password)
VALUES ('tobokki', 'Tobo', 'Ki', '$2b$10$4/xn.8T.1lhj8PvPoO6ZzeWJ071iPsqvn7rrHL/MKV1ofwLNJdi/e');

INSERT INTO orders (user_id, status, date)
VALUES (1, 'active', '2022-06-24T05:05:43.213Z');
INSERT INTO orders (user_id, status, date)
VALUES (2, 'completed', '2022-06-25T05:05:43.213Z');
INSERT INTO orders (user_id, status, date)
VALUES (3, 'completed', '2022-06-26T05:05:43.213Z');
INSERT INTO orders (user_id, status, date)
VALUES (1, 'active', '2022-06-26T05:05:43.213Z');

INSERT INTO order_details (order_id, product_id, quantity)
VALUES (1, 2, 20000);
INSERT INTO order_details (order_id, product_id, quantity)
VALUES (1, 3, 52033);
INSERT INTO order_details (order_id, product_id, quantity)
VALUES (1, 9, 25673);
INSERT INTO order_details (order_id, product_id, quantity)
VALUES (2, 5, 12334);
INSERT INTO order_details (order_id, product_id, quantity)
VALUES (2, 8, 34563);
INSERT INTO order_details (order_id, product_id, quantity)
VALUES (2, 1, 34532);
INSERT INTO order_details (order_id, product_id, quantity)
VALUES (3, 3, 67545);
INSERT INTO order_details (order_id, product_id, quantity)
VALUES (3, 6, 34521);
INSERT INTO order_details (order_id, product_id, quantity)
VALUES (3, 8, 67343);
INSERT INTO order_details (order_id, product_id, quantity)
VALUES (4, 2, 34532);
INSERT INTO order_details (order_id, product_id, quantity)
VALUES (4, 3, 65421);
INSERT INTO order_details (order_id, product_id, quantity)
VALUES (4, 6, 23445);
