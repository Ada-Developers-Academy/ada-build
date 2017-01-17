# More Loops and Iterators Worksheet

Read the code in each section, then write exactly what the code prints out.

Each problem stands alone. Variables from previous problems do not exist.

*Example:*
```ruby
x = 5
y = 6
print(x+y)
# => 11
```

## Problem Set

1.
```ruby
cars = ["old", "new", "used"]
cars.each do |car|
  puts car
end
```

2.
```ruby
fruits = ["banana", "apple", "kiwi"]
fruits.each do |fruit|
  puts "I love " + fruit + "!"
end
```

3.
```ruby
values = [8, 5, 3, 10, 14, 2]
values.each do |value|
  puts value
end
```

4.
```ruby
total = 0
values = [4, 6, 2, 8, 11]

values.each do |value|
    total = total + value
end

puts total
```

5.
```ruby
values = [8, 5, 3, 10, 14, 2]
values.each do |value|
  if value == 10
    puts "Special case!"
  else
    puts "Regular values like #{value}"
  end
end
```


**When you are complete with all of these problems, you can check your answers against the [answer key](../assignments/more-loops-worksheet-answers.md).**
