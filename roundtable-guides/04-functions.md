# Lesson 04: Functions

Today's round table will focus on reviewing the [lesson on functions](https://colab.research.google.com/drive/1e8CaljqZrKJyFm7Ry5qHynp7GdoVHFLk?usp=sharing).

## How to Start

1. It might be helpful to see if there are any general questions about the lesson/topics.
    * What questions do you have?
    * What did you think about the lesson?
    * Were there parts that you found confusing?
    * What did you like about the lesson?
    * Was there something else relatable you discovered while researching/understanding the lesson?

## Built-in Functions and Modules

1. In your own words, define a `function`.
1. Type casting functions covert data of one type to another type. Why/when might these functions be useful?
    * Examples: `str`, `int`, `float`, `bool`
1. Why might it be useful to encapsulate functions into a module?
1. Let's share any functions that we've found particularly useful.

## Defining Functions

1. Why is it useful to encapsulate functionality into a `function`?
1. What constitutes the `function` *signature*?
1. What is the difference between a `parameter` and an `argument`?
1. What does it mean to say a parameter is scoped to a particular `function`?
1. If a function does not have a `return` statement, what will it return?
1. What is the purpose of a `docstring`.
1. Let's review the code below. 
    * Use the terms `function`, `return statement`, `parameter` and `method signature` to describe the code.

    ```python
    def add(a,b):
        return a+b

    def subtract(a,b):
        return a-b
    ```
1. Now let's review another code snippet that uses *helper functions*. 
    * Which line(s) of the code have a function call?
    * Why is it good to use helper functions?

     ```python
    1 def calculate(a, b, operation):
    2    if operation == "add":
    3        return add(a,b)
    4    elif operation == "subtract":
    5        return subtract(a,b)
    ```

## Practice Problems
1. Let's look at an `AssertionError` when a test for the function `triple` fails. 
    * What questions do we have?
1. Let's share our code for the `checkends` and `flipside` exercises.
1. What questions do you have about the practice problems?

## Project: Rock, Paper, Scissors - v2
1. Let's share our code for *Rock, Paper, Scissors - v2*
1. What question do you have about *Rock, Paper, Scissors - v2*?

### Project Extension Questions (Technical Interview Practice)
1. How does the program handle arguments other than 'rock', 'paper', or 'scissors'?
1. Does the function include `print` statements and/or `return` statements? Why?

## Live Coding

1. Develop a variety of simple coding examples to talk through with students. 
1. Build students confidence up with increasing comfort with explaining or talking through coding solutions.