import Client from '../database';

export type Product = {
	id?: number;
	name: string;
	price: number;
	category: string;
	inventory: number;
};

export class ProductModel {
	async getAllProducts(): Promise<Product[] | undefined> {
		try {
			const conn = await Client.connect();
			const sql = `SELECT *
                   FROM products`;
			const result = await conn.query(sql);
			conn.release();
			return result.rows;
		} catch (e) {
			throw new Error('Cannot get products');
		}
	}

	async getProductByID(productID: number): Promise<Product | undefined> {
		try {
			const conn = await Client.connect();
			const sql = `SELECT *
                   FROM products
                   WHERE id = ${productID}
                   LIMIT 1`;
			const result = await conn.query(sql);
			conn.release();
			return result.rows[0];
		} catch (e) {
			throw new Error(`Get product ${productID} failed!`);
		}
	}

	async getProductsByCategory(
		category: string
	): Promise<Product[] | undefined> {
		try {
			const conn = await Client.connect();
			const sql = `SELECT *
                   FROM products
                   WHERE category = '${category}'`;
			const result = await conn.query(sql);
			conn.release();
			return result.rows;
		} catch (e) {
			throw new Error(`Get product from ${category} failed!`);
		}
	}

	async deleteProductByID(productID: string): Promise<Product | undefined> {
		try {
			const conn = await Client.connect();
			const sql = `DELETE FROM products WHERE id='${productID}' RETURNING *`;
			const result = await conn.query(sql);
			conn.release();
			return result.rows[0];
		} catch (e) {
			throw new Error(`Delete product ${productID} failed!`);
		}
	}

	async addProduct(product: Product): Promise<Product | undefined> {
		const { name, category } = product;
		try {
			const conn = await Client.connect();
			const sql =
				'INSERT INTO products (name, category) VALUES($1, $2) RETURNING *';
			const result = await conn.query(sql, [name, category]);
			conn.release();
			return result.rows[0];
		} catch (e) {
			throw new Error(`Add product failed!`);
		}
	}
}
