# Practice problems
_Jump start: Lesson 9_

## Overview
Complete each section by hand, then check your answers using `irb`

## Variables and assignment practice

```ruby
x = 5
# the variable x now holds the value 5

z = "Hello"
# the variable z now holds the value "Hello"

a = 5
b = 3.2
c = a + b
# the variable c now holds the value 8.2

var1 = "lawl"
var2 = "brb"
# the variable var2 now holds the value "brb"

e = 6 + 3
# the variable c now holds the value 9

f = 3.5
f = f + 2
# the variable f now holds the value 8.5

poodle = 4
pitbull = 3
# the variable boxer did not exist, so it returned a name error
boxer = poodle * pitbull
# now the variable boxer holds the value 12

h = 5
h = h + h
# the variable h now holds the value 10

j = 1
k = 2
m = 3
n = j + k + m
# the variable n now holds the value 6

p = "moo"
q = "quack"
p  = q
# the variable p now holds the value "moo"

r = "moo"
s = "quack"
t = "woof"
r = t
# the variable r now holds the value "woof"

u = 5
u = u * 2
u = u * 2
u = u * 2
# the variable u now holds the value 40 (5*2*2*2)

v = "b"
z = "a"
# the variable v now holds the value "b"


aa = 3234
bb = 2398
cc = 0.0
dd = (aa + bb) / cc
# the value dd first gave an error (zerodivisionerror)
# by changing the value of cc from 0 to 0.0, the value is then infinity
# I think the error is correct, because, mathmatically you cannot divide by 0

yy = 7
zz = yy % 2
# the variable zz now holds the value 1, this is the remainder after dividing 7 by 2

ee = 12
ff = ee % 4
# the variable ff now holds the value 0, this is the remainder after dividing 12 by 4


zz = 17
hh = zz % 3
# the variable hh now holds the value 2, this is the remainder after dividing 17 by 3
```

## Operators practice
Consider the following variable assignments and then fill in the tables

```ruby
d = 10
e = 5.0
f = 2
g = 11.0
h = 3
i = 1.5
```

| Operation | Result | Data type of result |
| :---: | :---:| :---: |
| `d + e` | 15.0 | Float |
| `f + h` | 5 | Integer |
| `g + h` | 14.0 | Float |
| `d - f` | 8 | Integer |
| `g - e` | 6.0 | Float |
| `(h + i) - f` | 2.5 | Float|
| `(d - f) + e` | 13.0 | Float |
| `d * f` | 20 | Integer |
| `g * i` | 16.5 | Float |
| `f * g` | 22.0 | Float |
| `d / f` | 5 | Integer |
| `d / e` | 2.0 | Float |
| `e / f` | 2.5 | Float |
| `(g * f) / f` | 11.0 | Float |
| `(d / f) * e` | 25.0 | Float |
| `21 / 5` | 4 | Integer |
| 14 / 5 | 2 | Integer |
| 10 % 3 | 1 | Integer |
| 20 % 2 | 0 | Integer |
| 4 % 5 | 4 | Integer |
| 8 % 1 | 0 | Integer |

## String practice
Determine the output of slice on your own and then check your answer using `irb`

```ruby
# problem 1
my_string = "I love Seattle"
my_string.slice(7)
# output "S"
# this outputs the value at position 7
# the position numbers start at 0
# the value S is the the 7th position

# problem 2
my_string = "I love Seattle"
my_string.slice(2, 4)
# output "love"
# this returns the value beginning at position 2 and including the next four (the values ranging from position 2 through 6)

# problem 3
my_string = "I love Seattle"
my_string.slice("Seattle")
# this outputs the values matching the string "Seattle"


# problem 4
my_string = "Ada"
my_string + " Lovelace"
# this concatenates the two strings together into
# the output will be a new string "Ada Lovelace"

# problem 5
my_string = "Ada"
my_string << " codes" << " it!"
# this will output the string "Ada"
# and append the strings " codes" and " it!"
# to the end to create a new strings
# "Ada codes it!"

# problem 6
my_string = "Ada"
my_string.concat(" likes to code").slice(4...9)
# this will initially concate a new string " likes to code"
# to the original string of "Ada"
# it will then return the sliced values from the new string
# the output will be "likes"
# this is the string that starts in position 4 and inlude all values up to (and inclusive of) position 9

# problem 7
my_string = "Hello world"
"Goodbye " + my_string.slice(6, 5) << "!"
# this outputs the string "Goodbye" concated with
# the values from position 6 through 5 from the string "Hello world"
# "!" is appended to the end
# the output is "Goodbye world!"


# problem 8
my_string = "Hello world!"
my_string.slice(0...5).concat(", goodbye!")
# this takes the values in position 0 through 5 ("Hello")
# and then concats the the the new string after
# it outputs "Hello, goodbye!"

# problem 9
my_string = "Hello world!"
my_string.slice(0) << "i" + "!"
# this will take the value in position 0 ("H")
# then it will append the string "i"
# finally it will concate the string "!"
# the output is "Hi!"

# problem 10
my_string = "I love ruby"
my_string.slice(7, 4).concat(my_string.slice(2...6)) + my_string.slice(0)
# this initially takes the values starting in
# position 7 and including the next 4 (7 through 10) "ruby"
# it then concatenates the values from from the string
# in position 2 through 6 "love"
# finally it concatenates the value from position 0 "I"
# the ouput is "rubyloveI"

# problem 11
my_string = "I love ruby"
"R".concat(my_string.slice(8, 3) + " rocks!")
# this outputs a string "R"
# first concated with the values from my_string
# in position 8 though 10 "uby"
# then concated with the new string "rocks!"
# the output is "Ruby rocks!"

# problem 12
my_string = "I love ruby"
my_string.slice(2, 4) << my_string.slice(7...11).concat(my_string.slice(2...6))
# this takes the values in postion 2 through 6 "love"
# in initial string "I love ruby"
# then in appends the values from postion 7 through 11 ("ruby")
# finally it concatenates the values from position 2 through 6 ("love")
# the output is "loverubylove"
```
