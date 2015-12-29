# Notes: Arrays
Arrays are the most common collection to use to collect data in Ruby.

An `Array` is an _ordered_ collection of any object.

Array Example:
```ruby
[1, 10, 33, 50, 2, 7]
```

### Creating Arrays
There are two different ways to create a new Array.

#### Empty
In the first way, we initialize an empty `Array` by using `[]`. An array can be assigned to a variable in the same or a similar way that other types of data are assigned to a variable:   
```ruby
  my_array = []
```

We know that this array is empty because the array definition starts with the `[`(left bracket) and ends with the `]`(right bracket), and there is nothing between those two symbols.

The second way is to explicitly create a new instance of the `Array` object that ruby associated with the Array.
```ruby
my_array = Array.new
```

#### With Data
We can utilize the syntax for both of the above to initialize a new Array _with data_.
```ruby
my_array = [1, 2, 3, 4]
```
![my_array](../images/array-1.png)

When passing parameters into the `new`, the first parameter will be the size of the desired array. The second parameter will be the default value for all element within the array.
```ruby
empty_array = Array.new(3)
empty_array # => [nil, nil, nil]
```
![empty_array](../images/array-2.png)

```ruby
default_array = Array.new(3, "def")
default_array # => ["def", "def", "def"]
```
![default_array](../images/array-3.png)

### Indices
Arrays are integer-indexed starting at zero. All counting in computer science [begins with zero](http://skillcrush.com/2013/01/17/why-programmers-start-counting-at-zero/). This means that **each item** in the array corresponds to an **integer
value**, and that integer is used to access an object within the `Array`. The first object is assigned
0 and increments up from there.

```ruby
my_array = [1, 10, 33, 50, 2, 7]
my_array[0] # => 1
my_array[1] # => 10
my_array[2] # => 33
my_array[3] # => 50
my_array[4] # => 2
my_array[5] # => 7
```
![my_array](../images/array-4.png)

### Data Types
Arrays can store all sorts of data. Usually, it makes the most sense to have a single data type in an array, but in Ruby, it is not a requirement.

This means that arrays can store data types of `Integer`, `String`, and `Float`!

```ruby
# array of strings
str_array = ["bird", "horse", "cat", "monkey"]

# array of floats
flt_array = [25.25, 1.2, 4.5, 9.55]

# array of many data types
data_array = [7, "fourteen", 13.2, "horse", 1]
```

### Data Assignment
Arrays allow you to assign and reassign values within an array.

Each spot in the array acts like a variable: you can see what object a particular spot points to, and you can make it point to a different object.

```ruby
# given the str_array declaration above
# First, retrieve the value
str_array[0] # => "bird"

# Then reassign the value
str_array[0] = "parrot"

# Then retrieve the updated value
str_array[0] # => "parrot"

# Add a new value to an array

```

### Using Built-In Methods

Since arrays are a data type within Ruby, there are a few important methods that are built in that we can utilize.

**length**  
This method returns the number of elements in the array.
```ruby
str_array = ["bird", "horse", "cat", "monkey"]
str_array.length # => 4
```

**push** or **<<**   
These two methods perform the same operation in Ruby. This method adds (appends) a given object to the end of an array. The fact that it adds to the end of the array is important since arrays are _ordered_.
```ruby
str_array << "dog"
str_array         # => ["bird", "horse", "cat", "monkey", "dog"]
str_array.length  # => 5
str_array[4]      # => "dog"

str_array.push("lizard")
str_array         # => ["bird", "horse", "cat", "monkey", "dog", "lizard"]
str_array.length  # => 6
str_array[5]      # => "lizard"
```

### Documentation
Look at the Ruby docs for [Array](http://www.ruby-doc.org/core-2.2.3/Array.html)
