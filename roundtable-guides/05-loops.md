# Lesson 05: Loops and Iteration

Today's round table will focus on reviewing the [lesson on loops](https://colab.research.google.com/drive/1m9h053kS6bjAeiHnEHIP39fqbyOO7glc?usp=sharing).

## Loops

1. What is the fundamental untility of using loops?
1. What is the difference between a `for` loop and a `while` loop?
    * When would you use one vs. the other?

## `for` loops
1. In the `for` loop below
    * How many times does the block execute?
    * What values does `i` take on each time through the loop?

    ```python
    for i in range(2,5):
        print(i)
    ```
1. In the `for` loop below
    * What value does `i` take on each time through the loop?
    * What would be a more meaningful variable name for  `i` in this case?

    ```python
    for i in "welcome":
        print(i)
    ```

## `while` loops
1. Why would a `for` loop be a better choice for the code snippet below?

    ```python
    i = 0

    while i < 4:
        print(i)
        i += 1
    ```

## Debugging and Loop Tables
1. In what ways is a loop table useful?
    * What extra column is included in a loop table for a `while` loop compared to a `for` loop?
1. What other strategies have you used for debugging loops?

## Practice Problems
1. Let's share our code for `reverse_string` and `total_even_numbers`.
1. What questions do you have about the practice problems?

## Rock, Paper, Scissors - v5
1. Let's share our code for *Rock, Paper, Scissors - v3*
1. What question do you have about *Rock, Paper, Scissors - v3*?

## Extra, Extra

1. From the *Loop Worksheet*, what code snippets suprised you?
1. Let's look at *Problem 10*

    ```python
    for x in range(1, 11):
        if x == 5:
            print("You got a winner!")
    ```

    * What questions do you have about nesting a conditional in a loop?
