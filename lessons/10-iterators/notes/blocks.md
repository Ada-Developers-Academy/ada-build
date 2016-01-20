# Blocks
Blocks (also referred to as _closures_, especially in other languages like JavaScript) are not a unique features of Ruby, but they're one that many people talk about (and more people use without realizing it!) What is a block?

>A section of code which is grouped together.

Zzzzz....

A block is a piece of code that _is not executed immediately_. Instead, it is stored in a variable or passed to a method as a parameter to be potentially executed at a later time.

Sound complicated? Let's look at some Ruby.

```ruby
[1,2,3,4].each do |number|
  puts number * 100 # <= this is a block. :)
end

[1,2,3,4].each { |number|
  puts number * 100 # <= this is a block too! :D
}
```

`number * 100` is a chunk of code, similar to what would be in a method, but in this case we don't need to go through all the trouble of creating a method just to iterate over some numbers.

Block can be identified by either `do ... end` or `{ }`.

Block arguments are defined using a pair of `|` (pipe) characters. They look like a slide, so I like to say that we slide arguments into the block. For example:

```
[1,2,3].each do |number|
  puts number # wheeeee! Right down the slide!
end
```

`number` is the _block argument_, this means that objects given to the block are going to be assigned to the `number` variable within the scope of the block. When the code in the block finishes execution, the block arguments are destroyed.
