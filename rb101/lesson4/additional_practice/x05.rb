=begin
Launch School: RB101 Programming Foundations - Lesson 4 - Additional Practice
ExerciseName: [Lesson 4 - Additional Practice](https://launchschool.com/lessons/85376b6d/assignments/a76c28ac)
FileName: x04.rb
Answered On: 10/12/2020
=end

# require "pry"
# require "pp"

# Pick out the minimum age from our current Munster family hash:

# Find the index of the first name that starts with "Be"
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

index_arr = []

flintstones.each_with_index do |v,k|
  index_arr << k if v[0,2] == "Be"
end

p index_arr[0].to_i