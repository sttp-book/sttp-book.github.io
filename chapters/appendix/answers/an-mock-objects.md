## Mock Objects

**Exercise 1**

The correct answer is 4.

1. This line is required to create a mock for the `OrderDao` class.
2. With this line we check that the methods calls start with `order` on a `delivery` mock we defined. The method is supposed to start each order that is paid but not delivered.
3. With this line we define the behavior of the `paidButNotDelivered` method by telling the mock that it should return an earlier defined `list`.
4. We would never see this happen in a test that is testing the `OrderDeliveryBatch` class. By mocking the class we do not use any of its implementation. But the implementation is the exact thing we want to test. In general we never mock the class under test.


**Exercise 2**

You need mocks to both control and observe the behavior of the (external) conditions you mocked.


**Exercise 3**


Option 1 is the false one. We can definitely get to 100% branch coverage there with the help of mocks.


**Exercise 4**


Only approach 2.


