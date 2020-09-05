=begin
Launch School Book: Ruby Basics - Exercises
ExerciseName: [Launch School Printer (Part 1)](https://launchschool.com/exercises/d09a086c)
FileName: ex05.md
Answered On: 06/11/2020

Launch School Printer (Part 1)
=end

num = 0
loop do
  puts("How many output lines do you want? Enter a number >= 3:")
  num = gets.chomp.to_i
  break if num >= 3
  puts("That's not enough lines.")
end 

while num > 0 do
  puts("Launch School is the best!")
  num -= 1
end