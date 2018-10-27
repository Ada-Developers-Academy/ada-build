# WALKATHON Primary Requirements
# 1. Create a walk-a-thon program that accepts the following input from the user:
#   a. Earning goal for the walk-a-thon

earning_goal []

#   b. Amount earned per lap completed (per person)
pp_lap_earned []

cars = ["Ford", "Lincoln", "Mercury"]
cars.each do |car|
  puts car
end

values = [8, 5, 3, 10, 14, 2]
values.each do |value|
  if value == true
    puts "Special case!"
    while false

  else
    puts "Regular values like #{value}"
  end
end

if options == false
  puts OptionalsModule
elsif options == true
  puts

  module MyClass
    include Option1Module
    # include Option2Module
    # include Option3Module
    # include Option4Module
    # include Option5Module
  end

  MyClass.new.say # => "goodbye from module"


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


amatuer_walkers = {
  :ppl_earned => "This allows input for a flat-fee type payout. ie the same rate for each lap per person."
}

professional_walkers = {
  :ppl_earned => "This allows input for a per lap payout. ie the same can be adjusted for each lap per person."
}


#   c. Number of laps completed for 5 people
team_lap_total []

participant_names []

highest_earner = [

earner_info = {
  :name => "Walker Names",
  :earn => "Walker Earnings",
  :rank => "Top Earners (Would you like to see the top/next 5 earners?)"
}
]

partipant_info [
  :name => Participant_names,
  :participant_number => "Would you like to see five (or more) participants?",
  :rank => "Walker Type (Would you like to see Amatuer or Professional Walkers?)",
  :earn => "Walker Earnings",
]

this_walker = {
  :randNum => "Randomly assigned walker id number",
}

module ThisModule
  def ThisModule
    # options module off
    puts "How much will this walker earn per lap?"

    # options module onn
    puts "How much will this walker earn for each lap? 1,2,3,4,5..."
  end
end



module Participant_names
  def Participant_names
    puts "\n\nPlease enter 5 Participant names (First Last)\n\n"

    5.times do |count|
    print "  Participant ##{count + 1}: "

    # helps user count number of Participants they've input
    name = gets.chomp.to_s.upcase!

    # this appends the user-entered names
    # into the array Participant_names
    participant_names << name
  puts "\n"
end
end


#
# ------------------------------------------- #

# 2. Have the walk-a-thon program calculate and output the following:
#   a. Who earned the most money

class Most_Money
  def Most_Money
    puts "Here are the top scorer(s)!"
    @topscorer
#   b. Total amount earned in the walk-a-thon
#   c. Whether or not the earning goal was met
end
end




module OptionalsModule
  def do
    puts "The optional features are currently under developement."
    puts "Thank you for your patience."
    puts "JDJ"
    # include MyEnhancements
  end
end

module MyEnhancements
  # include Option1Module
    # Display all money formatted to two decimal places
  # include Option2Module
    # Display by how much the goal was missed by or was beaten by, in the event that the goal was not achieved exactly (e.g. "The goal was missed by $217.50")
  # include Option3Module
    # Display multiple walkers as highest earning, in the event of a tie for highest earners
  # include Option4Module
    # Consider how to handle 500 walkers
  # include Option5Module
    # Consider each walker earning a different amount per lap walked
end





MyEnhancements.new.do # => "goodbye from module"
