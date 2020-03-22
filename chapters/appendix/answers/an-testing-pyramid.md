## Testing pyramid

**Exercise 1**



1. Manual
2. System
3. Integration
4. Unit
5. More reality (interchangeable with 6)
6. More complexity (interchangeable ith 5)

See the diagram in the Testing Pyramid section.

**Exercise 2**

The correct answer is 1.

1. This is correct. The primary use of integration tests is to find mistakes in the communication between a system and its external dependencies
2. Unit tests do not cover as much as integration tests. They cannot cover the communication between different components of the system.
3. When using system tests the bugs will not be easy to identify and find, because it can be anywhere in the system if the test fails. Additionally, system tests want to execute the whole system as if it is run normally, so we cannot just mock the code in a system test.
4. The different test levels do not find the same kind of bugs, so settling down on one of the levels is not a good idea.

**Exercise 3**


Option 4 is not required.

Changing the transaction level is not really required. Better would be to actually exercise the transaction policy your application uses in production.


**Exercise 4**


Correct answer: Transitioning from a testing pyramid to an ice-cream cone anti-pattern


**Exercise 5**


Unit testing.


**Exercise 6**


The interaction with the system is much closer to reality.


**Exercise 7**

System tests tend to be slow and often are non-deterministic.
See https://martinfowler.com/bliki/TestPyramid.html!







