# ex03.md
# Print Something (Part 1)

# Write a program that asks the user whether they want the program to print 
# "something", then print it if the user enters y. Otherwise, print nothing.

puts "Do you want this program to print something? Enter `y` for yes."
user_input = gets.chomp.downcase

if user_input == 'y'
  puts "something"
end



