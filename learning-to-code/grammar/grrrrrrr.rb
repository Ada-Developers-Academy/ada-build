puts "\n\nThe Birthday Party Mad Lib\n\nby JDJ\n\n"

# then I will ask for multiple user inputs
puts "Hello, My name is Juniper, and I love birthday parties!"
print "What's your name? "
name = gets.chomp

# this assigns the variable name to the user imput

puts "\n\nHi #{name}!"
# this interpolates the variable 'name' into the string

puts "I want to give you the best birthday ever!"
puts "\nBut first I need to know a few things about you..."

puts "\nHow old are you right now?"
age = gets.chomp.to_i
birthday = age + 1
hours = age * 3
friend_count = age * 55

puts "\n\nWhat is your favorite city in all the world? "
print "city name: "
city = gets.chomp

puts "\nWow, #{city} is a beatiful place!"

puts "\n\nTell me two words your best friends would use to describe you\n"
print "1. "
adj1 = gets.chomp
print "2. "
adj2 = gets.chomp

puts "\n\nPerfect! You must be AMAZING!"

print "\n\nWhat are your favorite colors?\n"

print "1. "
color1 = gets.chomp
print "2. "
color2 = gets.chomp

puts "\n\nBeatiful!"

puts "\n\nWhat are your two of your favorite animals?\n"

print "1. "
animal1 = gets.chomp
print "2. "
animal2 = gets.chomp
puts "\nVery cool! "

puts "\n\nNow were going to create a new mythical creature...\n"

print "\nIs your creature fuzzy, slimy, or bumpy? "
feel = gets.chomp

print "\n\nWhat are your creature's three favorite foods?\n"

print "1. "
food1 = gets.chomp
print "2. "
food2 = gets.chomp
print "3. "
food3 = gets.chomp

print "\n\nFinally, what are your creature's favorite activities?\n"

print "1. "
activity1 = gets.chomp
print "2. "
activity2 = gets.chomp

puts "\nWonderful!\n"

new_creature = "#{feel.capitalize!} #{color1.capitalize} #{animal1}-#{animal2}"

puts "\nNow we're ready to party!\n"

puts "Ok, #{name}, so for your #{adj1} birthday, you will have pizza with #{food1} and #{food2} toppings, #{color2} cake, and #{color1} ice cream!\n\n "

puts "After eating all this deliciousness, you will receive a beatifully wrapped #{new_creature} in a box!\n\n"

puts "Then, you and all your #{friend_count} #{adj2} friends will be #{activity1} around #{city} with your new #{new_creature} for #{hours} hours!\n\n"

puts "Finally, you will end this glorious celebration by #{activity2} all night long!\n\n"

puts "Happy Birthday #{name}! Now you're #{birthday} years old!\n\n"
puts "\nNever forget what an amazing person you are!"
