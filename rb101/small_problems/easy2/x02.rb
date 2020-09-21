=begin
Launch School: RB101-RB109 - Small Problems - Easy 2 - How big is the room?
ExerciseName: [How big is the room?](https://launchschool.com/exercises/7fc5d216)
FileName: ex01.md
Answered On: 09/16/2020
=end

# Build a program that asks a user for the length and width of a room in meters 
# and then displays the area of the room in both square meters and square feet.
# Note: 1 square meter == 10.7639 square feet
# Do not worry about validating the input at this time.


puts("Enter the length of the room in meters:")
lenght = gets.chomp.to_i

puts("Enter the width of the room in meters:")
width = gets.chomp.to_i

area_sqmt = lenght * width

area_sqft = area_sqmt * 10.7639

puts("The area of the room is #{area_sqmt.round(2)} square meters (#{area_sqft.round(2)} square feet).")