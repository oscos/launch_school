=begin
Launch School: RB101 Programming Foundations - Lesson 5
ExerciseName: [Lesson 5 - Practice Problems](https://launchschool.com/lessons/c53f2250/assignments/f524e910)
FileName: x08.rb
Answered On: 10/26/2020
=end

# require "pry"
# require "pp"

# Using the each method, write some code to output all of the vowels from the strings.

hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}

hsh.each do |_,arr|
    arr.each do |words|
        words.each_char do |letter|
            puts letter if 'aeiou'.include?(letter)
        end
    end
end