=begin
Primary Requirements

Create a walk-a-thon program that accepts the following input from the user:
 Earning goal for the walk-a-thon
 Amount earned per lap completed (per person)
 Number of laps completed for 5 people

Have the walk-a-thon program calculate and output the following:
 Who earned the most money
 Total amount earned in the walk-a-thon
 Whether or not the earning goal was met
=end

puts "Welcome to Soo's Walk-A-Thon Tracker"
puts "Our goal is to raise money!"

puts "Enter the earning goal for this event ($)"
earning_goal = gets.chomp.to_f

puts "Enter the amount earned per lap (per person) ($)"
amount_earned_per_lap = gets.chomp.to_f

puts "Please enter the number of laps completed by each person."
i = 1
total_amount_earned = 0
walker_data ={}
while i < 6
  puts "Walker #{i}:"
  laps_completed_walker_i = gets.chomp.to_f
  amount_earnt = laps_completed_walker_i * amount_earned_per_lap
  puts "--> Earned: $#{'%.02f' % amount_earnt}"
  walker_data["Walker #{i}"] = amount_earnt
  total_amount_earned += amount_earnt
  i += 1
end
# puts walker_data

puts"========================================"
puts "Highest Earning Walker:"
puts walker_data.each { |k, v| puts k if v == walker_data.values.max }

puts "Total amount earned: $#{'%.02f' % total_amount_earned}"

puts "Goal Met?"

if earning_goal > total_amount_earned
  puts "No!"
  puts "The goal was missed by $#{'%.02f' % (earning_goal-total_amount_earned)}"
else
  puts "Yes!"
  puts "The goal was beat by $#{'%.02f' % (total_amount_earned-earning_goal)}"
end
