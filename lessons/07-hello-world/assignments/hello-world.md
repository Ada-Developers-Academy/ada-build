# Hello World

A "Hello World" program is the first program that most programmers create to explore a new programming language. Be sure to read the [wikipedia](https://en.wikipedia.org/wiki/%22Hello,_World!%22_program) article which provides even more context about what this is and why we use it!

## irb
In the previous lesson, we saw what IRB is and how to execute a basic command in IRB. We can use IRB as our first attempt in creating a "Hello World" program.

1. Open terminal
2. Start IRB by typing `irb` in the terminal
3. Write an expression which will output the worlds "hello world" to the user:  
`puts "hello world"`

## Ruby file
Now that we see how to write the "Hello World" program using IRB, we can write a ruby program to do the same thing. Let's create a Ruby file and execute that Ruby file instead of doing this directly in IRB.   

The advantage of using a Ruby file instead of IRB is that you will have a record of the code that was written so it can be executed again later.

#### Create a Ruby File
From your ada jumpstart folder in the terminal, run the command which will create a new file:  
`touch hello-world.rb`

#### Edit the Ruby File
From the terminal, Open your text editor with the current folder's files:  
`atom .`

Edit the hello-world.rb file to add the `puts` statement:  
`puts "hello world"`

Save the file!

#### Run the code

From the terminal, Run your code:  
`ruby hello-world.rb`

See the output? Great!
