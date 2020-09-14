=begin
Launch School: RB101-RB109 - Small ProblemsEasy 1 - Repeat Yourself
ExerciseName: [Repeat Yourself](https://launchschool.com/exercises/a018e581)
FileName: ex01.md
Answered On: 09/12/2020
=end

# Write a method that takes two arguments, a string and a positive integer, and 
# prints the string as many times as the integer indicates.

def repeat(str, int)
  return puts "Invalid parameters, please try again." if(int < 1 || str.empty?)
  
  int.times {puts str}
  
  # # other solution using loop
  # loop do 
  #     puts(str)
  #     int -= 1
  #     break if int == 0
  # end
end

repeat("Hello", 3)
repeat("Hello", -1)
repeat("",3)
repeat(5)