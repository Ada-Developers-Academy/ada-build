# Notes: String Slicing and Concatenation

As we mentioned earlier, Strings are composed of any sequence of letters and/or numbers that are enclosed in either single (`'`) or double (`"`) quotes.
But what use are Strings if you can't change them? That's where String slicing and concatenation come into play.

### String Slicing

The method **slice** allows you to split a String into smaller pieces. Let's look at some examples of how you can use **slice** using a sample string: my_string = "Ada Lovelace".


|Example | Input | Output |
|:---: |:---:| :---: |:---:|
|1. |my_string.slice(5)| "o" |
|2. |my_string.slice(20)| nil |
|3. |my_string.slice(0, 3)| "Ada" |
|4. |my_string.slice(0...8)| "Ada Love" |
|5. |my_string.slice("ace")| "ace" |
|6. |my_string.slice("Seattle")| nil |

As you can see from the table above, your output will be either a _String_ or the value _nil_.
**Slice** will only return nil if a given value cannot be found in the String (i.e. "Seattle" does not exist in "Ada Lovelace")
**or** if the value exceeds the length of the String (i.e. The length of "Ada Lovelace" is less than 20).

When implementing **slice**, you can use a single number to return the letter at that specific index. You can also use two numbers separated by a comma, where the first number is the starting index and the second number is the length of the string. Or, you can use two numbers separated by an ellipsis to return the letters within that range.
The letter at the first index is included in the output, while the letter at the last index is not. (i.e. Example 4 returns "Ada Love", not "Ada Lovel").
**Remember**: String indexing starts at zero, not one.


### Concatenation

Another important String command is **concatentation**, which allows you to combine strings. Like most things in Ruby, there are many different ways to concatenate Strings.

Let's look at some examples using my_string.

|Example | Input | Output |
|:---: |:---:| :---: |:---:|
|1.| my_string + " codes it!" | "Ada Lovelace codes it!" |
|2.| my_string << " is" << " awesome!" | "Ada Lovelace is awesome!" |
|3.| my_string.concat(" likes to code!") | "Ada Lovelace likes to code!"|

As you can see, you can concatenate Strings using either (`+`), (`<<`), or (`.concat(...)`).
Don't forget spaces when concatenating strings to avoid ending up with something like "Ada Lovelacecodesit!"
