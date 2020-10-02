=begin
Launch School: RB101 Programming Foundations - Lesson 3 - Practice Problems
ExerciseName: [Medium1](https://launchschool.com/lessons/263069da/assignments/6eba600c)
FileName: ex07.rb
Answered On: 09/30/2020
=end

# require "pry"
require "pp"

# One day Spot was playing with the Munster family's home computer and he wrote 
# a small program to mess with their demographic data:
# After writing this method, he typed the following...and before Grandpa could 
# stop him, he hit the Enter key with his tail:

# Did the family's data get ransacked? Why or why not?

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

# pp munsters

def mess_with_demographics(demo_hash)
  demo_hash.values.each do |family_member|
    family_member["age"] += 42
    family_member["gender"] = "other"
    # pp family_member
  end
end

p munsters.object_id
puts("----")
pp mess_with_demographics(munsters)
puts("----")
p munsters.object_id

# Answer: 
#   - the original hash gets mutated, it's values are modified while the hash's
#   - object_id remains the same. 

