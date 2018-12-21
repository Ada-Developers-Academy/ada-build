# Arrays
_JumpStart: Lesson 12_

## Learning Goals
- Vocabulary: data structure, array, index, value
- To understand what a data structure is and how it can be used
- To be able to create a new array
- To be able to access data in an array
- To be able to add data to an array

## Activities
* Review the [notes](#Notes) in this section
* Complete the [Array Worksheet](assignments/array-worksheet.md)
* Complete the [Numbers problem assignment](#numbers-problem-assignment)
* Complete the [Student Account Generator assignment](assignments/account-generator.md) using arrays
* [Optional] For additional learning and practice, look at the lessons and exercises of [Day 5 of JumpStart Live](https://github.com/Ada-Developers-Academy/jump-start-live/tree/master/lessons/day5#lessons)

## Notes
### Overview
Arrays are the most common data type used to create collections in Ruby.

An `Array` is an _ordered_ collection of objects.

Array Example:
```ruby
[1, 10, 33, 50, 2, 7]
```

### Creating Arrays
An array can be created to be empty to begin with or with an initial set of values. Regardless of whether we are creating an empty array or an array with data, there are two different ways to create a new Array.

### Empty
In the first way, we initialize an empty `Array` by using `[]`. An array can be assigned to a variable like any other data type:

```ruby
my_array = []
```

We know that this array is empty because the array definition starts with the `[`(left square bracket) and ends with the `]`(right square bracket), and there is nothing between those two symbols.

The second way is to explicitly create a new instance of the `Array` class defined in the Ruby core library.

```ruby
my_array = Array.new
```

### With Data
We can utilize the syntax for both of the above to initialize a new Array _with data_.

```ruby
numbers = [1, 2, 3, 4]
```

We can do something similar when creating an array using `Array.new`. When passing parameters into `new`, the first parameter will be the size of the desired array. The second parameter will be the default value for all element within the array.

```ruby
empty_array = Array.new(3)
empty_array # => [nil, nil, nil]
```

```ruby
default_array = Array.new(3, "def")
default_array # => ["def", "def", "def"]
```

### Indices
Arrays are integer-indexed starting at __zero__. All counting in computer science [begins with zero](http://skillcrush.com/2013/01/17/why-programmers-start-counting-at-zero/). This means that **each item** in the array corresponds to an **integer value**, and that integer is used to access an object within the `Array`. The first object is at index 0, the second object is at index 1 and so on.

```ruby
numbers = [1, 10, 33, 50, 2, 7]
puts numbers[0] # => 1
puts numbers[1] # => 10
puts numbers[2] # => 33
puts numbers[3] # => 50
puts numbers[4] # => 2
puts numbers[5] # => 7
```
| Value |  1  |  10 |  33 |  50 | 2   |  7  |
| :---- | :-- | :-- | :-- | :-- | :-- | :-- |
| Index | [0] | [1] | [2] | [3] | [4] | [5] |


```ruby
numbers = [1, 2, 3, 4]
puts numbers[2] # => 3
```
| Value |  1  |  2 |  3 |  4 |
| :---- | :-- | :-- | :-- | :-- |
| Index | [0] | [1] | [2] | [3] |

```ruby
empty_array = Array.new(3)
puts empty_array # => [nil, nil, nil]
```
| Value |  nil  |  nil |  nil |
| :---- | :-- | :-- | :-- |
| Index | [0] | [1] | [2] |

```ruby
default_array = Array.new(3, "def")
puts default_array # => ["def", "def", "def"]
```
| Value | "def" |  "def" |  "def" |
| :---- | :-- | :-- | :-- |
| Index | [0] | [1] | [2] |


### Data Types
Arrays can store all sorts of data including but not limited to integers, floats and strings. In Ruby, it is not a requirement that all items stored in the Array be of the same type. i.e. you may create an Array with string as the first element, an integer as the second element and so on. Often times, however, to solve a problem, a programmer may choose to make an array of the same data type.

```ruby
# array of strings
animals = ["bird", "horse", "cat", "monkey"]

# array of floats
scores = [25.25, 1.2, 4.5, 9.55]

# array of many data types
random = [7, "fourteen", 13.2, "horse", 1]
```

### Data Assignment
Arrays allow you to assign and reassign values within an array.

Each spot in the array acts like a variable. You can see what object is referenced by a particular index in the array. You can also change a particular index to refer to a different object.

```ruby
animals = ["bird", "horse", "cat", "monkey"]

# First, retrieve the value
puts animals[0] # => "bird"

# Then reassign the value
animals[0] = "parrot"

# Then retrieve the updated value
puts animals[0] # => "parrot"

puts animals # => ["parrot", "horse", "cat", "monkey"]
```


### Using Built-In Methods

Array is an in-built class available in Ruby. Arrays have a few important built-in methods that we can utilize.

**length**
This method returns the number of elements in the array.

```ruby
animals = ["bird", "horse", "cat", "monkey"]
puts animals.length # => 4
```

**push** or **<<**
These two methods perform the same operation in Ruby. `<<` is pronounced _shovel_. These methods add (append) a given object to the __end__ of an array. The fact that it adds to the end of the array is important since arrays are _ordered_.

See the below example of this, extended from the `animals` example from above.
```ruby
animals = ["bird", "horse", "cat", "monkey"]
animals << "dog"
puts animals         # => ["bird", "horse", "cat", "monkey", "dog"]
puts animals.length  # => 5
puts animals[4]      # => "dog"

animals.push("lizard")
puts animals         # => ["bird", "horse", "cat", "monkey", "dog", "lizard"]
puts animals.length  # => 6
puts animals[5]      # => "lizard"
```

**first**
This method will return the first element, or the element at the zero index, in an array.

**last**
This method will return the last element in the array. The index of this element will depend solely on how many items are in the array. The index of the last element in any array will always be one less than it's length.

See the below example of this method used, extended from the `animals` example above.
```ruby
animals = ["bird", "horse", "cat", "monkey", "dog", "lizard"]
puts animals.first # => "bird"
puts animals.last # => "lizard"
puts animals[0] # => "bird"
puts animals[(animals.length - 1)] # => "lizard"
```

If the array only has one value (or no values) then both the `first` and `last` methods will return the same value.

```ruby
empty_array = []
empty_array.first # => nil
empty_array.last # => nil

cats = ["grumpy"]
cats.first # => "grumpy"
cats.last # => "grumpy"
```

### Looping over an array
Earlier, in the lesson on iterators, we looked at how different iterators and loops work. Now, let's take a closer look at how loops or iterators work together with Arrays.

Let's consider some examples of arrays:
```ruby
  # veggies is an array of strings. Each string holds the value of name of one vegetable
  veggies = ["carrot", "yam", "zucchini", "spinach"]

  # names is an array of strings. Each string holds the value of name of one person
  names = ["Rey", "Finn", "Han"]

  # scores is an array of integers. Each element in the array is an integer representing a score.
  scores = [42, 21, 7, 34, 9, 68]
```

#### Times loop and Arrays
Recall the `.times` loop from the previous lesson.

We can leverage the fact that the `.times` loop with index begins counting at `0` and the index of the first element in an array is also `0`. Combining this knowledge and utilizing the in-built method in Arrays to get the count of elements in the array, `.length`, we can retrieve the value of each element in the array like so:
```ruby
# An array of veggies
veggies = ["carrot", "yam", "zucchini", "spinach"]
veggie_count = veggies.length
# the value of 4 will get assigned to variable veggie_count

veggie_count.times do |i|
  puts "Vegetable #{i+1}: #{veggies[i]}"
end
```
output:
```
Vegetable 1: carrot
Vegetable 2: yam
Vegetable 3: zucchini
Vegetable 4: spinach
```

In the example below, we determine the length of the `names` array. Then, we use the `.times` loop to retrieve the index of each element in the array. In the body of the loop, we use the index to retrieve the value of the element in the array at that index.

```ruby
# An array of names
names = ["Rey", "Finn", "Han"]

names.length.times do |i|
  puts "Hello #{names[i]}!"
end
```
output:
```
Hello Rey!
Hello Finn!
Hello Han!
```


#### .Each Iterator and Arrays
In the previous lesson, we looked at how `.each` iterator could work over a Range. We can also use the `.each` iterator to retrieve the value of each element in a collection like Arrays.

In the example below, the `.each` iterator will iterate over the `veggies` array. For each iteration, the `vegetable` variable will be assigned to the value of the next element in the array, starting with the first.

```ruby
# An array of veggies
veggies = ["carrot", "yam", "zucchini", "spinach"]

veggies.each do |vegetable|
  puts "a vegetable: #{vegetable}"
end
```
output:
```
a vegetable: carrot
a vegetable: yam
a vegetable: zucchini
a vegetable: spinach
```

In the example below, the iterator will iterate over the `names` array. For each iteration, the `name` variable will be assigned to the value of the next element in the array, starting with the first. The block of code will be executed for each name, which will say hello to each person!

```ruby
# An array of names
names = ["Rey", "Finn", "Han"]

names.each do |name|
  puts "Hello #{name}!"
end
```
output:
```
Hello Rey!
Hello Finn!
Hello Han!
```


## Numbers problem assignment
* Throughout this course we will be working with the **Numbers program**. Here's the fourth version of the program:
  * Leveraging your learnings from the notes you read (use at least two different types of loops, and an array to hold information), write a program that does the following:
    * Ask the user for the count of numbers.
    * Create an array to hold the numbers that the user will input
    * Do the following count number of times:
      * Ask the user to input a positive integer value
      * Save the user input as an integer value into the next location in the array.
    * Go through each value in the array and compare each value to the last number entered by the user. Based on the comparison print the following:
      * If the value in the array is less than the value of the last number entered, print to the terminal that the value at that index is less than the value at the last index.
      * If the value in the array is greater than the value of the last number entered, print to the terminal that the value at that index is greater than the value at the last index.
      * If the value in the array is equal to the value of the last number entered, print to the terminal that the value at that index is equal to the value at the last index.
    * Print the following three to the terminal:
      * The minimum value in the array. _Note_: The minimum value is the lowest value in the array.
      * The maximum value in the array. _Note_: The maximum value is the highest value in the array.
      * The average of all the elements in the array. _Note_: The average is calculated as the _(the sum of elements) / (the count of all elements)_.
    * Example output:
        * _Note_: User input is indicated in ~~ (tildes).

```
   Let's play a numbers game. How many numbers would you like to enter?
   ~5~
   Enter the 1st positive integer: ~34~
   Enter the 2nd positive integer: ~21~
   Enter the 3rd positive integer: ~80~
   Enter the 4th positive integer: ~582~
   Enter the 5th positive integer: ~80~

   Comparing to the last value entered, 80, here are the observations:
   The value at index 0, 34 is less than value at the last index, 80.
   The value at index 1, 21 is less than value at the last index, 80.
   The value at index 2, 80 is equal to the value at the last index, 80.
   The value at index 3, 582  is greater than value at the last index, 80.
   The value at index 4, 80 is equal to the value at the last index, 80.

   The minimum value in the array is 21.
   The maximum value in the array is 582.
   The average of all the values in the array is 159.4.
```
