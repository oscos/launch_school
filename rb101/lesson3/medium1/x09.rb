=begin
Launch School: RB101 Programming Foundations - Lesson 3 - Practice Problems
ExerciseName: [Medium1](https://launchschool.com/lessons/263069da/assignments/6eba600c)
FileName: ex09.rb
Answered On: 10/01/2020
=end

# require "pry"
# require "pp"

# What would be the return value of the following method invocation?

def foo(param = "no")
  "yes"
end

def bar(param = "no")
  param == "no" ? "yes" : "no"
end

p bar(foo)

# Answer: Returns back "no"