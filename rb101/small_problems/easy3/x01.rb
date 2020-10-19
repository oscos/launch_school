=begin
Launch School: RB101-RB109 - Small Problems - Easy 3
ExerciseName: [Searching 101(https://launchschool.com/exercises/383b2769)
FileName: x01.rb
Answered On: 10/17/2020
=end

=begin
Write a program that solicits 6 numbers from the user, then prints a message that 
describes whether or not the 6th number appears amongst the first 5 numbers.

Examples: 
  ==> Enter the 1st number:
  25
  ==> Enter the 2nd number:
  15
  ==> Enter the 3rd number:
  20
  ==> Enter the 4th number:
  17
  ==> Enter the 5th number:
  23
  ==> Enter the last number:
  17
  The number 17 appears in [25, 15, 20, 17, 23].
  
  
  ==> Enter the 1st number:
  25
  ==> Enter the 2nd number:
  15
  ==> Enter the 3rd number:
  20
  ==> Enter the 4th number:
  17
  ==> Enter the 5th number:
  23
  ==> Enter the last number:
  18
  The number 18 does not appear in [25, 15, 20, 17, 23].
=end

arr = []

sequence_arr = ["1st", "2nd", "3rd", "4th", "5th", "last"]
arr = []

index = 0
num = 0


loop do 
  break if index == sequence_arr.size

  current_value = sequence_arr[index]
  puts("Enter the #{current_value} number: ")
  num = gets.chomp
  
  if num.to_i.to_s != num
    puts("Invalid entry please try again.")
    index -= 1
  else
    arr << num.to_i if index < 5
  end 
  
  num = num.to_i
  
  if index == 5 && arr.include?(num) # == true
    puts("The number #{num} appears in #{arr}.")
  elsif index == 5 && arr.include?(num) == false
    puts("The number #{num} does not appear in #{arr}.")
  end
  
  index += 1
end



