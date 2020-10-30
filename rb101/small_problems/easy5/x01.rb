=begin
Launch School: RB101-RB109 - Small Problems - Easy 5
ExerciseName: [ASCII String Value](https://launchschool.com/exercises/ae82edb6)
FileName: x01.rb
Answered On: 10/29/2020
=end

=begin
Write a method that determines and returns the ASCII string value of a string 
that is passed in as an argument. The ASCII string value is the sum of the 
ASCII values of every character in the string. (You may use String#ord to 
determine the ASCII value of a character.)
=end

# def ascii_value(str)
#   running_sum = 0
#   str.each_char.each do |element|
#     running_sum += element.ord
#   end
#   running_sum  
# end

def ascii_value(str)
  str.chars.map { |chr| chr.ord }.sum
end

p ascii_value('Four score') == 984
p ascii_value('Launch School') == 1251
p ascii_value('a') == 97
p ascii_value('') == 0