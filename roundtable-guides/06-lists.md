# Lesson 06: Lists

Today's round table will focus on reviewing [lesson on lists](https://colab.research.google.com/drive/1TK9Enhh0mITZ1649l-r4_gzeg2B3eRRu?usp=sharing).

## Creating Lists
1. What are two different ways to initialize an empty list?
    * Why would we use one way vs. the other?
1. What are two different ways to initialize a list with data?
    * Why would we use one way vs. the other?
1. A single list in Python can include elements of multiple data types.
    * What should we consider when storing different data types in a single list?

## Indexing Lists
1. Let's consider the following list: `letters = ['a', 'b', 'c', 'd', 'e']`
    * What are two ways to access the last element `'e'`.
    * What does `letters[1]` return?
    * What does `letters[5]` return?

## List Methods
1. The Ada Build lesson introduces the `len` and `append` methods.
    * What other methods have you explored?

## Lists and Loops
1. The Ada Build lessons show two different ways of looping over a list:
    ```python
    for i in range(len(names)):
        print(f"Hello {names[i]}!")
    ```
    and
    
    ```python
    for name in names:
        print(f"Hello {name}!")
    ```
    * What are some of the benefits and drawbacks of each of these techniques?

## Practice Problems
1. What questions do you have about the practice problems?
1. Let's look at problem 2.5
    ```python
    values = [8, 5, 3, 10, 14, 2]
    for value in values:
        if value == 10:
            print("Special case!")
        else:
            print(f"Regular values like {value}")
    ```
    * What questions do you have about nesting a conditional control structure in a for-each loop?

## Project: Account Generator
1. What are the benefits of creating a list of dictionaries to store account information?
1. Let's share our code for *Account Generator*
1. What questions do you have about *Account Generator*?

## Project: Rock, Paper, Scissors - v4
1. Let's share our code for *Rock, Paper, Scissors - v4*
1. What questions do you have about *Rock, Paper, Scissors - v4*?
