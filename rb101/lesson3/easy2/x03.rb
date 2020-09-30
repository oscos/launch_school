=begin
Launch School: RB101 Programming Foundations - Lesson 3 - Practice Problems
ExerciseName: [Easy 2](https://launchschool.com/lessons/263069da/assignments/86725689)
FileName: ex03.rb
Answered On: 09/24/2020
=end

# add ages for Marilyn and Spot to the existing hash

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10 }

additional_ages = { "Marilyn" => 22, "Spot" => 237 }

ages.merge!(additional_ages)
p ages

# ages.update(additional_ages)  # update is alias for merge!
# p ages
