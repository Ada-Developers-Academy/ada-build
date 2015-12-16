# Hashes

A `Hash` is another very popular collection type in Ruby, similar to that Array.
It is similar to an Array, except that indexing is done via unordered keys of any object type, not an ordered integer index.

```ruby
{first_num: 1, greeting: "Hello", pi: 3.14}
```

### Initialization
We initialize an empty `Hash` by using `{}`. A hash can be assigned to a variable in the same or a similar way that other types of data are assigned to a variable:

```ruby
my_hash = {}
```

We know that this hash is empty because the hash definition starts with the `{`(left curly bracket) and ends with the `}`(right curly bracket), and there is nothing between those two symbols.

### Creating Hash
```ruby
my_dog = {
  name: "barkly",
  breed: "beagle",
  age: 2
}
```

### Accessing Data
Use a syntax that is similar to accessing data in an Array. The difference is that we use the symbols that correspond to the key to retrieve the associated value.

```ruby
my_dog[:age] # => 2
my_dog[:breed] # => "beagle"
my_dog[:name] # => "barkly"

# will return nil for keys that don't exist
my_dog[:color] # => nil
```

### Assigning Data
```ruby



# Reassign the value associated with the age key
my_dog[:age] = 3
```


### Using Built-In Methods

**length**  
This method returns the numbers of items in the hash. An item correspond to a key/value pair.



 In this above case, we have the equivalent of an `Array` with `[1, "hello", 3.14]`
but instead of the indices 0,1,2, we use first_num, greeting, pi.

```ruby
h = {first_num: 1, greeting: "Hello", pi: 3.14}
h[:first_num] # => 1
h[:greeting] # => "Hello"
h[:pi] # => 3.14

```

### Documentation
Look at the Ruby docs for [Hash](http://www.ruby-doc.org/core-2.2.3/Hash.html) for more info
