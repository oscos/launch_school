=begin
Launch School: RB101-RB109 - Small ProblemsEasy 1 - Repeat Yourself
ExerciseName: [Repeat Yourself](https://launchschool.com/exercises/a018e581)
FileName: ex01.md
Answered On: 09/12/2020
=end

# Write a method that takes two arguments, a string and a positive integer, and 
# prints the string as many times as the integer indicates.

def repeat(str, int)
  int.times { puts str}
end

repeat('Hello', 3)