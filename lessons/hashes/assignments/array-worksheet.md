# Array Worksheet

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
random_data = ["b", "a", 1, 3, 99, "c"]
puts random_data[4]
puts random_data[2] + 10
puts random_data[1] + random_data[0]
```

2.
```ruby
numeric_data = []
numeric_data << 2
numeric_data << 4
numeric_data << 6
numeric_data << 8
puts numeric_data.length
puts numeric_data[1]
```

3.
```ruby
my_array = ["dog", 5, "cat", 2, "horse", 1]
puts my_array[6]
puts my_array.last
```

4.
```ruby
numbers = Array.new(3)
puts numbers.length
puts numbers.first
```

5.
```ruby
student_names = Array.new(24, "Student")
student_names << "Test"
student_names << "Grumpy Cat"
puts student_names[1]
puts student_names[25]
```
