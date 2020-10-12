=begin
Launch School: RB101 Programming Foundations - Lesson 3 - Practice Problems
ExerciseName: [Hard](https://launchschool.com/lessons/263069da/assignments/a3c602d1)
FileName: x02.rb
Answered On: 10/01/2020
=end

# require "pry"
# require "pp"

# What do you expect to happen when the greeting variable is referenced in the 
# last line of the code below?

def is_an_ip_number?(input_str)
  input_str.to_i.between?(0,255)
end

def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  return false if dot_separated_words.size != 4
  
  while dot_separated_words.size > 0 do
     word = dot_separated_words.pop
     varx = is_an_ip_number?(word)
     break unless varx
  end
  
  varx
end

p dot_separated_ip_address?("1.2.3.45")