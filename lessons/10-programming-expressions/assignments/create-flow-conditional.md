# Flow Control
1. Use your new knowledge of conditionals to recreate this flow control diagram using conditionals in code.  
Assume that the `x` and `y` variable data comes from user input prior to the conditional execution.  
**Hint:** You should be able to complete this with `if/elsif/else/end`.
![flow control assignment](../images/flow-control-assignment.png)

2. Now we will go the other way! Take the conditional below and create the flow control diagram that would represent this conditional's logic.

```ruby
number_of_sides = gets.chomp

if number_of_sides == 1
  print "You've got a line"
elsif number_of_sides == 2
  print "I'm not really sure what you have"
elsif number_of_sides == 3
  print "You've got a triangle"
elsif number_of_sides == 4
  print "You've got some sort of quadrilateral"
end
```
