import { OrderModel, Order } from '../../models/order';

const store = new OrderModel();

describe('getOrdersByUserID', () => {
	it('should return order with respective user id', async () => {
		// Arrange
		const expectedResult: Order[] = [
			{
				id: 1,
				product_id: '1',
				user_id: '1',
				quantity: 15,
				status: 'active',
			},
			{
				id: 5,
				product_id: '3',
				user_id: '1',
				quantity: 12,
				status: 'active',
			},
		];
		// Act
		const result = await store.getOrdersByUserID('1');
		// Assert
		result
			? expect(result).toEqual(expectedResult)
			: expect(result).toBeUndefined();
	});
});

describe('getCompletedOrdersByUserID', () => {
	it('should return completed orders with respective user id', async () => {
		// Arrange
		const userID = '3';
		const expectedResult: Order[] = [
			{
				id: 2,
				product_id: '1',
				user_id: '3',
				quantity: 11,
				status: 'completed',
			},
			{
				id: 4,
				product_id: '2',
				user_id: '3',
				quantity: 6,
				status: 'completed',
			},
		];
		// Act
		const result = await store.getCompletedOrdersByUserID(userID);
		// Assert
		result
			? expect(result).toEqual(expectedResult)
			: expect(result).toBeUndefined();
	});
	it(`should notify when there's no completed order with current user id`, async () => {
		// Arrange
		const userID = '1';
		// Act
		const result = await store.getCompletedOrdersByUserID(userID);
		// Assert
		expect(result?.length).toBe(0);
	});
});
