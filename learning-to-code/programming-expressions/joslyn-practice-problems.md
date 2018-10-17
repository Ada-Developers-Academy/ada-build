# Practice problems
_Jump start: Lesson 10_

## Conditional practice
1. Use your new knowledge of conditionals to recreate this flow control diagram using conditionals in code.  
Assume that the `x` and `y` variable data comes from user input prior to the conditional execution.

![flow control assignment](./images/flow-control-assignment.png)

  ```ruby

  puts "\n\nGive me two numbers:\n"

  print "Number 1: "

  x = gets.chomp.to_i

  print "Number 2: "

  y = gets.chomp.to_i

  if x == y
    puts "Good job! Your numbers are EQUAL"
  elsif x < y
    puts "Your first number is is LESS THAN your second."
  elsif x > y
    puts "Your first number is GREATER THAN your second"
  else
    puts "Huh, I just don't know about you."
  end
  ```

2. Now we will go the other way! Using the code below create the flow control diagram that would represent it.

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

![flow control diagram](./images/flow-control-diagram.png)
this image has an error, it should show (1..4) not (1...4)

3. Read the code in each section, draw a corresponding flow chart and then predict the output. Check your answers by running the code snippets in Terminal.

      ```ruby
      # problem 1
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
![problem 1 diagram](./images/problem-1-diagram.png)
      ``` ruby
      # problem 2
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
![problem 2 diagram](./images/problem-2-diagram.png)    
      ``` ruby
      # problem 3
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
![problem 3 diagram](./images/problem-3-diagram.png)    
      ``` ruby
      # problem 4
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
![problem 4 diagram](./images/problem-4-diagram.png)    
      ``` ruby
      # problem 5
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
![problem 5 diagram](./images/problem-5-diagram.png)    
      ``` ruby
      # problem 6
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
![problem 6 diagram](./images/problem-6-diagram.png)
