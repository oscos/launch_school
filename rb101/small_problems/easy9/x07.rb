=begin
Launch School: RB101-RB109 - Small Problems - Easy 9
ExerciseName: [Name Swapping](https://launchschool.com/exercises/62b0d0fc)
FileName: x07.rb
Answered On: 11/06/2020
Updated: 03/31/2021
PEDAC: 03/31/2021
=end

=begin
  Write a method that takes a first name, a space, and a last name passed as a 
  single String argument, and returns a string that contains the last name, a 
  comma, a space, and the first name.
=end

def swap_name(str)
  str.split.reverse.join(", ")
end

# 03/31/2021
def swap_name(input_str)
  results = input_str.split(" ")
  first, last = results
  "#{last}, #{first}" 
end
def swap_name(input_str)
  p input_str.split(" ").reverse.join(", ")
end

p swap_name('Joe Roberts') == 'Roberts, Joe'