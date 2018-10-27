
## Joslyn
## Hashes Assignment
# Student Account Generator

# prompts user for file name
puts "What file do you want to open?"
# this reads the student names from a file
  file = gets.chomp
  # sets empty array for student name, id and email hash element
  # the array will be sized according to the number of names (lines) in the file
    student_data = []

    # using each allows this loop to continue through until the end of the file
    # reads text file with each line containing student name in format (first last)
  File.open(file).each do |line|
      email = ""
    # put line into array "names" each name is an element in array
      names = line.split(" ")
      last_name = names[-1]
      first_name = names[0...-1]
      # if multiple first names, take first initial from each name
      initials = ""
      for name in first_name
          initial = name[0]
          initials = initials + initial
        end
        # creat id and check if id already exists
        # ensures no duplicate ids
        id = rand(111111..999999)
        if student_data.any? {|s| s[:id] == id}
          redo
        end
        # create student email format: initial of first name/s + last name +
        # last 3 digits of id number + @adaacedemy.org
        id = id.to_s
        last_three_id = id[-3..-1]
        email = initials.upcase + last_name.upcase + last_three_id + "@adaacademy.org"
        # put name, id and email into student data array as a hash
        student_data << {name: line.chomp.upcase!,
                    id: id,
                    email: email}
        end

# this will output the hash varables into a readable table
col_labels = { name: "Name", id: "ID", email: "Email" }

  @columns = col_labels.each_with_object({}) { |(col,label),h|
    h[col] = { label: label,
              width: [student_data.map { |g| g[col].size }.max, label.size].max } }
              # => {:date=>    {:label=>"Date",    :width=>10},
              #     :from=>    {:label=>"From",    :width=>7},
              #     :subject=> {:label=>"Subject", :width=>22}}

              def write_header
                puts "| #{ @columns.map { |_,g| g[:label].ljust(g[:width]) }.join(' | ') } |"
              end

              def write_divider
                puts "+-#{ @columns.map { |_,g| "-"*g[:width] }.join("-+-") }-+"
              end

              def write_line(h)
                str = h.keys.map { |k| h[k].ljust(@columns[k][:width]) }.join(" | ")
                puts "| #{str} |"
              end
              write_divider
              write_header
              write_divider
              student_data.each { |h| write_line(h) }
              write_divider
