# Launch School Book: Introduction To Programming With Ruby
# The Basics - Excercise 02
# 11/08/2019

=begin
Use the modulo operator, division, or a combination of both 
to take a 4 digit number and find the digit in the: 
  1) thousands place 
  2) hundreds place 
  3) tens place 
  4) ones place
=end

# Notes: When using positive integer values, 
# the modulus is equal to remainder of A when divided by B.
# However not so when using negative values.
# Here are two articles for additonal reading: 
# https://medium.com/@tannrallard/exploring-the-difference-between-modulus-and-remainder-in-rubys-numeric-class-65eb8b50a4b8
# http://ruby.bastardsbook.com/chapters/numbers/

puts "Enter a 4 digit positive integer between 1000 and 9999"
num = gets.chomp
num_to_int = num.to_i

if num_to_int.between?(1000,9999) 
  thousands = (num_to_int/1000) % 10 
  hundreds = (num_to_int/100) % 10
  tens = (num_to_int/10) % 10
  ones = (num_to_int/1) % 10

  puts "You entered #{num} which contains: 
  #{thousands} in the thousands place, 
  #{hundreds} in the hundreds place, 
  #{tens} in the tens place,
  #{ones} in the ones place."
  
else puts "You entry is invalid please try again."
end
