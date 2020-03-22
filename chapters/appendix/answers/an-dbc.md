## Design-by-contracts and property-based testing

**Exercise 1**


`board != null`

For a class invariant the assertions has to assert a class variable.
`board` is such a class variable, unlike the other variables that are checked by the assertions.
The other assertions are about the parameters (preconditions) or the result (postcondition).


**Exercise 2**


The existing preconditions are **not** enough to ensure the property in line 10.

`board` itself cannot be `null` and `x` and `y` will be in its range, but the content of board can still be `null`.
To guarantee the property again the method would have to implicitly assume an invariant, that ensures that no place in `board` is `null`.

In order to do this, we would have to make the constructor ensure that no place in `board` is `null`.
So we have to add an assertion to the constructor that asserts that every value in `board` is not `null`.


**Exercise 3**

The second colleague is correct.

There is a problem in the `Square`'s preconditions.
For the `resetSize` method these are stronger than the `Rectangle`'s preconditions.
We do not just assert that the `width` and `height` should be larger than 0, but they should also be equal.
This violates the Liskov's Substitution Principle.
We cannot substitute a `Square` for a `Rectangle`, because we would not be able to have unequal width and height anymore.


**Exercise 4**


Making correct use of a class should never trigger a class invariant violation.
We are making correct use of the class, as otherwise it would have been a precondition violation.
This means that there is a bug in the implementation of the library, which would have to be fixed.
As this is outside your project, you typically cannot fix this problem.


**Exercise 5**

Just like the contracts we have a client and a server. \\
A 4xx code means that the client invoked the server in a wrong way, which corresponds to failing to adhere to a precondition. \\
A 5xx code means that the server was not able to handle the request of the client, which was correct.
This corresponds to failing to meet a postcondition.



**Exercise 6**

P' should be equal or weaker than P, and Q' should be equal or stronger than Q.



**Exercise 7**

To make debugging easier.






