=begin
Launch School Book: Ruby Basics - Exercises
ExerciseName: [Launch School Printer (Part 1)](https://launchschool.com/exercises/d09a086c)
FileName: ex05.md
Answered On: 06/11/2020

Launch School Printer (Part 1)
=end

user_input = nil

loop do
  puts ">> How many output lines do you want? Enter a number >= 3:"
  user_input = gets.chomp.to_i  
  break if user_input >= 3
  puts ">> That's not enough lines."  
end
  
loop do
  puts "Launch School is the best!"
  user_input -= 1
  break if user_input == 0
end