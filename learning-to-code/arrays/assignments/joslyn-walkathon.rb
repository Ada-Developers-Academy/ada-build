=begin
  First, I'm really sorry how cluttered this looks. It's not as complicated as it actually appears. A lot of comments just makes it look like a lot

  Second, hi. I drank 3/4 of my iced mocha doing this and now I feel hyper.

  Fun fact: I took some CS classes I already learned the material for just so I can get the units. I mean I didn't need to learn the material then, but I figured that hey I already learned this so might as well get something on paper so I have proof I learned that.

  So for my data structures class, I used to write my professor stories and notes in my comments like this. I remember one time I made a really nerdy... I think it was Harry Potter-themed coding story? The program is still in my notes somewhere so I'll check it out. And now I'm doing it for (to?) you.

  I have a habit of leaving random non-technical notes all throughout my programs like this. I think one day when I get a full time job it might bug people but hopefully I find a team that actually likes it.

  Anyways, enjoy!
=end


puts "Welcome to the Michael Scott's Dunder Mifflin Scranton Meredith Palmer Memorial Celebrity Rabies Awareness Pro-Am Fun Run Race for the Cure"
puts
puts "The race to cure rabies begins here" # I originally wrote "The raise to cure rabies begins here" and I only caught it after I finished my program. That's embarassing.

puts
puts

puts "How much money do you want to raise to cure rabies? "
print "$ "
moneyGoals = gets.chomp.to_f  #Note: In the future, you should always put money as an int, not float. More on this later but for now this is ok. Once you start doing practical work though, storing money as a float is dangerous. 100% sure ADA will talk about it but lemme know if you're curious.


puts
puts
puts "How many Walkers will you enter? "
print "Participants: "
numberOfPeople = gets.chomp.to_f  #Note: In the future, you should always put money as an int, not float. More on this later but for now this is ok. Once you start doing practical work though, storing money as a float is dangerous. 100% sure ADA will talk about it but lemme know if you're curious

# numberOfPeople = 5 #Remember, magic numbers make people cry. This also solves Optional Enhancement #4
teamResults = {} #First value is runner unmber, second value is laps run

# Gather money raised by team
currentWalker = 1
while currentWalker <= numberOfPeople
  puts "\n\nHow many laps were completed?"
  puts "Walker # #{currentWalker}"
  print "Laps completed: "
  numberOfLaps = gets.chomp.to_i

    numberOfLaps.times.each do |count|
      puts "How much was earned per lap? "
      print "Lap ##{count+1} $  "
      walkerLapRate = gets.chomp.to_f
      perLapRate = walkerLapRate + walkerLapRate
    else

    end

  moneyRaisedByWalker = perLapRate
  teamResults[currentWalker] = moneyRaisedByWalker
  currentWalker = currentWalker + 1
end

# Calculate who raised the most
# Note: repl.it's autocomplete is terrible. Like wtf man, how is "time_zone_select" an appropriate autocomplete to "Calculate who raised the most" ?

currentWalker = 1
runnerWithMostMoney = -1 #Common practice is to set a value that depends on caluclation and should be positive to -1 as default. This way if something goes wrong, it's very obvious that the calculations just didn't work if you get -1 back.
mostMoney = -1
totalMoneyRaised = 0

while currentWalker <= numberOfPeople
  totalMoneyRaised = totalMoneyRaised + teamResults[currentWalker]

  puts "\nWalker ##{currentWalker}: $#{teamResults[currentWalker]}"
  if teamResults[currentWalker] > mostMoney
    runnerWithMostMoney = currentWalker
    mostMoney = teamResults[currentWalker]
  end
  currentWalker = currentWalker + 1
end


# Figure out if goal is met, then print everything.
puts
puts
puts
puts "  ###RESULTS###"
if totalMoneyRaised > moneyGoals
  puts "Congrats! Rabies is cured! We raised $#{totalMoneyRaised - moneyGoals} over our goal!"
else
  puts "Rabies won today. Someone tell Bob Vance, Vance Refridgeration that we fell short by $#{moneyGoals - totalMoneyRaised}"
end

#Note: This solves Optional Enhancement #2

puts "The runner who raised the most is Walker ##{runnerWithMostMoney} with $#{mostMoney}"
