# Launch School Book: Introduction To Programming With Ruby
# more_stuff_01.rb 
# Answered On: 03/04/2020

# INSTRUCTIONS:
# Write a program that checks if the sequence of characters "lab" exists in 
# the following strings. If it does exist, print out the word.

puts "Write a program that checks if the sequence of characters \"lab\" exists "
puts "in the following strings. If it does exist, print out the word."
puts ""
puts "laboratory"
puts "experiment"
puts "Pans Labyrinth"
puts "elaborate"
puts "polar bear"
puts ""

arr = ["laboratory","experiment","Pans Labyrinth","elaborate","polar bear"]


arr.each do |word|
   if word.match("lab") 
      puts word
   else
      puts "No match"
   end
end
