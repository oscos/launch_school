---
Launch School Book: Ruby Basics - Exercises
ExerciseName: [What's My Value? (Part 6)](https://launchschool.com/exercises/c8903cbf)
FileName: exercise_17.md
Answered On: 04/08/2020
---

# What's My Value? (Part 6)

What will the following code print and why? Don't run it until you have 
tried to answer.

```ruby
a = 7

def my_value(b)
  b = a + a
end

my_value(a)
puts a
```
Output: Error

Explanation: 

Becuase `variable a` outside the my_value method has not been passed in as an argument,
the method will raise an error when it tries to add `variable a` as it is not available 
inside the method.

Key Points: 

1. Variables inside methods must be either declared and assinged locally or 
passed in as arguments.
2. Note, however, that local variables will be visible (via closures) inside 
blocks, procs, and lambdas.

Resources:

1. [LS Ruby Variable Scope](https://launchschool.com/books/ruby/read/variables#variablescope)
2. [Mutating and Non-Mutating Methods in Ruby](https://launchschool.com/blog/mutating-and-non-mutating-methods)
3. [Mutate The Caller](https://medium.com/@anacasilva/mutate-the-caller-bf01d90c15a6)