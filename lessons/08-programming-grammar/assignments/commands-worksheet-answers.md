
Consider the following variable assignments:
```ruby
d = 10
e = 5.0
f = 2
g = 11.0
h = 3
i = 1.5
```

| Op |   | Result | Data Type |
|:---: |:---:| :---: | :---: |
| d + e | evaluates to |  15.0 | Float |
| f + h | evaluates to | 5 | Fixnum |
| g + h | evaluates to | 14.0 | Float |
| d - f | evaluates to | 8 | Fixnum |
| g - e | evaluates to | 6.0 | Float |
| (h + i) - f | evaluates to | 2.5 | Float |
| (d - f) + e | evaluates to | 13.0  | Float  |



### Multiplication and Division ( *, / )  

| Op |   | Result | Data Type |
|:---: |:---:| :---: | :---: |
| d * f | evaluates to | 20 | Fixnum |
| g * i | evaluates to | 16.5 | Float |
| f * g | evaluates to | 22.0 | Float |
| d / f | evaluates to | 5 | Fixnum |
| d / e | evaluates to | 2.0 | Float |
| e / f | evaluates to | 2.5 | Float |
| (g * f) / f | evaluates to | 11.0 | Float |
| (d / f) * e | evaluates to | 25.0 | Float |
| 21 / 5 | evaluates to | 4 | Fixnum |


### Overall:
1.  Give two different ways to add 1 to the variable y and store that result in the variable y.
```
y = y + 1
y += 1
```

2. Give two different ways for multiplying the variable x and the variable y and storing the result in x.
```
x = x * y
x *= y
```

3. Give two different ways for dividing the variable y by 8, multiplying that result by z, and then storing the final result in z.
```
z = (y / 8) * z
z *= (y / 8)
```

4. Give an example of an invalid assignment statement.
```
1231244 = y
y / 6 = 2
```
