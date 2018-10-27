# From Ada Developers Academy 2018 Jump Start Program

# Helper functions:

# Define a function to verify user
# entry is acceptable (i.e., a postive integer or
# float, greater than 0.)
# Takes in user_entry, an integer or float.
# Returns user_entry either unaltered (if
# it passes the verification test) or a new
# value (after user has been prompted to
# enter a new value.)
def verify_entry(user_entry)

  # Run while loop while user_entry is
  # less than or equal to 0.
  # If user enters a string, both to_i and
  # to_f will convert that string to 0, so
  # this verification function will catch
  # strings as well.
  while user_entry <= 0

    # Alert user to issue and ask for the correct
    # type of number.
    puts "Hmmm, that doesn't seem right."
    print "Please enter a positive number greater than 0: "

    # Some user_entries should be integers and
    # some should be floats. The original entry
    # will come in as one of the two, so check
    # its type and convert the new user entry to
    # the same type.
    if user_entry.class == Integer
      user_entry = gets.chomp.to_i
    else
      user_entry = gets.chomp.to_f
    end

  # End while loop
  end

  # Return the user_entry. It will either be
  # the same entry passed in or a new entry if
  # the original entry was unacceptable.
  return user_entry

# End verify_entry function.
end

# Define a function to add commas to dollar
# values. Takes in a number. Returns a string
# of the same number with commas and a dollar
# sign added.
# Used following two pages as guides:
# http://johnallen.us/?p=380.
# http://rubylearning.com/satishtalim/writing_own_ruby_methods.html
def addcommas(number)

  # Convert float to string and split at decimal.
	#splitMoney = self.to_s.split(".")
  splitMoney = number.to_s.split(".")

  # Add commas to the dollar side using
  # Kevin Obrich's method from Ruby forum:
	# https://www.ruby-forum.com/topic/52596.
	dollarsOnly = splitMoney[0].to_s.reverse.gsub(/(\d{3})/,"\\1,").chomp(",").reverse

  # Recombine dollars with cents, insert $ and return.
	return "#{dollarsOnly}.#{splitMoney[1]}".insert(0, "$")

# End addcommas function.
end


# Main program:

# Define a function that calculates walk-a-thon
# results.
def calculate_walk_results

  # Introduce the walk-a-thon program
  puts "Hello and welcome to this walk-a-thon calculator."
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

  # Initialize empty array to hold indiviual
  # team member data hashes.
  team_data = []

  # Use team_size as upper limit of range to loop
  # through. This loop allows us to get info. for
  # each team member and save it to a hash and then
  # add that hash to the team_data array.
  (1..team_size).each do |i|

    # Get the name of each team member,
    # capitalize it and save to name variable.
    print "\nEnter name of team member #{i}: "
    name = gets.chomp.capitalize

    # Verifying that user enters a name here. I tried
    # to add this check to the verify_entry function,
    # but I was having difficulty checking for both
    # numbers and strings. As name is only asked once,
    # I think it's not that repetitious to add a special
    # verification here.
    # While there is no entry for name (name = empty string),
    # alert the user to the issue and ask for name again.
    # Resave the entry and verify again, until entry
    # passes this check.
    while name == ""
      puts "Hmmm, that doesn't seem right."
      print "Please enter a name or other team member designator: "
      name = gets.chomp.capitalize
    end

    # Get amount each team member earned per lap,
    # convert to float, verify the amount is
    # greater than 0 by calling the verify_entry function,
    # and save to per_lap variable. If the entry
    # is not acceptable, the verify_entry function will
    # ask for another entry until an acceptable
    # entry has been entered and that entry will be
    # stored in the per_lap variable.
    print "\nHow much did #{name} earn per lap? "
    per_lap = verify_entry(gets.chomp.to_f)

    # Get number of laps completed and convert to
    # integer. Only full/complete laps will be counted.
    # Call verify_entry function to ensure entry is
    # greater than 0. Again the verify_entry function
    # will ask for another entry until an acceptable
    # one has been entered. And, again, that entry will
    # be saved to laps.
    print "\nHow many laps did #{name} fully complete? "
    laps = verify_entry(gets.chomp.to_i)

    # Use name, earnings per lap and laps completed to
    # create a hash of data for each team member. The
    # total amount earned by each team member is a
    # product of  earnings per lap and number
    # of laps completed. Each hash is shoveled into
    # the team_data array.
    team_data << {
                  walker_name: name,
                  earned_per_lap: per_lap,
                  laps_completed: laps,
                  amount_earned: (per_lap * laps)
                  }

  end

  # Calculate total earned from array of hashes.
  # Use .sum from Enumerables class to sum the
  # amount_earned value for each team member.
  total_earned = team_data.sum { |member| member[:amount_earned]}

  # Compare total_earned to earnings_goal by substracting
  # goal from total amount earned.
  earnings_to_goal = total_earned - earnings_goal

  # Use max_by to find the highest earner on the team.
  # Use find_all to find any other team members who are tied for
  # highest_earner.
  # (The highest_earner and highest_earner_s  contain the full hashes.
  # And, highest_earner_s is an array of hashes.)
  highest_earner = team_data.max_by { |member| member[:amount_earned] }
  highest_earner_s = team_data.find_all { |member| member[:amount_earned] == highest_earner[:amount_earned] }

  # Output results.
  puts "-----------------------"
  puts "Here are the results!"
  puts "-----------------------"

  # Communicate total earned by the team, formatting
  # the amounts with $ symbol, commas (if necessary)
  # and 2 decimal places.
  puts "The team earned a total of #{addcommas(format("%.2f", total_earned))} towards its goal of #{addcommas(format("%.2f", earnings_goal))}."

  # If earnings exceeded goal, output congratulatory message
  # along with the amount by which the goal was exceeded.
  # Again, format dollar amounts appropriately.
  if earnings_to_goal > 0
    puts "Congratulations! You've exceeded your goal by #{addcommas(format("%.2f", earnings_to_goal))}."

  # Else, if earnings exactly equaled goal, output a slightly
  # different congratulatory message.
  elsif earnings_to_goal == 0
    puts "Wow! You met your goal exactly!"

  # Otherwise, earnings were less than goal; output a
  # message specifying the amount by which the goal
  # was missed (use .abs to remove the minus sign).
  # Again, format dollar amounts appropriately.
  else
    puts "Oh no! You missed your goal by #{addcommas(format("%.2f", earnings_to_goal.abs))}"
  end

  # Announce the top earner. First need to check if
  # there is a tie for top earner.
  # If the length of the highest_earner_s array is 1, then
  # we know there is only one top earner.
  if highest_earner_s.length == 1
    puts "#{highest_earner_s[0][:member_name]} is the top earner at #{addcommas(format("%.2f", highest_earner_s[0][:amount_earned]))}."

  # Otherwise, there is more than 1 top earner, so output
  # the names of all top earners.
  else
    puts "There is a tie for top earner!"
    puts "The following people are on top having earned #{addcommas(format("%.2f", highest_earner_s[0][:amount_earned]))} each."
    highest_earner_s.each { |member| puts member[:member_name] }
  end

# End calculate_walk_results function.
end

# Call the function to calculate the walk-a-thon results.
calculate_walk_results
