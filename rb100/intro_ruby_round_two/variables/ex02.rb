# Launch School - Intro to Ruby
# Variables - ex02.rb
# Answered On 07/10/2020

puts("How old are you?")

age = gets.chomp.to_i

(10..40).step(10) do |i|
    future_age  = age + i
    puts "In #{i} years you will be #{future_age} years old!"
end