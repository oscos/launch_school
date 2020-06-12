# ex07.md
# User Name and Password

# In the previous exercise, you wrote a program to solicit a password. In this 
# exercise, you should modify the program so it also requires a user name. The 
# program should solicit both the user name and the password, then validate both, 
# and issue a generic error message if one or both are incorrect; the error message 
# should not tell the user which item is incorrect.

USERNAME = 'Jackson'
PASSWORD = 'AbcEasyAs123'

input_pass = nil
input_user = nil

loop do
  puts ">> Please enter your user name: "
  input_user = gets.chomp
  break if input_user == USERNAME
  puts "Authorization failed!"
end

loop do
  puts ">> Please enter your password: "
  input_pass = gets.chomp
  break if input_pass == PASSWORD
  puts "Authorization failed!"
end

puts "Welcome!"
