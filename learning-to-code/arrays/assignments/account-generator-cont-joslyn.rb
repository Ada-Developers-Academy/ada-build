# Account Generator with Arrays
#
student_names = []
student_ids = []
student_emails = []
student_data = []

puts "\n\nPlease enter how many team members you have (numeric)\n\n"

number_on_team.times do |count|
  print "  Walker ##{count + 1}: "
  # helps user count number of students they've input
  name = gets.chomp.to_i
  # this appends the user-entered names
  # into the array student_names
  walker_names << name
  id = Random.rand(111111..999999).to_s
  walker_ids << id
  # this appends the random id's
  # to the array student_ids
  data = "#{walker_names} -  - #{walker_ids}"
  walker_data << data
end

puts "\n\nHere is your student data: \n\n"

puts student_data
puts "\n"
