=begin
Launch School: RB101 - Lesson 2 - Calculator
ExerciseName: [Calculator](https://launchschool.com/lessons/a0f3cd44/assignments/1540db7b)
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

Kernel.puts("Enter a number")
num1 = Kernel.gets().chomp()
# Kernel.puts(num1.inspect)
Kernel.puts("Enter a second number")
num2 = Kernel.gets().chomp
Kernel.puts("What operation would you like to perform, enter 1) add 2) subtract 3) multiply 4) divide")
op_type = Kernel.gets().chomp

result =
case op_type 
when "1" then num1.to_f() + num2.to_f()
when "2" then num1.to_f() - num2.to_f()
when "3" then num1.to_f() * num2.to_f()
else num1.to_f() / num2.to_f()
end

Kernel.puts("The result is #{result}")
