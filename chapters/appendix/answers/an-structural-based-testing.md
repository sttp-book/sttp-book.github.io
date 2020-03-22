## Structural-based testing

**Exercise 1**

Example of a test suite that achieves $$100\%$$ line coverage:

```java
@Test
public void removeNullInListTest() {
    LinkedList<Integer> list = new LinkedList<>();

    list.add(null);

    assertTrue(list.remove(null));
}

@Test
public void removeElementInListTest() {
    LinkedList<Integer> list = new LinkedList<>();

    list.add(7);

    assertTrue(list.remove(7));
}

@Test
public void removeElementNotPresentInListTest() {
    LinkedList<Integer> list = new LinkedList<>();

    assertFalse(list.remove(5))
}
```

Note that there exists a lot of test suites that achieve $$100\%$$ line coverage, this is just an example.

You should have 3 tests.
At least one test is needed to cover lines 4 and 5 (`removeNullInListTest` in this case).
This test will also cover lines 1-3.

Then a test for lines 9 and 10 is needed (`removeElementInListTest`).
This test also covers lines 6-8.

Finally a third test is needed to cover line 11 (`removeElementNotPresentInListTest`).


**Exercise 2**

![LinkedList exercise CFG](img/structural-testing/exercises/CFG-LinkedList.svg)
L\<number\> in the diagram represents the line number of the code that is in the block or decision.

**Exercise 3**

Option 1 is the false one.

A minimal test suite that achieves 100\% (either basic or full) condition has the same number of tests as a minimal test suite that achieves 100\% branch coverage. All decisions have just a single branch, so condition coverage doesn't make a difference here. Moreover, a test case that exercises lines 1, 6, 7, 8, 9, 10 achieves around 54\% coverage (6/11).




**Exercise 4**

Example of a test suite that achieves $$100\%$$ branch coverage:

```java
@Test
public void removeNullAsSecondElementInListTest() {
  LinkedList<Integer> list = new LinkedList<>();

  list.add(5);
  list.add(null);

  assertTrue(list.remove(null));
}

@Test
public void removeNullNotPresentInListTest() {
  LinkedList<Integer> list = new LinkedList<>();

  assertFalse(list.remove(null));
}

@Test
public void removeElementSecondInListTest() {
  LinkedList<Integer> list = new LinkedList<>();

  list.add(5);
  list.add(7);

  assertTrue(list.remove(7));
}

@Test
public void removeElementNotPresentInListTest() {
  LinkedList<Integer> list = new LinkedList<>();

  assertFalse(list.remove(3));
}
```

This is just one example of a possible test suite.
Other tests can work just as well.
You should have a test suite of 4 tests.

With the CFG you can see that there are decisions in lines 1, 2, 3, 7 and 8.
To achieve $$100\%$$ branch coverage each of these decisions must evaluate to true and to false at least once in the test suite.

For the decision in line 1, we need to remove `null` and something else than `null`. This is done with the `removeElement` and `removeNull` tests.

Then for the decision in line 2 the node that `remove` is looking at should not be null and null at least once in the tests.
The node is `null` when the end of the list had been reached.
That only happens when the element that shouls be removed is not in the list.
Note that the decision in line 2 only gets executed when the element to remove is `null`.
In the tests, this means that the element should be found and not found at least once. 

The decision in line 3 checks if the node thet the method is at now has the element that should be deleted.
The tests should cover a case where the element is not the item that has to be removed and a case where the element is the item that should be removed.

The decisions in lines 7 and 8 are the same as in lines 2 and 3 respectively.
The only difference is that lines 7 and 8 will only be executed when the item to remove is not `null`.

**Exercise 5**



First, we find the pairs of tests that can be used for each of the conditions:

- A: {2, 6}
- B: {1, 3}, {2, 4}, {5, 7}
- C: {5, 6}

For A and C we need the decisions 2, 5 and 6.
Then you can choose to add either 4 or 7 to cover condition B.

The possible answers are: {2, 4, 5, 6} or {2, 5, 6, 7}.


**Exercise 6**


![Control Flow Graph answer](img/structural-testing/exercises/CFG-sameEnds.svg)

L\<number\> represents the line numbers that the code blocks cover.


**Exercise 7**


A lot of input strings give 100% line coverage.
A very simple one is `"aa"`.
As long as the string is longer than one character and makes the condition in line 9 true, it will give 100% line coverage.
For `"aa"` the expected output is `"a"`.


**Exercise 8**


Answer 4. is correct.
The loop in the method makes it impossible to achieve 100% path coverage.
This would require us to test all possible number of iterations.
For the other answers we can come up with a test case: `"aXYa"`

**Exercise 9**


First the condition coverage.
We have 8 conditions:

1. Line 1: `n % 3 == 0`, true and false
2. Line 1: `n % 5 == 0`, true and false
3. Line 3: `n % 3 == 0`, true and false
4. Line 5: `n % 5 == 0`, true and false

T1 makes conditions 1 and 2 true and then does not cover the other conditions.
T2 makes all the conditions false.
In total these test cases then cover $$2 + 4 = 6$$ conditions so the condition coverage is $$\frac{6}{8} \cdot 100\% = 75\%$$

Now the decision coverage.
We have 6 decision:

1. Line 1: `n % 3 == 0 && n % 5 == 0`, true and false
2. Line 3: `n % 3 == 0`, true and false
3. Line 5: `n % 5 == 0`, true and false

Now T1 makes decision 1 true and does not cover the other decisions.
T2 makes all the decision false.
Therefore the coverage is $$\frac{4}{6} \cdot 100\% = 66\%$$.


**Exercise 10**



![Control Flow Graph answer](img/structural-testing/exercises/CFG-computeIfPresent.svg)

The L\<number\> in the blocks represent the line number corresponding to the blocks.


**Exercise 11**

Answer: 3.

One test to cover lines 1 and 2.
Another test to cover lines 1, 3-7 and 8-13.
Finally another test to cover lines 14 and 15. This test will also automatically cover lines 1, 3-10.


**Exercise 12**

Answer: 4.

From the CFG we can see that there are 6 branches.
We need at least one test to cover the true branch from teh decision in line 1.
Then with another test we can cover false from L1 and false from L8.
We add another test to cover false from the decision in line 10.
Finally an additional test is needed to cover the true branch out of the decision in line 10.
This gives us a minimum of 4 tests.

**Exercise 13**


MC/DC does subsume statement coverage. Basic condition coverage does not subsume branch coverage; full condition coverage does.


**Exercise 14**

Option 1 is correct.


**Exercise 15**



Option 1 is the correct one.

Tests for A = (2,6), B = (2,4), C = (3, 4), (5, 6), (7,8). Thus, from the options, tests 2, 3, 4 and 6 are the only ones that achieve 100% MC/DC. Note that 2, 4, 5, 6 could also be a solution.


