# Arrays
names = []
id_numbers =[]
emails = []
email_name = []
email_number = []


puts "Please enter 5 student names (First Last)"

# gathers 5 names and makes all uppercase, formats names for email generation
5.times do |count|
  print "  Student ##{count + 1}: " # helps user count number of students they've input
  name = gets.chomp.to_s.upcase!
  names.push(name)
  name = name.split(" ")
  name = name[0][0] + name[1]
  # YAY!
  # first letter of first name and all of last name
  email_name.push(name)
end

# generates 5 random numbers within specific range
5.times do
  number = rand(111111..999999).to_s
  id_numbers.push(number)
  number = number[-3, 3]
  email_number.push(number)
end

# generates email address based on (first inital)+(last name)+(last 3 digits of student ID number)@adadevelopersacademy.org
5.times do |i|
  email = email_name[i] + email_number[i] + "@adadevelopersacademy.org"
  emails.push(email)
end

# displays names, id numbers, and emails in parallel
puts "\n\nHere is your student data: "
5.times do |i|
  puts ""
  puts "#{names[i]} -- #{id_numbers[i]} -- #{emails[i]}\n\n"
end
