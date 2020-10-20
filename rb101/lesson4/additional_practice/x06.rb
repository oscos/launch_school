=begin
Launch School: RB101 Programming Foundations - Lesson 4 - Additional Practice
ExerciseName: [Lesson 4 - Additional Practice](https://launchschool.com/lessons/85376b6d/assignments/a76c28ac)
FileName: x06.rb
Answered On: 10/13/2020
=end

# require "pry"
# require "pp"

# Amend this array so that the names are all shortened to just the first three characters:
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

index_arr = []

flintstones.each_with_index do |v,k|
  flintstones[v] << v[0,3]
end

p index_arr