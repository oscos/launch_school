# ex10.rb
# Are You There?
# Answered On: 07/01/2020

# Using the following code, print true if colors includes the color 'yellow' 
# and print false if it doesn't. Then, print true if colors includes the color 
# 'purple' and print false if it doesn't.

colors = 'blue pink yellow orange'

puts colors.include?('yellow')
puts colors.include?('purple')

# Further exploration
# how to limit it to the exact word match ?
# colors = 'blue boredom yellow'
# puts colors.include?('red')