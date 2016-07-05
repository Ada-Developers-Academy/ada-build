# Loops Worksheet

Read the code in each section, then write exactly what the code prints out. Use a loop table to help you track each variable for each iteration.

Each problem stands alone. Variables from previous problems do not exist.

*Example:*
```
x = 5
y = 6
print(x+y) #=> 11
```
## Problem Set

1.
```ruby
2.times do
  puts "dance"
end
```

2.
```ruby
10.times do |i|
  puts i
end
```

3.
```ruby
3.times do
  puts "coding!"
end
puts "fun!"
```

4.
```ruby
5.times do |x|
  puts "#{x} chicken(s)"
end
```

5.
```ruby
10.times do |i|
  puts i * i
end

```

6.
```ruby
(1..5).each do
  puts "hello!"
end
```

7.
```ruby
(1..3).each do |i|
  puts "#{i} animals(s)"
end
```

8.
```ruby
(1..3).each do |i|
  puts i * i
end
```

9.
```ruby
total = 0

(1..3).each do |i|
  total = total + i
end

puts total
```

10.
```ruby
(1..10).each do |x|
  if x == 5
    puts "You got a winner!"
  end
end
```

11.
```ruby
i = 0

while i < 3
  puts "hi"
  i = i + 1
end
```

12.
```ruby
i = 0

while i < 3
  puts "hi"
  i = i + 1
end

puts "bye"
```

13.
```ruby
i = 0

while i < 3
  i += 1
  puts i
end
```

14.
```ruby
x = 5
i = 0

while i < 3
  x = x + 1
  i = i + 1
end

puts x
```

15.
```ruby
i = 3

while i > 0
  puts "ada!"
  i = i - 1
end
```

16.
```ruby
i = 1

while i
  puts "a while"
end
```

17.
```ruby
i = 1

while i < 100
  puts "o hai"
  i = i * 100
end
```

**When you are complete with all of these problems, you can check your answers against the [answer key](../assignments/loops-worksheet-answers.md).**
