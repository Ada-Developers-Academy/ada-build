# Assignment: Student Account Generator

## We are going to write a program that generates some student information. This exercise will practice our skills with strings, random numbers, arrays and iterators.

## Requirements

# 1. You will start by creating three arrays:
  #  - An array that will contain student names

student_names = []

#     - An array that will store student ID numbers

student_ids = []

  #   - An array that will contain student email addresses

student_emails = []


     # **Note** Make sure to name your variables appropriately so that it is easy to deduce the information stored in each array and that this information is not singular. e.g.
     #  `flowers = ["lily", "rose", "gardenia", "daisy"] vs. flower = "tulip"`

# 2. Write a `times` loop that asks the user to enter in 5 student names (first and last name) and store those values in the first array in **all uppercase** even if the information is not entered by the user in uppercase.

puts "Please enter 5 student names (First Last)"

5.times do |count|
  print "  Student ##{count + 1}: "
  name = gets.chomp.to_s.upcase!
  name.push(name)
  name = name.split(" ")
  name = name[0][0] + name[1]
  email_name.push(name)
end

# Example output:
# ![student names](../images/student-names.png)

# 3. Write a `times` loop to generate random student ID numbers from 111111 to 999999 and put these values to the student ID number array.

5.times do
  number = rand(111111..999999).to_s
  id_numbers.push(number)
  number = number[-3, 3]
  email_number.push(number)
end

# Example output:
# ![student IDS](../images/student-ids.png)

# 4. Write a `times` loop to generate student email addresses in the format:
  # (first inital)+(last name)+(last 3 digits of student ID number)@adadevelopersacademy.org

5.times do |i|
  email = email_name[i] + email_number[i] + "@adadevelopersacademy.org"
  emails.push(email)
end

  # Example output: ![student emails](../images/student-emails.png)

# 5. Write the code which will print out all the student names, ID numbers, and email addresses in parallel.

puts "\n\nHere is your student data: "
5.times do |i|
  puts ""
  puts "#{names[i]} -- #{id_numbers[i]} -- #{emails[i]}\n\n"
end

## Optional Enhancements

# - make sure none of the IDs are duplicates

# - account for ID numbers whose last 3 digits are less than 100 (e.g. 111008) because these ID numbers will generate an email address with less than 3 digits at the end without special cases.

# - on email generation, account for first names with a space in them
# e.g. if the first name is "Mary Jane", then the first initial should be "MJ" rather than just "M"

# - read in the student names from a file instead of the user and make the array size according to the number of names
