## Model-Based Testing

**Exercise 1**

![](img/model-based-testing/exercises/coldhot_state_machine.svg)

You should not need more than 4 states.

**Exercise 2**



![](img/model-based-testing/exercises/coldhot_transition_tree.svg)


**Exercise 3**



<table>
  <tr>
    <td></td>
    <td>temperature reached</td>
    <td>too hot</td>
    <td>too cold</td>
    <td>turn on</td>
    <td>turn off</td>
  </tr>
  <tr>
    <td>Idle</td>
    <td></td>
    <td>Cooling</td>
    <td>Heating</td>
    <td></td>
    <td>Off</td>
  </tr>
  <tr>
    <td>Cooling</td>
    <td>Idle</td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td>Heating</td>
    <td>Idle</td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td>Off</td>
    <td></td>
    <td></td>
    <td></td>
    <td>Idle</td>
    <td></td>
  </tr>
</table>

There are 14 empty cells in the table, so there are 14 sneaky paths that we can test.


**Exercise 4**

![](img/model-based-testing/exercises/order_transition_tree.svg)


**Exercise 5**



We have a total of 6 transitions.
Of these transitions the four given in the test are covered and order cancelled and order resumed are not.
This coves a transition coverage of $$\frac{4}{6} \cdot 100\% = 66.7\%$$


**Exercise 6**


<table>
  <tr>
    <td>STATES</td>
    <td colspan="5">Events</td>
  </tr>
  <tr>
    <td></td>
    <td>Order received</td>
    <td>Order cancelled</td>
    <td>Order resumed</td>
    <td>Order fulfilled</td>
    <td>Order delivered</td>
  </tr>
  <tr>
    <td>Submitted</td>
    <td>Processing</td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td>Processing</td>
    <td></td>
    <td>Cancelled</td>
    <td></td>
    <td>Shipped</td>
    <td></td>
  </tr>
  <tr>
    <td>Cancelled</td>
    <td></td>
    <td></td>
    <td>Processing</td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td>Shipped</td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td>Completed</td>
  </tr>
  <tr>
    <td>Completed</td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
  </tr>
</table>


**Exercise 7**

Answer: 20.

There are 20 empty cells in the decision table.

Also we have 5 states.
This means $$5 \cdot 5 = 25$$ possible transitions.
The state machine gives 5 explicit transitions so we have $$25 - 5 = 20$$ sneak paths.


**Exercise 8**


First we find pairs of decisions that are suitable for MC/DC: (We indicate a decision as a sequence of T and F. TTT would mean all conditions true and TFF means C1 true and C2, C3 false)

- C1: {TTT, FTT}, {FTF, TTF}, {FFF, TFF}, {FFT, TFT}
- C2: {TTT, TFT}, {TFF, TTF}
- C3: {TTT, TTF}, {FFF, FFT}, {FTF, FTT}, {TFF, TFT},

All condition can use the TTT decision, so we will use that.
Then we can add FTT, TFT and TTF.
Now we test each condition individually with it changing the outcome.

It might look line we are done, but MC/DC requires each action to be covered at least once.
To achieve this we add the FFF and TFF decision as test cases.

In this case we need to test each explicit decision in the decision table.


**Exercise 9**


![](img/model-based-testing/exercises/generic_transition_tree.svg)


**Exercise 10**


![](img/model-based-testing/exercises/ads.png)


**Exercise 11**


![](img/model-based-testing/exercises/solution-microwave-statemachine.png)



**Exercise 12**


![](img/model-based-testing/exercises/solution-microwave-transitiontree.png)


**Exercise 13**


There will be one extra super state (ACTIVE), which will be a superstate of the existing WARMING and DEFROSTING states. The edges from ON to WARMING and DEFROSTING will remain.
The two (cancel and time out) outgoing edges from WARMING and DEFROSTING (four edges in total) will be replaced by two edges going out of the super ACTIVE state.
So there will be two fewer transitions.


**Exercise 14**


|                  | C1      | C2      | C3   | C4   | C5   | C6   | C7   | C8   |
|------------------|---------|---------|------|------|------|------|------|------|
| Valid format?    | T       | T       | T    | T    | F    | F    | F    | F    |
| Valid size?      | T       | T       | F    | F    | T    | T    | F    | F    |
| High resolution? | T       | F       | T    | F    | T    | F    | T    | F    |
| Outcome          | success | success | fail | fail | fail | fail | fail | fail |


**Exercise 15**



|                                    | T1 | T2 | T3 |
|------------------------------------|----|----|----|
| User active in past two weeks      | T  | T  | T  |
| User has seen ad in last two hours | F  | F  | F  |
| User has over 1000 followers       | T  | F  | F  |
| Ad is highly relevant to user      | T  | T  | F  |
| Serve ad?                          | T  | T  | T  |






