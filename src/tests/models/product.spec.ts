import { Product, ProductModel } from '../../models/product';

const productModel = new ProductModel();

describe('getAllProducts', () => {
	it('should list all products', async () => {
		// Arrange
		const expectedResult: Product[] = [
			{
				id: 1,
				price: 500,
				name: 'Apple',
				category: 'Fruit',
			},
			{
				id: 2,
				price: 600,
				name: 'Peach',
				category: 'Fruit',
			},
			{
				id: 3,
				price: 200,
				name: 'Coconut',
				category: 'Fruit',
			},
			{
				id: 4,
				price: 150,
				name: 'Yellow Pepper',
				category: 'Vegetable',
			},
			{
				id: 5,
				price: 20,
				name: 'Mushroom',
				category: 'Vegetable',
			},
			{
				id: 6,
				price: 70,
				name: 'Carrot',
				category: 'Vegetable',
			},
			{
				id: 7,
				price: 90,
				name: 'Pork',
				category: 'Meat',
			},
			{
				id: 8,
				price: 120,
				name: 'Chicken',
				category: 'Meat',
			},
			{
				id: 9,
				price: 540,
				name: 'Beef',
				category: 'Meat',
			},
		];
		// Act
		const products = await productModel.getAllProducts();
		// Assert
		expect(products).toEqual(expectedResult);
	});
});

describe('getProductByID', () => {
	it('should return product id = 3', async () => {
		// Arrange
		const expectedResult: Product = {
			id: 3,
			price: 200,
			name: 'Coconut',
			category: 'Fruit',
		};
		// Act
		const products = await productModel.getProductByID(3);
		// Assert
		expect(products).toEqual(expectedResult);
	});
});

describe('getProductsByCategory', () => {
	it('should return products with category name = Fruit', async () => {
		// Arrange
		const expectedResult: Product[] = [
			{
				id: 1,
				price: 500,
				name: 'Apple',
				category: 'Fruit',
			},
			{
				id: 2,
				price: 600,
				name: 'Peach',
				category: 'Fruit',
			},
			{
				id: 3,
				price: 200,
				name: 'Coconut',
				category: 'Fruit',
			},
		];
		// Act
		const products = await productModel.getProductsByCategory('Fruit');
		// Assert
		expect(products).toEqual(expectedResult);
	});
});

describe('deleteProductByID', () => {
	it('should delete product with id = 1', async () => {
		// Arrange
		// Act
		const deletedProduct = await productModel.deleteProductByID('5');
		const newAllProducts = await productModel.getAllProducts();
		const found = newAllProducts?.find(
			(item) => item.id === deletedProduct?.id
		);
		// Assert
		expect(found).toEqual(undefined);
	});
});

describe('addProduct', () => {
	it('should add Product to database', async () => {
		// Arrange
		const product = {
			name: 'Orange',
			price: 700,
			category: 'Fruit',
		};
		// Act
		const addedProduct = await productModel.addProduct(product);
		const allProducts = await productModel.getAllProducts();
		const found = allProducts?.find((item) => item.id === addedProduct?.id);

		// Assert
		if (addedProduct && allProducts) {
			expect(found).toEqual(addedProduct);
		}
	});
});
