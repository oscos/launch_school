# Launch School Book: Introduction To Programming With Ruby
# flow_controls_05.rb 
# Answered On: 11/14/2019

# INSTRUCTIONS:

# Rewrite your program from exercise 3 using a case statement. Wrap this new 
# case statement in a method and make sure it still works.

puts "Pick a postivie integer number between 0 and 100"

num = gets.chomp.to_i

def result(num)

  case 
    when  num < 0
      "number has to be greater than 0"
    when num.between?(0,50)
      "#{num} is between 0 and 50"
    when num.between?(51,100)
      "#{num} is between 50 and 100"
    else
      "#{num} is greater than 100"
  end

end

puts result(num)
