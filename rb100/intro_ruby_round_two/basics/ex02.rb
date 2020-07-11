# Launch School - Intro to Ruby
# Basics - ex02.rb
# Answered 07/07/2020

# Remaining Questions Explained: 
#   Expalin why this code works without having to declare 
#   variables first outside the loop.
# Resources: 
#   https://codingbee.net/ruby/ruby-variable-scope
#   https://launchschool.com/books/ruby/read/variables#variablescope

# thousands = 0
# hundreds = 0
# tens = 0
# ones = 0

while true do

    puts "Enter digit between 1 and 9999"
    num = gets.chomp().to_i

    if num.between?(1000,9999) then
        thousands = (num / 1000) % 10
        hundreds = (num / 100) % 10
        tens = (num / 10) % 10
        ones = (num / 1) % 10
        break   
    else 
        puts "You had one job! " +
            "Please re-enter number"
    end
end

puts "#{thousands} is is in the thousands place"
puts "#{hundreds} is is in the hundreds place"
puts "#{tens} is is in the tens place"
puts "#{ones} is is in the ones place."