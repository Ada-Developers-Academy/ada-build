# More Loops Worksheet Answers
### JD Joslyn
***

1.
```ruby
cars = ["Ford", "Lincoln", "Mercury"]
cars.each do |car|
  puts car
end
```
| Count | car |Output |
|:---: |:--- | :--- |
| 1 | Ford | Ford |
| 2 | Lincoln | Lincoln |
| 3 | Mercury | Mercury |

> **Answer:**
>
>**Ford<br>Lincoln<br>Mercury**


2.
```ruby
fruits = ["yellow bananas", "sweet apples", "yummy kiwis"]
fruits.each do |fruit|
  puts "I love " + fruit + "!"
end
```

| Count | Fruit | Output |
|:---: |:--- | :--- |
| 1 | banana | I love yellow bananas! |
| 2 | apple | I love sweet apples! |
| 3 | kiwi |I love yummy kiwis! |

> **Answer:**
>
> **I love yellow bananas!<br>I love sweet apples!<br>I love yummy kiwis!**

3.
``` ruby
values = [8, 5, 3, 10, 14, 2]
values.each do |value|
  puts value + 1
end
```
| Count | value | Output |
|:---: |:---: | :---: |
| 1 | 8 | 9 |
| 2 | 5 | 6 |
| 3 | 3 | 4 |
| 4 | 10 | 11 |
| 5 | 14 | 15 |
| 6 | 2 | 3 |

>  **Answer:**
>
> **9<br>6<br>4<br>11<br>15<br>3**

4.
``` ruby
total = 0
values = [4, 6, 2, 8, 11]

values.each do |value|
    total = total + value + 1
    puts total
end

puts total * 2
```

| Count | value | total | total + value |
|:---: |:---: | :---: | :---: |
| 1 | 4 | 0 | 5 |
| 2 | 6 | 4 | 12 |
| 3 | 2 | 10 | 15 |
| 4 | 8 | 12 | 24 |
| 5 | 11 | 20 | 36 |

> **Answer:**
>
> **72**

5.
```ruby
values = [8, 5, 3, 10, 14, 2]
values.each do |value|
  if value >= 10
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
| 5 | 14 | true | Special case! |
| 6 | 2 | false | Regular values like 2 |

> **Answer:**
>
>**Regular values like 8<br>Regular values like 5<br>Regular values like 3<br>Special case!<br>Special case!<br>Regular values like 2**
