## Flow Control
The `if` statement, also known as a _conditional_ statement, is the first type of branching you learn when programming. It allows you to specify a condition in which a branch or section of code will execute

You have already seen some version of conditional statements if you have ever seen a flow diagram! Here is a good example:
![flow diagram](../images/flow-control.png)


### Conditionals
`if` and `else` allow you to control the flow of your program. This means that they allow you to define which lines of code will execute, and which will be skipped.

We will use our knowledge of operators to create the _boolean expressions_ that our _conditionals_ will use.

You can create a basic `if` statement using the syntax below:

```ruby
if <boolean expression>
  # conditional body
  # this code only execute if the <boolean expression> evaluates as true
end
```

See the picture below which shows each piece of this conditional puzzle:
![conditional](../images/conditional.jpg)

The Boolean statement, called a _predicate_, is evaluated, producing a `true` or `false` outcome.  
- If the outcome is `true`, the conditional body is executed
- If the outcome is `false`, the then-statement is skipped  

Example:
```ruby
test_score = gets.chomp.to_i

if test_score > 90
  print "You got an A!"
end
```

If you want to execute different code when the boolean expression is `false`, then you should use the `else` construct.

- If the outcome is `true`, the conditional body is executed and the `else` body is skipped
- If the outcome is `false`, the then-statements are skipped and the `else` body is executed

```ruby
if <boolean expression>
  # conditional body
else
  # else body
end
```

Example:
```ruby
test_score = gets.chomp.to_i

if test_score > 90
  print "You got an A!"
else
  print "You did not get an A!"
end
```
In the example above, what will happen for the following user input?
- 100
- 0
- -12
- "ada"

In the example below, note that the `puts` statement on the last line will execute no matter which conditional statements are executed.

```ruby
puts "What is your favorite animal?"
fav_animal = gets.chomp

if fav_animal.downcase == "camel"
  puts "I also love camels!"
else
  puts "That's a great animal, but I love camels the most."
end

puts "Thanks for playing the favorite animal game!"
```

### Note on Formatting
It is important to note that the formatting of these conditional statements is important to the understanding of the start and stop of each block of code. This is not critical to the execution of the code but is important to the readability of it.


### elsif
The `if/else/end` code we've written above is the standard and most basic form of a conditional.

We can expand upon this to include more boolean expressions that will control additional statement execution.

In a scenario where you need more than an "either/or", you should use `elsif`. `elsif` stands for "else if".

`elsif` is used with a different boolean expression that is used with the `if`.

We can see an example using `elsif` by extending the animal example from above to check for our second favorite animal:

```ruby
puts "What is your favorite animal?"
fav_animal = gets.chomp.downcase

if fav_animal == "camel"
  puts "I also love camels!"
elsif fav_animal == "kangaroo"
  puts "The kangaroo is my second favorite animal!"
else
  puts "That's a great animal, but I love camels the most."
end

puts "Thanks for playing the favorite animal game!"
```
