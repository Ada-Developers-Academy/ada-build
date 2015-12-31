# Operators

## Relational Operators
Equality comparisons can be used on all Ruby objects, including `Strings`, `Integers`, `Floats`, `Arrays`, `Hashes`, etc:
- `==` (equal to?)
- `!=` (not equal to?)

**Note** the difference between `=` and `==`

Numeric comparisons are used primarily on `Integers` and `Floats`:
- `>`  (greater than?)
- `<`  (less than?)
- `>=` (greater than or equal to?)
- `<=` (less than or equal to?)

The "result" of any of these relational operator is a boolean. Recall that there are two kinds of boolean objects:
- `true`
- `false`

```ruby
# Is one greater than zero?
1 > 0
# => true

# Is the string 'hello' equal to the string 'hello'?
"hello" == "hello"
# => true
```

## Logical Operators
Logical Operators are used to test two or more relationships together. There are three main logical oeprators that we would use:  
- `&&` 	(and)
	Outcome of p && q is true only if both p and q are true

- `||` 	(or)
	Outcome of `p || q` is `true` if either `p` or `q` is `true`

- `!` 	(not)
	Outcome of `!p` is `true` if `p` is `false`. Outcome of `!p` is `false` if `p` is `true`.

**Truth Table**
![truth table](../images/truth-table.gif)
