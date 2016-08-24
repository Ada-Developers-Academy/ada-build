# Notes: Values and Types

### Values
A _value_ can be most anything, like a name (`"Jeremy"`), a whole number (`5000`), or a decimal number (`3.14`). We use _values_ in conjunction with _commands_ to give Ruby instructions on what to do. We'll talk more about _commands_ in a bit.

Every _value_ can be described by a _type_. There are lots of _types_ in Ruby, and we are going to talk about three of them today: `String`, `Fixnum`, and `Float`.

### Types

#### String
A `String` is any sequence of letters and/or numbers enclosed in either single (`'`) or double (`"`) quotes. `"Elephant Hotdog"` is a `String`, and so is `'42'`. Most of the time, you can use either single or double quotes to create a _string value_.

#### Fixnum
A `Fixnum` is a whole number expressed without a decimal. There's a couple ways to create _fixnum values_, but the most common is to type out the number. `1` is a `Fixnum`, and so is `23` and `-4500`.

#### Question: How are `42` and `"42"` different?

#### Float
A `Float` is a number expressed __with__ a decimal value. For example, _float values_ can be expressed by typing a number with a decimal like `3.14`, `0.05`, and `1000.2387`.   
There are important distinctions between doing math in Ruby with _fixnum_ and _float values_, but we will talk about those differences later.
