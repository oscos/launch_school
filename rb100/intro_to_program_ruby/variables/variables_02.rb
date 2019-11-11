# Launch School Book: Introduction To Programming With Ruby
# variables_02.rb 
# Answered On: 11/10/2019

# INSTRUCTIONS:
# Write a program called age.rb that asks a user how old they are and
# then tells them how old they will be in 10, 20, 30 and 40 years. 
# Below is the output for someone 20 years old.

puts "How old are you?"
age = gets.chomp
age_plus_10 = age.to_i + 10
age_plus_20 = age.to_i + 20
age_plus_30 = age.to_i + 30
age_plus_40 = age.to_i + 40


puts "In 10 years you will be #{age_plus_10}"
puts "In 20 years you will be #{age_plus_20}"
puts "In 30 years you will be #{age_plus_30}"
puts "In 40 years you will be #{age_plus_40}"


