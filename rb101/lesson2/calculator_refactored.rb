=begin
Launch School: RB101 - Lesson 2 - Refactoring Calculator
ExerciseName: [Refactoring Calculator](https://launchschool.com/lessons/a0f3cd44/assignments/fcd8a299)
FileName: calculator.rb
Answered On: 09/18/2020
=end

=begin
- ask the user to input two numbers
- ask user to input type of operation to use in calculation
- output result of calculation
- user Kernel.gets()
- use keernel.chomp()
=end

require 'pry'

num1 = nil
num2 = nil
op_type = nil

def user_prompt(message)
  Kernel.puts("=> #{message}")
end

def valid_number?(number)
  return 0 if number == "0"
  number.to_f != 0
  # binding.pry
end

user_prompt("What is your first name?")
fname = Kernel.gets().chomp()
user_prompt("Welcome #{fname}. Let's calculate some numbers!")

loop do while
  loop do
    user_prompt("Enter a number")
    num1 = Kernel.gets().chomp()
    break if valid_number?(num1)
    user_prompt("Invalid entry for the first number. Try again.")
  end

  loop do
    user_prompt("Enter a second number")
    num2 = Kernel.gets().chomp()
    break if valid_number?(num2)
    user_prompt("Invalid entry for the second number. Try again.")
  end

  operator_prompt = <<-MSG
    What operation would you like to perform
    1 - Add
    2 - Subtract
    3 - Multiply
    4 - Divide
  MSG

  user_prompt(operator_prompt)

  loop do
    op_type = Kernel.gets().chomp()
    num = ["1", "2", "3", "4"].include?(op_type) # returns True or False
    break if num
    user_prompt("Invalid operator, Entry must be either 1, 2, 3, or 4")
    # binding.pry
  end

  op_type_selected =
    case op_type
    when "1" then "Adding"
    when "2" then "Subtracting"
    when "3" then "Multiplying"
    else "Dividing"
    end

  result =
    case op_type
    when "1" then num1.to_f() + num2.to_f()
    when "2" then num1.to_f() - num2.to_f()
    when "3" then num1.to_f() * num2.to_f()
    else num1.to_f() / num2.to_f()
    end

  Kernel.puts("#{op_type_selected} #{num1} and #{num2} is #{result}")

  user_prompt("Play again? Y for Yes or any key for No")
  play = Kernel.gets().chomp()

  if play.downcase == "y"
    next
  else
    user_prompt("Thanks for playing! Good-bye!")
    break
  end
end
