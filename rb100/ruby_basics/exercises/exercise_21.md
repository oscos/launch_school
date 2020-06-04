---
Launch School Book: Ruby Basics - Exercises
ExerciseName: [What's My Value? (Part 10)](https://launchschool.com/exercises/3a8777d5)
FileName: exercise_21.md
Answered On: 06/04/2020
---

# What's My Value? (Part 10)

What will the following code print and why? Don't run it until you have 
tried to answer.

```ruby
a = 7
array = [1, 2, 3]

def my_value(ary)
  ary.each do |b|
    a += b
  end
end

my_value(array)
puts a
```
Output: 7

Explanation: 

The purpose of this exercise is to demonstrate how the rules
of a `method definition` apply to a `method invoication with a block`
if the `method definition with a block` is placed inside a `method
definition`.

Normally a `method invoication with a block` has access to outside local 
variables initilized in outter scope without having to pass them in as parameters, 
in this case, because it is enclosed within a `method definition`, it is closed off 
from access to `variable a` on line 1.  Therefor this exercise will produce
an error becuase the `method invocation with a block` is trying to access
a `local variable a` that does not exist wthin it's scope.


Key Points: 

1. Method invoication with a block is different than method definition
2. When you enclose a method invoication with a block inside a method definition,
the scope rules of the more restricted method are passed down to the method
invocation with a block.


Resources:

1. [LS Ruby Variable Scope](https://launchschool.com/books/ruby/read/variables#variablescope)