# Loops Worksheet Answers

1.
```ruby
2.times do
  puts "dance"
end
```
| Count | Output |
|:---: |:--- |
| 1 | dance |
| 2 | dance |
|  
| **Answer:** | **dance<br>dance** |


2.
```ruby
10.times do |i|
  puts i
end
```

| Count | i | Output |
|:---: |:---:| :---: |
| 1 | 0 | 0 |
| 2 | 1 | 1 |
| 3 | 2 | 2 |
| 4 | 3 | 3 |
| 5 | 4 | 4 |
| 6 | 5 | 5 |
| 7 | 6 | 6 |
| 8 | 7 | 7 |
| 9 | 8 | 8 |
| 10 | 9 | 9 |
|  
| | **Answer:** | **0<br>1<br>2<br>3<br>4<br>5<br>6<br>7<br>8<br>9** |

3.
```ruby
3.times do
  puts "coding!"
end
puts "fun!"
```

| Count | Output |
|:---: |:---|
| 1 | coding! |
| 2 | coding! |
| 3 | coding! |
|
| **Answer:** | **coding!<br>coding!<br>coding!<br>fun!** |

4.
```ruby
5.times do |x|
  puts "#{x} chicken(s)"
end
```

| Count | x | Output |
|:---: |:---:| :--- |
| 1 | 0 | 0 chicken(s) |
| 2 | 1 | 1 chicken(s) |
| 3 | 2 | 2 chicken(s) |
| 4 | 3 | 3 chicken(s) |
| 5 | 4 | 4 chicken(s) |
|
| | **Answer:** | **0 chicken(s)<br>1 chicken(s)<br>2 chicken(s)<br>3 chicken(s)<br>4 chicken(s)** |

5.
```ruby
10.times do |i|
  puts i * i
end
```
| Count | i | Output |
|:---: |:---:| :--- |
| 1 | 0 | 0 |
| 2 | 1 | 1 |
| 3 | 2 | 4 |
| 4 | 3 | 9 |
| 5 | 4 | 16 |
| 6 | 5 | 25 |
| 7 | 6 | 36 |
| 8 | 7 | 49 |
| 9 | 8 | 64 |
| 10 | 9 | 81 |
|
| | **Answer:** | **0<br>1<br>4<br>9<br>16<br>25<br>36<br>49<br>64<br>81** |

6.
```ruby
(1..5).each do
  puts "hello!"
end
```

| Count | Output |
|:---: |:---:|
| 1 | hello! |
| 2 | hello! |
| 3 | hello! |
| 4 | hello! |
| 5 | hello! |
|
| **Answer:** | **hello!<br>hello!<br>hello!<br>hello!<br>hello!** |

7.
```ruby
(1..3).each do |i|
  puts "#{i} animals(s)"
end
```
| Count | i | Output |
|:---: |:---:| :---: |
| 1 | 1 | 1 animal(s) |
| 2 | 2 | 2 animal(s) |
| 3 | 3 | 3 animal(s) |
|
| | **Answer:** | **1 animal(s)<br>2 animal(s)<br>3 animal(s)** |

8.
```ruby
(1..3).each do |i|
  puts i * i
end
```
| Count | i | Output |
|:---: |:---:| :---: |
| 1 | 1 | 1 |
| 2 | 2 | 4 |
| 3 | 3 | 9 |
|
| | **Answer:** | **1<br>4<br>9** |

9.
```ruby
total = 0

(1..3).each do |i|
  total = total + i
end

puts total
```
| Count | i | total | Output |
|:---: |:---:| :---: | :---: |
| 1 | 1 | 0 | - |
| 2 | 2 | 1 | - |
| 3 | 3 | 3 | 6 |
|
| | | **Answer:** | **6** |

10.
```ruby
(1..10).each do |x|
  if x == 5
    puts "You got a winner!"
  end
end
```
| Count | x | Output |
|:---: |:---:| :---: |
| 1 | 1 | - |
| 2 | 2 | - |
| 3 | 3 | - |
| 4 | 4 | - |
| 5 | 5 | You got a winner! |
| 6 | 6 | - |
| 7 | 7 | - |
| 8 | 8 | - |
| 9 | 9 | - |
| 10 | 10 | - |
|
| | **Answer:** | **You got a winner!** |

11.
```ruby
i = 0

while i < 3
  puts "hi"
  i = i + 1
end
```
| Count | i | Output |
|:---: |:---:| :---: |
| 1 | 0 | hi |
| 2 | 1 | hi |
| 3 | 2 | hi |
| 4 | 3 | - |
|
| | **Answer:** | **hi<br>hi<br>hi** |

12.
```ruby
i = 0

while i < 3
  puts "hi"
  i = i + 1
end

puts "bye"
```
| Count | i | Output |
|:---: |:---:| :--- |
| 1 | 0 | hi |
| 2 | 1 | hi |
| 3 | 2 | hi |
| 4 | 3 | bye |
|
| | **Answer:** | **hi<br>hi<br>hi<br>bye** |

13.
```ruby
i = 0

while i < 3
  i += 1
  puts i
end
```
| Count | i | Output |
|:---: |:---:| :---: |
| 1 | 0 | 1 |
| 2 | 1 | 2 |
| 3 | 2 | 3 |
| 4 | 3 | - |
|
| | **Answer:** | **1<br>2<br>3** |

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

| Count | x | i | Output |
|:---: |:---:| :---: | :---: |
| 1 | 5 | 0 | - |
| 2 | 6 | 1 | - |
| 3 | 7 | 2 | - |
| 4 | 8 | 3 | 8 |
|
| | | **Answer:** | **8** |

15.
```ruby
i = 3

while i > 0
  puts "ada!"
  i = i - 1
end
```

| Count | i | Output |
|:---: |:---:| :---: |
| 1 | 3 | ada! |
| 2 | 2 | ada! |
| 3 | 1 | ada! |
| 4 | 0 | - |
|
| | **Answer:** | **ada!<br>ada!<br>ada!** |

16.
```ruby
i = 1

while i
  puts "a while"
end
```
| Count | i | Output |
|:---: |:---:| :---: |
| 1 | 1 | a while |
| 2 | 2 | a while |
| 3 | 3 | a while |
| 4 | 4 | a while |
| 5 | 5 | a while |
| ...forever
| | **Answer:** | **infinite loop** |

17.
```ruby
i = 1

while i < 100
  puts "o hai"
  i = i * 100
end
```
| Count | i | Output |
|:---: |:---:| :---: |
| 1 | 1 | o hai |
| 2 | 100 | - |
|
| | **Answer:** | **o hai** |
