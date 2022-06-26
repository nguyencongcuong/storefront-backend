import { Product, ProductModel } from "../../models/product";

const productModel = new ProductModel();

describe("getAllProducts", () => {
  it("should list all products", async () => {
    // Arrange
    const expectedResult: Product[] = [
      {
        "id": 1,
        "name": "Apple",
        "price": 500,
        "category": "Fruit",
        "inventory": 70000
      },
      {
        "id": 2,
        "name": "Peach",
        "price": 600,
        "category": "Fruit",
        "inventory": 120000
      },
      {
        "id": 3,
        "name": "Coconut",
        "price": 200,
        "category": "Fruit",
        "inventory": 40000
      },
      {
        "id": 4,
        "name": "Yellow Pepper",
        "price": 150,
        "category": "Vegetable",
        "inventory": 869238
      },
      {
        "id": 5,
        "name": "Mushroom",
        "price": 20,
        "category": "Vegetable",
        "inventory": 98321
      },
      {
        "id": 6,
        "name": "Carrot",
        "price": 70,
        "category": "Vegetable",
        "inventory": 32987
      },
      {
        "id": 7,
        "name": "Pork",
        "price": 90,
        "category": "Meat",
        "inventory": 129812
      },
      {
        "id": 8,
        "name": "Chicken",
        "price": 120,
        "category": "Meat",
        "inventory": 1278921
      },
      {
        "id": 9,
        "name": "Beef",
        "price": 540,
        "category": "Meat",
        "inventory": 129871
      }
    ];
    // Act
    const products = await productModel.getAllProducts();
    // Assert
    expect(products).toEqual(expectedResult);
  });
});

describe("getProductByID", () => {
  it("should return product id = 3", async () => {
    // Arrange
    const expectedResult: Product = {
      "id": 3,
      "name": "Coconut",
      "price": 200,
      "category": "Fruit",
      "inventory": 40000
    };
    // Act
    const products = await productModel.getProductByID(3);
    // Assert
    expect(products).toEqual(expectedResult);
  });
});

describe("getProductsByCategory", () => {
  it("should return products with category name = Fruit", async () => {
    // Arrange
    const expectedResult: Product[] = [
      {
        "id": 1,
        "name": "Apple",
        "price": 500,
        "category": "Fruit",
        "inventory": 70000
      },
      {
        "id": 2,
        "name": "Peach",
        "price": 600,
        "category": "Fruit",
        "inventory": 120000
      },
      {
        "id": 3,
        "name": "Coconut",
        "price": 200,
        "category": "Fruit",
        "inventory": 40000
      }
    ];
    // Act
    const products = await productModel.getProductsByCategory("Fruit");
    // Assert
    expect(products).toEqual(expectedResult);
  });
});

describe("deleteProductByID", () => {
  it("should delete product with id = 4", async () => {
    // Arrange
    const productID = '4'
    // Act
    const deletedProduct = await productModel.deleteProductByID(productID);
    const newAllProducts = await productModel.getAllProducts();
    const found = newAllProducts?.find(
      (item) => item.id === deletedProduct?.id
    );
    // Assert
    expect(found).toEqual(undefined);
  });
});

describe("addProduct", () => {
  it("should add Product to database", async () => {
    // Arrange
    const product = {
      "name": "Carrot",
      "price": 70,
      "category": "Vegetable",
      "inventory": 32987
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
