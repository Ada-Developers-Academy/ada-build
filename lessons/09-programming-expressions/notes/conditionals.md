

## Flow Control
### Conditionals
`if` and `else` allow you to control the flow of your program. This means that they allow you to define which lines of code will execute, and which will be skipped.

```ruby
if boolean_value
  code
end

additional_code
```

When you use an `if`, the `code` that follows it (until the `end`) will only be executed *if* the `boolean_value` is `true`. Additionally, you may add `else` before the `end`:

```ruby
if boolean_value
  code
else
  other_code
end

additional_code
```

In this case, when `boolean_value` is `false`, then `other_code` will be executed. Otherwise, it will be skipped. When you have an `if` and an `else` only one or the other of `code` or `other_code` will be executed, and that is determined by the value of `boolean_value`.

```ruby
puts "Hey! What’s your name?"
response = gets.chomp

is_my_name = response.downcase == "computer"
if is_my_name
  puts "Weird, that's my name too. Small world!"
else
  puts "Wacky name!"
end

puts "Well, it was nice to meet you #{response}."
```

```ruby
if 1 > 0
  # do something
else
  # do something different
end
```


### Negating Comparisons
Ruby has an `unless` keyword that works just like `if`, but in the reverse way.

```ruby
puts "What is your favorite animal?"
fav_animal = gets.chomp

if fav_animal.downcase == "camel"
  puts "I also love camels!"
else
  puts "That's a great animal, but I love camels the most."
end

# The following code works identically to the above
unless fav_animal.downcase == "camel"
  puts "That's a great animal, but I love camels the most."
else
  puts "I also love camels!"
end
```

The `if` block executes if the _conditional_ evaluates as `true`. The `unless` block executes if the _conditional_ evaluates as `false`.

Another way to "negate" a conditional is to use the `!` (not) operator. This should be placed just before a boolean value, or a comparison. When combined with a comparison the comparison should be enclosed in parentheses:

```ruby
puts "What day of the week is it?"
day_of_week = gets.chomp

puts "What did you have for lunch today?"
lunch = gets.chomp

if day_of_week.downcase == "tuesday"
  if !(lunch == "tacos")
    puts "Taco Tuesdays are my favorite, though!"
  end
end
```


### Complex conditionals
The `if/else/end` code we've written above is the standard and simplest form of a conditional. It is possible to extend this form with one or more `elsif` lines:

```ruby
if command == "add" || command == "+"
  puts "We're adding numbers"
else
  if command == "subtract" || command == "-"
    puts "We're subtracting numbers"
  else
    if command == "multiply" || command == "*"
      puts "We're multiplying numbers"
    end
  end
end

# This is equivalent to the above
if command == "add" || command == "+"
  puts "We're adding numbers"
elsif command == "subtract" || command == "-"
  puts "We're subtracting numbers"
elsif command == "multiply" || command == "*"
  puts "We're multiplying numbers"
end
```

This can be very useful, when you have more than one `elsif` line, because the indentation, or *nesting*, can quickly become very deep, and more difficult to understand.


### Simplifying really complex conditionals
When you have several `elsif` lines within a single `if`, there's a way to write each conditional, with much less repetition:

```ruby
if command == "add" || command == "+"
  puts "We're adding numbers"
elsif command == "subtract" || command == "-"
  puts "We're subtracting numbers"
elsif command == "multiply" || command == "*"
  puts "We're multiplying numbers"
elsif command == "divide" || command == "/"
  puts "We're dividing numbers"
elsif command == "exponify" || command == "**"
  puts "We're exponentiating numbers"
elsif command == "sqrt"
  puts "We're finding the square root of a number"
else
  puts "What do you want from me?!"
end
```

The above code works, but it's kinda messy. We can trim it by using the `case/when` syntax:
```ruby
case command
  when "add", "+"
    puts "We're adding numbers"
  when "subtract", "-"
    puts "We're subtracting numbers"
  when "multiply", "*"
    puts "We're multiplying numbers"
  when "divide", "/"
    puts "We're dividing numbers"
  when "exponify", "**"
    puts "We're exponentiating numbers"
  when "sqrt"
    puts "We're finding the square root of a number"
  else
    puts "What do you want from me?!"
end
```



## Conditional Loops
### Wait a `while`
Execute the iterator `while` the condition is true.

```ruby
i = 0

while i < 4
  puts i
  i += 1
end
```

The above code will output the values of i until i is no longer less than 4, resulting in the following output:
```
0
1
2
3
```

```ruby
command = gets.chomp

while command != "add" && command != "+"
  puts "Please tell me to add (+)!"
  command = gets.chomp
end

puts "OMG It's about time!"
```

### Make it clearer by using `Until`
Execute the iterator `until` the condition is true.

```ruby
i = 0

until i == 4
   puts i
   i += 1
end
```

The above code will output the values of i until i is equal to 4, resulting in the following (equivalent to the above) output:
```
0
1
2
3
```

```ruby
command = gets.chomp

until command == "add" || command == "+" || command == "subtract" || command == "-"
  puts "Please tell me to add (+) or subtract (-)!"
  command = gets.chomp
end

puts "OMG It's about time!"
```

### Make it clearer by using `include?`
```ruby
command = gets.chomp

until ["add", "+", "subtract", "-"].include? command
  puts "Please tell me to add (+) or subtract (-)!"
  command = gets.chomp
end

puts "OMG It's about time!"
```
