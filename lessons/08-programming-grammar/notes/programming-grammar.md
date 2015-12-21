# Notes: Programming Grammar

## Welcome to Ruby!
Ruby is pretty smart and understands lots of things in a way similar to how people do. Spoken languages are divided into part of speech (like verbs, adjectives, and nouns). Similarly, programming languages have their own grammar. The part of speech we will cover today are _values_, _types_, _variables_, _commands_, and _comments_.

## Programming Grammar: Values, Types, Commands, Variables, and Comments

### Values
A _value_ can be most anything, like a name (`"Jeremy"`), a whole number (`5000`), or a decimal number (`3.14`). We use _values_ in conjuction with _commands_ to give Ruby instructions on what to do. We'll talk more about _commands_ in a bit.

Every _value_ can be described by a _type_. There are lots of _types_ in Ruby, and we are going to talk about three of them today: `String`, `Fixnum`, and `Float`.

### Types
A `String` is any sequence of letters and/or numbers enclosed in either single (`'`) or double (`"`) quotes. `"Elephant Hotdog"` is a `String`, and so is `'42'`. Most of the time, you can use either single or double quotes to create a _string value_.

A `Fixnum` is a whole number expressed without a decimal. There's a couple ways to create _fixnum values_, but the most common is to type out the number. `1` is a `Fixnum`, and so is `23` and `-4500`.

#### Question: How are `42` and `"42"` different?

A `Float` is a number expressed __with__ a decimal value. There are important distinctions between doing math in Ruby with _fixnum_ and _float values_, but for today, we will focus on _float values_ being expressed by typing a number with a decimal like `3.14`, `0.05`, and `1000.2387`. In later lessons, we will explore why `Float` and `Fixnum` are different _types_ and how those differences affect our programs.

### Commands
Ruby has many kinds of commands built into its _core library_. We can utilize these _commands_ along with _values_ to give Ruby instructions about what to do. For this lecture, we are going to cover a handful of commands:

- `Fixnum` & `Float` Commands:
  - `+`
  - `-`
  - `*`
  - `/`
- `String` Commands:
  - `+` (_string concatenation_)
  - `#{}` (_string interpolation_)
  - `print`
  - `puts`
  - `gets.chomp`

#### Activity: Using commands in the _REPL_

### Variables
In programming, we often need to retain _values_ that are the result of computations or _commands_. Maybe we want to refer to the _values_ later, or maybe calculating the _value_ was very time consuming or complicated. A _variable_ is a construct which has a name that refers to a specific _value_. _Variables_ are _declared_ by choosing a name and using the `=` command to assign a _value_ to it.

A _variable_ can have any _type_ of _value_ assigned to it. Here are some examples of creating a _variable_:

```ruby
dog_name = "Rosa"
cat_name = "Raquel"
dog_age  = 7
cat_age  = 11

favorite_color = gets.chomp
```

#### Activity: Creating and working with variables in the _REPL_

### Comments
Code is complex! And sometimes confusing! It is really helpful to leave instructions and notes for the __people__ that will be using or modifying your code later. Programming is inherently for people to communicate with other people, and sometimes a small note can really help the next person who comes along to see your code. Enter the _code comment_.

When we begin a line using the `#` character, we are telling Ruby that everything on that line is a _code comment_ meant for people and not for computers. Ruby won't try to interpret a _code comment_. Instead, Ruby will skip right over it. Here's an example:

```ruby
# I'm a code comment. Ruby knows this is for people and not computers
# Also, it is always taco time.
taco_time = "Always"

# This is a comment too.
puts "But this isn't."
```

#### Put it all together: Write a short program to describe an animal.
Use the `print` and `gets.chomp` _commands_ to create several _variables_ describing an animal. Then `puts` a paragraph using `string interpolation` and/or `string concatenation` that incorporates the _values_ of the _variables_. Add _comments_ to your program so it is clear to other people what is happening when your program runs.

