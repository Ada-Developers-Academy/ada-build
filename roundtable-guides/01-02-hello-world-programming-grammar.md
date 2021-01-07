# Lesson 01: Hello, World! and Lesson 02: Programming Grammar

Today's round table will focus on reviewing the first two lessons in Ada Build: **01 - Hello, World!** and **02 - Programming Grammar**.

## Hello, World!

1. Describe the following snippet of code using the vocabulary `function`, *argument*, *call*, and *string*.

```python
print('Welcome to Ada Build!')
```

## Programming Grammar

### Comments
1. Describe the purpose of comments. 
    - Who are they useful to and in what ways?
    
### Data Types

1. What is the difference between a `String` and a `Float`.
1. How can we check the data type of a `variable` or a `literal`.
    - Why is it useful to know?

### Mathematical Operations and Precedence

1. How is truncating division `//` different from division `/`. 
    - Describe a real world situation where truncating division `//` is useful?
1. What operation does the modulus operator `%` perform?
    - Describe a real world situation where the modulus operator `%` is useful?
1. Describe the order in which the following operations are performed:
    `-5 + 2 * 3 < 20 + 4 * -5`

### Assignment Statements

1. Let's discuss the difference between an assignment statement `x = 5` and a comparison statement `x == 5`.

1. How can the following snippet of code be rewritten without the compound operator `+=`:
     - `x += 1`

### Strings

1. In python, we use f-strings for string interpolation. What can be put inside of the `{ }` of an f-string?
1. Why is the escape character `\` sometimes necessary? 
    * For instance, why do we need to type `\"` to include double quotes in a string?
1. Describe how to select a single character from a string?
    * How do we select multiple characters?

### Practice Problems

1. What question do you have about the practice problems?
    - Which problems were the most challenging or suprising?

### Extra Extra

1. What other questions do you have?


If time allows, let's discuss

## User Input

We will learn how to prompt the user for input and store this input in a variable so that it can be manipulated as needed for the program.

Let's start by looking at an example in [repl.it](https://repl.it).

```python
# prompt the user for their name
name = input("What is your name? ")

# output "Welcome, <name>!" 
print(f"Welcome, {name}!")
```

`input` is a function that takes a _string_ as an argument. 

Let's take a look at another example.

```python
# prompt the user for their age
age = input("How old are you? ")

# output the difference in your ages 
print(f"That's a great age! I am {36 - age} years older than you")
```
* Let's parse this error together.

    <details><summary>You can view the explanation and solution by expanding the arrow.</summary>
    
    ```
    Traceback (most recent call last):
    File "main.py", line 5, in <module>
        print(f"That's a great age! I am {36 - age} years older than you")
    TypeError: unsupported operand type(s) for -: 'int' and 'str'
    ```

    There's a `TypeError`. Specically the operand `-` can't be used with an `int` and a `str`.  

    Our next step in figuring out our bug is to check what type our variables are. We will see that `age` is a _string_. This is because the _input_ function alwasys returns a _string_.

    We can conver an _int_ to a _string_ using the function `int`.
    Similarly we can convert a _string_ to an _int_ using the function `str`.


    A bug free program looks like this that behaves as intended:

    ```python
    # prompt the user for their age
    age = input("How old are you? ")

    # convert age to an int
    age = int(age)

    # output the difference in your ages 
    print(f"That's a great age! I am {36 - age} years older than you")
    ```

    </details>

## Exercise: Numbers

Leveraging our learnings from the concepts we've learned thus far, write a program that does the following:

* Do the following three times:
    * Ask the user to input a positive integer value.
    * Convert the user input to an integer and save the value in a variable.
* Add 20 to each of the three numbers and print this new value for each to the console. The output should look something like 

`Twenty added to the numbers you entered gives us 24, 73 and 42.`

Complete you code in a [repl.it](https://repl.it).

