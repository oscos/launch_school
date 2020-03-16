---
Launch School Book: Ruby Basics - Exercises
FileName: exercise_10.md 
Answered On: 03/15/2020
---

# Required Arguments

Assume you have this Array:

```
a = %w(a b c d e)
```
How would you use Array#insert to insert the numbers 5, 6, and 7 
between the elements with values 'c' and 'd'?


Answer: 

Ruby Documentation can be found at 
[Array#insert](https://ruby-doc.org/core-2.4.0/Array.html#method-i-insert)

```
a.insert(3,7,8.9)
```