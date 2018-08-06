# Practice problems
_Jump start: Lesson 9_

## Overview
Complete each section by hand, then check your answers using `irb`

## Variables and assignment practice

```ruby
x = 5
# what value does x now hold?

z = "Hello"
# what value does z now hold?

a = 5
b = 3.2
c = a + b
# what values does c now hold?

var1 = "lawl"
var2 = "brb"
# what value does var2 now hold?

e = 6 + 3
# what values does e now hold?

f = 3.5
f = f + 2
# what value does f now hold?

poodle = 4
pitbull = 3
# what value does boxer now hold?

h = 5
h = h + h
# what values does h now hold?

j = 1
k = 2
m = 3
n = j + k + m
# what value does n now hold?

p = "moo"
q = "quack"
p  = q
# what value does p now hold?

r = "moo"
s = "quack"
t = "woof"
r = t
# what value does r now hold?

u = 5
u = u * 2
u = u * 2
u = u * 2
# what value does u now hold?

v = "b"
z = "a"
# what value does v now hold?


aa = 3234
bb = 2398
cc = 0
dd = (aa + bb) / cc
# what value does dd now hold?

yy = 7
zz = yy % 2
# what value does zz now hold?

ee = 12
ff = ee % 4
# what value does ff now hold?


zz = 17
hh = zz % 3
# what value does hh now hold?
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
| `d + e` | | |
| `f + h` | | |
| `g + h` | | |
| `d - f` | | |
| `g - e` | | |
| `(h + i) - f` | | |
| `(d - f) + e` | | |
| `d * f` | | | |
| `g * i` | | | |
| `f * g` | | | |
| `d / f` | | | |
| `d / e` | | | |
| `e / f` | | | |
| `(g * f) / f` | | | |
| `(d / f) * e` | | | |
| `21 / 5` | | | |
| 14 / 5 | | | |
| 10 % 3 | | | |
| 20 % 2 | | | |
| 4 % 5 | | | |
| 8 % 1 | | | |

## String practice
Determine the output of slice on your own and then check your answer using `irb`
 
```ruby
# problem 1
my_string = "I love Seattle"
my_string.slice(7) 

# problem 2
my_string = "I love Seattle"
my_string.slice(2, 4)

# problem 3
my_string = "I love Seattle"
my_string.slice("Seattle")

# problem 4
my_string = "Ada"
my_string + " Lovelace"

# problem 5
my_string = "Ada"
my_string << " codes" << " it!"

# problem 6
my_string = "Ada"
my_string.concat(" likes to code").slice(4...9)

# problem 7
my_string = "Hello world"
"Goodbye " + my_string.slice(6, 5) << "!"

# problem 8
my_string = "Hello world!"
my_string.slice(0...5).concat(", goodbye!")

# problem 9
my_string = "Hello world!"
my_string.slice(0) << "i" + "!"

# problem 10
my_string = "I love ruby"
my_string.slice(7, 4).concat(my_string.slice(2...6)) + my_string.slice(0)

# problem 11
my_string = "I love ruby"
"R".concat(my_string.slice(8, 3) + " rocks!")

# problem 12
my_string = "I love ruby"
my_string.slice(2, 4) << my_string.slice(7...11).concat(my_string.slice(2...6))
```
