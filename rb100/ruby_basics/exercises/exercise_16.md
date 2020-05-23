---
Launch School Book: Ruby Basics - Exercises
ExerciseName: [What's My Value? (Part 5)](https://launchschool.com/exercises/ae4a1add)
FileName: exercise_16.md
Answered On: 04/08/2020
---

# What's My Value? (Part 5)

What will the following code print and why? Don't run it until you have 
tried to answer.

```ruby
a = "Xyzzy"

def my_value(b)
  b = 'yzzyX'
end

my_value(a)
puts a
```
Output: Xy-zy

Explanation: 

Because the string value of the object assigned to `variable a` outside the method 
was not mutated, the result of `puts a` outputs `Xyzzy`.

Key Points: 

1. Ruby objects with a string value are mutatable. 
2. Assignment operators `=` inside a method are non-destructive and therefor do not 
mutate the caller.

Resources:

1. [LS Ruby Variable Scope](https://launchschool.com/books/ruby/read/variables#variablescope)
2. [Mutating and Non-Mutating Methods in Ruby](https://launchschool.com/blog/mutating-and-non-mutating-methods)
3. [Mutate The Caller](https://medium.com/@anacasilva/mutate-the-caller-bf01d90c15a6)