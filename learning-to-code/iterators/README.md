# Loops and Iterators

_JumpStart: Lesson 11_

## Learning Goals

By the end of this lesson you should be able to:

- Discuss the following vocabulary
  - loops
  - iterator
  - iteration
  - iteration variable
  - counter-controlled
  - sentinel-controlled
  - loop table
  - times loop
  - range
  - while loop
  - blocks
  - scope
- Know the purpose for iteration in creating programs
- Write loops in order to prevent code duplication and repetition
- Understand how a loop will execute the statements inside and what the resulting output will be

## Activities

- Review the [notes](#notes) in this section
- Complete [Loops Worksheet](assignments/loops-worksheet.md)
- Complete [More Loops Worksheet](assignments/more-loops-worksheet.md)
- Complete the [Numbers problem assignment](#numbers-problem-assignment)
- Complete [Election Time assignment](assignments/election.md)
- [Optional] For additional learning and practice, look at the lessons and exercises of [Day 3 of JumpStart Live](https://github.com/Ada-Developers-Academy/jump-start-live/tree/master/lessons/day3#lessons) and [Day 4 of JumpStart Live](https://github.com/Ada-Developers-Academy/jump-start-live/tree/master/lessons/day4#lessons)

## Notes

### Loops

Loops are programming constructs that help you repeat a code action a certain number of times based on the algorithmic logic, without needing to copy and paste the code. Another term for a **loop** is **iteration**. All high-level programming languages provide various forms of loops, which can be used to execute one or more statements repeatedly.

For example, if we wanted to print out "hello" five hundred times, we could write:

```ruby
puts "hello! "
puts "hello! "
puts "hello! "
puts "hello! "
puts "hello! "
# ... 495 more times
```

Using a loop, we could re-write this as:

```ruby
500.times do
  puts "hello! "
end
```

The above program leverages the `times` loop, which is a counter-controlled loop as we will soon see. The same loop may be written using different programming constructs and syntax. For example, we could achieve the same result using a `while` loop, which is a sentinel-controlled loop, as we will soon see. Here's a program using a `while`  loop to achieve the same result:

```ruby
i = 0
while i < 500
  puts "hello! "
  i += 1
end
```

There are 2 categories of loops:  **counter-controlled** and **sentinel-controlled** loops

**Counter-controlled** loops are used when the number of loops can be determined prior to loop execution. The example we saw above, where we wanted to print `hello! ` 500 times, is an example of counter-controlled loop. Another example of counter-controlled loop could be a copying machine which copies a paper a set number of times, and we know exactly how many times the copier will copy the paper.

**Sentinel-controlled** loops are used when the number of loops cannot be determined prior to loop execution. For example, if you do jumping jacks until you get tired, it is uncertain how many jumping jacks you will do before stopping. Another example could be a program which asks the user if the user would like to continue playing a guessing game. Based on comparing the user input value, the program determines whether to continue the loop or exit the loop.

There are four types of loops in Ruby that we will start with: `times`, `range-each`, `while`, and `until`.

#### Times

You use the `times` iterator to run a block of code `n` times.

You can use a `times` loops with or without an _iteration variable_. This variable is denoted between the vertical bars (pipe character) `|` and is used to store data associated with the iteration.

In the example below, `n` is equal to three. This example _does not_ use an iteration variable.

```ruby
3.times do
  puts "hello! "
end
```
output:
```
hello!
hello!
hello!
```

In the example below, `n` is equal to two. This example _does_ use an iteration variable, `i`, which will correspond to value of the iteration.

```ruby
2.times do |i|
  puts i
end
```
output:
```
0
1
```

**Note**: As you can see in the example above, in programming, we start counting with 0. The first time the loop executes, the value of the iteration variable will be 0.

#### Ranges

The main use of ranges is to express a sequence. Sequences have a start point, an end point, and a way to produce successive values in the sequence.

Ruby creates these sequences using the `..` and `...` range operators. The two-dot form creates an _inclusive_ range, while the three-dot form creates a range that _excludes_ the specified high value. The `each` loop using a range uses an _iteration variable_, `num` in this example.

```ruby
# Inclusive range example
# note the ..
(5..9).each do |num|
  puts num
end
```
The above code will output the following:
```
5
6
7
8
9
```

```ruby
# Exclusive range example
# note the ...
(5...9).each do |num|
  puts num
end
```

The above code will output the following:
```
5
6
7
8
```

#### While Loops

The `while` loop is useful when you want to continue doing an action while a certain condition is `true` but you may not know how many times you'll need to complete that action. It is an example of a _sentinel-controlled loop_. As soon as the condition stops being true, the loop will terminate.

```ruby
i = 0 # initialize loop control variable to the value of 0

while i < 4 # loop is executed while value of loop control variable is less than 4
  puts i
  i += 1 # increment the value of loop control variable by 1
end
```

The above code will output the values of i until i is no longer less than 4, resulting in the following output:

```
0
1
2
3
```

Here's the loop table for the above program:

| Iteration | i | i < 4 | Output |
| :--- | :--- | :--- | :--- |
| 1 | 0 | True | 0 |
| 2 | 1 | True | 1 |
| 3 | 2 | True | 2 |
| 4 | 3 | True | 3 |
| 5 | 4 | False | \<None\> |

You can read the condition and execution of the `while` loop as _while condition is **true** do..._

Another example of `while` loop:
This loop repeats while the user enters "yes".

```ruby
again = "yes"

while again == "yes"
  puts "Let's play a game!"
  puts "..."
  puts "Would you like to play again? (yes/no) > "
  again = gets.chomp
end
```

#### Until Loops

The `until` loop acts as an inverse of the `while` loop. The loop will execute _until_ the condition evaluates as `true`.


```ruby
i = 0 # initialize loop control variable to the value of 0

until i == 4 # loop is executed until the value of loop control variable becomes 4
   puts i
   i += 1 # increment the value of loop control variable by 1
end
```

The above code will output the values of i until i is equal to 4, resulting in the following (equivalent to the `while` loop) output:
```
0
1
2
3
```
Here's the loop table for the above program:

| Iteration | i | i == 4 | Output |
| :--- | :--- | :--- | :--- |
| 1 | 0 | False | 0 |
| 2 | 1 | False | 1 |
| 3 | 2 | False | 2 |
| 4 | 3 | False | 3 |
| 5 | 4 | True | \<None\> |


You can read the condition and execution of the `until` loop as _until condition is **true** do..._

Another example of `until` loop:
This loop will repeat until the user guesses the number 6.

```ruby
number = 0

until number == 6
  puts "Guess my number (1-10) > "
  number = gets.chomp.to_i
end

puts "You guessed it!"
```

### Each

The `each` iterator is used on a collection of data, like a Range, Array or Hash. We have already come across Range and we will learn more about Arrays and Hashes in later lessons. This iterator will iterate over each element of the collection, one by one, and provide access to each element using the _iteration variable_. The `each` iterator will continue to execute until it has reached the end of the collection.

The `each` iterator is comprised of three pieces:

1. The collection to be iterated
2. The _iteration variable_ to store each value
3. The block of code to be executed in the iteration

**Note**: With the `times` loop, the value of the _iteration variable_ begins at `0` and increments by one in each subsequent iteration to the next value: `0`, `1`, `2` and so on. In the `each` iterator, the value of the _iteration variable_ begins with the value of first element in the range or array or collection and then moves on to the value of the next element in the range or array or collection as we will see in example below.

```ruby
list = ['Ada', 'Grace', 'Charles']

list.each do |person|
  puts person
end
```

The above program results in:

```bash
Ada
Grace
Charles
```

As the loop above runs `person` becomes the 1st, then 2nd and then 3rd element of the array.

We have already seen some examples of `each` iterator on [ranges](#Ranges).

We will discuss how `each` iterator works with _arrays_ and _hashes_ in the lessons to come.

### Blocks

In programming, a *block* is a section of code which is grouped together and intended to be executed if a certain condition is satisfied.

A variable defined inside a block is only available within the block and not outside. In other words, the definition of the variable is _scoped_ to the block.

Example:

```ruby
   i = 0
   while i < 4 do
     # the code between while and end is a block of code
     multiple = i * 10
     # multiple is scoped to this block
     puts "#{i} times 10 is #{multiple}"
     i += 1
   end
   # multiple is an undefined variable
```

In Ruby, one way to identify some of the blocks is to identify code statements surrounded by either `do ... end` or `{ }`. _Aside:_ At Ada Developers Academy, we prefer using `do ... end` over `{ }` in our code.

```ruby
[1,2,3,4].each do |number|
  puts number * 100 # <= this is a block. :)
end

[1,2,3,4].each { |number|
  puts number * 100 # <= this is a block too! :D
}
```

Block arguments are defined using a pair of `|` (pipe) characters. For example:

```ruby
[1,2,3].each do |number|
  puts number
end
```

`number` is the _block argument_, this means that objects given to the block are going to be assigned to the `number` variable within the scope of the block. When the code in the block finishes execution, the block arguments are _out of scope_, and no longer available to the program.

## Numbers Problem v3

Throughout this course we will be working with the **Numbers program**. Here's the third version of the program:

Leveraging your learnings from the notes you read (use at least one loop), write a program that does the following:

* Ask the user for the count of numbers.
  * Do the following count number of times:
    * Ask the user to input a positive integer value
    * If the number is divisible by 3, display a message to share so and a different message otherwise.
* Once you have a working program, refactor your code to use a different type of loop. e.g. if you used a `while` loop to begin with, change it to an `times` loop with iteration variable.


Example output:
_Note_: User input is indicated in ~~ (tildes).

```
   Let's play a numbers game. How many numbers would you like to enter?
   ~5~
   Enter the 1st positive integer: ~34~
   34 is not divisible by 3.
   Enter the 2nd positive integer: ~21~
   21 is divisible by 3.
   Enter the 3rd positive integer: ~12~
   12 is divisible by 3.
   Enter the 4th positive integer: ~582~
   582 is divisible by 3.
   Enter the 5th positive integer: ~80~
   80 is not divisible by 3.
```
