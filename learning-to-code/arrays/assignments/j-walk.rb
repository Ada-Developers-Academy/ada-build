def verify_entry(user_entry)

  while user_entry <= 0

    puts "Hmmm, that doesn't seem right."
    print "Please enter a positive number greater than 0: "

    if user_entry.class == Integer
      user_entry = gets.chomp.to_i
    else
      user_entry = gets.chomp.to_f
    end
  end

  return user_entry
end

def addcommas(number)

  splitMoney = number.to_s.split(".")

  dollarsOnly = splitMoney[0].to_s.reverse.gsub(/(\d{3})/,"\\1,").chomp(",").reverse

  return "#{dollarsOnly}.#{splitMoney[1]}".insert(0, "$")
end

puts "Hello and welcome to my Walker Tracker!"
puts "Let's see how your team did."

print "\nHow much was your team trying to earn? "

earnings_goal = verify_entry(gets.chomp.to_f)

puts "\nThank you for your effort"
puts earnings_goal

print "\nHow many people were on your team? "

team_size = verify_entry(gets.chomp.to_i)

puts "Nice!"
puts team_size

walker_names = []
walker_lap_count = []
total_earned = 0
per_walker_earned = 0
earned = 0
walker_earned = []
walker_data = []

(1..team_size).each do |i|
  print "\nEnter name of Walker #{i}: "
  name = gets.chomp.upcase!
  walker_names << name
  puts "\nHow many laps were completed by #{name}?\n"
  print "Walker #{i} lap count: "
  laps = verify_entry(gets.chomp.to_i)
  walker_lap_count << laps

  laps.times do |lap|
    puts "\nHow much was earned for Lap ##{lap + 1}?\n"
    print "\n$"
    earned = verify_entry(gets.chomp.to_i)
    per_walker_earned += earned
    walker_earned << per_walker_earned
    total_earned += earned
  end
end

puts "-----------------------"
puts "Here are the results!"
puts "-----------------------"

puts walker_data
puts "The team earned a total of #{addcommas(format("%.2f", total_earned))} towards its goal of #{addcommas(format("%.2f", earnings_goal))}."

earnings_to_goal =  total_earned - earnings_goal

if earnings_to_goal > 0
  puts "Congratulations! You've exceeded your goal by #{addcommas(format("%.2f", earnings_to_goal))}."
  elsif earnings_to_goal == 0
    puts "Wow! You met your goal exactly!"
  else
    puts "Oh no! You missed your goal by #{addcommas(format("%.2f", earnings_to_goal.abs))}"
  end

# who earned the most
