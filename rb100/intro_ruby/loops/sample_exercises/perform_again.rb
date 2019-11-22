# Launch School Book: Introduction To Programming With Ruby
# perform_again.rb 
# Answered On: 11/14/2019

# INSTRUCTIONS:
# 

loop do
puts "Do you want to do that again?"
 answer = gets.chomp.downcase
 if answer != 'y'
   puts "in that case we will stop script"
   break
 end
end


