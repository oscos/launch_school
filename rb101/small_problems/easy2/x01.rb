=begin
Launch School: RB101-RB109 - Small Problems - Easy 2 - How old is Teddy?
ExerciseName: [How old is Teddy?](https://launchschool.com/exercises/84376930)
FileName: ex01.md
Answered On: 09/16/2020
=end

# Build a program that randomly generates and prints Teddy's age. To get the age, 
# you should generate a random number between 20 and 200.

fname = "Teddy"
age = rand(20..201)
puts("#{fname} is #{age} years old!")