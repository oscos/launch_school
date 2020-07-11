# Launch School - Intro to Ruby
# Variables - ex04.rb
# Answered On 07/11/2020


puts("What is your first name?")
first_name = gets.chomp.capitalize!

puts("What is your last name?")
last_name = gets.chomp.capitalize!

10.times do |name|
    puts "Hello #{first_name} #{last_name}, how are you today?"
end