import { OrderModel, Order } from "../../models/order";

const store = new OrderModel();

describe("getOrdersByUserID", () => {
  it("should return order with respective user id", async () => {
    // Arrange
    const userID = "1";
    const expectedResult: Order[] = [
      {
        "id": 1,
        "user_id": "1",
        "status": "active",
        "date": "2022-06-24T05:05:43.213Z",
        "orderDetails": [
          {
            "id": 1,
            "product_id": "2",
            "quantity": 20000
          },
          {
            "id": 2,
            "product_id": "3",
            "quantity": 52033
          },
          {
            "id": 3,
            "product_id": "9",
            "quantity": 25673
          }
        ]
      },
      {
        "id": 4,
        "user_id": "1",
        "status": "active",
        "date": "2022-06-26T05:05:43.213Z",
        "orderDetails": [
          {
            "id": 10,
            "product_id": "2",
            "quantity": 34532
          },
          {
            "id": 11,
            "product_id": "3",
            "quantity": 65421
          },
          {
            "id": 12,
            "product_id": "6",
            "quantity": 23445
          }
        ]
      }
    ];
    // Act
    const result = await store.getOrdersByUserID(userID);
    // Assert
    result
      ? expect(result).toEqual(expectedResult)
      : expect(result).toBeUndefined();
  });
});

describe("getCompletedOrdersByUserID", () => {
  it("should return completed orders with respective user id", async () => {
    // Arrange
    const userID = "2";
    const expectedResult: Order[] = [
      {
        "id": 2,
        "user_id": "2",
        "status": "completed",
        "date": "2022-06-25T05:05:43.213Z",
        "orderDetails": [
          {
            "id": 4,
            "product_id": "5",
            "quantity": 12334
          },
          {
            "id": 5,
            "product_id": "8",
            "quantity": 34563
          },
          {
            "id": 6,
            "product_id": "1",
            "quantity": 34532
          }
        ]
      }
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
    const userID = "5";
    // Act
    const result = await store.getCompletedOrdersByUserID(userID);
    // Assert
    expect(result?.length).toBe(0);
  });
});
