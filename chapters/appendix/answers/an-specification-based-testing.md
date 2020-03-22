## Specification-based testing


**Exercise 1**

A group of inputs that all make a method behave the same way.


**Exercise 2**

We use the concept of equivalence partitioning to determine which tests can be removed.
According to equivalence partitioning we only need to test one test case in a certain partition.

We can group the tests cases in their partitions:

- Divisible by 3 and 5: T1, T2
- Divisible by just 3 (not by 5): T4
- Divisible by just 5 (not by 3): T5
- Not divisible by 3 or 5: T3

Only the partition where the number is divisible by both 3 and 5 has two tests.
Therefore we can only remove T1 or T2.


**Exercise 3**

Following the category partition method:

1. Two parameters: key and value
2. The execution of the program does not depend on the value; it always inserts it into the map.
We can define different characteristics of the key:
      - The key can already be present in the map or not.
      - The key can be null.
3. The requirements did not give a lot of parameters and/or characteristics, so we do not have to add constraints.
4. The combinations are each of the possibilities for the key with any value, as the programs execution does not depend on the value.
We end up with three partitions:
      - New key
      - Existing key
      - null key


**Exercise 4**

We go over each given partition and identify whether it is a valid partition:

1. Valid partition: Invalid numbers, which are too small.
2. Valid partition: Valid numbers
3. Invalid partition: Contains some valid numbers, but the range is too small to cover the whole partition.
4. Invalid partition: Same reason as number 3.
5. Valid partition: Invalid numbers, that are too large.
6. Invalid partition: Contains both valid and invalid letters (the C is included in the domain).
7. Valid partition: Valid letters.
8. Valid partition: Invalid letters, past the range of valid letters.

We have the following valid partitions: 1, 2, 5, 7, 8.

**Exercise 5**


* P1: Element not present in the set
* P2: Element already present in the set
* P3: NULL element.

The specification clearly explicits the three different cases of the correct answer.


**Exercise 6**

Option 4 is the incorrect one.
This is a functional based technique. No need for source code.


**Exercise 7**

Possible actions:

1. We should treat pattern size 'empty' as exceptional, and thus, test it just once.
1. We should constraint the options in the 'occurences in a single line' category to happen only if 'occurences in the file' are either exactly one or more than one. % It does not make sense to have none occurences in a file and one pattern in a line.
1. We should treat 'pattern is improperly quoted' as exceptional, and thus, test it just once.

