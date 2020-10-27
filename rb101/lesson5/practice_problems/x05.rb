=begin
Launch School: RB101 Programming Foundations - Lesson 5
ExerciseName: [Lesson 5 - Practice Problems](https://launchschool.com/lessons/c53f2250/assignments/f524e910)
FileName: x05.rb
Answered On: 10/25/2020
=end

# require "pry"
# require "pp"

# Given this nested Hash figure out the total age of just the male members of the family.

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

# Solution #1
munsters
  .map { |_,v| v["age"] if v["gender"] == "male" }
    .compact
      .sum

# Solution #2
munsters
  .select {|_,v| v["gender"] == "male" }
    .map { |_,v| v["age"] }
      .sum
