# Student Account Generator Continued

Now that we know about hashes, we will refactor your original account generator code to utilize arrays with hashes. Since each student has three pieces of data, we will utilize a hash to store these three pieces of data, related to one another.

```ruby
[
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
```

Complete the following refactor steps:
- Utilize a single hash variable to store all student information, instead of three individual arrays
- Utilize a single loop for the hash population:
  - accept user input for the student's name
  - generate random student ID
  - generate student email address from previous pieces of data
- Update the printing functionality to utilize this new hash variable to print out student roster
