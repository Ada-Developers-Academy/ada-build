# Hash Worksheet

Read the code in each section, then write exactly what the code prints out. Tally your answers by saving the code in a .rb file and running the program in the terminal. Alternatively, run the code in `irb`.

Each problem stands alone. Variables from previous problems do not exist.

*Example:*
```ruby
x = 5
y = 6
print(x+y)
# => 11
```
## Problem Set
Hash problems with hashes defined using hash rocket notation with keys as string:

1.
```ruby
person = {
  "first_name" => "ada",
  "last_name" => "lovelace",
  "nickname" => "adie"
}

puts person.length
puts person["last_name"]
```

2.
```ruby
animals = {
  "dog" => "canine",
  "cat" => "feline"
}

animals["cat"] = "feline"
puts animals["dog"]
puts animals["donkey"]
```

3.
```ruby
matrix_person = {
  "punch" => 99,
  "kick" => 98,
  "stops_bullets_with_hands" => false
}

matrix_person["kick"] = 25
puts matrix_person["kick"]
```

4.
```ruby
menu = {}
menu["ramen"] = "garlic tonkotsu"
menu["burger"] = "bleu sun"
menu["tea"] = "green"
puts menu.length
puts menu["burger"]
puts menu["tater_tots"]
```

Hash problems with hashes using symbol notation:

5.
```ruby
person = {
  first_name: "ada",
  last_name: "lovelace",
  nickname: "adie"
}

puts person.length
puts person[:last_name]
```

6.
```ruby
animal_kingdom = {
  mammals: ["rats", "dogs", "cats", "humans"],
  reptiles: ["alligator", "crocodile"],
  birds: ["crow", "sparrow", "parrot", "hawk", "eagle"]
}

puts animal_kingdom.length
puts animal_kingdom[:mammals].length
puts animal_kingdom[:reptiles]
puts animal_kingdom[:birds][2]
puts animal_kingdom[:mammals][0]
puts animal_kingdom[:birds].last

animal_kingdom[:mammals] << "bats"
puts animal_kingdom[:mammals].length
puts animal_kingdom[:mammals]
```

7.
```ruby
# hash of hashes
# the value of each key is another hash.
cookies_menu = {
  chocolate_chip: {
    gluten_free: true,
    dairy_free: false,
    non_gmo: true,
    vegan: false,
    allergens: ["diary", "eggs"]
  },
  oatmeal_raisin: {
    gluten_free: true,
    dairy_free: true,
    non_gmo: true,
    vegan: true,
    allergens: ["nuts"]
  }
}

puts cookies_menu.length
puts cookies_menu[:chocolate_chip].length
puts cookies_menu[:oatmeal_raisin][:vegan]
puts cookies_menu[:chocolate_chip][:allergens].length
puts cookies_menu[:chocolate_chip][:allergens]

if cookies_menu[:chocolate_chip][:dairy_free] || cookies_menu[:oatmeal_raisin][:dairy_free]
  puts "There is a dairy free option in cookies."
end

cookies_menu[:short_bread] = {}
cookies_menu[:short_bread][:gluten_free] = false
cookies_menu[:short_bread][:non_gmo] = true
cookies_menu[:short_bread][:dairy_free] = false
cookies_menu[:short_bread][:allergens] = ["dairy", "wheat"]
cookies_menu[:short_bread][:vegan] = false

puts cookies_menu.length
puts cookies_menu.keys
puts "Short bread cookies contain wheat" if cookies_menu[:short_bread][:allergens].include? "wheat"
```
