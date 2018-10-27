def round_down(float, round)
  round_modifier = 10 ** round
  return (float * round_modifier).floor / round_modifier.to_f

def get_user_input()
  return round_down(Float(gets.chomp), 2) rescue false
end

puts "Lets start the #{walk_a_thon()}!"

def walk_a_thon()
  err_valid_num = "Please enter a valid number"
  puts "Welcome to Michelle's Walk-A-Thon"
  puts "Our goal is to raise money!"

  print "Enter the earning goal for this event > "
  earning_goal = get_user_input()
  if !earning_goal
    puts err_valid_num
    return
  end

  max_walkers = 3
  walker_number = 1

  highest_earning_walkers = []
  highest_earned_amount = 0
  total_amount_earned = 0

  while walker_number <= max_walkers
    print "Walker #" + i.to_s + " > "

    walker_laps = get_user_input()
    if !walker_laps
      puts err_valid_num
      next
    end

    print "Enter the amount this walker earns per lap > "
    earns_per_lap = get_user_input()
    if !earns_per_lap
      puts err_valid_num
      next
    end

    walker_number += 1
    current_walker_earned = walker_laps * earns_per_lap
    puts "--> Earned $" + current_walker_earned.round(2).to_s
    total_amount_earned += current_walker_earned
    if highest_earning_walkers.length == 0 || current_walker_earned > highest_earned_amount
      highest_earning_walkers = [walker_number.to_s]
      highest_earned_amount = current_walker_earned
    elsif current_walker_earned == highest_earned_amount
      highest_earning_walker.push(walker_number.to_s)
    end
  end

  if earning_goal == total_amount_earned
    goal_met_str = "Yes. You earned the exact amount to reach the goal!"
  elsif total_amount_earned > earning_goal
    goal_met_str = "Yes. You exceeded the goal by $" + (total_amount_earned - earning_goal).to_s
  else
    goal_met_str = "No :-(. You missed the goal by $" + (earning_goal - total_amount_earned).to_s
  end

  puts "========================================"
  if highest_earning_walker.length == 1
    puts "Higest Earning Walker: #" + highest_earning_walkers[0].to_s
  else
    highest_walkers_str = nil
    highest_earning_walkers.each do |walker|
      if !highest_walkers_str
        highest_walkers_str = "#" + walker.to_s
      else
        highest_walkers_str += ", #" + walker.to_s
      end
    end
    puts "Higest Earning Walkers: " + highest_walkers_str
  end
  puts "Total amount earned: $" + round_down(total_amount_earned, 2).to_s
  puts "Goal Met? " + goal_met_str
end
end
