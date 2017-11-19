# Assignment: Student Account Generator Continued

Now that we know about hashes, we will [refactor](https://en.wikipedia.org/wiki/Code_refactoring) your original account generator code to utilize arrays with hashes. Since each student has three pieces of data, we will utilize a hash to store these three pieces of data, related to one another.

This is a better solution because this will keep each student record together instead of having three separate arrays with the student data. When a new student record is created, one hash needs to be added to the array rather than three pieces of data to individual arrays.

```ruby
student_data = [
  {
    name: "Mary Jane",
    ID: 1000000,
    email: "mjane@adadevelopersacademy.org"
  },
  {
    name: "Jones Smith",
    ID: 1000001,
    email: "jsmith@adadevelopersacademy.org"
  }
]

# Retrieve the data from the array of hashes
student_data[0][:name]
# => "Mary Jane"
```

Complete the following refactor steps:
- Utilize a single array variable to store all student information, instead of three individual arrays. This array will contain many hashes.
- Utilize a single loop to drive the hash population (you may have nested loops inside this loop for other functionality):
  - accept user input for the student's name
  - generate random student ID
  - generate student email address from previous pieces of data
- Update the printing functionality to utilize this new hash variable to print out student roster
