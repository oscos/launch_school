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
  b #+= 10
end

my_value(a)
puts a
```
Without running the code my initial response was that `puts a` would return 17. 
However after running the code, `puts a` outputed 7.  This makes sense, 
since`puts a` is outside the scope of the my_value function. 

It's important to note that numbers in ruby are immutable, meaning they do not change. 

Resources: 
[Assigment Operators](https://www.tutorialspoint.com/ruby/ruby_operators.htm)