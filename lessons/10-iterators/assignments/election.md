# Assignment: Election Time
You are going to create an electronic election program that tracks votes, total votes, and determines a winner.

## Primary Requirements
Create an election program that accepts input from the user and outputs the winner of the election
  - *Input*: Poll 10 people for their election vote
  - *Output*: Print the total votes cast as well as the winner of the election

## Example Output
Below is an example program output. User input is indicated in &lt;&gt; (angle brackets).

```
  Welcome to my election voting program.

  Election candidates are: Donald Duck, Minnie Mouse, Goofy

  Vote #1: <Goofy>
  Vote #2: <Minnie Mouse>
  Vote #3: <Minnie Mouse>
  Vote #4: <Donald Duck>
  Vote #5: <Goofy>
  Vote #6: <Goofy>
  Vote #7: <Minnie Mouse>
  Vote #8: <Minnie Mouse>
  Vote #9: <Minnie Mouse>
  Vote #10: <Minnie Mouse>

  ELECTION RESULTS....

  Vote Summary:
  Goofy - 3 vote(s)
  Minnie Mouse - 6 vote(s)
  Donald Duck - 1 vote(s)

  WINNER: Minnie Mouse!
```
## Optional Enhancements
Some of these enhancements are better solved after having knowledge from [lesson 11](https://github.com/Ada-Developers-Academy/jump-start/blob/master/lessons/11-basic-data-structs/README.md), so you can try some and then come back and do others after lesson 11.

- Handle ties for a winner appropriately
- Handle grammar of vote summary saying vote or votes appropriately
- Handle write in votes
- Consider how to handle more than 10 votes
- Consider how to handle more than 3 candidates
- Refactor your code so that your code is DRY (Don't Repeat Yourself)
