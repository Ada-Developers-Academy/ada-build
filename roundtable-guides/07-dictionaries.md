# Lesson 07: Dictionaries

Today's round table will focus on reviewing [lesson on dictionaries](https://colab.research.google.com/drive/1AmKeKvSJnNacUUIU9OLSInVohWJrPLkF?usp=sharing).

## Creating Dictionaries
1. Why is it useful to organize data in a dictionary?
1. Describe two ways to create an empty dictionary.

## Accessing Values
1. Describe two ways to access the value associated with a particular key?
1. What happens if you duplicate keys in a dictionary?
    `numbers = {'a': 1, 'a': 2}`
    * What does numbers['a'] return? 
1. Only immutable types can be used as keys. What does it mean for an object to be immutable?
1. Can you use numerical indices to access values from a dictionary. Why or why not?

## Dictionary Methods
1. The Ada Build lessons introduces the methods `get`, `keys`, `values`, `len`, and `pop`.
    * How have you found these methods to be useful?
    * What other methods have you explored?

## Dictionaries and Loops
1. When iterating over a dictionary, the iteration variable is the key.
    ```python
    for key in my_cat:
        print(f"The key is {key} and the value is {my_cat[key]}")
    ```
    * In the lesson we show bracket notation to access the value.
    * How else could you access the value?

## Nested Data Structures

* In the Ada Build lesson, we demonstrate nesting dictionaries in a list and nesting dictionaries in a dictionary.
    * What are some of the differences in how you access elements from these two nested data structures?

## Practice Problems
1. What surprised you from the practice problems?
    * What questions do you have?
1. Let's look at the second to last line in *Problem 6*
    `if(not(oatmeal_raisin["gluten_free"]) or not(oatmeal_raisin["vegan"]))`
    * How could the second to last line be refactored without using the `not` operator?
    * How could it be refactored using a chained conditional (`if/elif/...`)

## Project: Account Generator - v2

1. Let's share our code for *Account Generator - v2*
1. What question do you have about *Account Generator - v2*?

## Project: MadLib

1. MadLibs are fun! Let's play some together.
1. What questions do you have about the *MadLib* project?
