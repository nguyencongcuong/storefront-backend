CREATE TABLE products
(
	id SERIAL PRIMARY KEY,
	name VARCHAR(50),
	price DECIMAL(10, 2),
	unit VARCHAR(10),
	currency VARCHAR(10),
	category VARCHAR(50),
	inventory FLOAT
);

INSERT INTO products (name, price, unit, currency, category, inventory)
VALUES ('Apple', 35000, 'kg', 'VND', 'Fruit', 70000);
INSERT INTO products (name, price, unit, currency, category, inventory)
VALUES ('Peach', 80000, 'kg', 'VND', 'Fruit', 120000);
INSERT INTO products (name, price, unit, currency, category, inventory)
VALUES ('Coconut', 13000, 'count', 'VND', 'Fruit', 40000);
INSERT INTO products (name, price, unit, currency, category, inventory)
VALUES ('Yellow Pepper', 29000, 'kg', 'VND', 'Vegetable', 869238);
INSERT INTO products (name, price, unit, currency, category, inventory)
VALUES ('Mushroom', 115000, 'kg', 'VND', 'Vegetable', 98321);
INSERT INTO products (name, price, unit, currency, category, inventory)
VALUES ('Carrot', 15000, 'kg', 'VND', 'Vegetable', 32987);
INSERT INTO products (name, price, unit, currency, category, inventory)
VALUES ('Pork', 120000, 'kg', 'VND', 'Meat', 129812);
INSERT INTO products (name, price, unit, currency, category, inventory)
VALUES ('Chicken', 120000, 'kg', 'VND', 'Meat', 1278921);
INSERT INTO products (name, price, unit, currency, category, inventory)
VALUES ('Beef', 200000, 'kg', 'VND', 'Meat', 129871);
