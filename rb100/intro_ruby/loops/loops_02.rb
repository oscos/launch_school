# Launch School Book: Introduction To Programming With Ruby
# loops_.rb 
# Answered On: 11/19/2019

# INSTRUCTIONS:
# Write a while loop that takes input from the user, performs an action, 
# and only stops when the user types "STOP". 
# Each loop can get info from the user. 


# puts "Type anything to run loop again, OR type STOP to exit loop"
# x = gets.chomp.upcase

x = ""
while x != "STOP"
  puts "Type anything to run loop again, OR type STOP to exit loop"
  x = gets.chomp.upcase
end