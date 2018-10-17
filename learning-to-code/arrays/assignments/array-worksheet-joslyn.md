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
# => 99
puts random_data[2] + 10
# => 11
puts random_data[1] + random_data[0]
# => ab
```

2.
```ruby
numeric_data = []
numeric_data << 2
numeric_data << 4
numeric_data << 6
numeric_data << 8
puts numeric_data.length
# => 4
puts numeric_data[1]
# => 4
```

3.
```ruby
my_array = ["dog", 5, "cat", 2, "horse", 1]
puts my_array[6]
# =>  
# there is no value in position 6
puts my_array.last
# => 1
```

4.
```ruby
numbers = Array.new(3)
puts numbers.length
# => 3
puts numbers.first
# =>
# the size of the array is set at 3
# there is no default value set
# so at position 0
# there is no value to return
```

5.
```ruby
student_names = Array.new(24, "Student")
student_names << "Test"
student_names << "Grumpy Cat"
puts student_names[1]
# => "Student"
# student is set as the default value
# so position 1 (or any positon but 25)
# will return "student"
puts student_names[25]
# => "Grumpy Cat"
# this was added at end of the array
```
