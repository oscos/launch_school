# Launch School - Intro to Ruby
# Flow Control - ex03.rb
# Answered On 07/21/2020

# Resources: https://www.rubyguides.com/2015/03/ruby-random/


random_number = rand(251)

# # this also works but more lengthy
# range =
# case 
# when random_number.between?(0,50) then "The number #{random_number} is between 0 and 50"
# when random_number.between?(51,100) then "The number #{random_number} is between 51 and 100"
# when random_number.between?(101,150) then "The number #{random_number} is between 101 and 150"
# when random_number.between?(151,200) then "The number #{random_number} is between 151 and 200"  
# else "The number #{random_number} is out of range"
# end

range =
case random_number
when 0..50 then "The number #{random_number} is between 0 and 50"
when 51..100 then "The number #{random_number} is between 51 and 100"
when 101..150 then "The number #{random_number} is between 101 and 150"
when 151..200 then "The number #{random_number} is between 151 and 200"
else "The number #{random_number} is out of range!"
end

puts(random_number)
puts(range)