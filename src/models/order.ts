import Client from '../database';
import { ENUM } from '../constants/enum';

export type Order = {
	id?: number;
	product_id: string;
	user_id: string;
	quantity: number;
	status: string;
};

export class OrderModel {
	async getOrdersByUserID(userID: string): Promise<Order[] | undefined> {
		try {
			const conn = await Client.connect();
			const sql = `SELECT *
                   FROM orders
                   WHERE user_id = ${userID}`;
			const result = await conn.query(sql);
			conn.release();
			return result.rows;
		} catch (e) {
			throw new Error(`Cannot get the orders for user ${userID}`);
		}
	}

	async getCompletedOrdersByUserID(
		userID: string
	): Promise<Order[] | undefined> {
		try {
			const conn = await Client.connect();
			const sql = `SELECT *
                   FROM orders
                   WHERE user_id = ${userID}
                     AND status = '${ENUM.ORDER.STATUS.COMPLETED}'`;
			const result = await conn.query(sql);
			conn.release();
			return result.rows;
		} catch (e) {
			throw new Error(`Cannot get the completed order for user ${userID}`);
		}
	}
}
