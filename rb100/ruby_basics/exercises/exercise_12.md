---
Launch School Book: Ruby Basics - Exercises
ExerciseName: [What's My Value? (Part 1)](https://launchschool.com/exercises/10b4a68a)
FileName: exercise_12.md
Answered On: 03/17/2020
---

# What's My Value? (Part 1)

What will the following code print and why? Don't run it until you have tried to answer.

```ruby
a = 7

def my_value(b)
  b += 10
end

my_value(a)

puts a
```
Output: 7

Explanation: 

Because the numeric value of the object assigned to `variable a` outside the method 
does not change, the result of `puts a` outputs 7.  The exercise might be confusing 
to the student because the value of  `my_value(a)`` is 17 and `puts a` is below it.

Key Points: 

1. Ruby objects with a numeric value are immutable. 
2. 2. Assignment operators `+=` inside a method is non-destructive which means they 
do not do not mutate the caller but instead create new objects.
3. A variable outside a method has a different scope than a variable inside 
a method. Therefor it's possible to share the same variable name and refer to 
different object_id's and output different values if the method is non-destructive.

Resources:

1. [LS Ruby Variable Scope](https://launchschool.com/books/ruby/read/variables#variablescope)
2. [Mutating and Non-Mutating Methods in Ruby](https://launchschool.com/blog/mutating-and-non-mutating-methods)
3. [Mutate The Caller](https://medium.com/@anacasilva/mutate-the-caller-bf01d90c15a6)