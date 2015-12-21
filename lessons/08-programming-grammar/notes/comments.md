# Notes: Comments

Code is complex! And sometimes confusing! It is really helpful to leave instructions and notes for the __people__ that will be using or modifying your code later. Programming is inherently for people to communicate with other people, and sometimes a small note can really help the next person who comes along to see your code. Enter the _code comment_.

When we begin a line using the `#` character, we are telling Ruby that everything on that line is a _code comment_ meant for people and not for computers. Ruby won't try to interpret a _code comment_. Instead, Ruby will skip right over it. Here's an example:

```ruby
# I'm a code comment. Ruby knows this is for people and not computers
# Also, it is always taco time.
taco_time = "Always"

# This is a comment too.
puts "But this isn't."
```
