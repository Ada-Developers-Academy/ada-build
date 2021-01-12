# Lesson 04: Functions

Today's round table will focus on reviewing the [lesson on functions](XXX).

## Built-in Functions and Modules

1. In your own words, define a `function`.
1. Type casting functions covert data of one type to another datatype. Why/when might these functions be useful?
    * Examples: `str`, `int`, `float`, `bool`
1. Why might it be useful to encapsulate functions into a module?
1. Let's share any functions that we've found particularly useful.

## Defining Functions

1. Why is it useful to encapsulate functionality into a `function`?
1. What constitutes the `function` *signature*.
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

## Rock, Paper, Scissors - v2
1. Let's share our code for *Rock, Paper, Scissors - v2*
1. What question do you have about *Rock, Paper, Scissors - v2*?