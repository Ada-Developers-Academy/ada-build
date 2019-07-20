# Assignment: Walk-a-thon

You are going to create a program for tracking a walk-a-thon.

## Primary Requirements

1. Create a walk-a-thon program that accepts the following _input_ from the user:
    - Earning goal for the walk-a-thon
    - Amount earned per lap completed (per person)
    - Number of laps completed for 5 people
2. Have the walk-a-thon program calculate and _output_ the following:
    - Who earned the most money
    - Total amount earned in the walk-a-thon
    - Whether or not the earning goal was met

## Example Output

Below is an example program output. User input is indicated in ~~ (tildes).

```
Welcome to Crystal's Walk-A-Thon Tracker
Our goal is to raise money!

Enter the earning goal for this event > ~500~
Enter the amount earned per lap (per person) > ~2.50~

Please enter the number of laps completed by each person.
Walker #1 > ~10~
          --> Earned $25.0
Walker #2 > ~11~
          --> Earned $27.5
Walker #3 > ~50~
          --> Earned $125.0
Walker #4 > ~20~
          --> Earned $50.0
Walker #5 > ~22~
          --> Earned $55.0

========================================
Highest Earning Walker: #3
Total amount earned: $282.5
Goal Met? NO :-(
```

## Optional Enhancements

- Display all money formatted to two decimal places
- Display by how much the goal was missed by or was beaten by, in the event that the goal was not achieved exactly (e.g. "The goal was missed by $217.50")
- Display multiple walkers as highest earning, in the event of a tie for highest earners
- Consider how to handle 500 walkers
- Consider each walker earning a different amount per lap walked
