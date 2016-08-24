# Notes: Hashes

A `Hash` is another very popular collection type in Ruby. It is similar to an Array, except that indexing is done via unordered _keys_ of any object type, and _not an ordered integer index_.

```ruby
{ "key1" => "key1sAssociatedValue", "key2" => "key2sAssociatedValue" ...}
```

### Creating Hashes
We initialize an empty `Hash` by using `{}` (pronounced _brace_). A hash can be assigned to a variable in the same or a similar way that other types of data are assigned to a variable:

#### Empty

```ruby
my_hash = {}
```

```ruby
my_hash = Hash.new
```

We know that this hash is empty because the hash definition starts with the `{`(left brace) and ends with the `}`(right brace), and there is nothing between those two symbols.

#### With Data

By using the `new` syntax and specifying a default value, _all_ keys retrieved with no corresponding value will return the default value. Without the default value, accessing an undefined key will return `nil`.

```ruby
my_hash = Hash.new
my_hash["gibberish"] # => nil

default_data = Hash.new("def")

# By creating a hash with a default value,
# all data retrievals will return the default value if not specified otherwise
default_data["gibberish"] # => "def"
```

You can also create a new hash with key/value pairs populated.

```ruby
my_dog = {
  "name" => "barkly",
  "breed" => "beagle",
  "age" => 2
}
```

### Accessing Data
To access data from within a hash, we use a syntax that is similar to accessing data in an Array. The difference is that we use the strings that correspond to the key to retrieve the associated value.

```ruby
my_dog["age"] # => 2
my_dog["breed"] # => "spaniel"
my_dog["name"] # => "barkly"

# by default, will return nil for keys that don't exist
my_dog["color"] # => nil
```

### Assigning Data
We can utilize our understanding of reassigning values in Arrays to assign and reassign values in a Hash.

Assuming that we want to add a **new** key value pair to an **existing** hash, we can choose the key that we want to set the value for. In the case below, we have decided that we want to set the value `"blenheim"` for a new key `"color"`.

```ruby
# Add a new key value pair for color
my_dog["color"] = "blenheim"
```

In addition, we can reset the value associated with an existing key using the same syntax. In the case below, we would like to set the `"age"` value to `3` from it's original `2`.
```ruby
# Retrieve the value currently set
my_dog["age"] # => 2

# Reassign the value associated with the age key
my_dog["age"] = 3

# Retrieve the updated value
my_dog["age"] # => 3
```

### Using Built-In Methods

#### length 
This method returns the number of items in the hash. An item corresponds to a key/value pair.

```ruby
my_dog = {
  "name" => "barkly",
  "breed" => "beagle",
  "age" => 2
}

my_dog.length # => 3
```

#### keys
This method returns an _array_ of all the defined keys for the hash.

```ruby
my_dog.keys #=> ["name", "breed", "age"]
```

#### values
This method returns an _array_ of all the values of all defined keys for the hash.

```ruby
my_dog.values #=> ["barkly", "beagle", 3]
```
