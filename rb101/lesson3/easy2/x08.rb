=begin
Launch School: RB101 Programming Foundations - Lesson 3 - Practice Problems
ExerciseName: [Easy 2](https://launchschool.com/lessons/263069da/assignments/86725689)
FileName: ex08.rb
Answered On: 09/24/2020
=end

# require "pry"

# Shorten this sentence by remove everything starting from "house".
# Make the return value "Few things in life are as important as ". 
# But leave the advice variable as "house training your pet dinosaur.".

advice = "Few things in life are as important as house training your pet dinosaur."

# without taking account positions, the methods that follow remove first or all occurances.


# puts = "#{advice.partition(" house").first}"  

p advice.slice!(0,advice.index("house"))
p advice


