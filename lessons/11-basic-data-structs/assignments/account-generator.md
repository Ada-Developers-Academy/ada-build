# Student Account Generator

We are going to write a program that generates some student information. This exercise will practice our skills with strings, random numbers, arrays and iterators.

## Requirements

1. You will start by creating three arrays:
    - An array that will contain student names
    - An array that will store student ID numbers
    - An array that will contain student email addresses    

2. Write a `times` loop that asks the user to enter in 5 student names (first and last name) and store those values in the first array in **all uppercase**.

3. Write a `times` loop to generate random student ID numbers from 111111 to 999999 and add these values to the student ID number array.

4. Write a `times` loop to generate student email addresses in the format:
  (first inital)+(last name)+(last 3 digits of student ID number)@adadevelopersacademy.org
  - Note: This will be the hardest part.

5. Write the code which will print out all the student names, ID numbers, and email addresses in parallel.


## Optional Enhancements

- make sure none of the IDs are duplicates
- account for ID numbers whose last 3 digits are less than 100 (e.g. 111008) because these ID numbers will generate an email address with less than 3 digits at the end without special cases.
- on email generation, account for first names with a space in them (e.g. “Mary Jane”)
- read in the student names from a file instead of the user and make the array size according to the number of names
