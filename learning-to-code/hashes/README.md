# Hashes

_JumpStart: Lesson 13_

## Learning Goals

- Vocabulary: data structure, hash, key-value pair, default value
- To understand what a data structure is and how it can be used
- To be able to create a new hash data structure
- To be able to access data in a hash
- To be able to add data to a hash
- To understand the difference between an array and a hash

## Activities

- Review the [notes](#notes) in this section
- Complete [Hash Worksheet](assignments/hash-worksheet.md)
- Complete the [Numbers problem assignment](#numbers-problem-assignment)
- Complete [Account Generator Continued](assignments/account-generator-cont.md)  
- Complete [Walk-a-thon](assignments/walkathon.md)
- [Optional] For additional learning and practice, look at the lessons and exercises of [Day 6 of JumpStart Live](https://github.com/Ada-Developers-Academy/jump-start-live/tree/master/lessons/day6#lessons)

## Notes

### Overview

A `Hash` is another very popular collection type in Ruby. It is similar to an Array, except that indexing is done via unordered _keys_ of any object type, and _not an ordered integer index_. `Hash` is a useful data structure to consider if you are looking to organize data in a way that makes it easy to look up information for a certain _key_.

Below is an example of a `hash` in Ruby with two keys and values associated with each of the two keys.

```ruby
{ "key1" => "key1sAssociatedValue", "key2" => "key2sAssociatedValue"}
```

### Creating Hashes

A hash can be assigned to a variable in a similar way that other types of data are assigned to a variable:

### Empty

We can initialize an empty `Hash` by using `{}` (pronounced _brace_) as shown below:

```ruby
my_hash = {}
```

We know that this hash is empty because the hash definition starts with the `{`(left brace) and ends with the `}`(right brace), and there is nothing between those two symbols.

The second way is to explicitly create a new instance of the Hash class defined in the Ruby core library.

```ruby
my_hash = Hash.new
```

### With Data

The data in a hash consists of key-value pairs. Each key-value pair in a hash could be referred to as an item in the hash. The order of the key-value pairs is not guaranteed and hence, a hash is a collection of a _unordered_ items.

A new hash can be created with key-value pairs populated as follows:

```ruby
my_dog = {
  "name" => "woofy",
  "breed" => "spaniel",
  "age" => 3
}
```

The above hash is called `my_dog`. It has three key-value pairs. All the keys are string objects. The values associated with `"name"` and `"breed"` are string objects, `"barkly"` and `"spaniel"` respectively. The third key, `"age"` has a value of `3`, which is of type integer. In general, the value may be a more complex data structure and of any data type.

The above hash, `my_dog` uses what is known as the _hash rocket notation_ approach to defining the hash. In this approach, all keys are _strings_.

The keys in a hash are not expected to change through the lifetime of the program. Therefore, instead of using _strings_ for hash keys, using _symbols_ is more efficient. _Symbols_ are more efficient because they are often faster to retrieve in a Ruby program and consume less memory. This is why [Rubyist often prefer the _symbol notation_ to define a hash](https://github.com/rubocop-hq/ruby-style-guide#symbols-as-keys) over the _hash rocket string notation_. Below is an example of a hash defined by using the _symbol notation_:

```ruby
your_dog = {
  name: "barkly",
  breed: "beagle",
  age: 2
}
```

By using the `new` syntax and specifying a default value, _all_ keys retrieved with no corresponding value will return the default value. Without the default value, accessing an undefined key will return `nil`.

We can do something similar by creating a `Hash` using `Hash.new`.

```ruby
your_dog = Hash.new
your_dog[:name] = "barkly"
your_dog[:breed] = "beagle"
your_dog[:age] = 2
your_dog[:gibberish] # will have a value of nil
```

The above example uses _symbols_ to define the keys. Keys are normally _symbols_ or _strings_.

```ruby
my_hash = Hash.new("def")
# By creating a hash with a default value,
# all data retrievals will return the default value if not specified otherwise
my_hash["gibberish"] # => "def"
```

### Accessing Data

To access data from within a hash, we use a syntax that is similar to accessing data in an Array. The difference is that we use the strings or symbols that correspond to the key to retrieve the associated value.

```ruby
# my_dog is defined using the string hash rocket notation above
puts my_dog["age"] # 3
puts my_dog["breed"] # spaniel
puts my_dog["name"] # woofy

# by default, will return nil for keys that don't exist
puts my_dog["color"] # nil
```

```ruby
# your_dog is defined using the symbol notation above
puts your_dog[:age] # 2
puts your_dog[:breed] # beagle
puts your_dog[:name] # barkly

# by default, will return nil for keys that don't exist
puts my_dog[:color] # nil
```

### Assigning Data

We can utilize our understanding of reassigning values in Arrays to assign and reassign values in a Hash.

Assuming that we want to add a **new** key value pair to an **existing** hash, we can choose the key that we want to set the value for. In the case below, we have decided that we want to set the value `"blenheim"` for a new key `:color`.

```ruby
# Add a new key value pair for color
your_dog[:color] = "blenheim"
```

In addition, we can reset the value associated with an existing key using the same syntax. In the case below, we would like to set the `:age` value to `4` from it's original `2`.

```ruby
# Retrieve the value currently set
puts your_dog[:age] # 2

# Reassign the value associated with the age key
your_dog[:age] = 4

# Retrieve the updated value
puts your_dog[:age] # 4

# Increment the value of age
your_dog[:age] += 1

# Retrieve the updated value
puts your_dog[:age] # 5
```

### Using Built-In Methods

Hash is an in-built class available in Ruby. The Hash class has a few important built-in methods that we can utilize.

#### length

This method returns the number of key-value pairs in the hash.

```ruby
your_dog = {
  name: "barkly",
  breed: "beagle",
  age: 2
}

your_dog.length # => 3
```

#### keys

This method returns an _array_ of all the defined keys for the hash.

```ruby
puts your_dog.keys # [:name, :breed, :age]
```

#### values

This method returns an _array_ of all the values of all defined keys for the hash.

```ruby
puts your_dog.values #=> ["barkly", "beagle", 2]
```

## Numbers problem assignment

Throughout this course we will be working with the **Numbers program**. Here's the fifth version of the program:

### Numbers Problem v5

Leveraging your learnings from the notes you read (different ways of organizing data in arrays and hashes), write a program that does the following:

- Create a hash.
  - Add one key-value pair in the hash. The key should be `:random_numbers`. The value should be an array of five randomly generated integers between 12 and 21, both inclusive.
  - Create another key-value pair in the hash. The key should be `:user_input`. The value should be an array of five positive integers that the program receives as user input, also in the range of 12 and 21, both inclusive.
- Create a second hash.
  - The keys in this hash are the numbers, either entered by the user or generated randomly by the program.
  - The value holds information of:
    - the count of times that the number in key was generated randomly by the program.
    - the count of times that the number in key was provided by the user.
        *Hint*: it may be useful to consider having the value be another hash.
- Do the following two different ways: first only leveraging the information in the first hash, and then by only leveraging the information in the second hash.
  - Ask the user to supply three numbers.
  - For each number entered by the user, share the count of times the number was generated by the program.
  - For each number entered by the user, share the count of times the number was provided earlier by the user.


#### Example Output

Assume that program randomly generated: [17, 20, 12, 21, 12]

_Note_: User input is indicated in ~~ (tildes).

```
   Please provide five integer values between 12 and 21, both inclusive:
   What's number 1? ~21~
   What's number 2? ~18~
   What's number 3? ~15~
   What's number 4? ~18~
   What's number 5? ~17~

   Give me a number you want information about: ~14~
   Using only the first hash:
    The number, 14 did not show in the randomly generated numbers.
    The number, 14 was not provided by the user earlier.
   Using only the second hash:
    The number, 14 did not show in the randomly generated numbers.
    The number, 14 was not provided by the user earlier.

   Give me a number you want information about: ~20~
   Using only the first hash:
    The number, 20 shows up 1 time(s) in the randomly generated numbers.
    The number, 20 was not provided by the user earlier.
   Using only the second hash:
    The number, 20 shows up 1 time(s) in the randomly generated numbers.
    The number, 20 was not provided by the user earlier.

   Give me a number you want information about: ~21~
   Using only the first hash:
    The number, 21 shows up 1 time(s) in the randomly generated numbers.
    The number, 21 was provided 1 time(s) by the user earlier.
   Using only the second hash:
    The number, 21 shows up 1 time(s) in the randomly generated numbers.
    The number, 21 was provided 1 time(s) by the user earlier.
```
