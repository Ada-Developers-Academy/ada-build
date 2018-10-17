#Voting Machine

#Hash of Candidates
candidates = Hash.new

candidates_a = ["tigeress","iman","lizzo","janet jackson","beyonce","michelle obama"]

candidates_a.each{|x|
  candidates.store(x,0)
}

puts "Will you like to vote? Please input y to continue to vote. Please input n to stop voting."
counting = gets.chomp.downcase

until counting == "n"
  puts"Welcome to the voting machine! Please review the candidates and enter your choice. Remember case and spelling matters. If your desired candidate is not on the list, please type their name."
  puts"\n"*2
  puts candidates_a
  vote = gets.chomp.downcase

  if candidates_a.include?(vote) == true
    candidates.each{|key,value|
      if vote == key
        candidates.store(vote,(value + 1))
      end
    }
  else
    candidates_a.push(vote)
    candidates.store(vote,1)
  end

  puts "Will you like to vote? Please input y to continue to vote. Please input n to stop voting."

  counting = gets.chomp.downcase
end

if counting == "n"
  puts "Thanks for voting! We have collected all the votes, and will return the tally."
end
"\n"*2
#Sorts the hash of candidates and their votes received
candidates = candidates.sort_by{|key,value| -(value.to_i)}.to_h
max = (candidates.values[0]).to_i


#Determines the winner of election and returns election results to user
if max >= 1
  v = "s "
  if max == 1
    v = " "
  end
  puts "Winner#{v}with #{max} vote#{v}:"
  candidates.each{|person,count|
    if count == max
      print "#{person}, "
    end
  }
else
  puts "There are no votes to tally. Please run program again and vote."
end
