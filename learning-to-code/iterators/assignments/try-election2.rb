# Ada C8 Jumpstart Homework for Julia Meier
# Election Program (Lesson 11) assignment

# Receives the number of candidates
puts "How many candidates are running in this race?"
no_candidates = gets.chomp.to_i
puts ""
puts "OK, so there are #{no_candidates} candidates in this race."
puts ""

# Creates an array to store the candidate names
candidate_names_array = []

# Receives the name of the candidates and stores them in an array
i = 0
while i < no_candidates
  puts "What is the name of Candidate ##{i+1}?"
  candidate_name = gets.chomp
  candidate_names_array << candidate_name
  i = i + 1
end

# Receives the number of voters
puts "How many voters are voting today?"
no_voters = gets.chomp.to_i

# Initializes the array to hold the votes
votes_array = Array.new(no_voters)

# Receives the voting data and stores it in the votes_array
(0...no_voters).each do |num|
  puts "Vote #{num +1}:"
  votes_array << gets.chomp
end

#Initializes the array to hold the tally. The data in each location of this array corresponds to the candidate_names_array.
tally_array = Array.new(no_candidates, 0)

# Counts number of votes and reports results
(0...no_candidates).each do |num|
  tally_array[num] = votes_array.count(candidate_names_array[num])
  puts "Candidate #{num +1} (#{candidate_names_array[num]}) received #{tally_array[num]} votes."
end

# Reports winner or tie
# Identifies max value in the tally_array
highest_no_votes = tally_array.max
puts "The highest number of votes was #{highest_no_votes} votes."

# If the highest number of votes is unique in the tally_array, it returns the corresponding candidate name. If it is not unique then it cycles through the array.

if tally_array.count(highest_no_votes) == 1
  puts "#{candidate_names_array[tally_array.find_index(highest_no_votes)]} is the election winner!"
else
  # If the max value occurs more than once, then it retrieves the location and finds the corresponding name in the candidate_names_array
  puts "There are #{tally_array.count(highest_no_votes)} candidates tied for the highest number of votes:"
  array_index = Array.new(tally_array.count(highest_no_votes))
  array_index = tally_array.each_index.select { |i| tally_array[i]== highest_no_votes}
    array_index.each do |x|
    puts candidate_names_array[x]
  end
end


# NOTE TO SELF: I left in this section to review later. This was my first thought before I found the "count" method used above. I want to work on this more to see if I can get it to work.

#Reviews array and tallies number of votes for each candidates
#(0...no_candidates).each do |num|
# candidate = candidate_names_array[num]
# i = 0
# puts "I'm in the each loop- Candidate: #{candidate}"
#  while i < no_voters
#    if votes_array[i] == candidate
#      tally_array[num] << tally_array[num] + 1
#      puts "#{tally_array[x]}"
#    end
#    i = i + 1
#  end
#end# Reports winner or tied candidates
#(0...no_candidates).each do |num|
#  puts "Candidate #{num +1} received #{tally_array[num]} votes."
#end
