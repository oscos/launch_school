=begin
Launch School: RB101 Programming Foundations - Lesson 4 - Additional Practice
ExerciseName: [Lesson 4 - Additional Practice](https://launchschool.com/lessons/85376b6d/assignments/a76c28ac)
FileName: x04.rb
Answered On: 10/12/2020
=end

# require "pry"
# require "pp"

# Pick out the minimum age from our current Munster family hash:


# Solution 1:
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }
p ages.values.min


# Solution 2:
# def min_age(ages)
#     ages.min do |k,v|
#         k<=>v
#     end
# end

# ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }
# p min_age(ages)