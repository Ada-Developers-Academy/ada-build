def calculate_walk_results

  # Introduce the walk-a-thon program
  puts "Hello!"
  puts "Welcome to my very own Walker Tracker!"
  puts "Let's see how your team did."

  # Get user input:

  # Ask for team size.
  print "\nHow many people were on your team? "

  # Get user entry and convert to an integer.
  # Verify user input is acceptable.
  team_size = verify_entry(gets.chomp.to_i)

  # Ask for earnings goal.
  print "\nHow much were you trying to earn? "

  # Get user entry and convert to a float.
  earnings_goal = verify_entry(gets.chomp.to_f)
