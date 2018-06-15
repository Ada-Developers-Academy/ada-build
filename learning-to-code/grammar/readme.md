# Programming Grammar
_Jump start: Lesson 9_

## Learning Goals
* Understand different data types (string, integer, float)
* Be able to use variables
* Be able to print 
* Understand and be able to use strings, string concatenation, and string interpolation
* Be able to read input from the user
* Practice writing and debugging Ruby code

## Activities
* Review notes within this section
* Watch [Video: Now we're programming!](https://adaacademy.hosted.panopto.com/Panopto/Pages/Viewer.aspx?id=4df0c8ab-64fc-4186-a9e2-a8c4014a4b4b)
* Complete the [practice problems](./practice-problems.md) and then check your answers using `irb`
* Write a madlibs program
  * First play a few on [eduplace](https://www.eduplace.com/tales/) to become familiar with the game
  * Create a MadLib program that accepts input from the user and outputs a completed MadLib
  * Use up to ten different parts of speech in order to fill in your MadLib
  * Output should consist of a paragraph of output that has the user’s input substituted into the MadLib, we have provided an example run, but your madlib program should be unique to you

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

  * Your code should use comments throughout to explain the code, reuse at least one word, and as for at lease 1 number
  * [Optional] Explore Ruby's built in methods for [String](http://ruby-doc.org/core-2.2.0/String.html) like `capitalize`, `downcase`, `upcase`

## Notes

### Comments
Comments allow you to leave notes along with your code. These notes will help you when you return to your code later, as well as anyone else that looks at your code. Beginning a line using the `#` character is a comment. Comments are not executed and are ignored when running your program.

#### Example

```ruby
# I'm a code comment. Ruby knows this is for people and not computers
# Also, it is always taco time.
taco_time = "Always"

# This is a comment too.
puts "But this isn't."
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
> use Fixnum. You can check your version by typing `ruby --version` in the
> terminal.


#### Determining the type
To determine the type of an object you can use `.class`

```ruby
x = 1
puts x.class #Integer

word = "hello"
puts word.class #String
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
* Modulus returns the remainder of dividing one number by another number

### Precedence
Also commonly called order-of-operations, is the order in which operations are completed.

| __Priority__ | __Operation__ |
| :--- | :--- |
| 1 | parens |
| 2 | unary operations |
| 3 | multiplication, division, mod|
| 4 | addition, subtraction, string concatenation |
| 5 | less than, less than or equal to, greater than, greater than or equal to |
| 6 | equal to, not equal to |
| 7 | and |
| 8 | or |

### Assignment Statements
In programming, we often need to save values. We may want to refer to the values later, or only have to do a calculation once. Variables have a name and a value. We assign a value to a variable using an assignment statement. Assignment statements are read from right-to-left, not from left-to-right. Use phrases like _assigns_, or _stores the value_, instead of _equals_, or _equal to_.

#### Examples
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
Keyboard input is a way to accept input from the user, when running the program in Terminal.

#### `gets`
`gets` accepts a single line of data from the keyboard. A line is something that ends in `\n`. `gets` is short for _get string_ which means whatever the user enters (even if it is a number) will be stored as a string

#### `chomp`
When the user enters the data and then presses enter (or return) a `\n` (also called a newline character) is added to the end of the line. In some cases you don't want this character at the end, `chomp` removes that newline character

#### Converting user input
`gets` gives you back a string, no matter what the user enters, even if they enter a number. Two common methods for converting that string into a number are `to_i` and `to_f`.

##### `to_i`
Converts a string into an `integer` (e.g., ..., 2, -1, 0, 1, 2, ...). If there is not a valid `integer` at the beginning of the string, then `0` is given instead. Any extra characters at the end that are not part of the `integer` are ignored.

```ruby
puts "2".to_i # prints 2
puts "2a".to_i  # prints 2
puts "a2".to_i  # prints 0
puts "a".to_i # prints 0
```

##### `to_f`
Converts a string into a `float`, which is a decimal value. If there is not a valid `float` at the beginning of the string, then `0.0` is given instead. Any extra characters at the end that are not part of the `float` are ignored.

```ruby
puts "2.1".to_f   # prints 2.1
puts "2.1a".to_f  # prints 2.1
puts "2a".to_f    # prints 2.0
puts "a2.0".to_f  # prints 0.0
puts "a".to_f   # prints 0.0
```

### Strings
Strings in Ruby are objects that hold a sequence of characters. You can create a string be surrounding the sequence of characters with double or single quotes, both `"hello"` and `'hello'` are strings.

If you use double quotes, you can also use string interpolation and escape sequences. If you use single quotes you cannot use string interpolation, and you can only use the escape sequence `\\`.

#### Common Escape Sequences

| Escape Sequence | Description | 
| :--- | :--- |
| `\n` | A new line (moves down to the next line)
| `\\` | A single backslash |
| `\"` | A double quote |

```ruby
str = "hello \"person\""
puts str # prints hello "person"

str = 'hello \nworld'
puts str # prints hello \nworld
```

#### String Interpolation
String interpolation allows Ruby code to appear within a string. The code is evaluated, and the result appears in the string.

```ruby
 puts "1 + 2 = #{1 + 2}"    # prints 1 + 2 = 3

 str = "hello"
 puts "#{str} world" # prints hello world
 puts '#{str} world' # prints #{str} world
 ```

#### String Concatenation
* When combining strings, you can use the `+` operator, or the `<<` operator
* When using the `+` operator, Ruby creates a new string in memory, when using `<<` Ruby modifies the original string (this is super important when working with lots of data! `+` is super slow).

##### Examples

```ruby
output = ""
(1..5).each do |i|
  output += i.to_s # output = output + i.to_s
end
puts output
```

```ruby
output = ""
(1..5).each do |i|
  output << i.to_s
end
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

##### Example

```ruby
name = "Ada Lovelace"
name.slice(5) # "o"
name.slice(20) # nil
name.slice(0, 3) # "Ada"
name.slice(0...8) # "Ada Love"
name.slice("ace") # "ace"
name.slice("Seattle") # nil
```

#### Concatenation
Concatenation allows you to combine strings. There are three ways to concatenate `+`, `<<`, and `.concat`.

##### Example
```ruby
name = "Ada Lovelace"
name + " codes it!" # "Ada Lovelace codes it!"
name << " is" << " awesome!"  # "Ada Lovelace is awesome!"
name.concat(" likes to code!") # "Ada Lovelace likes to code!"
```
