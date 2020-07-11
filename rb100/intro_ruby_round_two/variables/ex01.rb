# Launch School - Intro to Ruby
# Variables - ex01.rb
# Answered On 07/10/2020

puts("What is your name?")
your_name = gets.chomp

puts "Hello #{your_name}, how are you today?"

your_name_as_array = your_name.split('')

puts "Here is you name as an array of letters : #{your_name_as_array}"