# Loops Worksheet Answers
### JD Joslyn
*** 

1.
```ruby
3.times do
  puts "dance"
  puts "dance fever!"
end
```
| Count | Output |
|:---: |:--- |
| 1 | dance |
| 2 | dance |
| 3 | dance |
|  
| **Answer:** | **dance<br>dance<br>dance<br>dance fever!** |


2.
```ruby
5.times do |j|
  puts j
end
```

| Count | j | Output |
|:---: |:---:| :---: |
| 1 | 0 | 0 |
| 2 | 1 | 1 |
| 3 | 2 | 2 |
| 4 | 3 | 3 |
| 5 | 4 | 4 |
|
| **Answer:** | **0<br>1<br>2<br>3<br>4** |

3.
```ruby
3.times do
  puts "coding is..."
end
puts "coding is fun!"
```

| Count | Output |
|:---: |:--- |
| 1 | coding is... |
| 2 | coding is... |
| 3 | coding is... |
|
| **Answer:** | **coding is...<br>coding is...<br>coding is...<br>coding is fun!** |

4.
```ruby
5.times do |x|
  puts "#{x} fish"
  puts "One fish, two fish..."
  puts "Red fish, blue fish!"
end
```

| Count | x | Output |
|:---: |:---:| :--- |
| 1 | 0 | 0 fish |
| 2 | 1 | 1 fish |
| 3 | 2 | 2 fish |
| 4 | 3 | 3 fish |
| 5 | 4 | 4 fish |
|
| | **Answer:** | **0 fish<br>1 fish<br>2 fish<br>3 fish<br>4 fish<br>One fish, two fish...<br>Red fish, blue fish!** |

5.
```ruby
7.times do |i|
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
|
| **Answer:** | **0<br>1<br>4<br>9<br>16<br>25<br>36** |

6.
```ruby
(1..5).each do
  puts "hello!"
  puts "goodbye!"
end
```

| Count | Output |
|:---: |:---:|
| 1 | hello! |
| 2 | hello! |
| 3 | hello! |
| 4 | hello! |
| 5 | hello! |
| 6 | goodbye! |
|
| **Answer:** | **hello!<br>hello!<br>hello!<br>hello!<br>hello!<br>goodbye!** |

7.
```ruby
(1...3).each do |i|
  puts "#{i} cat(s)"
end
```
| Count | i | Output |
|:---: |:---:| :---: |
| 1 | 1 | 1 cat(s) |
| 2 | 2 | 2 cat(s) |
|
| | **Answer:** | **1 cat(s)<br>2 cat(s)** |

8.
```ruby
(1..4).each do |i|
  puts i * i
end
```
| Count | i | Output |
|:---: |:---:| :---: |
| 1 | 1 | 1 |
| 2 | 2 | 4 |
| 3 | 3 | 9 |
| 4 | 4 | 16 |
|
| | **Answer:** | **1<br>4<br>9<br>16** |

9.
```ruby
total = 0

(1..4).each do |i|
  total = total + i
end

puts total
```
| Count | i | total | Output |
|:---: |:---:| :---: | :---: |
| 1 | 1 | 0 | - |
| 2 | 2 | 1 | - |
| 3 | 3 | 3 | - |
| 4 | 4 | 4 | 10 |
|
| | | **Answer:** | **10** |

10.
```ruby
(1..10).each do |x|
  if x = 9
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
| 5 | 5 | - |
| 6 | 6 | - |
| 7 | 7 | - |
| 8 | 8 | - |
| 9 | 9 | You got a winner! |
| 10 | 10 | - |
|
| | **Answer:** | **You got a winner!** |

11.
```ruby
i = 0

while i < 4
  puts "hi"
  i = i + 1
end
```
| Count | i | Output |
|:---: |:---:| :---: |
| 1 | 0 | hi |
| 2 | 1 | hi |
| 3 | 2 | hi |
| 4 | 3 | hi |
| 5 | 4 | - |
|
| | **Answer:** | **hi<br>hi<br>hi<br>hi** |

12.
```ruby
i = 0

while i < 2
  puts "hi"
  i = i + 1
end

puts "bye"
```
| Count | i | Output |
|:---: |:---:| :--- |
| 1 | 0 | hi |
| 2 | 1 | hi |
| 3 | 2 | bye |
|
| | **Answer:** | **hi<br>hi<br>bye** |

13.
```ruby
i = 0

while i < 3
  i += 1
  puts i
end

puts "ok..."
```
| Count | i | Output |
|:---: |:---:| :---: |
| 1 | 0 | 1 |
| 2 | 1 | 2 |
| 3 | 2 | 3 |
| 4 | 3 | ok... |
| 5 | 4 | - |
|
| | **Answer:** | **1<br>2<br>3<br>ok...** |

14.
```ruby
x = 5
i = 0

while i < 3
  x = x + 1
  i = i + 1
end

puts x
puts "#{x} plus #{i} equals #{x + i}"
```

| Count | x | i | Output |
|:---: |:---:| :---: | :---: |
| 1 | 5 | 0 | - |
| 2 | 6 | 1 | - |
| 3 | 7 | 2 | - |
| 4 | 8 | 3 | 8 |
|
| | | **Answer:** | **8<br>8 plus 3 equals 11** |

15.
```ruby
i = 4

while i > 0
  puts "ada!"
  i = i - 1
end

```

| Count | i | Output |
|:---: |:---:| :---: |
| 1 | 4 | ada! |
| 2 | 3 | ada! |
| 3 | 2 | ada! |
| 4 | 1 | ada! |
| 5 | 0 | - |
|
| | **Answer:** | **ada!<br>ada!<br>ada!<br>ada!** |

16.
```ruby
i = 1

while i
  puts "it takes a while"
end
```
| Count | i | Output |
|:---: |:---:| :---: |
| 1 | 1 | it takes a while |
| 2 | 2 | it takes a while |
| 3 | 3 | it takes a while |
| 4 | 4 | it takes a while |
| 5 | 5 | it takes a while |
| ...forever
| | **Answer:** | **infinite loops<br>take a while** |

17.
```ruby
i = 1

while i < 50
  puts "OHIO!"
  i = i * 50
end
```
| Count | i | Output |
|:---: |:---:| :---: |
| 1 | 1 | OHIO! |
| 2 | 50 | - |
|
| | **Answer:** | **OHIO!** |
