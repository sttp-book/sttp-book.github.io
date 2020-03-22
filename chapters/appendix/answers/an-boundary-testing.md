## Boundary testing

**Exercise 1**

The on-point is the value in the conditions: `half`.

When `i` equals `half` the condition is false.
Then the off-point makes the condition true and is as close to `half` as possible.
This makes the off-point `half` - 1.

The in-points are all the points that are smaller than half.
Practically they will be from 0, as that is what `i` starts with.

The out-points are the values that make the condition false: all values equal to or larger than `half`.

**Exercise 2**

The decision consists of two conditions, so we can analyse these separately.

For `n % 3 == 0` we have an on point of 3.
Here we are dealing with an equality; the value can both go up and down to make the condition false.
As such, we have two off-points: 2 and 4.

Similarly to the first condition for `n % 5 == 0` we have an on-point of 5.
Now the off-points are 4 and 6.


**Exercise 3**

The on-point can be read from the condition: 570.

The off-point should make the condition false (the on-point makes it true): 571.

An example of an in-point is 483.
Then the condition evaluates to true.

An example of an out-point, where the condition evaluates to false, is 893.


**Exercise 4**


![Answer domain matrix](img/boundary-testing/exercises/domain_exercise.png)

Note that we require 7 test cases in total: `numberOfPoints <= 570` and `numberOfLives > 10` each have one on- and one off-point.
`energyLevel == 5` is an equality, so we have two off-points and one on-point.
This gives a total of 7 test cases.

For one of the first two conditions we need two typical rows. \\
Let's rewrite the whole condition to: `(c1 && c2) || c3`.

To test `c1` we have to make `c2` true, otherwise the result will always be false. \\
The same goes for testing `c2` and then making `c1` true.

However, when testing `c3`, we need to make `(c1 && c2)` false, otherwise the result will always be true.
That is why, when testing `c3`, `c1` or `c2` has to be false, i.e. and out-point instead of an in-point.
Therefore we use two different typical rows for the `numberOfLives` variable.
The same could have been done with two typical rows for the `numberOfPoints` variable.

**Exercise 5**

An on-point is the (single) number on the boundary. It may or may not make the condition true. The off point is the closest number to the boundary that makes the condition to be evaluated to the opposite of the on point. Given it's an inequality, there's only a single off-point.


**Exercise 6**

on point = 1024, off point = 1025, in point = 1028, out point = 512

The on point is the number precisely in the boundary = 1024. off point is the closest number to the boundary and has the opposite result of on point. In this case, 1024 makes the condition false, so the off point should make it true. 1025. In point makes conditions true, e.g., 1028. Out point makes the condition false, e.g., 512.


**Exercise 7**

We should always test the behavior of our program when any expected data actually does not exist (EXISTENCE).

