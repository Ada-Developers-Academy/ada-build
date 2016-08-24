# Notes: More Loops

## Each
The each loop is used on a collection of data, like an Array, Hash or Range. This loop will iterate over each element of the collection, one by one, and provide access to each element using the _iteration variable_. The each loop will continue to execute until it has reached the end of the collection.

The `each` loop is comprised of three pieces:
1. The collection to be iterated
2. The _iteration variable_ to store each value
3. The block of code to be executed in the loop iteration

In the example below, this loop will iterate over the `veggies` array. For each iteration, the `vegetable` variable will be assigned to the value of the next element in the array, starting with the first. The block of code will be executed for each `vegetable` variable, which will print out the name of the vegetable.

```ruby
# A list of veggies
veggies = ["carrot", "yam", "zucchini", "spinach"]

veggies.each do |vegetable|
	puts "a vegetable: #{vegetable}"
end
```
output:
```
a vegetable: carrot
a vegetable: yam
a vegetable: zucchini
a vegetable: spinach
```

In the example below, this loop will iterate over the `names` array. For each iteration, the `name` variable will be assigned to the value of the next element in the array, starting with the first. The block of code will be executed for each name, which will say hello to each person!

```ruby
# A list of names
names = ["Rey", "Finn", "Han"]

names.each do |name|
  puts "Hello #{name}!"
end
```
output:
```
Hello Rey!
Hello Finn!
Hello Han!
```
