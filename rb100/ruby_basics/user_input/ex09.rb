=begin
Launch School Book: Ruby Basics - Exercises
ExerciseName: [Launch School Printer (Part 2)](https://launchschool.com/exercises/e0ff894c)
FileName: ex09.rb
Answered On: 06/13/2020
Updated On: 09/08/2020
=end

#Solution 2 (Answered On: 09/08/2020)
def run_lines(number)
  while number > 0 do
    puts("Launch School is the best!")
    number -= 1
  end
end

loop do
  puts("How many output lines do you want? Enter a number >= 3 (Q to quit):")
  num = gets.chomp
  
  break if num.downcase == 'q'
  
  if num.to_i >= 3
    run_lines(num.to_i)
  else
    puts ">> That's not enough lines."
  end
  
end 


# Solution 1 (Answered On 06/13/2020):
# loop do

#   user_string = nil
#   user_number = nil

#   loop do
#     puts ">> How many output lines do you want? Enter a number >= 3 (Q to quit):"
    
#     user_string = gets.chomp.downcase
#     user_number = user_string.to_i
    
#     break if user_string == 'q'
    
#     break if user_number >= 3
#     puts ">> That's not enough lines."
    
#   end
  
#   break if user_string == 'q'
  
#   loop do
#     puts "Launch School is the best!"
#     user_number -= 1
#     break if user_number == 0
#   end

# end 

