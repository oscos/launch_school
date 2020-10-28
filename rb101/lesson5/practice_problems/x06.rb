=begin
Launch School: RB101 Programming Foundations - Lesson 5
ExerciseName: [Lesson 5 - Practice Problems](https://launchschool.com/lessons/c53f2250/assignments/f524e910)
FileName: x06.rb
Answered On: 10/26/2020
=end

# require "pry"
# require "pp"

# One of the most frequently used real-world string properties is that of 
# "string substitution", where we take a hard-coded string and modify it with 
# various parameters from our program.

# Given this previously seen family hash, print out the name, age and gender of 
# each family member like this:

# (Name) is a (age)-year-old (male or female).

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

munsters.each do |k,hash|
  puts "#{k} is a #{hash["age"]}-year-old #{hash["gender"]}"
end

