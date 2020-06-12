# ex06.md
# Passwords

# Write a program that displays a welcome message, but only after the user enters 
# the correct password, where the password is a string that is defined as a 
# constant in your program. Keep asking for the password until the user enters 
# the correct password.

PASSWORD = 'AbcEasyAs123'

loop do
  puts ">> Please enter your passord: "
  user_input = gets.chomp
  break if user_input == PASSWORD
  puts "Invalid password!"
end

puts "Welcome!"
