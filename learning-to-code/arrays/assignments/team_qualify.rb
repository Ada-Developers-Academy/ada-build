def team_qualify
  puts "You don't qualify for a Professional Team."
  puts "Would you like to play with an Amatuer Team?"
  puts "Y/N"
  team_qualify = false
  while true
    print "> "
    choice = $stdin.gets.chomp
    if choice == "N"
      participant_door
    elsif choice == "Y"
      puts "Please enter your next prompt"
      amatuer_door
    else
      start
    end
  end
end

def profession_team(user_number)
  while user_number <= 10
    puts "Please try again."
    knock_door
    else
      user_number = gets.chomp.to_f
      professional_door
    end

  # End while loop
  end

  # Return the user_number. It will either be
  # the same entry passed in or a new entry if
  # the original entry was unacceptable.
  return user_number

  # End proper_number function.
end
