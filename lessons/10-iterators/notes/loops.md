# Introduction to Loops

## Basic Loops?
## Ranges
Inclusive
```ruby
(1..6).each do |num|
  puts num
end
```
output
```
1
2
3
4
5
6
```

Exclusive
```ruby
(1...6).each do |num|
  puts num
end
```
output
```
1
2
3
4
5
```

## Times

```ruby
3.times do
  puts "hello! "
end
```
output
```
hello!
hello!
hello!
```

## Conditional Loops
## While Loops
The `while` loop is useful when you want to continue doing an action while a certain condition is `true` but you may not know how many times you'll need to complete that action. As soon as the condition stops being true, the loop will terminate.

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

You can read the condition and execute of the `while` loop as _while condition is **true** do..._

## Until Loops
The `until` loop acts as an inverse of the `while` loop. The loop will execute _until_ the condition evaluates as `true`.


```ruby
i = 0

until i == 4
   puts i
   i += 1
end
```

The above code will output the values of i until i is equal to 4, resulting in the following (equivalent to the `while` loop) output:
```
0
1
2
3
```

You can read the condition and execute of the `until` loop as _until condition is **true** do..._

## Orig Loop Notes
```ruby
command = gets.chomp

while command != "add" && command != "+"
  puts "Please tell me to add (+)!"
  command = gets.chomp
end

puts "OMG It's about time!"
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
