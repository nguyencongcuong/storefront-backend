CREATE TABLE order_details
(
	id SERIAL PRIMARY KEY,
	order_id BIGINT REFERENCES orders (id),
	product_id BIGINT REFERENCES products (id),
	quantity FLOAT
);

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
