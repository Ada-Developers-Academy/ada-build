# Conditional Worksheet

Read the code in each section, then predict the output of the final line of code. Additionally, trace the code. Indicate which statements are checked and which ones aren’t. If it helps, make a flowchart of the code.

Each problem stands alone. Variables from previous problems do not exist in subsequent questions.

## Problem Set

1.
```ruby
cookies = true
cake = false

if cookies == true
   print "OMG COOKIEZ"
end
if cake == true
   print "OMG CAKE!"
else
   print "WHATEVZ DESSERTZ."
end
```

2.
```ruby
person_age = 55
ada_age = 2

if person_age < ada_age
   print "This person is younger"
elsif ada_age < person_age
   print "Ada is younger"
else
   print "They’re the same!"
end
```
3.
```ruby
pet = "cat"
food = "ice cream"

if pet == "cat"
   print "here kitty"
elsif pet == "dog"
   print "woof"
else
   print "some other sound"
end

if food == "broccoli"
   print "eh."
elsif food == "ice cream"
   print "yum"
end
```


4.
```ruby
x = 7
y = 7

if x >= y
   if x > y
      print "x is bigger"
   else
      print "x = y"
   end
else
   print "y is bigger"
end
```

5.
```ruby
x = 7
y = 7

if x > y || x == y
   if x > y
      print "x is bigger"
   else
      print "x = y"
   end
else
   print "y is bigger"
end
```

6.
```ruby
x = 7
y = 7

if x >= y
   print "x is bigger"
else
   print "y is bigger"
end

if x == y
   print "x = y"
end
```


**When you are complete with all of these problems, you can check your answers against the [answer key](../assignments/conditional-worksheet-answers.md).**
