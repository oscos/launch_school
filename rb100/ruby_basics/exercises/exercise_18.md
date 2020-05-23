---
Launch School Book: Ruby Basics - Exercises
ExerciseName: [What's My Value? (Part 7)](https://launchschool.com/exercises/d1fc410d)
FileName: exercise_18.md
Answered On: 04/08/2020
---

# What's My Value? (Part 7)

What will the following code print and why? Don't run it until you have 
tried to answer.

```ruby
a = 7
# p a.object_id

array = [1, 2, 3]

array.each do |element|
   #p a
   a = element
   # p a
end

# p a.object_id

puts a

```
Output: 3

Explanation: 

This exercise uses array#each method, which is a method invocation with a block.
This allows the local `variable a` inside the array.each method to access the 
`variable a` that is outside the method without having to pass it in as a parameter.

As array.each iterates through all three values in the array and stopping at the last 
value thus when `puts a` is called at the end of the script, it outputs the numeric 
digit `3`.

Interestingly enough object_id of `variable a` on line 1 will differ from the object_id
on the last line.


Key Points: 

1. Ruby objects with a numeric value are immutable. 
2. 2. Assignment operators `=` inside a method are non-destructive which means they 
do not do not mutate the caller but instead create new objects.
3. A variable outside a method has a different scope than a variable inside 
a method. Therefor it's possible to share the same variable name and refer to 
different object_id's and output different values if the method is non-destructive.

Resources:

1. [LS Ruby Variable Scope](https://launchschool.com/books/ruby/read/variables#variablescope)
2. [Mutating and Non-Mutating Methods in Ruby](https://launchschool.com/blog/mutating-and-non-mutating-methods)
3. [Mutate The Caller](https://medium.com/@anacasilva/mutate-the-caller-bf01d90c15a6)