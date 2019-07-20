# Programming Grammar

_JumpStart: Lesson 9_

## Learning Goals

* Understand different data types (string, integer, float)
* Be able to use variables
* Be able to print
* Understand and be able to use strings, string concatenation, and string interpolation
* Be able to read input from the user
* Practice writing and debugging Ruby code

## Activities

* Review [notes](#notes) within this section
* Watch [Video: Now we're programming!](https://adaacademy.hosted.panopto.com/Panopto/Pages/Viewer.aspx?id=4df0c8ab-64fc-4186-a9e2-a8c4014a4b4b)
* Complete the [practice problems](./practice-problems.md) and then check your answers using `irb`
* Complete the [Numbers problem assignment](#numbers-problem-assignment)
* Complete the [MadLib assignment](#madlib-assignment)
* [Optional] For additional learning and practice, look at the lessons and exercises of [Day 1 of JumpStart Live](https://github.com/Ada-Developers-Academy/jump-start-live/tree/master/lessons/day1#lessons).  

<!-- TODO Update Video Link -->

<!-- TODO Update Video Link -->

## Notes

### Comments

Comments allow you to leave notes along with your code. These notes will help you when you return to your code later, as well as anyone else that looks at your code. Beginning a line using the `#` character is a comment. Comments are not executed and are ignored when running your program. Following Ruby style guidelines, it is good practice to enter a space following `#`.

#### Example

```ruby
# I'm a code comment. Ruby knows this is for people and not computers
# Also, it is always taco time.
taco_time = "Always"

# This is a comment too.
puts "But this isn't."

#This comment is not following good Ruby style practices because it does not have space after the #
```

### Data types

| Data Type | Description | Example |
| :--- | :--- | :--- |
| String | Anything surrounded by single or double quotes | `"hello"`, `'hello'` |
| Integer | A number with no decimal | `1`, `0`, `-7` |
| Float | Real value (decimal) | `0.5` |
| Array | An ordered list | `[5, 0, 1]` |
| Symbol | A named object | `:apple` |
| Hash | A set of key, value pairs | `{ A: 2, B: 3, C: 1}` |
| Range | A set of values with a beginning and an end | `(2..6)` |

> Fixnum is another name for Integer. Ruby version 2.4.0 introduced the term
> Integer, so if your ruby version is at least 2.4.0, use Integer. Otherwise
> use Fixnum. We highly recommend moving to the latest stable version of Ruby.
> You can check your version by typing `ruby --version` in the
> terminal.


#### Determining the type

To determine the type of an object you can use `.class`

```ruby
x = 1
puts x.class # Integer

word = "hello"
puts word.class # String
```

### Mathematical operations

| Operation | Ruby symbol | Example |
| :--- | :--- | :--- |
| addition |  `+` | `2 + 3` |
| subtraction | `-` | `4 - 5` |
| multiplication | `*` | `7 * 8` |
| division | `/` | `10 / 2` |
| remainder (modulus) | `%` | `15 % 5` |

#### Important notes

* Integer division (division involving only integers) results in the decimal result being truncated (everything after the decimal is lost). Whenever a float is involved (even only one) than the decimal is not truncated.
* Modulus (or mod, for short) returns the remainder of dividing one number by another number. e.g. `15 % 10` will return `5`.

### Precedence

Also commonly called order-of-operations, is the order in which operations are completed.

| __Priority__ | __Operation__ |
| :--- | :--- |
| 1 | parens |
| 2 | unary operations |
| 3 | multiplication, division, modulus|
| 4 | addition, subtraction, string concatenation |
| 5 | less than, less than or equal to, greater than, greater than or equal to |
| 6 | equal to, not equal to |
| 7 | and |
| 8 | or |

### Assignment Statements

In programming, we often need to save values. We may want to refer to the values later, or only have to do a calculation once. Variables have a name and a value. We assign a value to a variable using an assignment statement. Assignment statements are read from right-to-left, not from left-to-right. Use phrases like _assigns_, or _stores the value_, instead of _equals_, or _equal to_.

#### Examples

As you go through the examples below, read the comments to understand how to talk in programming terms.

```ruby
# the value of 5 is assigned to the variable named x
x = 5
# the current value of x(5) is added with 1
# that sum is then assigned to the variable named x
x = x + 1
```

```ruby
# the value of 1 is assigned to the variable named x
x = 1
# the value stored in x(1) is assigned to y
# note: this does not mean that x and y will always
# store the same value
y = x
# the value of 3 is assigned to the variable named x
x = 3
# note: y still hold the value of 1
```

```ruby
# the value of "Rosa" is assigned to the variable named dog_name
dog_name = "Rosa"
# the value of "Raquel" is assigned to the variable named cat_name
cat_name = "Raquel"
# the value of 7 is assigned to the variable named dog_age
dog_age  = 7
# the value of 11 is assigned to the variable named cat_age
cat_age  = 11
```

#### Compound assignment statements

It is possible to perform an operation and assign a value all in the same step. To add and assign you can use `+=`, to subtract and assign you can use `-=`, to divide and assign you can use `/=` and to multiply and assign you can use `*=`.

##### Examples

`x += 3`  assigns the value of `x + 3` to the variable `x`  
`x += y + 3` assigns the value of `x + (y + 3)` to the variable `x`  
`x -= 2`  assigns the value of `x – 2` to the variable `x`  
`x -= y – 5`  assigns the value of `x – (y – 5)` to the variable `x`  
`x /= 3`  assigns the value of `x / 3` to the variable `x`  
`x *= y`  assigns the value of `x * y` to the variable `x`  
`x %= y`  assigns the value of `x % y` to the variable `x`  

### Keyboard Input

Keyboard input is a way to accept input from the user, when running the program in the terminal.

#### `gets`

`gets` accepts a single line of data from the keyboard. A line is something that ends in `\n`. `gets` is short for _get string_ which means whatever the user enters (even if it is a number) will be stored as a string.

#### `chomp`

When the user enters the data and then presses enter (or return) a `\n` (also called a newline character) is added to the end of the line. In some cases, you don't want this character at the end, `chomp` removes that newline character.

#### `puts`

As we saw in our first, `hello, world` program, `puts` allows us to output a statement on the terminal. `puts` is short for _put string_ which outputs a single line of string to the terminal followed by newline character.

```ruby
# Print to the terminal asking the user to enter their name
puts "What's your name?"
# Let's say that the user entered "Ada Lovelace"
# The value of "Ada Lovelace/n" gets stored in the variable user_input
user_input = gets
# The value of "Ada Lovelace" gets stored in the variable name
name = user_input.chomp
```

The above code could be condensed to:

```ruby
# Print to the terminal asking the user to enter their name
puts "What's your name?"
# Let's say that the user entered "Ada Lovelace"
# The value of "Ada Lovelace" gets stored in the variable name
name = gets.chomp
```

### Converting user input

`gets` gives you back a string, no matter what the user enters, even if they enter a number. Two common methods for converting that string into a number are `to_i` and `to_f`.

#### `to_i`

Converts a string into an `integer` (e.g., ..., 2, -1, 0, 1, 2, ...). If there is not a valid `integer` at the beginning of the string, then `0` is given instead. Any extra characters at the end that are not part of the `integer` are ignored.

```ruby
puts "2".to_i # prints 2
puts "2a".to_i  # prints 2
puts "a2".to_i  # prints 0
puts "a".to_i # prints 0
```

#### `to_f`

Converts a string into a `float`, which is a decimal value. If there is not a valid `float` at the beginning of the string, then `0.0` is given instead. Any extra characters at the end that are not part of the `float` are ignored.

```ruby
puts "2.1".to_f   # prints 2.1
puts "2.1a".to_f  # prints 2.1
puts "2a".to_f    # prints 2.0
puts "a2.0".to_f  # prints 0.0
puts "a".to_f   # prints 0.0
```

### Strings

Strings in Ruby are objects that hold a sequence of characters. You can create a string by surrounding the sequence of characters with double or single quotes, both `"hello"` and `'hello'` are strings.

> **Aside**: Almost every data in Ruby is saved as *objects*.
> *Objects* are instances of a *Class*.
> *Classes* usually provide some functionality that allow for different operations on the data in the objects.
> Whilst we will learn more on *classes* and *objects* later during
> our classroom curriculum, do take a look at the *methods available
> in the String class* here: https://ruby-doc.org/core-2.6.3/String.html

The String class in Ruby provides some useful methods.

```ruby
# ask the user for the name of a state
puts "What is state do you live in?"
# accept user input as a string and remove the newline character
user_input = gets.chomp
# Make the first letter uppercase and all other in lowercase for the user_input
state_name = user_input.capitalize
# use string Interpolation to output the state_name in a different string
puts "#{state_name} is a nice place to live!"
```

If you use double quotes, you can also use string interpolation and escape sequences. If you use single quotes you cannot use string interpolation, and you can only use the escape sequence `\\`.

#### String Interpolation

String interpolation allows Ruby code to appear within a string. The code is evaluated, and the result appears in the string.

```ruby
 puts "1 + 2 = #{1 + 2}"    # prints 1 + 2 = 3

 num = 9
 puts "My lucky number is #{num}." # prints My lucky number is 9.

 str = "hello"

 # string interpolation can be used with double quotes
 puts "#{str}, world" # prints hello, world
 # string interpolation cannot be used with single quotes
 puts '#{str}, world' # prints #{str}, world
 ```

#### Common Escape Sequences

 | Escape Sequence | Description |
 | :--- | :--- |
 | `\n` | A new line (moves down to the next line)
 | `\\` | A single backslash |
 | `\"` | A double quote |

 ```ruby
 # Escape sequences can be used with double quotes
 str = "hello \"person\""
 puts str # prints hello "person"

# Escape sequences cannot be used with single quotes
 str = 'hello \nworld'
 puts str # prints hello \nworld
 ```

#### String Concatenation

* When combining strings, you can use the `+` operator, or the `<<` operator
* When using the `+` operator, Ruby creates a new string in memory, when using `<<` Ruby modifies the original string (this is super important when working with lots of data! Knowing whether you need to save the orginal string unaltered is important. `+` is super slow).

##### Examples

```ruby
output = ""
# generate a random number between 2 and 5, both inclusive
my_number = rand(2..5)
output += my_number.to_s # output = output + my_number.to_s

output += " "

# generate a random number between 6 and 9, both inclusive
your_number = rand(6..9)
output += your_number.to_s # output = output + your_number.to_s

puts output
```

```ruby
output = ""
# generate a random number between 2 and 5, both inclusive
my_number = rand(2..5)
output << my_number.to_s

output << " "

# generate a random number between 6 and 9, both inclusive
your_number = rand(6..9)
output << your_number.to_s

puts output
```

#### % Notation

The % notation is a method for creating arrays of strings.

* Use %w to create a non-interpolated array of strings
* Use %W to create an interpolated array of strings

```ruby
%w[one two three]  # ["one", "two", "three"]

apples = 3
oranges = 2
%W[#{apples} #{oranges}] #["3", "2"]
%w[#{apples} #{oranges}] #["#{apples}", "#{oranges}"]
```

#### Slicing

`slice` allows you to split a string into smaller pieces. The output from slice is either a string, or `nil`. When using slice, you can pass a single number, two numbers, or a range. String indexes start at 0 (not 1).

##### Slicing Example

```ruby
name = "Ada Lovelace"
name.slice(5) # "o"
name.slice(20) # nil
name.slice(0, 3) # "Ada"
name.slice(0...8) # "Ada Love"
name.slice("ace") # "ace"
name.slice("Seattle") # nil
```

**Note**: As you can see in the examples above, in programming, we start counting with 0. The index of the first character in the string is always 0.

#### Concatenation

Concatenation allows you to combine strings. There are three ways to concatenate `+`, `<<`, and `.concat`.

##### Example Concatenation

```ruby
name = "Ada Lovelace"
name + " codes it!" # "Ada Lovelace codes it!"
name << " is" << " awesome!"  # "Ada Lovelace is awesome!"
name.concat(" likes to code!") # "Ada Lovelace likes to code!"
```

## Numbers problem assignment

* Throughout this course we will be working with the **Numbers program**. Here's the first version:
  * Leveraging your learnings from the notes you read, write a program that does the following:
    * Do the following three times:
      * Ask the user to input a positive integer value
      * Convert the user input to an integer and save the value in a variable.
    * Add 20 to each of the three numbers and print this new value for each to the console. The output should look something like `Twenty added to the numbers you entered gives us 24, 73 and 42.`


## MadLib Assignment

* Write a MadLib program
  * First play a few on [eduplace](https://www.eduplace.com/tales/) to become familiar with the game
  * Create a MadLib program that accepts input from the user and outputs a completed MadLib
  * Use up to ten different parts of speech in order to fill in your MadLib
  * Output should consist of a paragraph of output that has the user’s input substituted into the MadLib, we have provided an example run, but your MadLib program should be unique to you

    ```
    Welcome to my MadLib program. Please enter in some information below:

    name: Starr
    adjective: huge
    noun: tablecloth
    adjective: dry
    food (plural): tacos
    noun (plural): packs
    verb ending in -ed: ended
    noun: jellyfish

    HERE'S YOUR MADLIB.......

    Come on over to Starr’s Pizza Parlor where you can enjoy your favorite huge-dish pizza`s.
    You can try our famous tablecloth-lovers pizza,
    or select from our list of dry toppings,
    including delicious tacos, packs, and many more.
    Our crusts are hand-ended and basted in jellyfish to make
    them seem more Hand-made.
    ```

  * Your code should use comments throughout to explain the code, reuse at least one word, and ask for at least 1 number
  * Explore Ruby's built in methods for [String](http://ruby-doc.org/core-2.6.3/String.html) like `capitalize`, `downcase`, `upcase`
