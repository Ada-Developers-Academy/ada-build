# Notes: Commands

Ruby has many kinds of commands built into its _core library_. We can utilize these _commands_ along with _values_ to give Ruby instructions about what to do. For this lecture, we are going to cover a handful of commands:

- `Fixnum` & `Float` Commands:
  - `+`
  - `-`
  - `*`
  - `/` (different with `fixnum` and `float`)
- `String` Commands:
  - `+` (_string concatenation_)
  - `#{}` (_string interpolation_)
  - `print`
  - `puts`
  - `gets.chomp`

Consider the following:
```ruby
a = 10
b = 5
c = 2

x = 10.0
y = 5.0
z = 2.0
```

### Addition and Subtraction ( +, - )  
Based on the variable definitions above, determine what the resulting value and data type will be for each operation.

| Op |   | Result | Data Type |
|:---: |:---:| :---: | :---: |
| a + b | evaluates to | 15 | Fixnum |
| x + y | evaluates to | 15.0 | Float |
| a + y | evaluates to | 15.0 | Float |
| a - b | evaluates to | 5 | Fixnum |
| x - c | evaluates to | 8.0 | Float |
| (a + y) - c | evaluates to | 13.0 | Float |
| (a - b) + c | evaluates to | 7 | Fixnum |



### Multiplication and Division ( *, / )  

| Op |   | Result | Data Type |
|:---: |:---:| :---: | :---: |
| a * b | evaluates to | 50 | Fixnum |
| y * z | evaluates to | 10.0 | Float |
| a * x | evaluates to | 100.0 | Float |
| a / b | evaluates to | 2 | Fixnum |
| b / a | evaluates to | 0 | Fixnum |
| y / z | evaluates to | 2.5 | Float |
| (a * y) / a | evaluates to | 5.0 | Float |
| (a / b) * a | evaluates to | 20 | Fixnum |
| 14 / 5 | evaluates to | 2 | Fixnum |


Fixnum division (division involving only fixnums) results in the decimal result being truncated (the decimal is dropped, the number is rounded down).  Floats always ‘take over’ when they are used with fixnums.  If even one float is present, your result will be a float.


### Modulus ( % )  
Modulus returns the remainder of dividing one number by another number.

| Op |   | Result | Reason |
|:---: |:---:| :---: | :---: |
| 10 % 3 | evaluates to | 1 | 3 goes into 10 three times with 1 left over |
| 20 % 2 | evaluates to | 0 | 2 goes into 20 ten times with 0 left over |
| 4 % 5 | evaluates to | 4 | 5 goes into 4 zero times with 4 left over |
| 8 % 1 | evaluates to | 0 | 1 goes into 8 eight times with 0 left over |

Modulus is most often used to decide if one number is a multiple of the other.  Because 20 % 2 is 0, we know that 20 is a multiple of 2.


### Assignment Operator ( =, +=, -=, /=, *=, %= )
Assignment operators assign values to the variable on the left side of the equals sign.  

Regular assignment operator:  
	`x = y + 3`	assigns the value of `y + 3` to the variable `x`

Shorthand assignment operators:  
`x += 3`	assigns the value of `x + 3` to the variable `x`  
`x += y + 3` assigns the value of `x + (y + 3)` to the variable `x`  
`x -= 2`	assigns the value of `x – 2` to the variable `x`  
`x -= y – 5`	assigns the value of `x – (y – 5)` to the variable `x`  
`x /= 3`	assigns the value of `x / 3` to the variable `x`  
`x *= y`	assigns the value of `x * y` to the variable `x`  
`x %= y`	assigns the value of `x % y` to the variable `x`  

Variable Assignment is different than a Math Class Assignment!  
Note that the left hand side of an assignment statement cannot have a literal.  Assignment statements can only be used to change variables.  In this way, assignment statements are backwards from the way you may remember learning them in your math classes.

**Valid**:   
`x = 3 + 2`	 assigns the value of 3 + 2 to the variable x  
`x *= 3`	assigns the value of x * 3 to the variable x  

**Not Valid**:  
`3 + 2 = x`  
`3 *= x`  
`x * 1 = y + 2`  


### Operator Precedence
Ruby will compute statements based on the following operator precedence:  

**HIGHEST PRECEDENCE**  
(1)
!


(2)
*, /, %


(3)
+, -


(4)
<, >, <=, >=


(5)
==, !=


(6)
&&


(7)
||

**LOWEST PRECEDENCE**  
(8)
=, +=, -=, *=, /=, %=
