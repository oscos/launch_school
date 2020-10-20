=begin
Launch School: RB101 Programming Foundations - Lesson 4 - Additional Practice
ExerciseName: [Lesson 4 - Additional Practice](https://launchschool.com/lessons/85376b6d/assignments/a76c28ac)
FileName: x09.rb
Answered On: 10/13/2020
=end

# require "pry"
# require "pp"

=begin
Given the munsters hash below:

Modify the hash such that each member of the Munster family has an additional 
"age_group" key that has one of three values describing the age group the family 
member is in (kid, adult, or senior). Your solution should produce the hash below

{ "Herman" => { "age" => 32, "gender" => "male", "age_group" => "adult" },
  "Lily" => {"age" => 30, "gender" => "female", "age_group" => "adult" },
  "Grandpa" => { "age" => 402, "gender" => "male", "age_group" => "senior" },
  "Eddie" => { "age" => 10, "gender" => "male", "age_group" => "kid" },
  "Marilyn" => { "age" => 23, "gender" => "female", "age_group" => "adult" } }

Note: a kid is in the age range 0 - 17, an adult is in the range 18 - 64 and a senior is aged 65+.
=end

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

# p munsters.fetch("Herman")

munsters.each do |k,element_hash|
    case # the first when clause "wins"
      when element_hash["age"] < 18 then element_hash["age_group"] = "kid" 
      when element_hash["age"] < 65 then element_hash["age_group"] = "adult" 
      else element_hash["age"] = "senior"
    end
end

p munsters

# p munsters

munsters.each do |k,element_hash|
  element_hash.each do |k,v|
    if k == 'age' # 32 30 402 10 23
      age_group =
        case 
          when v.between?(0,17) then "kid"
          when v.between?(18,64) then "adult"
          else "senior"
        end
      munsters["age_group"] = age_group
    end
  end
end