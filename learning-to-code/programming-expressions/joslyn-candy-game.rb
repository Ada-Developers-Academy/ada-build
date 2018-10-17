#Display welcome message
puts "\n\nWelcome to the Ada Virtual Vending Machine.\n\n"

puts "All of our candy is virtual and dentist approved!\n\n"


# this initial prompt asks the user how much change they have
# the $ symbol is included in the string because so the user will only enter integers
puts "How much change to you have?\n\n"
print "$ "

# this code block will handle any exceptions that arise from user error
# it will also evaluate whether or not the user enters an integer
# the Float(gets.chomp) will convert the user inputed value to a Float
# any appropriate value from the user input is assigned to the variable total_money
begin
  total_money = Float(gets.chomp)
rescue
  puts "Sorry, does not compute. Please type integers only and do not type special symbols ($, €, £, etc.)."
  retry
end


# This will store user input in a variable
# to keep track of how much money they have left
# If the user's total money is less than the lowest priced snack
# it will end the program
if total_money < 0.25
  puts "\n\nOnly $#{sprintf("%.2f",total_money)}! Sorry, come back when you have at least .25 cents to spend."
elsif total_money <= 1
  puts "\n\n$#{sprintf("%.2f",total_money)}, that's all? Okay then.\n"
else
  puts "\n\n$#{sprintf("%.2f",total_money)}, wow! You've got money to burn!\n"
end

# If the user has at least 0.25 cents, display all candy options and their costs.
# this uses the variable 'candy' to list concantinated strings containing
# the candies and their respective prices
candy = "A. $0.25 Skittles" + "\n" + "B. $0.50 Caramels" + "\n" + "C. $0.75 Reece's Pieces" + "\n" + "D. $0.80 M & M's" + "\n" + "E. $1.0 Gummy Bears" + "\n" + "F. Nevermind, I don't want candy."

# this variable concantinates a string and the variable 'candy'
# with the condition that the variable 'total_money' be greater than or equal to
# the lowest candy price
selection_list = "\n" +"Here is what we have available today:" + "\n" + candy if total_money >= 0.25

# This will ask the user to select a candy option
# it will then compare the cost to total_money
# If the cost is to high, it will tell the user to select again
# the total money is enough, it will subtract the cost from total_money
# it will then display the new value for total_money and allow them to select again
# the selection variable is assigned to the users new input

selection = nil

while total_money >= 0.25 && selection != "f"
  puts selection_list
  puts "\n" + "Please make your selection:\n "
  selection = gets.chomp.downcase
  if selection == "a" and total_money >= 0.25
    puts "You ordered Skittles. That will be $0.25 please.\n"
    total_money = total_money - 0.25
    puts "Delicious!. You have $#{sprintf("%.2f",total_money)} left.\n"
  elsif selection == "a" and total_money < 0.25
    puts "Sorry, you don't have enough money for that. Please find more cash.\n"
  elsif selection == "b" and total_money >= 0.50
    puts "You ordered Caramels. That will be $0.50 please.\n"
    total_money = total_money - 0.50
    puts "Yummy! You have $#{sprintf("%.2f",total_money)} left.\n"
  elsif selection == "b" and total_money < 0.50
    puts "Sorry, you don't have enough money for that. Please find more cash.\n"
  elsif selection == "c" and total_money >= 0.75
    puts "You ordered a Reece's Pieces. That will be $0.75 please.\n"
    total_money = total_money - 0.75
    puts "Peanuty buttery goodness! You have $#{sprintf("%.2f",total_money)} left.\n"
  elsif selection == "c" and total_money < 0.75
        puts "Sorry, you don't have enough money for that. Please find more cash.\n"
  elsif selection == "d" and total_money >= 0.80
    puts "You ordered M & M's. That will be $0.80 please.\n"
    total_money = total_money - 0.80
    puts "Chocolaty perfection! You have $#{sprintf("%.2f",total_money)} left.\n"
  elsif selection == "d" and total_money < 0.80
        puts "Sorry, you don't have enough money for that. Please find more cash.\n"
  elsif selection == "e" and total_money >= 1.00
    puts "You ordered Gummy Bears. That wil be $1.00 please.\n"
    total_money = total_money - 1.00
    puts "Fun! You have $#{sprintf("%.2f",total_money)} left.\n"
  elsif selection == "e" and total_money < 1.00
    puts "Sorry, you don't have enough money for that. Please find more cash.\n"
  elsif selection == "f"
    puts "Okay..."
  else
    puts "Please enter A, B, C, D, E, or F\n"
  end
end

if selection == "f"
  puts "See you again soon."
else
  puts "\n" + "According to my calculations, you're broke! Please take your $#{sprintf("%.2f",total_money)} and find more cash!\n\n"
end
