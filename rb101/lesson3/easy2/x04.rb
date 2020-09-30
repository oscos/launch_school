=begin
Launch School: RB101 Programming Foundations - Lesson 3 - Practice Problems
ExerciseName: [Easy 2](https://launchschool.com/lessons/263069da/assignments/86725689)
FileName: ex04.rb
Answered On: 09/24/2020
=end

# See if the name "Dino" appears in the string below:

# require "pry"

advice = "Few things in life are as important as house training your pet dinosaur."

search_word = "dino"
word_array = advice.split.select {|word| word == search_word}
p word_array.join == search_word ? true : false
    

# # Note that that solutions below not a perfect solution, as it would match any 
# # substring with Dino in it.
# p advice.include?("Dino")
# p advice.match?("Dino")
