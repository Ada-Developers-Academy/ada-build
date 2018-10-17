# This is a small title to introduce the madlibs
# it includes newline breaks for readability
puts "\n\nThe Birthday Party Mad Lib\n\nby JDJ\n\n"

# This is a simple introduction to get the user interested
puts "Hello, My name is Ruby, and I love birthday parties!"
puts "\nI want to give you the best birthday ever!"
puts "\nBut first I need to know a few things about you..."

# using print instead of puts tells the console to wait for user input
print "\nWhat's your name? "
# this assigns the variable name to the user's input
name = gets.chomp

# this interpolates the variable 'name' into the string
# newlines are used for readability
puts "\n\nHi #{name}!"

# now we are asking another question
# I changed from puts to print to tell the console to wait for input
print "\nHow old are you right now?\n "
# this assigns the variable 'age' to the user's input
# using to_i will convert the user input to an Integer
age = gets.chomp.to_i
# these are variables that will be used later in the game
# this assigns the variable 'birthday' to the the value of 'age' plus 1
birthday = age + 1
# this assigns the variable 'hours' to the value of 'age' times 3
hours = age * 3
# this assigns the variable 'friend_count' to the value of 'age' * 55
friend_count = age * 55

# now we are asking another question
puts "\n\nWhat is your favorite city in all the world? "
# used print and the string "city name: " to prompt the user to answer correctly
print "city name: "
# this assigns the variable 'city' to the user input
city = gets.chomp

# this interpolates the variable 'city' into a new string
puts "\nWow, #{city} is a beatiful place!"

# this prompts the user for more input
puts "\n\nTell me two words your best friends would use to describe you\n"
# used print with the the number 1 to prompt the user for the first input
print "1. "
# this will assign the variable 'adj1' to the the user input
adj1 = gets.chomp
# used print with the the number 2 to prompt the user for the second input
print "2. "
# this will assign the variable 'adj2' to the the user input
adj2 = gets.chomp

puts "\n\nPerfect! You must be AMAZING!"

# another question for user input
print "\n\nWhat are your favorite colors?\n"

# used print with the the number 1 to prompt the user for the first input
print "1. "
# this will assign the variable 'color1' to the the user input
color1 = gets.chomp
# used print with the the number 2 to prompt the user for the second input
print "2. "
# this will assign the variable 'color2' to the the user input
color2 = gets.chomp

# this interpolates both user prompts into a new string
# used the '.capitalize!' to ensure proper sentence punctuation
puts "\n\nGreat, #{color1} and #{color2} are beatiful colors!"

# here is another question for the user
puts "\n\nWhat are your two of your favorite animals?\n"

# used print with the the number 1 to prompt the user for the first input
print "1. "
# this will assign the variable 'animal1' to the the user input
animal1 = gets.chomp
# used print with the the number 2 to prompt the user for the second input
print "2. "
# this will assign the variable 'animal2' to the the user input
animal2 = gets.chomp
puts "\nVery cool! "

# this is setting up another part to the game
puts "\n\nNow were going to create a new mythical creature...\n"

# another question for the user
print "\nIs your creature fuzzy, slimy, or bumpy? "
# this will assign the variable 'feel' to the the user input
# while gets.chomp without an if/then function does not constrain the user input
# it does encourage the user to enter a descriptive adjective
feel = gets.chomp

# a new question for the user
print "\n\nWhat are your creature's three favorite foods?\n"

# used print with the the number 1 to prompt the user for the first input
print "1. "
# this will assign the variable 'food1' to the the user input
food1 = gets.chomp
# used print with the the number 2 to prompt the user for the second input
print "2. "
# this will assign the variable 'food2' to the the user input
food2 = gets.chomp
# used print with the the number 3 to prompt the user for the third input
print "3. "
# this will assign the variable 'food3' to the the user input
food3 = gets.chomp

puts "\nYummy!"

print "\n\nFinally, what are your creature's favorite activities?\n"

# used print with the the number 1 to prompt the user for the first input
print "1. "
# this will assign the variable 'activity1' to the the user input
activity1 = gets.chomp
# used print with the the number 2 to prompt the user for the second input
print "2. "
# this will assign the variable 'activity2' to the the user input
activity2 = gets.chomp

puts "\nWonderful!\n"

# this will assign the variable 'new_creature' to a new string that
# interpolates four previous variables into the new variable
new_creature = "#{feel.capitalize!} #{color1.capitalize} #{animal1}-#{animal2}"

# this string signals the user that the game is ready
puts "\nNow we're ready to party!\n\n"

# this string interpolates multiple variables in a way that the user might not expect
# the newlines ensure readability for the user
puts "Ok, #{name}, so for your #{adj1} birthday, you will have pizza with #{food1} and #{food2} toppings, #{color2} cake, and #{color1} ice cream!\n\n "

# here the 'new_creature' variable is interpolated into the string to introduce it to the user
puts "After eating all this deliciousness, you will receive a beatifully wrapped #{new_creature} in a box!\n\n"

# this string interpolates five variables variables into a new string
puts "Then, you and all your #{friend_count} #{adj2} friends will be #{activity1} around #{city} with your new #{new_creature} for #{hours} hours!\n\n"

puts "There will be plenty of #{food3} for snacking!\n\n"

# this interpolates the variable 'activity2' into a new string
puts "Finally, you will end this glorious celebration by #{activity2} all night long!\n\n"

# this line interpolates the two original variables into a new string
puts "Happy Birthday #{name}! Now you're #{birthday} years old!\n\n"
# this final string indicates the end of the game
puts "\nNever forget what an amazing person you are!\n\n"
