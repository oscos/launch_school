=begin
Launch School: RB101 Programming Foundations - Lesson 3 - Practice Problems
ExerciseName: [Easy 1(https://launchschool.com/lessons/263069da/assignments/e2593fe1)
FileName: ex07.rb
Answered On: 09/23/2020
=end

# Make this into an un-nested array.

flintstones  = ["Fred", "Wilma", ["Barney", "Betty"], ["BamBam", "Pebbles"]]
flintstones.flatten! # destructive
p flintstones
