# More Loops

## Each
The each loop is used on a collection of data, like an Array, Hash or Range. This loop will iterate over each element of the collection, one by one, and provide access to each element using the _iteration variable_. The each loop will continue to execute until it has reached the end of the collection.

In the example below, this loop will print out each `vegetable` item in the `veggies` array.
```ruby
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
