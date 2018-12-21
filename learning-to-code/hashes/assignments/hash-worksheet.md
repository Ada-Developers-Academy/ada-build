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
workout_summary = {
  "squats" => 99,
  "lunges" => 98,
  "yoga" => false
}

workout_summary["lunges"] = 101
puts workout_summary["lunges"]
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
human_being = {
  species: "Sapiens",
  genus: "Homo",
  tribe: "Hominini",
  meaning: "wise man"
}

puts human_being.length
puts "The only living species of genus #{human_being[:genus]} are #{human_being[:species]}."
puts human_being[:meaning].length
```

7.
```ruby
oatmeal_raisin = {
  gluten_free: false,
  dairy_free: true,
  non_gmo: true,
  vegan: true,
  allergens: "nuts"
}

puts oatmeal_raisin.length

if oatmeal_raisin[:dairy_free]
  puts "Oatmeal raisin cookies are dairy free."
end

oatmeal_raisin[:allergens] += ", soy"
puts oatmeal_raisin[:allergens]

if !oatmeal_raisin[:gluten_free] || !oatmeal_raisin[:vegan]
  puts "The oatmeal raisin cookie is either not gluten free or not vegan."
end
```
