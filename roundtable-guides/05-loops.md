# Lesson 05: Loops and Iteration

Today's round table will focus on reviewing the [lesson on loops](https://colab.research.google.com/drive/1m9h053kS6bjAeiHnEHIP39fqbyOO7glc?usp=sharing).

## How to Start

1. It might be helpful to see if there are any general questions about the lesson/topics.
    * What questions do you have?
    * What did you think about the lesson?
    * Were there parts that you found confusing?
    * What did you like about the lesson?
    * Was there something else relatable you discovered while researching/understanding the lesson?

## Loops

1. What is the fundamental utility of using loops?
1. What is the difference between a `for` loop and a `while` loop?
    * When would you use one vs. the other?

## `for` loops
1. In the `for` loop below
    * How many times does the block execute?
    * What value does `i` take on the first time through the loop?

    ```python
    for i in range(2, 5):
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

## Rock, Paper, Scissors - v3
1. Let's share our code for *Rock, Paper, Scissors - v3*
1. What questions do you have about *Rock, Paper, Scissors - v3*?

### Project Extension Questions (Technical Interview Practice)
1. If your implementation used a `while loop`, describe how the condition in the while loop was used to end the game.
1. If your implementation used a `for loop`, describe how the for loop determines how many times the game should run.
1. For this project, what are the differences between using a `while loop` and a `for loop`.


## Live Coding

1. Develop a variety of simple coding examples to talk through with students. 
1. Build students confidence up with increasing comfort with explaining or talking through coding solutions.