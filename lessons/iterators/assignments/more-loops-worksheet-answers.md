1.
```ruby
cars = ["old", "new", "used"]
cars.each do |car|
  puts car
end
```
| Count | car |Output |
|:---: |:--- | :--- |
| 1 | old | old |
| 2 | new | new |
| 3 | used | used |

**Answer:**
>**old<br>new<br>used**


2.
```ruby
fruits = ["banana", "apple", "kiwi"]
fruits.each do |fruit|
  puts "I love " + fruit + "!"
end
```

| Count | Fruit | Output |
|:---: |:--- | :--- |
| 1 | banana | I love banana! |
| 2 | apple | I love apple! |
| 3 | kiwi |I love kiwi! |

**Answer:**
> **I love banana!<br>I love apple!<br>I love kiwi!**

3.
``` ruby
values = [8, 5, 3, 10, 14, 2]
values.each do |value|
  puts value
end
```
| Count | value | Output |
|:---: |:---: | :---: |
| 1 | 8 | 8 |
| 2 | 5 | 5 |
| 3 | 3 | 3 |
| 4 | 10 | 10 |
| 5 | 14 | 14 |
| 6 | 2 | 2 |

**Answer:**
> **8<br>5<br>3<br>10<br>14<br>2**

4.
``` ruby
total = 0
values = [4, 6, 2, 8, 11]

values.each do |value|
    total = total + value
end

puts total
```

| Count | value | total | total + value |
|:---: |:---: | :---: | :---: |
| 1 | 4 | 0 | 4 |
| 2 | 6 | 4 | 10 |
| 3 | 2 | 10 | 12 |
| 4 | 8 | 12 | 20 |
| 5 | 11 | 20 | 31 |
|
**Answer:**
> **31**

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

| Count | value | value == 10 ? | Output |
|:---: |:---: | :---: | :---: |
| 1 | 8 | false | Regular values like 8 |
| 2 | 5 | false | Regular values like 5 |
| 3 | 3 | false | Regular values like 3 |
| 4 | 10 | true | Special case! |
| 5 | 14 | false | Regular values like 14 |
| 6 | 2 | false | Regular values like 2 |

**Answer:**
>**Regular values like 8<br>Regular values like 5<br>Regular values like 3<br>Special case!<br>Regular values like 14<br>Regular values like 2**
