CREATE TABLE products
(
	id SERIAL PRIMARY KEY,
	name VARCHAR(50),
	description TEXT,
	image TEXT,
	price DECIMAL(10, 2),
	unit VARCHAR(10),
	currency VARCHAR(10),
	category VARCHAR(50),
	inventory FLOAT
);

INSERT INTO products (name, description, image, price, unit, currency, category, inventory)
VALUES ('Apple', 'des 1', 'https://images.pexels.com/photos/90946/pexels-photo-90946.jpeg', 35000, 'kg', 'VND', 'Fruit', 70000);
INSERT INTO products (name, description, image, price, unit, currency, category, inventory)
VALUES ('Peach', 'des 2', 'https://images.pexels.com/photos/341523/pexels-photo-341523.jpeg', 80000, 'kg', 'VND', 'Fruit', 120000);
