## Design for Testability

**Exercise 1**

To test just the `runBatch` method of `OrderDeliveryBatch` (for example in a unit test) we need to be able to use mocks for at least the `dao` and `delivery` objects.
In the current implementation this is not possible, as we cannot change `dao` or `delivery` from outside.
In other words: We want to improve the controllability to improve the testability.

The technique that we use to do so is called dependency injection.
We can give the `dao` and `delivery` in a parameter of the method:

```java
public class OrderDeliveryBatch {

  public void runBatch(OrderDao dao, DeliveryStartProcess delivery) {
    List<Order> orders = dao.paidButNotDelivered();

    for (Order order : orders) {
      delivery.start(order);

      if (order.isInternational()) {
        order.setDeliveryDate("5 days from now");
      } else {
        order.setDeliveryDate("2 days from now");
      }
    }
  }
}
```

Alternatively we can create fields for the `dao` and `delivery` and a constructor that sets the fields:

```java
public class OrderDeliveryBatch {

  private OrderDao dao;
  private DeliveryStartProcess delivery;

  public OrderDeliveryBatch(OrderDao dao, DeliveryStartProcess delivery) {
    this.dao = dao;
    this.delivery = delivery;
  }

  public void runBatch() {
    List<Order> orders = dao.paidButNotDelivered();

    for (Order order : orders) {
      delivery.start(order);

      if (order.isInternational()) {
        order.setDeliveryDate("5 days from now");
      } else {
        order.setDeliveryDate("2 days from now");
      }
    }
  }
}
```


**Exercise 2**


The method and class lack controllability.
We cannot change the values that `Calender` gives in the method because the `getInstance` method is static.
Mockito cannot really mock static methods, which is why we tend to avoid using static methods.

We can use depencency injection to make sure we can control the `today` object by using a mock.


**Exercise 3**


The correct answer is 1 and 3.

As we discussed it is very important to keep the domain and infrastructure separated for the testability.
This can be done, for example, by using Ports and Adapters.

Static methods cannot be mocked and are therefore very bad for the controllability of the code.
Code that has low controllability also has a low testability, so replacing the static methods by non-static ones will be very beneficial to the testability.

The large tables and lack of indices do not really influence the testability, especially not when talking about unit tests.
There we end up mocking the classes interacting with the database anyway.

Too many attributes/fields can hurt testability as we might need to create a lot of mocks for just one class under test.
However, the static methods and mixed domain and infrastructure are worse for the testability than a large amount of attributes/fields.


**Exercise 4**


1. Observability: The developer needs to be able to better observe the result.
2. Controllability: The developer has to be able to change (control) a certain variable or field.
3. Controllability: The developer should be able to control what instance of a class the class under test uses.

